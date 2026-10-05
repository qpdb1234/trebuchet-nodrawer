#!/usr/bin/env python3
# v88 check v2: invoke/field verification with superclass resolution.
# - builds class -> (super, interfaces, methods{name(proto)}, fields{name:type})
# - resolves refs by walking the super chain; if the chain leaves the dex
#   (framework classes) unresolved refs are allowed
# - argc check unchanged: reg count must equal descriptor slots (+this)
import re, sys, os, glob

DEC = sys.argv[1] if len(sys.argv) > 1 else "dec"
FILES = sys.argv[2:] or [
    "smali_classes16/com/android/launcher3/folder/FolderAddDialog$RemoveHelper.smali",
    "smali_classes16/com/android/launcher3/folder/FolderAddDialog$StepMover.smali",
    "smali_classes16/com/android/launcher3/folder/FolderAddDialog$Watchdog.smali",
    "smali_classes16/com/android/launcher3/folder/FolderAddDialog$GlobalDedup.smali",
    "smali_classes16/com/android/launcher3/folder/FolderAddDialog$ConfirmListener.smali",
    "smali_classes16/com/android/launcher3/folder/FolderAddDialog$CrashLogger.smali",
    "smali_classes16/com/android/launcher3/folder/FolderAddDialog$Preloader.smali",
]

classes = {}  # Lcls; -> {"super":..., "itf":[...], "m":set, "f":set, "mf":{sig:mods}, "ff":{sig:mods}}
for f in glob.glob(os.path.join(DEC, "smali_classes*/**/*.smali"), recursive=True):
    cur, sup, itf = None, "Ljava/lang/Object;", []
    ms, fs, mf, ff = set(), set(), {}, {}
    for line in open(f, encoding="utf-8", errors="replace"):
        s = line.strip()
        if s.startswith(".class"):
            m = re.search(r"L[^;]+;", s)
            if m: cur = m.group(0)
        elif s.startswith(".super"):
            m = re.search(r"L[^;]+;", s)
            if m and cur: sup = m.group(0)
        elif s.startswith(".implements"):
            m = re.search(r"L[^;]+;", s)
            if m: itf.append(m.group(0))
        elif s.startswith(".method"):
            # v99: keep access flags too - the on-device preload-err proved
            # invoke-virtual on a PRIVATE method hard-rejects the whole class
            # ("invoke-super/virtual can't be used on private method"), which
            # a name/proto table cannot see.
            m = re.match(r"\.method\s+((?:[a-z][a-z-]*\s+)*)(\S+)\s*$", s)
            if m and cur:
                mods = set(m.group(1).split())
                sig = m.group(2)
                short = sig[:sig.index(")")+1] if ")" in sig else sig
                ms.add(short)
                mf[short] = mods
        elif s.startswith(".field"):
            # v101: field access flags too. mOccupied is PROTECTED; the
            # cross-package iget from StepMover is the prime suspect for the
            # v99/v100 silent main-thread death.
            m = re.match(r"\.field\s+((?:[a-z][a-z-]*\s+)*)(\S+)\s*$", s)
            if m and cur:
                fmods = set(m.group(1).split())
                fsig = m.group(2)
                fs.add(fsig)
                ff[fsig] = fmods
    if cur:
        classes[cur] = {"super": sup, "itf": itf, "m": ms, "f": fs, "mf": mf, "ff": ff}

def has_method(cls, short):
    seen = set()
    stack = [cls]
    while stack:
        c = stack.pop()
        if c in seen: continue
        seen.add(c)
        if c not in classes:
            return True  # framework boundary: cannot verify, allow
        if short in classes[c]["m"]:
            return True
        stack.append(classes[c]["super"])
        stack.extend(classes[c]["itf"])
    return False

def has_field(cls, fsig):
    seen = set()
    stack = [cls]
    while stack:
        c = stack.pop()
        if c in seen: continue
        seen.add(c)
        if c not in classes:
            return True  # framework boundary: cannot verify, allow
        if fsig in classes[c]["f"]:
            return True
        stack.append(classes[c]["super"])
        stack.extend(classes[c]["itf"])
    return False

