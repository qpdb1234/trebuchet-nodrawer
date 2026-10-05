.class Lcom/android/launcher3/LauncherModel$3;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel;->onSessionFailure(Ljava/lang/String;Landroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$user:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/LauncherModel;

    .line 440
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$3;->this$0:Lcom/android/launcher3/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$3;->val$user:Landroid/os/UserHandle;

    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$3;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .locals 10
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p3, "apps"    # Lcom/android/launcher3/model/AllAppsList;

    .line 444
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v0

    .line 445
    .local v0, "iconCache":Lcom/android/launcher3/icons/IconCache;
    new-instance v1, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v1}, Lcom/android/launcher3/util/IntSet;-><init>()V

    .line 446
    .local v1, "removedIds":Lcom/android/launcher3/util/IntSet;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 447
    .local v2, "archivedItemsToCacheRefresh":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 448
    .local v3, "archivedPackagesToCacheRefresh":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    monitor-enter p2

    .line 449
    :try_start_0
    iget-object v4, p2, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v4}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    .line 450
    .local v5, "info":Lcom/android/launcher3/model/data/ItemInfo;
    instance-of v6, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v6, :cond_1

    move-object v6, v5

    check-cast v6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 451
    invoke-virtual {v6}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasPromiseIconUi()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher3/LauncherModel$3;->val$user:Landroid/os/UserHandle;

    iget-object v7, v5, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    .line 452
    invoke-virtual {v6, v7}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 453
    invoke-virtual {v5}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 454
    iget-object v6, p0, Lcom/android/launcher3/LauncherModel$3;->val$packageName:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 455
    iget v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v1, v6}, Lcom/android/launcher3/util/IntSet;->add(I)V

    .line 457
    :cond_0
    move-object v6, v5

    check-cast v6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isArchived()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 458
    move-object v6, v5

    check-cast v6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 461
    .local v6, "workspaceItem":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    iget-object v7, p0, Lcom/android/launcher3/LauncherModel$3;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v7}, Lcom/android/launcher3/LauncherModel;->-$$Nest$fgetmApp(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/LauncherModel$3;->val$packageName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/launcher3/LauncherModel$3;->val$user:Landroid/os/UserHandle;

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher3/icons/IconCache;->removeIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 463
    nop

    .line 464
    invoke-virtual {v6}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->usingLowResIcon()Z

    move-result v7

    .line 463
    invoke-virtual {v0, v6, v7}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    .line 465
    iget-object v7, p0, Lcom/android/launcher3/LauncherModel$3;->val$packageName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 466
    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 469
    .end local v5    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v6    # "workspaceItem":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :cond_1
    goto :goto_0

    .line 470
    :cond_2
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 471
    iget-object v4, p0, Lcom/android/launcher3/LauncherModel$3;->val$user:Landroid/os/UserHandle;

    invoke-virtual {p3, v3, v4}, Lcom/android/launcher3/model/AllAppsList;->updateIconsAndLabels(Ljava/util/HashSet;Landroid/os/UserHandle;)V

    .line 473
    :cond_3
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    invoke-virtual {v1}, Lcom/android/launcher3/util/IntSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 476
    nop

    .line 477
    invoke-static {v1}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofItemIds(Lcom/android/launcher3/util/IntSet;)Ljava/util/function/Predicate;

    move-result-object v4

    const-string v5, "removed because install session failed"

    .line 476
    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/LauncherModel$3;->deleteAndBindComponentsRemoved(Ljava/util/function/Predicate;Ljava/lang/String;)V

    .line 480
    :cond_4
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 481
    invoke-virtual {v2}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/launcher3/LauncherModel$3;->bindUpdatedWorkspaceItems(Ljava/util/List;)V

    .line 482
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel$3;->bindApplicationsIfNeeded()V

    .line 484
    :cond_5
    return-void

    .line 473
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method
