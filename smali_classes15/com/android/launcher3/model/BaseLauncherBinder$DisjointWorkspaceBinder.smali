.class Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;
.super Ljava/lang/Object;
.source "BaseLauncherBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/model/BaseLauncherBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisjointWorkspaceBinder"
.end annotation


# instance fields
.field private final mBoundItemIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCurrentScreenIds:Lcom/android/launcher3/util/IntSet;

.field private final mOrderedScreenIds:Lcom/android/launcher3/util/IntArray;

.field final synthetic this$0:Lcom/android/launcher3/model/BaseLauncherBinder;


# direct methods
.method public static synthetic $r8$lambda$-sNKFv-P-WzcYPjQmCk_UXB-itU(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->lambda$bindOtherWorkspacePages$9(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6bbMCEDCQhL3ZztIuN4KFqGk8OQ(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->lambda$bindOtherWorkspacePages$7(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Bf1W8BA8jniy9_gznitYnI_35S4(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->lambda$bindOtherWorkspacePages$8(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$D5a_ZkXYMUmvn4HnkpqHV5VLlkg(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->lambda$bindCurrentWorkspacePages$1(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EPF-KHPrLeHXJz_gYjcx5QMiufY(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;IZLcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->lambda$bindCurrentWorkspacePages$6(IZLcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ku2fE3g692487SBvLuvuWRc_3CU(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->lambda$bindOtherWorkspacePages$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$_I4sEfqgMpwvicXL0VvSaVtOhFc(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->lambda$bindCurrentWorkspacePages$0(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rQZpXcnHInjtDXyQr2XXD1sNQq0(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->lambda$bindCurrentWorkspacePages$5(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ubiSRrRPrLziLe4X9mgHD0CU_Hs(Ljava/util/ArrayList;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$x1M94-jE7_BbkMsdVrPO2kPL0g8(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->lambda$bindCurrentWorkspacePages$3(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V

    return-void
.end method

.method protected constructor <init>(Lcom/android/launcher3/model/BaseLauncherBinder;Lcom/android/launcher3/util/IntArray;)V
    .locals 6
    .param p2, "orderedScreenIds"    # Lcom/android/launcher3/util/IntArray;

    .line 429
    iput-object p1, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->mCurrentScreenIds:Lcom/android/launcher3/util/IntSet;

    .line 427
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->mBoundItemIds:Ljava/util/Set;

    .line 430
    iput-object p2, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->mOrderedScreenIds:Lcom/android/launcher3/util/IntArray;

    .line 432
    iget-object p1, p1, Lcom/android/launcher3/model/BaseLauncherBinder;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 433
    .local v3, "cb":Lcom/android/launcher3/model/BgDataModel$Callbacks;
    iget-object v4, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->mCurrentScreenIds:Lcom/android/launcher3/util/IntSet;

    invoke-interface {v3, p2}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->getPagesToBindSynchronously(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntSet;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/IntSet;->addAll(Lcom/android/launcher3/util/IntSet;)Lcom/android/launcher3/util/IntSet;

    .line 432
    .end local v3    # "cb":Lcom/android/launcher3/model/BgDataModel$Callbacks;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 435
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->mCurrentScreenIds:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {p1}, Lcom/android/launcher3/util/IntSet;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 436
    iget-object p1, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->mCurrentScreenIds:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/util/IntSet;->add(I)V

    .line 438
    :cond_1
    return-void
.end method

.method private bindAppWidgets(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .line 536
    .local p1, "appWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 537
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 538
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    .line 539
    .local v2, "widget":Lcom/android/launcher3/model/data/ItemInfo;
    iget-object v3, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    new-instance v4, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder$$ExternalSyntheticLambda10;

    invoke-direct {v4, v2}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder$$ExternalSyntheticLambda10;-><init>(Lcom/android/launcher3/model/data/ItemInfo;)V

    iget-object v5, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object v5, v5, Lcom/android/launcher3/model/BaseLauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/model/BaseLauncherBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    .line 537
    .end local v2    # "widget":Lcom/android/launcher3/model/data/ItemInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 543
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private bindWorkspaceItems(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 524
    .local p1, "workspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 525
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 526
    move v2, v1

    .line 527
    .local v2, "start":I
    add-int/lit8 v3, v1, 0x6

    if-gt v3, v0, :cond_0

    const/4 v3, 0x6

    goto :goto_1

    :cond_0
    sub-int v3, v0, v1

    .line 528
    .local v3, "chunkSize":I
    :goto_1
    iget-object v4, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    new-instance v5, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder$$ExternalSyntheticLambda11;

    invoke-direct {v5, p1, v2, v3}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder$$ExternalSyntheticLambda11;-><init>(Ljava/util/ArrayList;II)V

    iget-object v6, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object v6, v6, Lcom/android/launcher3/model/BaseLauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/model/BaseLauncherBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    .line 525
    .end local v2    # "start":I
    .end local v3    # "chunkSize":I
    add-int/lit8 v1, v1, 0x6

    goto :goto_0

    .line 532
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method static synthetic lambda$bindAppWidgets$13(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 2
    .param p0, "widget"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p1, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 540
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindItems(Ljava/util/List;Z)V

    return-void
.end method

.method private synthetic lambda$bindCurrentWorkspacePages$0(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 2
    .param p1, "it"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 463
    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->mBoundItemIds:Ljava/util/Set;

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$bindCurrentWorkspacePages$1(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .locals 2
    .param p1, "it"    # Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 464
    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->mBoundItemIds:Ljava/util/Set;

    iget v1, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$bindCurrentWorkspacePages$2(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0
    .param p0, "item"    # Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;
    .param p1, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 467
    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindExtraContainerItems(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V

    return-void
.end method

.method private synthetic lambda$bindCurrentWorkspacePages$3(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    .line 467
    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    new-instance v1, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V

    iget-object v2, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object v2, v2, Lcom/android/launcher3/model/BaseLauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/model/BaseLauncherBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic lambda$bindCurrentWorkspacePages$4(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0
    .param p0, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 474
    invoke-interface {p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->clearPendingBinds()V

    .line 475
    invoke-interface {p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->startBinding()V

    .line 476
    return-void
.end method

.method private synthetic lambda$bindCurrentWorkspacePages$5(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 1
    .param p1, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 479
    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->mOrderedScreenIds:Lcom/android/launcher3/util/IntArray;

    invoke-interface {p1, v0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindScreens(Lcom/android/launcher3/util/IntArray;)V

    return-void
.end method

.method private synthetic lambda$bindCurrentWorkspacePages$6(IZLcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 8
    .param p1, "workspaceItemCount"    # I
    .param p2, "isBindSync"    # Z
    .param p3, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 484
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->setThreadPriority(I)V

    .line 486
    new-instance v5, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v5}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    .line 487
    .local v5, "onCompleteSignal":Lcom/android/launcher3/util/RunnableList;
    invoke-virtual {v5}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    .line 488
    iget-object v3, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->mCurrentScreenIds:Lcom/android/launcher3/util/IntSet;

    new-instance v4, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v4}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    move-object v2, p3

    move v6, p1

    move v7, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->onInitialBindComplete(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;Lcom/android/launcher3/util/RunnableList;IZ)V

    .line 490
    return-void
.end method

.method private synthetic lambda$bindOtherWorkspacePages$10()V
    .locals 2

    .line 513
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->setThreadPriority(I)V

    .line 514
    sget-object v0, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object v1, v1, Lcom/android/launcher3/model/BaseLauncherBinder;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/ItemInstallQueue;

    .line 515
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/ItemInstallQueue;->resumeModelPush(I)V

    .line 516
    return-void
.end method

.method static synthetic lambda$bindOtherWorkspacePages$11(Lcom/android/launcher3/model/StringCache;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0
    .param p0, "cacheClone"    # Lcom/android/launcher3/model/StringCache;
    .param p1, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 519
    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindStringCache(Lcom/android/launcher3/model/StringCache;)V

    return-void
.end method

.method private synthetic lambda$bindOtherWorkspacePages$7(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 2
    .param p1, "it"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 503
    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->mBoundItemIds:Ljava/util/Set;

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$bindOtherWorkspacePages$8(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Z
    .locals 2
    .param p1, "it"    # Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 504
    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->mBoundItemIds:Ljava/util/Set;

    iget v1, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$bindOtherWorkspacePages$9(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 1
    .param p1, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 511
    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->mCurrentScreenIds:Lcom/android/launcher3/util/IntSet;

    invoke-interface {p1, v0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->finishBindingItems(Lcom/android/launcher3/util/IntSet;)V

    return-void
.end method

.method static synthetic lambda$bindWorkspaceItems$12(Ljava/util/ArrayList;IILcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 2
    .param p0, "workspaceItems"    # Ljava/util/ArrayList;
    .param p1, "start"    # I
    .param p2, "chunkSize"    # I
    .param p3, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 529
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindItems(Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method protected bindCurrentWorkspacePages(Z)V
    .locals 7
    .param p1, "isBindSync"    # Z

    .line 452
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 454
    .local v0, "fciList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;>;"
    iget-object v1, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object v1, v1, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v1

    .line 455
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object v3, v3, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 456
    .local v2, "workspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object v4, v4, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 457
    .local v3, "appWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    sget-object v4, Lcom/android/launcher3/config/FeatureFlags;->CHANGE_MODEL_DELEGATE_LOADING_ORDER:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v4}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v4

    if-nez v4, :cond_0

    .line 458
    iget-object v4, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object v4, v4, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->extraItems:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder$$ExternalSyntheticLambda12;

    invoke-direct {v5, v0}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder$$ExternalSyntheticLambda12;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/IntSparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 460
    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object v4, v4, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v4}, Lcom/android/launcher3/util/IntSparseArrayMap;->size()I

    move-result v4

    .line 461
    .local v4, "workspaceItemCount":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    new-instance v1, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder$$ExternalSyntheticLambda13;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 464
    new-instance v1, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder$$ExternalSyntheticLambda14;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 465
    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->CHANGE_MODEL_DELEGATE_LOADING_ORDER:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-nez v1, :cond_1

    .line 466
    new-instance v1, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 470
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object v5, v1, Lcom/android/launcher3/model/BaseLauncherBinder;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v5

    invoke-virtual {v1, v5, v2}, Lcom/android/launcher3/model/BaseLauncherBinder;->sortWorkspaceItemsSpatially(Lcom/android/launcher3/InvariantDeviceProfile;Ljava/util/ArrayList;)V

    .line 473
    iget-object v1, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    new-instance v5, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder$$ExternalSyntheticLambda2;-><init>()V

    iget-object v6, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object v6, v6, Lcom/android/launcher3/model/BaseLauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1, v5, v6}, Lcom/android/launcher3/model/BaseLauncherBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    .line 479
    iget-object v1, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    new-instance v5, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;)V

    iget-object v6, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object v6, v6, Lcom/android/launcher3/model/BaseLauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1, v5, v6}, Lcom/android/launcher3/model/BaseLauncherBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    .line 481
    invoke-direct {p0, v2}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->bindWorkspaceItems(Ljava/util/ArrayList;)V

    .line 482
    invoke-direct {p0, v3}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->bindAppWidgets(Ljava/util/List;)V

    .line 483
    iget-object v1, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    new-instance v5, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0, v4, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;IZ)V

    iget-object v6, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object v6, v6, Lcom/android/launcher3/model/BaseLauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1, v5, v6}, Lcom/android/launcher3/model/BaseLauncherBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    .line 491
    return-void

    .line 461
    .end local v2    # "workspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .end local v3    # "appWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .end local v4    # "workspaceItemCount":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected bindOtherWorkspacePages()V
    .locals 6

    .line 498
    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object v0, v0, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v0

    .line 499
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object v2, v2, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 500
    .local v1, "workspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object v3, v3, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 501
    .local v2, "appWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    new-instance v0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 504
    new-instance v0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder$$ExternalSyntheticLambda6;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 506
    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object v3, v0, Lcom/android/launcher3/model/BaseLauncherBinder;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/android/launcher3/model/BaseLauncherBinder;->sortWorkspaceItemsSpatially(Lcom/android/launcher3/InvariantDeviceProfile;Ljava/util/ArrayList;)V

    .line 508
    invoke-direct {p0, v1}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->bindWorkspaceItems(Ljava/util/ArrayList;)V

    .line 509
    invoke-direct {p0, v2}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->bindAppWidgets(Ljava/util/List;)V

    .line 511
    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    new-instance v3, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder$$ExternalSyntheticLambda7;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;)V

    iget-object v4, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object v4, v4, Lcom/android/launcher3/model/BaseLauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher3/model/BaseLauncherBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    .line 512
    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object v0, v0, Lcom/android/launcher3/model/BaseLauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder$$ExternalSyntheticLambda8;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;)V

    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 518
    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object v0, v0, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->stringCache:Lcom/android/launcher3/model/StringCache;

    invoke-virtual {v0}, Lcom/android/launcher3/model/StringCache;->clone()Lcom/android/launcher3/model/StringCache;

    move-result-object v0

    .line 519
    .local v0, "cacheClone":Lcom/android/launcher3/model/StringCache;
    iget-object v3, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    new-instance v4, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder$$ExternalSyntheticLambda9;

    invoke-direct {v4, v0}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder$$ExternalSyntheticLambda9;-><init>(Lcom/android/launcher3/model/StringCache;)V

    iget-object v5, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object v5, v5, Lcom/android/launcher3/model/BaseLauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/model/BaseLauncherBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    .line 520
    return-void

    .line 501
    .end local v0    # "cacheClone":Lcom/android/launcher3/model/StringCache;
    .end local v1    # "workspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .end local v2    # "appWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