# v99: resolve a method ref to the access flags of its in-dex declaration.
# Returns None when the chain leaves the dex (framework) or the method is
# missing - the argc/name rules already handle those cases.
def method_flags(cls, short):
    seen = set()
    stack = [cls]
    while stack:
        c = stack.pop()
        if c in seen: continue
        seen.add(c)
        if c not in classes:
            return None  # framework boundary: cannot verify, allow
        if short in classes[c]["mf"]:
            return classes[c]["mf"][short]
        stack.append(classes[c]["super"])
        stack.extend(classes[c]["itf"])
    return None

# v101: same resolution for field access flags.
def field_flags(cls, fsig):
    seen = set()
    stack = [cls]
    while stack:
        c = stack.pop()
        if c in seen: continue
        seen.add(c)
        if c not in classes:
            return None  # framework boundary: cannot verify, allow
        if fsig in classes[c]["ff"]:
            return classes[c]["ff"][fsig]
        stack.append(classes[c]["super"])
        stack.extend(classes[c]["itf"])
    return None

def pkg_of(cls):
    # "Lcom/android/launcher3/folder/Foo$Bar;" -> "com/android/launcher3/folder"
    return cls[1:-1].rsplit("/", 1)[0] if cls and cls.startswith("L") else ""

def count_slots(proto):
    slots, i, n = 0, 0, len(proto)
    while i < n:
        c = proto[i]
        if c in "JD": slots += 2; i += 1
        elif c in "BCFISZ": slots += 1; i += 1
        elif c == "L":
            i = proto.index(";", i) + 1; slots += 1
        elif c == "[":
            j = i
            while j < n and proto[j] == "[": j += 1
            if j < n and proto[j] == "L": j = proto.index(";", j)
            slots += 1; i = j + 1
        else: i += 1
    return slots

def parse_params(proto):
    params, i, n = [], 0, len(proto)
    while i < n:
        c = proto[i]
        if c in "JDBCFISZ": params.append(c); i += 1
        elif c == "L":
            j = proto.index(";", i); params.append(proto[i:j+1]); i = j + 1
        elif c == "[":
            j = i
            while j < n and proto[j] == "[": j += 1
            if j < n and proto[j] == "L": j = proto.index(";", j)
            params.append(proto[i:j+1]); i = j + 1
        else: i += 1
    return params

# v96: the v95 VerifyError was invisible to the slot check - Context (the
# SUPERCLASS) was passed into a Launcher-typed parameter. argc matched, the
# method existed, the class still got rejected at load time. These builtin
# chain edges extend a super-chain past the dex/framework boundary so
# "param's chain contains the register's type" is detectable.
FW_SUPER = {
    "Landroid/app/Activity;": "Landroid/app/ContextThemeWrapper;",
    "Landroid/app/ContextThemeWrapper;": "Landroid/content/ContextWrapper;",
    "Landroid/content/ContextWrapper;": "Landroid/content/Context;",
    "Landroid/content/Context;": "Ljava/lang/Object;",
    "Landroid/app/Service;": "Landroid/content/ContextWrapper;",
    "Landroid/app/Application;": "Landroid/content/ContextWrapper;",
    "Landroid/app/Dialog;": "Ljava/lang/Object;",
    "Landroid/view/View;": "Ljava/lang/Object;",
    "Ljava/lang/StringBuilder;": "Ljava/lang/Object;",
    "Ljava/lang/String;": "Ljava/lang/Object;",
    "Ljava/lang/Object;": None,
}

def chain_of(cls):
    out = set()
    stack = [cls]
    while stack:
        c = stack.pop()
        if c is None or c in out: continue
        out.add(c)
        if c in classes:
            stack.append(classes[c]["super"])
            stack.extend(classes[c]["itf"])
        elif c in FW_SUPER and FW_SUPER[c]:
            stack.append(FW_SUPER[c])
    return out

