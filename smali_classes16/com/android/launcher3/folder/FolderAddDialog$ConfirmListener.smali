.class public Lcom/android/launcher3/folder/FolderAddDialog$ConfirmListener;
.super Ljava/lang/Object;
.source "FolderAddDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/FolderAddDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmListener"
.end annotation


# instance fields
.field public mAdapter:Lcom/android/launcher3/folder/FolderAddDialog$AppsAdapter;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/FolderAddDialog$AppsAdapter;)V
    .locals 3
    .param p1, "adapter"    # Lcom/android/launcher3/folder/FolderAddDialog$AppsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderAddDialog$ConfirmListener;->mAdapter:Lcom/android/launcher3/folder/FolderAddDialog$AppsAdapter;

    # v98: warm up StepMover on a background thread NOW, while the dialog is
    # still open. The v97 all-thread dump proved the main thread wedges on a
    # futex inside "new-instance StepMover" (the class's FIRST load) with
    # every other Java thread idle. If the class load itself is the trap,
    # this thread walks into it instead - and unlike the main thread, a
    # thread started via Thread.start() reports real state and real frames,
    # so the next watchdog dump will name the lock holder frame by frame.
    # If the load is merely timing-sensitive, the user never freezes at all.
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAddDialog$ConfirmListener;->mAdapter:Lcom/android/launcher3/folder/FolderAddDialog$AppsAdapter;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderAddDialog$AppsAdapter;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/folder/FolderAddDialog$Preloader;

    invoke-direct {v1, v0}, Lcom/android/launcher3/folder/FolderAddDialog$Preloader;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/Thread;

    const-string v0, "stepmover-preload"

    invoke-direct {v2, v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    :try_start_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAddDialog$ConfirmListener;->mAdapter:Lcom/android/launcher3/folder/FolderAddDialog$AppsAdapter;

    iget-object v1, v0, Lcom/android/launcher3/folder/FolderAddDialog$AppsAdapter;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v2

    iget v3, v2, Lcom/android/launcher3/model/data/FolderInfo;->id:I

    const/4 v9, 0x1

    const/4 v5, 0x0

    :goto_0
    iget-object v6, v0, Lcom/android/launcher3/folder/FolderAddDialog$AppsAdapter;->mApps:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_3

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v11, v6, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v11

    iget-object v4, v0, Lcom/android/launcher3/folder/FolderAddDialog$AppsAdapter;->mSelected:Ljava/util/HashSet;

    invoke-virtual {v4, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v7, v2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v8}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v10, v6, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_1
    new-instance v7, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v7, v6}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Lcom/android/launcher3/model/data/AppInfo;)V

    iput v3, v7, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget-object v11, v2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v2, v7, v8, v9}, Lcom/android/launcher3/model/data/FolderInfo;->add(Lcom/android/launcher3/model/data/WorkspaceItemInfo;IZ)V

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :try_start_1
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    const/4 v5, 0x0

    :goto_2
    iget-object v7, v0, Lcom/android/launcher3/folder/FolderAddDialog$AppsAdapter;->mApps:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_5

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v8, v7, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    iget-object v11, v0, Lcom/android/launcher3/folder/FolderAddDialog$AppsAdapter;->mSelected:Ljava/util/HashSet;

    invoke-virtual {v11, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    iget-object v7, v0, Lcom/android/launcher3/folder/FolderAddDialog$AppsAdapter;->mFolder:Lcom/android/launcher3/folder/Folder;

    sget v8, Lcom/android/launcher3/R$id;->folder_add_button:I

    invoke-virtual {v7, v8}, Lcom/android/launcher3/folder/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_6

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v7}, Landroid/view/View;->requestLayout()V

    :cond_6
    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "confirm-enter"

    invoke-static {v7, v8}, Lcom/android/launcher3/folder/FolderAddDialog$GlobalDedup;->logStage(Landroid/content/Context;Ljava/lang/String;)V

    # v95: arm the stack dump HERE, the last point proven to run on every
    # build so far. In v93/v94 the watchdog lived inside StepMover.start(),
    # which is exactly the code that was failing - so a broken StepMover also
    # silenced its own probe, and both runs logged nothing past
    # "unchecked-deferred". Diagnosis must not depend on the thing under
    # test. From here on the probe is armed before any removal work starts.
    # Uses v8/v9 only (v10 holds the selComps HashSet and must survive).
    # v96: signature changed to Context - v7 here is Folder.getContext()
    # (static type Context), passing it into a Launcher-typed parameter was
    # the v95 VerifyError that killed the class at load time.
    new-instance v8, Lcom/android/launcher3/folder/FolderAddDialog$Watchdog;

    const-string v9, "onClick"

    invoke-direct {v8, v7, v9}, Lcom/android/launcher3/folder/FolderAddDialog$Watchdog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/Thread;

    invoke-direct {v9, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    invoke-static {v1, v10}, Lcom/android/launcher3/folder/FolderAddDialog$RemoveHelper;->removeDesktopDuplicates(Lcom/android/launcher3/folder/Folder;Ljava/util/HashSet;)V

    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "confirm-1-desktopdup-done"

    invoke-static {v7, v8}, Lcom/android/launcher3/folder/FolderAddDialog$GlobalDedup;->logStage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v1, v10}, Lcom/android/launcher3/folder/FolderAddDialog$RemoveHelper;->removeFolderDuplicates(Lcom/android/launcher3/folder/Folder;Ljava/util/HashSet;)V

    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "confirm-2-folderdup-done"

    invoke-static {v7, v8}, Lcom/android/launcher3/folder/FolderAddDialog$GlobalDedup;->logStage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v1, v10}, Lcom/android/launcher3/folder/FolderAddDialog$RemoveHelper;->removeUnchecked(Lcom/android/launcher3/folder/Folder;Ljava/util/HashSet;)V

    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "confirm-3-unchecked-done"

    invoke-static {v7, v8}, Lcom/android/launcher3/folder/FolderAddDialog$GlobalDedup;->logStage(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAddDialog$ConfirmListener;->mAdapter:Lcom/android/launcher3/folder/FolderAddDialog$AppsAdapter;

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderAddDialog$AppsAdapter;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "confirm"

    invoke-static {v1, v2, v0}, Lcom/android/launcher3/folder/FolderAddDialog$GlobalDedup;->reportError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u79fb\u9664\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAddDialog$ConfirmListener;->mAdapter:Lcom/android/launcher3/folder/FolderAddDialog$AppsAdapter;

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderAddDialog$AppsAdapter;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v1

    # v89: persist add-stage exceptions too (previously toast-only)
    const-string v2, "add-catch"

    invoke-static {v1, v2, v0}, Lcom/android/launcher3/folder/FolderAddDialog$GlobalDedup;->reportError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6dfb\u52a0\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x0

    :goto_3
    array-length v5, v3

    const/4 v6, 0x4

    if-ge v4, v6, :cond_7

    if-ge v4, v5, :cond_7

    aget-object v5, v3, v4

    const-string v6, "\n  at "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void
.end method
