.class public Lcom/android/launcher3/folder/FolderAddDialog$Watchdog;
.super Ljava/lang/Object;
.source "FolderAddDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# ============ v97 ============
#
# v96's run gave the first real answer the watchdog ever produced:
#
#   rh-pre-new @...889
#   onClick-STACK|0 @...2081
#
# STACK|0 = Thread.getStackTrace() on the MAIN thread returned an EMPTY
# array. A thread spinning in bytecode always has frames. An empty array
# means the main thread is parked somewhere a managed stack walk cannot
# see - almost certainly blocked in native code. The code between
# "rh-pre-new" and the missing "rh-ctor-ok" is exactly two statements:
#
#   new-instance StepMover   <- FIRST class load of StepMover
#   invoke-direct <init>
#
# so the prime suspect is the class-load itself waiting on a runtime lock
# (ClassLinker / dex cache) held by some OTHER thread.
#
# v97 widens the window so the other end of the stall must identify itself:
#
#   <tag>-STATE|<state>          java Thread.getState() of the main thread
#   <tag>-STACK|<N> + -F<i>|     main thread frames (unchanged)
#   <tag>-WCHAN|<kernel fn>      /proc/self/task/<pid>/wchan - the kernel
#                                wait channel, names the syscall we sit in
#   <tag>-STATUS|...             first lines of /proc/self/task/<pid>/status
#                                (Name / Umask / State / Tgid ...)
#   <tag>-THR|<name>|<state>|<N> EVERY live thread, one header per thread
#   <tag>-T<seq>-F<i>|<frame>    frames of each thread, capped at 30
#
# If another thread holds the lock the main thread needs, its own stack
# will be in this dump, named frame by frame. No more inference.

# instance fields
.field private mContext:Landroid/content/Context;
.field private mTag:Ljava/lang/String;

# v100: three watchdogs (onClick/phaseA/loop) fire within the same 10ms
# window, and the v99 log showed each one sending its own SIGQUIT - three
# full native dumps of the whole process in a row, each suspending the main
# thread for seconds. SIGQUIT is now once per process, first arrive wins.
.field private static sSigSent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderAddDialog$Watchdog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher3/folder/FolderAddDialog$Watchdog;->mTag:Ljava/lang/String;

    return-void
.end method


.method private logLine(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAddDialog$Watchdog;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/launcher3/folder/FolderAddDialog$GlobalDedup;->logStage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# read up to 5 lines of a /proc file, joined with " | ", "" if empty,
# "ERR" on any failure. Never throws.
.method private readProc(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :rloop
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :rdone

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " | "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x5

    if-lt v3, v4, :rloop

    :rdone
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :pcatch

    goto :pdone

    :pcatch
    move-exception v0

    :pdone
    const-string v0, "ERR"

    return-object v0
.end method


# dump every live thread: one header line + up to 30 frames each.
# regs: v0 iterator/exception, v1 thread-seq, v2 entry, v3 thread,
#       v4 frames, v5 frame-index, v6 element, v7/v8 scratch
.method private dumpAllThreads()V
    .locals 9

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :tloop
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :tdone

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Thread;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/StackTraceElement;

    # header: tag + "-THR|" + name + "|" + state + "|" + frameCount
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/launcher3/folder/FolderAddDialog$Watchdog;->mTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-THR|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/launcher3/folder/FolderAddDialog$Watchdog;->logLine(Ljava/lang/String;)V

    # frames of this thread, capped at 30; v5 = frame index
    const/4 v5, 0x0

    :floop
    array-length v7, v4

    if-ge v5, v7, :fend

    const/16 v7, 0x1e

    if-ge v5, v7, :fend

    aget-object v6, v4, v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/launcher3/folder/FolderAddDialog$Watchdog;->mTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "-T"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "-F"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/launcher3/folder/FolderAddDialog$Watchdog;->logLine(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :floop

    :fend
    add-int/lit8 v1, v1, 0x1

    goto :tloop

    :tdone
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :tcatch

    goto :tdone2

    :tcatch
    move-exception v0

    :tdone2
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    # 1200ms grace so a normal fast run never triggers a dump
    const-wide/16 v0, 0x4b0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    # 1) java state of the main thread
    invoke-virtual {v2}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/launcher3/folder/FolderAddDialog$Watchdog;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-STATE|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/launcher3/folder/FolderAddDialog$Watchdog;->logLine(Ljava/lang/String;)V

    # 2) main thread managed stack
    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/launcher3/folder/FolderAddDialog$Watchdog;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-STACK|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/launcher3/folder/FolderAddDialog$Watchdog;->logLine(Ljava/lang/String;)V

    # 3) walk the main frames
    const/4 v0, 0x0

    :mloop
    array-length v4, v3

    if-ge v0, v4, :mdone

    aget-object v4, v3, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/launcher3/folder/FolderAddDialog$Watchdog;->mTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-F"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/launcher3/folder/FolderAddDialog$Watchdog;->logLine(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :mloop

    :mdone
    # 4) kernel wait channel of the main thread (tid == pid for main)
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/proc/self/task/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/wchan"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/launcher3/folder/FolderAddDialog$Watchdog;->readProc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/launcher3/folder/FolderAddDialog$Watchdog;->mTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-WCHAN|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/launcher3/folder/FolderAddDialog$Watchdog;->logLine(Ljava/lang/String;)V

    # 5) status file head (Name / Umask / State / ...)
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/proc/self/task/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/status"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/launcher3/folder/FolderAddDialog$Watchdog;->readProc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/launcher3/folder/FolderAddDialog$Watchdog;->mTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-STATUS|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/launcher3/folder/FolderAddDialog$Watchdog;->logLine(Ljava/lang/String;)V

    # 6) every other thread in the process
    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderAddDialog$Watchdog;->dumpAllThreads()V

    # 7) v98: SIGQUIT to ourselves. ART's Signal Catcher thread writes a
    #    full native+managed trace of EVERY thread into /data/anr/ -
    #    including the main thread, whose pseudo Thread object can only
    #    ever answer state NEW / 0 frames through the Java APIs. This is a
    #    dump, not a kill: the process keeps running afterwards.
    #    v100: gated on sSigSent - the v99 test fired all three watchdogs
    #    inside the same second and queued THREE full-process native dumps,
    #    each of which suspends the main thread we are trying to observe.
    sget-boolean v0, Lcom/android/launcher3/folder/FolderAddDialog$Watchdog;->sSigSent:Z

    if-nez v0, :sigskip

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/folder/FolderAddDialog$Watchdog;->sSigSent:Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Process;->sendSignal(II)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderAddDialog$Watchdog;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-SIG3|sent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/folder/FolderAddDialog$Watchdog;->logLine(Ljava/lang/String;)V

    :sigskip
    nop

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :wdcatch

    goto :wddone

    :wdcatch
    move-exception v0

    :wddone
    return-void
.end method