def check_types(rel, lines):
    """Linear per-method register-type tracking, then argument-vs-param
    reference compatibility on every invoke. Only reports when the shape is
    statically wrong (register holds an ANCESTOR of the declared param, or
    two unrelated in-dex classes) - the exact form that killed v95.

    Registers are keyed by PHYSICAL index: smali 'pN' means v(N + locals),
    so both spellings resolve to the same table slot."""
    cur_class, in_meth, locals_n, static = None, False, 0, False
    params_sig, vtypes, pending_ret = "", {}, None

    def rid(r):
        try:
            return int(r[1:]) + locals_n if r[0] == "p" else int(r[1:])
        except (ValueError, IndexError, TypeError):
            return None
    def sv(r, t):
        k = rid(r)
        if k is not None: vtypes[k] = t
    def gv(r):
        k = rid(r)
        return vtypes.get(k) if k is not None else None

    def is_ref(d):
        return isinstance(d, str) and (d.startswith("L") or d.startswith("["))

    for ln, raw in enumerate(lines, 1):
        s = raw.strip()
        if s.startswith(".class"):
            m = re.search(r"L[^;]+;", s)
            if m: cur_class = m.group(0)
            continue
        if not in_meth:
            if s.startswith(".method"):
                in_meth, vtypes, pending_ret = True, {}, None
                m = re.match(r"\.method\s+(.*?)\s*(\S+)\s*$", s)
                mods = m.group(1).split() if m else []
                sig = m.group(2) if m else ""
                static = "static" in mods
                pm = re.match(r"[^(]*\(([^)]*)\)", sig)
                params_sig = pm.group(1) if pm else ""
            continue
        if s.startswith(".end method"):
            in_meth = False
            continue
        if s.startswith(".locals"):
            m = re.search(r"\.locals\s+(\d+)", s)
            locals_n = int(m.group(1)) if m else 0
            idx = locals_n
            if not static:
                sv("p0", cur_class or "OBJ"); idx += 1
            for p in parse_params(params_sig):
                if p in ("J", "D"):
                    vtypes[idx] = "WIDE"; vtypes[idx + 1] = "WIDE"; idx += 2
                elif is_ref(p):
                    vtypes[idx] = p; idx += 1
                else:
                    vtypes[idx] = "INT"; idx += 1
            continue
        if not s or s.startswith("#") or s.startswith(":") or s.startswith("."):
            continue

        m = re.match(r"move-exception\s+([vp]\d+)", s)
        if m: sv(m.group(1), "Ljava/lang/Throwable;"); continue
        m = re.match(r"new-array\s+([vp]\d+),\s*[vp]\d+,\s*(\S+)", s)
        if m: sv(m.group(1), m.group(2)); continue
        m = re.match(r"move-result-wide\s+([vp]\d+)", s)
        if m: sv(m.group(1), "WIDE"); pending_ret = None; continue
        m = re.match(r"(?:add|sub|mul|div|rem|shl|shr|ushr|and|or|xor|neg|not)-long[^\s]*\s+([vp]\d+)", s)
        if m: sv(m.group(1), "WIDE"); continue
        m = re.match(r"(?:add|sub|mul|div|rem|shl|shr|ushr|and|or|xor|neg|not)-int[^\s]*\s+([vp]\d+)", s)
        if m: sv(m.group(1), "INT"); continue
        m = re.match(r"(?:long|double|float)-to-(int|char|byte|short)\s+([vp]\d+)", s)
        if m: sv(m.group(2), "INT"); continue
        m = re.match(r"(?:int|char|byte|short|float)-to-long\s+([vp]\d+)", s)
        if m: sv(m.group(1), "WIDE"); continue
        m = re.match(r"(?:cmpg?|cmpl)-long\s+([vp]\d+)", s)
        if m: sv(m.group(1), "INT"); continue
        m = re.match(r"instance-of\s+([vp]\d+)", s)
        if m: sv(m.group(1), "INT"); continue
        m = re.match(r"const(?:/4|/16|/high16)?\s+([vp]\d+),\s*(-?(?:0x[0-9a-fA-F]+|\d+))\s*$", s)
        if m:
            try: val = int(m.group(2), 0)
            except ValueError: val = None
            sv(m.group(1), "ZERO" if val == 0 else "INT"); continue
        m = re.match(r"const-wide[^\s]*\s+([vp]\d+)", s)
        if m: sv(m.group(1), "WIDE"); continue
        m = re.match(r"const-string(?:/jumbo)?\s+([vp]\d+)", s)
        if m: sv(m.group(1), "Ljava/lang/String;"); continue
        m = re.match(r"const-class\s+([vp]\d+)", s)
        if m: sv(m.group(1), "Ljava/lang/Class;"); continue
        m = re.match(r"new-instance\s+([vp]\d+),\s*(L[^;]+;)", s)
        if m: sv(m.group(1), m.group(2)); continue
        m = re.match(r"check-cast\s+([vp]\d+),\s*(\S+)", s)
        if m: sv(m.group(1), m.group(2)); continue
        m = re.match(r"move-result-object\s+([vp]\d+)", s)
        if m: sv(m.group(1), pending_ret or "OBJ"); pending_ret = None; continue
        m = re.match(r"move-result\s+([vp]\d+)", s)
        if m:
            sv(m.group(1), "WIDE" if pending_ret in ("J", "D") else "INT")
            pending_ret = None; continue
        m = re.match(r"move-object(?:/from16|/16)?\s+([vp]\d+),\s*([vp]\d+)", s)
        if m: sv(m.group(1), gv(m.group(2))); continue
        m = re.match(r"move(?:/from16|/16)?\s+([vp]\d+),\s*([vp]\d+)", s)
        if m: sv(m.group(1), gv(m.group(2))); continue
        m = re.match(r"iget-object(?:/volatile)?\s+([vp]\d+),\s*[vp]\d+,\s*L[^;]+;->[^:]+:(\S+)", s)
        if m: sv(m.group(1), m.group(2)); continue
        m = re.match(r"sget-object\s+([vp]\d+),\s*L[^;]+;->[^:]+:(\S+)", s)
        if m: sv(m.group(1), m.group(2)); continue
        m = re.match(r"(?:iget|sget)-wide\s+([vp]\d+)", s)
        if m: sv(m.group(1), "WIDE"); continue
        m = re.match(r"(?:iget|sget)(?:-boolean|-byte|-short|-char)?\s+([vp]\d+)", s)
        if m: sv(m.group(1), "INT"); continue
        m = re.match(r"aget-object\s+([vp]\d+),\s*([vp]\d+)", s)
        if m:
            at = gv(m.group(2))
            sv(m.group(1), at[1:] if at and at.startswith("[") else "OBJ")
            continue
        m = re.match(r"array-length\s+([vp]\d+)", s)
        if m: sv(m.group(1), "INT"); continue

        m = re.match(r"(invoke-\w+(?:/range)?)\s*\{([^}]*)\},\s*(L[^;]+;)->([^(]+)\(([^)]*)\)(\S+)\s*$", s)
        if m:
            kind, regs_s, _cls, _name, proto2, ret = m.groups()
            plist = parse_params(proto2)
            if kind.endswith("/range"):
                mm = re.match(r"v(\d+)\s*\.\.\s*v(\d+)", regs_s.strip())
                regs = ["v%d" % k for k in range(int(mm.group(1)), int(mm.group(2)) + 1)] if mm else []
            else:
                regs = [r.strip() for r in regs_s.split(",") if r.strip()]
            if not kind.startswith("invoke-static") and regs:
                regs = regs[1:]
            ai = 0
            for p in plist:
                r = regs[ai] if ai < len(regs) else None
                ai += 2 if p in ("J", "D") else 1
                if r is None: continue
                t = gv(r)
                if t is None or t == "OBJ" or t == "ZERO": continue
                if p in ("J", "D"):
                    if t != "WIDE":
                        errs.append(f"{rel}:{ln}: arg {r} holds '{t}' but param is wide '{p}'")
                    continue
                if p in "BCFISZ":
                    if t == "WIDE" or is_ref(t):
                        errs.append(f"{rel}:{ln}: arg {r} holds '{t}' but param is primitive '{p}'")
                    continue
                # p is a reference type ([X or L...;)
                if is_ref(t) is False:
                    errs.append(f"{rel}:{ln}: arg {r} holds primitive-type '{t}' but param wants '{p}'")
                    continue
                if t == p: continue
                if p.startswith("[") or t.startswith("["):
                    if t != p:
                        errs.append(f"{rel}:{ln}: arg {r} holds '{t}' but param wants array '{p}'")
                    continue
                if t in chain_of(p):
                    # register holds an ANCESTOR of the declared param type:
                    # statically wrong, verifier rejects the class (v95 bug)
                    errs.append(f"{rel}:{ln}: arg {r} holds '{t}', an ancestor "
                                f"of param '{p}' - needs check-cast, VerifyError on device")
                    continue
                if p in chain_of(t):
                    continue
                if t in classes and p in classes:
                    errs.append(f"{rel}:{ln}: arg {r} holds unrelated in-dex type '{t}' for param '{p}'")
            pending_ret = ret
            continue

