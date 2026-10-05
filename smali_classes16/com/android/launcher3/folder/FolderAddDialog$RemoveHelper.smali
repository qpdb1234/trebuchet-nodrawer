.class public Lcom/android/launcher3/folder/FolderAddDialog$RemoveHelper;
.super Ljava/lang/Object;
.source "FolderAddDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static removeDesktopDuplicates(Lcom/android/launcher3/folder/Folder;Ljava/util/HashSet;)V
    .locals 13
    .param p0, "folder"    # Lcom/android/launcher3/folder/Folder;
    .param p1, "selComps"    # Ljava/util/HashSet;

    # MOD v89: scan ALL pages instead of only the current one - the original
    # icon can live on any page, which explains "added to folder but the
    # desktop copy stays". Also log desktopdup-scan / -hit / -done so a
    # future no-delete report is diagnosable from dedup_error.log.

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    move-object v3, p1

    const-string v10, "desktopdup-scan"

    invoke-static {v0, v10}, Lcom/android/launcher3/folder/FolderAddDialog$GlobalDedup;->logStage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v7

    const/4 v4, 0x0

    :ploop
    if-ge v4, v7, :scan_done

    invoke-virtual {v1, v4}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/CellLayout;

    if-eqz v5, :pnext

    invoke-virtual {v5}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v6

    if-eqz v6, :pnext

    invoke-virtual {v6}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    :iloop
    if-ltz v12, :pnext

    invoke-virtual {v6, v12}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :inext

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    instance-of v11, v9, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v11, :inext

    check-cast v9, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v9}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :inext

    invoke-virtual {v3, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :inext

    # hit: log it, delete from db, remove the view (unmarks the cells)
    const-string v10, "desktopdup-hit"

    invoke-static {v0, v10}, Lcom/android/launcher3/folder/FolderAddDialog$GlobalDedup;->logStage(Landroid/content/Context;Ljava/lang/String;)V

    const-string v10, "folder_add_cleanup"

    invoke-virtual {v2, v9, v10}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    :inext
    add-int/lit8 v12, v12, -0x1

    goto :iloop

    :pnext
    add-int/lit8 v4, v4, 0x1

    goto :ploop

    :scan_done
    const-string v10, "desktopdup-scan-done"

    invoke-static {v0, v10}, Lcom/android/launcher3/folder/FolderAddDialog$GlobalDedup;->logStage(Landroid/content/Context;Ljava/lang/String;)V

    :ret
    return-void
.end method

.method public static removeFolderDuplicates(Lcom/android/launcher3/folder/Folder;Ljava/util/HashSet;)V
    .locals 16
    .param p0, "folder"    # Lcom/android/launcher3/folder/Folder;
    .param p1, "selComps"    # Ljava/util/HashSet;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v12

    iget v4, v12, Lcom/android/launcher3/model/data/FolderInfo;->id:I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v8

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_2

    invoke-virtual {v3, v7}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/CellLayout;

    if-eqz v12, :cond_1

    invoke-virtual {v12}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v11

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v11, :cond_1

    invoke-virtual {v9, v10}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_0

    instance-of v14, v13, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v14, :cond_0

    check-cast v13, Lcom/android/launcher3/model/data/FolderInfo;

    iget v14, v13, Lcom/android/launcher3/model/data/FolderInfo;->id:I

    if-eq v14, v4, :cond_0

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v15, :cond_7

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v12, v13, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v11, :cond_4

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v9}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v9

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v11, :cond_5

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/model/data/ItemInfo;

    const-string v0, "folder_add_cross"

    invoke-virtual {v9, v12, v0}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_5
    const/4 v4, 0x1

    invoke-virtual {v13, v5, v4}, Lcom/android/launcher3/model/data/FolderInfo;->removeAll(Ljava/util/List;Z)V

    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method public static removeUnchecked(Lcom/android/launcher3/folder/Folder;Ljava/util/HashSet;)V
    .locals 16
    .param p0, "folder"    # Lcom/android/launcher3/folder/Folder;
    .param p1, "selComps"    # Ljava/util/HashSet;

    move-object/from16 v10, p0

    move-object/from16 v12, p1

    invoke-virtual {v10}, Lcom/android/launcher3/folder/Folder;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    invoke-virtual {v10}, Lcom/android/launcher3/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    if-eqz v3, :cond_7

    invoke-virtual {v2, v8}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)I

    move-result v13

    const/16 v7, -0x64

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_2

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v11}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v14

    if-eqz v14, :cond_1

    invoke-virtual {v12, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getItemInflater()Lcom/android/launcher3/util/ItemInflater;

    move-result-object v5

    # MOD v88: the synchronous placement loop (findCellForSpan + inflate +
    # mount + db write, once per item, back to back) stalled the main thread
    # long enough to trigger the ANR dialog - the log shows the process died
    # between "unchecked-loopb-begin" and "unchecked-loopb-done". Hand the
    # placement to StepMover: one item per main-thread message, 16ms apart,
    # folder cleanup only after the last item lands.
    invoke-virtual {v10}, Lcom/android/launcher3/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "unchecked-deferred"

    invoke-static {v8, v9}, Lcom/android/launcher3/folder/FolderAddDialog$GlobalDedup;->logStage(Landroid/content/Context;Ljava/lang/String;)V

    # stage the 8 constructor args into the contiguous block v6..v14 for
    # invoke-direct/range; v13 (screenId, int) is saved into v10 first
    # because v13 is reused for the items list
    # v95: bracket the StepMover hand-off with log lines. Everything between
    # "unchecked-deferred" and the first line inside runData() is register
    # shuffling plus "new-instance" - i.e. class loading. If the log still
    # dies at unchecked-deferred with no "rh-new" line, the StepMover class
    # itself is the problem, not the logic inside it. v1 (Launcher) and
    # v2..v5 are already consumed as constructor args, so borrow v8, which
    # only held the context used by the log above.
    const-string v8, "rh-pre-new"

    invoke-static {v1, v8}, Lcom/android/launcher3/folder/FolderAddDialog$GlobalDedup;->logStage(Landroid/content/Context;Ljava/lang/String;)V

    move v10, v13

    move-object v14, v0

    move-object v13, v4

    move-object v12, v5

    move-object v11, v6

    move-object v9, v3

    move-object v8, v2

    move-object v7, v1

    new-instance v6, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;

    invoke-direct/range {v6 .. v14}, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;ILcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/util/ItemInflater;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/FolderInfo;)V

    # v95: constructor returned -> the class loaded and verified fine.
    # v1 is the Launcher, safe to reuse as the log context here.
    const-string v8, "rh-ctor-ok"

    invoke-static {v1, v8}, Lcom/android/launcher3/folder/FolderAddDialog$GlobalDedup;->logStage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/launcher3/folder/FolderAddDialog$StepMover;->start()V

    :cond_7
    # v95: start() returned -> the whole removal hand-off completed. If this
    # line is missing but rh-ctor-ok is present, the wedge is inside
    # start()/runData(); with the watchdog armed in onClick we will also have
    # a stack dump naming the exact frame.
    const-string v8, "rh-start-done"

    invoke-static {v1, v8}, Lcom/android/launcher3/folder/FolderAddDialog$GlobalDedup;->logStage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
