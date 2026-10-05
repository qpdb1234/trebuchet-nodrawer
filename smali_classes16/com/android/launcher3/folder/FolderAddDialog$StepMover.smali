.class public Lcom/android/launcher3/folder/FolderAddDialog$StepMover;
.super Ljava/lang/Object;
.source "FolderAddDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# MOD v92: the v91 log pinned the freeze exactly.
#   unchecked-deferred fires, then NOTHING - not even data-0, the very first
#   log line of runData(). So the main thread died inside the FIRST item of
#   the data loop. The only non-trivial call on that path is
#
#     addOrMoveItemInDatabase
#       -> moveItemInDatabase
#          -> notifyItemModified(item)
#             -> notifyOtherCallbacks(lambda7)
#                -> mUiExecutor.execute(runnable)          <-- HERE
#
#   and LooperExecutor.execute() is:
#       if (handler.getLooper() == Looper.myLooper()) runnable.run();
#       else handler.post(runnable);
#   We ARE on the main thread, so the broadcast runs INLINE. It walks
#   LauncherModel.getCallbacks() and calls bindItemsModified() on every
#   registered callback (widgets host, folder observers, ...) while the
#   folder is still collapsing. That is the deadlock.
#
# v92 therefore does the database write WITHOUT the broadcast, mirroring
# exactly what ModelWriter.updateItemInDatabase() does minus the notify:
#   1. updateItemInfoProps(item, container, screenId, cellX, cellY)
#      (private; invoke-direct has no access check in dex) - pure in-memory
#      field mapping through the CellPosMapper, identical to what
#      moveItemInDatabase did first.
#   2. new ModelWriter$UpdateItemRunnable(writer, item, lambda9)
#      executeOnModelThread()  -> Executors.MODEL_EXECUTOR (a DIFFERENT
#      looper) so it is posted, never run inline. runImpl() is a plain
#      ContentValues write to the "favorites" table.
#
# Instrumented so the NEXT log tells us exactly where we stop, even if it
# still stalls:
#   rd-enter  -> runData() body started
#   rd-cell-N -> a vacant cell was reserved for item N
#   rd-props-N-> updateItemInfoProps() returned for item N
#   rd-task-N -> the db write for item N was handed to the model thread
#   rd-done   -> loop finished
#   rd-rmall  -> FolderInfo.removeAll() returned
#   rd-post   -> phase B was scheduled
# A missing rd-<x>-N pinpoints the exact call; data-N is gone in v92 and is
# replaced by rd-task-N.

# instance fields
.field private mLauncher:Lcom/android/launcher3/Launcher;
.field private mWorkspace:Lcom/android/launcher3/Workspace;
.field private mCellLayout:Lcom/android/launcher3/CellLayout;
.field private mScreenId:I
.field private mWriter:Lcom/android/launcher3/model/ModelWriter;
.field private mInflater:Lcom/android/launcher3/util/ItemInflater;
.field private mItems:Ljava/util/ArrayList;
# v103: items that actually got a vacant cell. The folder-removal and the
# phase-B visual mount must process ONLY these; the rest stay in the folder.
.field private mMoved:Ljava/util/ArrayList;
.field private mFolderInfo:Lcom/android/launcher3/model/data/FolderInfo;
.field private mIdx:I
.field private mHandler:Landroid/os/Handler;


.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;ILcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/util/ItemInflater;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/FolderInfo;)V
    .locals 2
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "workspace"    # Lcom/android/launcher3/Workspace;
    .param p3, "cellLayout"    # Lcom/android/launcher3/CellLayout;
    .param p4, "screenId"    # I
    .param p5, "writer"    # Lcom/android/launcher3/model/ModelWriter;
    .param p6, "inflater"    # Lcom/android/launcher3/util/ItemInflater;
    .param p7, "items"    # Ljava/util/ArrayList;
    .param p8, "folderInfo"    # Lcom/android/launcher3/model/data/FolderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mLauncher:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mWorkspace:Lcom/android/launcher3/Workspace;

    iput-object p3, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iput p4, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mScreenId:I

    iput-object p5, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mWriter:Lcom/android/launcher3/model/ModelWriter;

    iput-object p6, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mInflater:Lcom/android/launcher3/util/ItemInflater;

    iput-object p7, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mItems:Ljava/util/ArrayList;

    iput-object p8, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mFolderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mIdx:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mMoved:Ljava/util/ArrayList;

    return-void