errs, checked_m, checked_f = [], 0, 0

def check_move_exception(rel, lines):
    """A move-exception instruction is only legal as the FIRST instruction of
    an exception handler.

    The dangerous shape (shipped in v93, caught on device as a VerifyError
    that made the log stop one line EARLIER than the previous build) is:

        :try_end_0
        .catchall {:try_start_0 .. :try_end_0} :catchall_0
        :catchall_0
        move-exception v0          <-- looks fine, is NOT fine
        invoke-virtual runData()V  <-- normal path falls through HERE

    smali assembles that without complaint; the failure only appears on
    device as a verifier rejection of the whole class at first use.

    The correct shape, as generated by apktool for every real handler in this
    APK, always has an explicit jump OUT of the handler block on the normal
    path:

        :try_end_0
        .catchall {...} :catchall_0
        goto :goto_0        <-- normal path leaves here
        :catchall_0
        move-exception v0
        :goto_0             <-- handler rejoins here
        ...

    So the rule is: after the try_end/catchall directive, if the first real
    instruction is NOT a goto/return/throw, the normal path falls into the
    handler body and the class will not verify.
    """
    in_meth = False
    for i, s in enumerate(lines):
        st = s.strip()
        if st.startswith(".method"):
            in_meth = True
            continue
        if st.startswith(".end method"):
            in_meth = False
            continue
        if not in_meth or not st.startswith(".catchall"):
            continue
        # Walk forward past labels/directives/comments to the first REAL
        # instruction of the handler block.
        j = i + 1
        first_real = None
        while j < len(lines):
            t = lines[j].strip()
            if not t or t.startswith("#") or t.startswith(".") or t.startswith(":"):
                j += 1
                continue
            first_real = (j, t)
            break
        if first_real is None:
            continue
        j, first = first_real
        # The normal path enters right after the directive, so if the very
        # first real instruction is move-exception, the non-throwing path
        # executes it too -> verifier rejects the class.
        if first.startswith("move-exception"):
            # ...unless the protected range ends the method on the normal
            # path, i.e. the instruction right before .catchall is a
            # return/throw. Then the normal path can never fall into the
            # handler. This is the shape apktool emits for "try { ... }
            # catch (Throwable t) { log(t); return; }" and is what every
            # handler in this APK has used since v87.
            prev = None
            for k in range(i - 1, -1, -1):
                t = lines[k].strip()
                if not t or t.startswith("#") or t.startswith(".") or t.startswith(":"):
                    continue
                prev = t
                break
            if prev and (prev.startswith("return") or prev.startswith("throw")):
                continue
            errs.append(f"{rel}:{j+1}: catchall handler body starts at the "
                        f".catchall directive, so the normal path executes "
                        f"move-exception - class will fail to verify on device")
            continue
        # v96 note: handlers NOT starting with move-exception are left alone.
        # GlobalDedup/CrashLogger ship several (multi-try layouts where the
        # .catchall directive is followed by the NEXT try block, handler
        # labels gathered at the end of the method) and have been running on
        # device since v87 - the verifier accepts a handler that never reads
        # the exception. What it rejects is a move-exception that the normal
        # path can reach, which is exactly the case handled above.