.end method


# v94 FIX: v93 shipped a broken start(). The try block looked like this:
#
#   :try_start_0
#       ...arm the watchdog...
#   :try_end_0
#   .catchall {:try_start_0 .. :try_end_0} :startcatch
#   :startcatch
#   move-exception v0        <-- ALSO EXECUTED ON THE NORMAL PATH
#   invoke-virtual runData()V
#
# :startcatch was BOTH the exception handler target AND the fall-through of
# the normal path, so "move-exception" ran unconditionally. The dalvik
# verifier rejects move-exception outside a handler, so the WHOLE StepMover
# class fails to verify. smali/dexlib2 happily assembles it, which is why
# the build passed - the failure only shows up on device, as a VerifyError
# thrown by the verifier at class load, i.e. exactly at the
# "new-instance StepMover" instruction in removeUnchecked.
#
# That is the whole v93 mystery: the log stopped right after
# "unchecked-deferred" because the very next statement is the one that
# touched the broken class, so we lost even the rd-enter0 line that v92 had
# produced. Nothing about the original freeze changed in v93 - the build
# simply stopped reaching the code under test.
#
# The fix is structural: the catch handler no longer overlaps the normal
# path, and move-exception lives in a handler that only the exception path
# can reach. start() itself is now trivially linear.
# v99 FIX: the v98 preload thread finally named the root cause of the whole
# v94..v98 freeze era:
#
#   preload-err|java.lang.VerifyError: ... invoke-super/virtual can't be used
#   on private method void com.android.launcher3.folder.
#   FolderAddDialog$StepMover.armWatchdog()
#
# When v94 restructured start() it called the freshly-split private
# armWatchdog() with invoke-virtual. The dex verifier rejects that out of
# hand - virtual dispatch on a private method is meaningless, private
# dispatch MUST be invoke-direct - and rejects the ENTIRE class for it.
# StepMover therefore never verified on any device from v94 to v98; the
# "rd-cell-0 freeze" had already moved to class-load time, invisible to
# every probe inside the class. smali assembled it happily, which is why
# every build stayed green while the device kept dying.
#
# The fix is one opcode: invoke-virtual -> invoke-direct. runData() stays
# invoke-virtual because it is public.
.method public start()V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->armWatchdog()V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->runData()V

    return-void
.end method


# Arm the stack-dump watchdog. Split into its own method so that start() has
# no exception handler at all and stays a straight line - the mistake that
# cost us the v93 diagnostic run.
# The handler is a SEPARATE block that the normal path never falls into: it
# ends in return-void, so even if the verifier is lenient about the overlap,
# there is no move-exception to misexecute.
.method private armWatchdog()V
    .locals 3
    # p0 = v3

    :try_start_0
    new-instance v0, Lcom/android/launcher3/folder/FolderAddDialog$Watchdog;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string v2, "phaseA"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/FolderAddDialog$Watchdog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :armcatch

    goto :armdone

    :armcatch
    move-exception v0

    :armdone
    return-void
.end method


# helper: log "<prefix><idx>". It only reads p1/p2 and allocates inside its
# own frame, so the caller keeps every scratch register it owns. This keeps
# the runData() register map unchanged - no extra live values across the
# /range blocks.
.method private logIdx(Ljava/lang/String;I)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "idx"    # I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v0}, Lcom/android/launcher3/folder/FolderAddDialog$GlobalDedup;->logStage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# PHASE A - synchronous, view-free, and now broadcast-free.
# v0 = items, v1 = idx(int), v2 = size(int), v3 = item, v4 = cell[]/scratch,
# v5 = GridOccupancy, v6 = found/scratch, v7..v12 = /range block members
.method public runData()V
    .locals 13
    # p0 = v13

    :try_start_0

    const-string v6, "rd-enter"

    const/4 v1, 0x0

    invoke-direct {p0, v6, v1}, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->logIdx(Ljava/lang/String;I)V

    # v93: a SECOND, tighter watchdog. The "phaseA" one in start() shares this
    # 1.2s window; this one fires later and therefore samples the thread at a
    # different moment. Two samples 1.2s apart distinguish "wedged at one exact
    # frame" (both dumps identical, frame F0 is the culprit) from "still
    # making progress" (the stacks differ and move down the launcher).
    iget-object v6, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mLauncher:Lcom/android/launcher3/Launcher;

    new-instance v9, Lcom/android/launcher3/folder/FolderAddDialog$Watchdog;

    const-string v10, "loop"

    invoke-direct {v9, v6, v10}, Lcom/android/launcher3/folder/FolderAddDialog$Watchdog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v10, Ljava/lang/Thread;

    invoke-direct {v10, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    # v5 = CellLayout.mOccupied - the real occupancy grid
    # v101 FIX: mOccupied is a PROTECTED field. StepMover lives in
    # com.android.launcher3.folder, CellLayout in com.android.launcher3, and
    # StepMover is not a CellLayout subclass - a direct iget is a cross-package
    # protected access, the exact same verifier-hostile family as the private
    # method dispatch that killed v94-v98. The v99/v100 freezes both stopped
    # the main thread somewhere after "rd-enter0" with NO Java exception
    # (no rd-crash, no uncaught- line) and a detached main thread in the
    # SIG3 trace - the soft-fail/reverify behavior around this instruction
    # is the prime suspect. getOccupied() is the public getter and returns
    # the very same object (no clone), so semantics are unchanged.
    iget-object v6, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v6}, Lcom/android/launcher3/CellLayout;->getOccupied()Lcom/android/launcher3/util/GridOccupancy;

    move-result-object v5

    # v101 probe: if this line prints, the loop watchdog start, mItems/size
    # and getOccupied all succeeded. A log ending at "rd-enter0" would then
    # point INSIDE the watchdog start; at "rd-occ" points at getCountX/Y or
    # the grid- logStage itself.
    const-string v6, "rd-occ"

    invoke-direct {p0, v6, v1}, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->logIdx(Ljava/lang/String;I)V

    if-eqz v5, :ddone    # no grid (should not happen) -> mMoved stays empty,
                         # so v103 leaves everything in the folder (safer
                         # than the old unconditional drop)

    # v93: dump the grid geometry. If getCountX/Y return something insane the
    # bounded loops would stop being bounded and a "grid-" line is the only
    # way to see it from the log.
    iget-object v6, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v6}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v6

    iget-object v9, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v9}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "grid-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "-n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v12, v11}, Lcom/android/launcher3/folder/FolderAddDialog$GlobalDedup;->logStage(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    :dloop
    if-ge v1, v2, :ddone

    const-string v6, "rc-get-"

    invoke-direct {p0, v6, v1}, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->logIdx(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    # find a vacant 1x1 cell (skips cells we already reserved below)
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6, v6}, Lcom/android/launcher3/util/GridOccupancy;->findVacantCell([III)Z

    move-result v6

    const-string v11, "rc-vac-"

    invoke-direct {p0, v11, v6}, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->logIdx(Ljava/lang/String;I)V

    # v103b: no vacant cell on the CURRENT page -> fall through to the
    # cross-page placement attempt at :xpgtry instead of giving up
    if-eqz v6, :xpgtry

    # reserve it so the next item gets a different cell
    # markCells(cellX, cellY, spanX, spanY, occupied=true): 6 registers
    # including this -> must use /range over the contiguous v5..v10
    const/4 v6, 0x0

    aget v6, v4, v6

    const/4 v7, 0x1

    aget v7, v4, v7

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    const-string v6, "rc-mark-"

    invoke-direct {p0, v6, v1}, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->logIdx(Ljava/lang/String;I)V

    # item fields: desktop container + reserved cell
    const/16 v11, -0x64

    iput v11, v3, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v11, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mScreenId:I

    iput v11, v3, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    const/4 v11, 0x0

    aget v11, v4, v11

    iput v11, v3, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    const/4 v11, 0x1

    aget v11, v4, v11

    iput v11, v3, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    const/4 v11, 0x1

    iput v11, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v11, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    # v103: only items that got a vacant cell may leave the folder. Track it
    # now so BOTH the folder removal and the phase-B visual mount below can
    # filter on this list - a page-full item keeps its folder coords and
    # must never be mounted on the workspace (it would stack on top of the
    # icon already sitting at its stale cellX/cellY).
    iget-object v11, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mMoved:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "rd-cell-"

    invoke-direct {p0, v6, v1}, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->logIdx(Ljava/lang/String;I)V

    # v99: the updateItemInfoProps() call that stood here is GONE.
    # It was the only instruction between "rd-cell-N" and "rd-props-N", and
    # the v92 run stopped exactly there (rd-cell-0 printed, rd-props-0 never).
    # Two reasons to delete rather than debug it:
    #   1. It is a provable no-op on this device. updateItemInfoProps runs
    #      the cell coords through ModelWriter's CellPosMapper
    #      (mapPresenterToModel); on the single-screen polaris the DEFAULT
    #      mapper is an identity mapping, and the four arguments are exactly
    #      the values the iputs right above already wrote into the item.
    #   2. It is a PRIVATE ModelWriter method invoked cross-class with
    #      invoke-direct - the same family of verifier-hostile dispatch that
    #      start() got caught on (invoke-virtual on private = hard reject).
    #      Cross-class private access is at best a soft verify failure whose
    #      runtime behavior was never pinned down; there is no reason to keep
    #      a no-op that rides on it.
    # Coordinates now come solely from the iput block above; the model-thread
    # ContentWriter write below reads those same fields. v7 (mWriter) is kept
    # - the lambda constructor below still needs it.
    iget-object v7, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mWriter:Lcom/android/launcher3/model/ModelWriter;

    const-string v6, "rd-props-"

    invoke-direct {p0, v6, v1}, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->logIdx(Ljava/lang/String;I)V

    # new UpdateItemRunnable(writer, item, lambda9)
    #   lambda9 = new ExternalSyntheticLambda9(writer, item)  -> ContentWriter
    # then executeOnModelThread(): MODEL_EXECUTOR is a different looper, so
    # this is a Handler.post - the db write never touches the main thread.
    #
    # v102: THIS TRIPLE IS GONE. In the v101 field test it killed the main
    # thread silently, and only on the rc-vac-1 path: rd-props-0 printed,
    # no rd-task-0, no rd-crash (the catchall below covers 241..517 so any
    # Java exception would have printed rd-crash), no uncaught- line
    # (CrashLogger untouched), the process stayed alive (binder threads
    # RUNNABLE in the next watchdog dump) and the main thread vanished
    # from getAllStackTraces with getState()==NEW|stack empty - the ART
    # fingerprint of a detached, peer-destroyed main thread. SystemServer
    # ANR'd the frozen app ~24s later: the "crash" the user saw. The db
    # write never landed, so after the process restart every moved icon
    # was back inside its folder. Cause unknown at instruction level; the
    # triple hand-mimicked moveItemInDatabase() internals minus
    # updateItemInfoProps() and notifyItemModified(). v102 calls the real
    # public API instead - the exact path Workspace exercises on every
    # drag of an icon out of a folder. Public method, cross-package
    # invoke-virtual (check88-clean). The iput block above already wrote
    # the same five fields; updateItemInfoProps rewrites them identically.
    # /range form: 6 registers (receiver + 5 args) exceed the 5-register
    # limit of the packed form. v13 is free in runData (.locals 13) so the
    # args sit in the contiguous v7..v12 window.
    move-object v8, v3

    const/16 v9, -0x64

    iget v10, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mScreenId:I

    const/4 v11, 0x0

    aget v11, v4, v11

    const/4 v12, 0x1

    aget v12, v4, v12

    invoke-virtual/range {v7 .. v12}, Lcom/android/launcher3/model/ModelWriter;->moveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    const-string v6, "rd-task-"

    invoke-direct {p0, v6, v1}, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->logIdx(Ljava/lang/String;I)V

    goto :dnext

    # v103b: cross-page fallback. The current page is full (rc-vac-0);
    # tryPlaceOnOtherPages walks every workspace page, reserves the first
    # vacant 1x1 cell it finds, points the item there, writes the db row
    # via the stock moveItemInDatabase and records it in mMoved. When the
    # whole workspace is full the item stays in the folder (v103 behavior).
    :xpgtry
    invoke-direct {p0, v3}, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->tryPlaceOnOtherPages(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result v6

    const-string v11, "rc-xpg-"

    invoke-direct {p0, v11, v6}, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->logIdx(Ljava/lang/String;I)V

    :dnext
    add-int/lit8 v1, v1, 0x1

    goto :dloop

    :ddone
    iget-object v3, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string v4, "rd-done"

    invoke-static {v3, v4}, Lcom/android/launcher3/folder/FolderAddDialog$GlobalDedup;->logStage(Landroid/content/Context;Ljava/lang/String;)V

    # v103: drop ONLY the items that got a vacant cell from the folder
    # (memory + listener notify, no db). A page-full item stays in the
    # folder - its db row still points at the folder, and removing it from
    # the in-memory folder while its db row still says "folder" would make
    # it reappear in the folder after a restart.
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mMoved:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mFolderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/android/launcher3/model/data/FolderInfo;->removeAll(Ljava/util/List;Z)V

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string v4, "rd-rmall"

    invoke-static {v3, v4}, Lcom/android/launcher3/folder/FolderAddDialog$GlobalDedup;->logStage(Landroid/content/Context;Ljava/lang/String;)V

    # schedule phase B (cosmetic mounting, may starve - by design)
    iget-object v3, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mHandler:Landroid/os/Handler;

    move-object v4, p0

    const-wide/16 v5, 0x10

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string v4, "rd-post"

    invoke-static {v3, v4}, Lcom/android/launcher3/folder/FolderAddDialog$GlobalDedup;->logStage(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :datacatch

    :datacatch
    move-exception v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string v2, "rd-crash"

    invoke-static {v1, v2, v0}, Lcom/android/launcher3/folder/FolderAddDialog$GlobalDedup;->reportError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# PHASE B - one item per main-thread message, cosmetic only. Items already
# carry their final container/screenId/cell coordinates from phase A, so this
# only inflates the view and mounts it.
.method public run()V
    .locals 12
    # p0 = v12

    :try_start_0

    # v103: mount only the moved items. The old mItems loop mounted page-full
    # leftovers too, still carrying their stale folder-internal cellX/cellY,
    # stacking them on top of whatever icon occupied that cell.
    iget v0, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mIdx:I

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mMoved:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :visual_done

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v4, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mInflater:Lcom/android/launcher3/util/ItemInflater;

    iget-object v5, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mWriter:Lcom/android/launcher3/model/ModelWriter;

    invoke-virtual {v4, v3, v5}, Lcom/android/launcher3/util/ItemInflater;->inflateItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/ModelWriter;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :vnext

    iget-object v6, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v6, v4, v3}, Lcom/android/launcher3/Workspace;->addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    :vnext
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mIdx:I

    # log "visual-<n>"
    iget-object v4, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mLauncher:Lcom/android/launcher3/Launcher;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "visual-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/launcher3/folder/FolderAddDialog$GlobalDedup;->logStage(Landroid/content/Context;Ljava/lang/String;)V

    # reschedule: next icon in 16ms
    iget-object v4, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mHandler:Landroid/os/Handler;

    move-object v5, p0

    const-wide/16 v6, 0x10

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :visual_done
    iget-object v3, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string v4, "visual-done"

    invoke-static {v3, v4}, Lcom/android/launcher3/folder/FolderAddDialog$GlobalDedup;->logStage(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :visualcatch

    :visualcatch
    move-exception v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string v2, "visual-crash"

    invoke-static {v1, v2, v0}, Lcom/android/launcher3/folder/FolderAddDialog$GlobalDedup;->reportError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# v103b: cross-page fallback. Runs when the CURRENT page has no vacant 1x1
# cell (rc-vac-0). Walks every workspace page in index order, reserves the
# first vacant 1x1 cell on another page, points the item at that page and
# writes the db row through the stock moveItemInDatabase - the same factory
# path as a drag onto another screen. Returns true when placed (item is also
# recorded in mMoved, so folder removal and the phase-B mount pick it up);
# false when the whole workspace is full, leaving the item in the folder.
.method private tryPlaceOnOtherPages(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
    .locals 12
    # p0 = v12, p1 = v13 (item)
    # v0 workspace | v1 pageCount | v2 page idx | v3 CellLayout | v4 grid
    # v5 int[2] cell | v6 cellX | v7 cellY | v8 screenId | v9-v11 scratch

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :xploop
    if-ge v2, v1, :xpmiss

    const-string v5, "xpg-p-"

    invoke-direct {p0, v5, v2}, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->logIdx(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getOccupied()Lcom/android/launcher3/util/GridOccupancy;

    move-result-object v4

    if-eqz v4, :xpnext

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v4, v5, v9, v10}, Lcom/android/launcher3/util/GridOccupancy;->findVacantCell([III)Z

    move-result v6

    if-eqz v6, :xpnext

    const/4 v9, 0x0

    aget v6, v5, v9

    const/4 v9, 0x1

    aget v7, v5, v9

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)I

    move-result v8

    if-ltz v8, :xpnext

    const-string v5, "xpg-hit-"

    invoke-direct {p0, v5, v2}, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->logIdx(Ljava/lang/String;I)V

    # point the item at the other page
    const/16 v9, -0x64

    iput v9, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iput v8, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iput v6, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v7, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    const/4 v9, 0x1

    iput v9, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v9, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    # reserve the cell on the OTHER page's grid (reads item coords back)
    const/4 v10, 0x1

    invoke-virtual {v4, p1, v10}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    # track it as moved (folder removal + phase-B mount)
    iget-object v9, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mMoved:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    # stock db write: moveItemInDatabase(item, CONTAINER_DESKTOP, screenId, cellX, cellY)
    # packed form cannot hold 6 registers -> /range over the contiguous v0..v5
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mWriter:Lcom/android/launcher3/model/ModelWriter;

    move-object v1, p1

    const/16 v2, -0x64

    move v3, v8

    move v4, v6

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/model/ModelWriter;->moveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    const/4 v0, 0x1

    return v0

    :xpnext
    add-int/lit8 v2, v2, 0x1

    goto :xploop

    :xpmiss
    const-string v5, "xpg-miss-"

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->logIdx(Ljava/lang/String;I)V

    const/4 v0, 0x0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :xpcatch

    return v0

    :xpcatch
    move-exception v1

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string v3, "xpg-crash"

    invoke-static {v2, v3, v1}, Lcom/android/launcher3/folder/FolderAddDialog$GlobalDedup;->reportError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method