for rel in FILES:
    path = os.path.join(DEC, rel)
    if not os.path.exists(path):
        errs.append(f"{rel}: MISSING FILE"); continue
    raw_lines = [l.rstrip("\n") for l in open(path, encoding="utf-8", errors="replace")]
    check_move_exception(rel, raw_lines)
    check_types(rel, raw_lines)
    # v101: the caller class of every instruction in this file - field and
    # method access rules are checked against it.
    caller = None
    for raw in raw_lines:
        t = raw.strip()
        if t.startswith(".class"):
            m = re.search(r"L[^;]+;", t)
            if m: caller = m.group(0)
            break
    for ln, raw in enumerate(raw_lines, 1):
        s = raw.strip()
        m = re.match(r"(invoke-\w+(?:/range)?)\s*\{([^}]*)\},\s*(L[^;]+;)->([^(]+)\(([^)]*)\)\S+\s*$", s)
        if m:
            kind, regs_s, cls, name, proto = m.groups()
            short = name + "(" + proto + ")"
            need = count_slots(proto) + (0 if kind.startswith("invoke-static") else 1)
            regs = [r.strip() for r in regs_s.split(",") if r.strip()]
            if kind.endswith("/range"):
                if len(regs) != 1:
                    errs.append(f"{rel}:{ln}: range needs single span")
                    continue
                a, b = map(int, re.match(r"v(\d+)\s*\.\.\s*v(\d+)", regs[0]).groups())
                got = b - a + 1
            else:
                got = len(regs)
                if any(not re.match(r"^[vp]\d+$", r) for r in regs):
                    errs.append(f"{rel}:{ln}: bad regs {regs_s}")
            if got != need:
                errs.append(f"{rel}:{ln}: {kind} {short} needs {need} regs, got {got} ({regs_s})")
            if cls in classes:
                checked_m += 1
                if not has_method(cls, short):
                    errs.append(f"{rel}:{ln}: MISSING method {cls}->{short}")
                # v99 rule: invoke-virtual / invoke-super on an in-dex PRIVATE
                # method hard-rejects the class on device ("invoke-super/
                # virtual can't be used on private method"), the exact bug that
                # kept StepMover unverified from v94 through v98 while the
                # build stayed green. Private dispatch must use invoke-direct.
                elif kind.split("/")[0] in ("invoke-virtual", "invoke-super"):
                    fl = method_flags(cls, short)
                    if fl and "private" in fl:
                        errs.append(f"{rel}:{ln}: {kind} on PRIVATE method "
                                    f"{cls}->{short} - must be invoke-direct, "
                                    f"VerifyError on device")
        # v101: field access visibility. Instance form takes (v, v, field),
        # static form takes (v, field). mOccupied is PROTECTED and the
        # cross-package iget from StepMover is the prime suspect for the
        # silent v99/v100 main-thread deaths - flag every non-public access
        # that is not same-package or a subclass.
        for fm in (re.match(r"([is](?:get|put)[\w-]*)\s+([vp]\d+),\s*([vp]\d+),\s*(L[^;]+;)->([^:]+):(\S+)\s*$", s),
                   re.match(r"(s(?:get|put)[\w-]*)\s+([vp]\d+),\s*(L[^;]+;)->([^:]+):(\S+)\s*$", s)):
            if fm:
                g = fm.groups()
                op, cls, fname, ftype = g[0], g[-3], g[-2], g[-1]
                if cls in classes:
                    checked_f += 1
                    fsig = fname + ":" + ftype
                    if not has_field(cls, fsig):
                        errs.append(f"{rel}:{ln}: MISSING field {cls}->{fsig}")
                    elif caller is not None:
                        ff = field_flags(cls, fsig)
                        if ff is not None:
                            if "private" in ff and caller != cls:
                                errs.append(f"{rel}:{ln}: access to PRIVATE field "
                                            f"{cls}->{fsig} from {caller} - access violation")
                            elif "public" not in ff:
                                if pkg_of(cls) != pkg_of(caller) and cls not in chain_of(caller):
                                    errs.append(f"{rel}:{ln}: access to non-public field "
                                                f"{cls}->{fsig} (flags: {' '.join(sorted(ff))}) "
                                                f"from {caller} (pkg {pkg_of(caller)}) - "
                                                f"cross-package access violation, VerifyError on device")

if errs:
    print(f"FAIL ({len(errs)}):")
    for e in errs[:60]: print("  " + e)
    sys.exit(1)
print(f"check88: PASS  (resolved {checked_m} in-dex method refs, {checked_f} field refs)")
