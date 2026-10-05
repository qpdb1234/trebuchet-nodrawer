.class Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;
.super Ljava/lang/Object;
.source "BaseLauncherBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/model/BaseLauncherBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnifiedWorkspaceBinder"
.end annotation


# instance fields
.field private final mApp:Lcom/android/launcher3/LauncherAppState;

.field private final mAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

.field private final mCallbacks:Lcom/android/launcher3/model/BgDataModel$Callbacks;

.field private final mExtraItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;",
            ">;"
        }
    .end annotation
.end field

.field private final mMyBindingId:I

.field private final mOrderedScreenIds:Lcom/android/launcher3/util/IntArray;

.field private final mUiExecutor:Ljava/util/concurrent/Executor;

.field private final mWorkspaceItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/launcher3/model/BaseLauncherBinder;


# direct methods
.method public static synthetic $r8$lambda$EauUprJWyeOGQfjlBGbfdulp6pg(Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->lambda$bind$3(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V

    return-void
.end method

.method public static synthetic $r8$lambda$If4NmM3pna1ceiVKclFBnLI7NWs(Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->lambda$bind$0(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PNLWQ7gwamr82xa8WK3X6LMwQHs(Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/util/IntSet;Ljava/util/concurrent/Executor;Lcom/android/launcher3/util/RunnableList;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->lambda$bind$4(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/util/IntSet;Ljava/util/concurrent/Executor;Lcom/android/launcher3/util/RunnableList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QQvCrtgK5jqulzqvXJBdyUe3G6g(Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->lambda$bind$1(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RpuKTk8QTLppciENNI7o0v80lTQ(Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;Lcom/android/launcher3/LauncherModel$CallbackTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->lambda$executeCallbacksTask$12(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    return-void
.end method

.method public static synthetic $r8$lambda$phxaOvry9YqWtRuu_fBV4KS-YYE(Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->lambda$setupPendingBind$8()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbind(Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->bind(ZI)V

    return-void
.end method

.method constructor <init>(Lcom/android/launcher3/model/BaseLauncherBinder;Lcom/android/launcher3/model/BgDataModel$Callbacks;Ljava/util/concurrent/Executor;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/util/IntArray;)V
    .locals 0
    .param p2, "callbacks"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;
    .param p3, "uiExecutor"    # Ljava/util/concurrent/Executor;
    .param p4, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p5, "bgDataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p6, "myBindingId"    # I
    .param p10, "orderedScreenIds"    # Lcom/android/launcher3/util/IntArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/BgDataModel$Callbacks;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/launcher3/LauncherAppState;",
            "Lcom/android/launcher3/model/BgDataModel;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;",
            ">;",
            "Lcom/android/launcher3/util/IntArray;",
            ")V"
        }
    .end annotation

    .line 268
    .local p7, "workspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .local p8, "appWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .local p9, "extraItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;>;"
    iput-object p1, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object p2, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mCallbacks:Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 270
    iput-object p3, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mUiExecutor:Ljava/util/concurrent/Executor;

    .line 271
    iput-object p4, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 272
    iput-object p5, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    .line 273
    iput p6, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mMyBindingId:I

    .line 274
    iput-object p7, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mWorkspaceItems:Ljava/util/ArrayList;

    .line 275
    iput-object p8, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mAppWidgets:Ljava/util/ArrayList;

    .line 276
    iput-object p9, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mExtraItems:Ljava/util/ArrayList;

    .line 277
    iput-object p10, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mOrderedScreenIds:Lcom/android/launcher3/util/IntArray;

    .line 278
    return-void
.end method

.method private bind(ZI)V
    .locals 18
    .param p1, "isBindSync"    # Z
    .param p2, "workspaceItemCount"    # I

    .line 281
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mCallbacks:Lcom/android/launcher3/model/BgDataModel$Callbacks;

    iget-object v1, v7, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mOrderedScreenIds:Lcom/android/launcher3/util/IntArray;

    .line 282
    invoke-interface {v0, v1}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->getPagesToBindSynchronously(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntSet;

    move-result-object v14

    .line 283
    .local v14, "currentScreenIds":Lcom/android/launcher3/util/IntSet;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null screen ids provided by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mCallbacks:Lcom/android/launcher3/model/BgDataModel$Callbacks;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 287
    .local v15, "currentWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 288
    .local v13, "otherWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 289
    .local v12, "currentAppWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 291
    .local v11, "otherAppWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v0, v7, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mWorkspaceItems:Ljava/util/ArrayList;

    invoke-static {v14, v0, v15, v13}, Lcom/android/launcher3/model/ModelUtils;->filterCurrentWorkspaceItems(Lcom/android/launcher3/util/IntSet;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 293
    iget-object v0, v7, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mAppWidgets:Ljava/util/ArrayList;

    invoke-static {v14, v0, v12, v11}, Lcom/android/launcher3/model/ModelUtils;->filterCurrentWorkspaceItems(Lcom/android/launcher3/util/IntSet;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 295
    iget-object v0, v7, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v10

    .line 296
    .local v10, "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    iget-object v0, v7, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    invoke-virtual {v0, v10, v15}, Lcom/android/launcher3/model/BaseLauncherBinder;->sortWorkspaceItemsSpatially(Lcom/android/launcher3/InvariantDeviceProfile;Ljava/util/ArrayList;)V

    .line 297
    iget-object v0, v7, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    invoke-virtual {v0, v10, v13}, Lcom/android/launcher3/model/BaseLauncherBinder;->sortWorkspaceItemsSpatially(Lcom/android/launcher3/InvariantDeviceProfile;Ljava/util/ArrayList;)V

    .line 300
    new-instance v0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder$$ExternalSyntheticLambda8;

    invoke-direct {v0, v7}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder$$ExternalSyntheticLambda8;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;)V

    iget-object v1, v7, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v7, v0, v1}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    .line 310
    new-instance v0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder$$ExternalSyntheticLambda9;

    invoke-direct {v0, v7}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder$$ExternalSyntheticLambda9;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;)V

    iget-object v1, v7, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v7, v0, v1}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    .line 313
    const/4 v0, 0x6

    iget-object v1, v7, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v7, v15, v0, v1}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->bindItemsInChunks(Ljava/util/List;ILjava/util/concurrent/Executor;)V

    .line 314
    const/4 v0, 0x1

    iget-object v1, v7, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v7, v12, v0, v1}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->bindItemsInChunks(Ljava/util/List;ILjava/util/concurrent/Executor;)V

    .line 315
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->CHANGE_MODEL_DELEGATE_LOADING_ORDER:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    iget-object v0, v7, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mExtraItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder$$ExternalSyntheticLambda10;

    invoke-direct {v1, v7}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder$$ExternalSyntheticLambda10;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 320
    :cond_0
    new-instance v0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    move-object v9, v0

    .line 321
    .local v9, "pendingTasks":Lcom/android/launcher3/util/RunnableList;
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder$$ExternalSyntheticLambda11;

    invoke-direct {v0, v9}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder$$ExternalSyntheticLambda11;-><init>(Lcom/android/launcher3/util/RunnableList;)V

    move-object v8, v0

    .line 323
    .local v8, "pendingExecutor":Ljava/util/concurrent/Executor;
    new-instance v6, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v6}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    .line 325
    .local v6, "onCompleteSignal":Lcom/android/launcher3/util/RunnableList;
    invoke-static {}, Lcom/android/launcher3/Flags;->enableWorkspaceInflation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    sget-object v5, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v4, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder$$ExternalSyntheticLambda12;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v11

    move-object/from16 v16, v9

    move-object v9, v4

    .end local v9    # "pendingTasks":Lcom/android/launcher3/util/RunnableList;
    .local v16, "pendingTasks":Lcom/android/launcher3/util/RunnableList;
    move-object v4, v14

    move-object/from16 v17, v10

    move-object v10, v5

    .end local v10    # "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    .local v17, "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    move-object v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder$$ExternalSyntheticLambda12;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/util/IntSet;Ljava/util/concurrent/Executor;Lcom/android/launcher3/util/RunnableList;)V

    invoke-virtual {v10, v9}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 335
    .end local v16    # "pendingTasks":Lcom/android/launcher3/util/RunnableList;
    .end local v17    # "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    .restart local v9    # "pendingTasks":Lcom/android/launcher3/util/RunnableList;
    .restart local v10    # "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    :cond_1
    move-object/from16 v16, v9

    move-object/from16 v17, v10

    .end local v9    # "pendingTasks":Lcom/android/launcher3/util/RunnableList;
    .end local v10    # "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    .restart local v16    # "pendingTasks":Lcom/android/launcher3/util/RunnableList;
    .restart local v17    # "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    invoke-direct {v7, v13, v11, v14, v8}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->setupPendingBind(Ljava/util/List;Ljava/util/List;Lcom/android/launcher3/util/IntSet;Ljava/util/concurrent/Executor;)V

    .line 337
    invoke-virtual {v6}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    .line 340
    :goto_0
    new-instance v0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder$$ExternalSyntheticLambda13;

    move-object v1, v8

    .end local v8    # "pendingExecutor":Ljava/util/concurrent/Executor;
    .local v1, "pendingExecutor":Ljava/util/concurrent/Executor;
    move-object v8, v0

    move-object/from16 v2, v16

    .end local v16    # "pendingTasks":Lcom/android/launcher3/util/RunnableList;
    .local v2, "pendingTasks":Lcom/android/launcher3/util/RunnableList;
    move-object v9, v14

    move-object/from16 v3, v17

    .end local v17    # "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    .local v3, "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    move-object v10, v2

    move-object v4, v11

    .end local v11    # "otherAppWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .local v4, "otherAppWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    move-object v11, v6

    move-object v5, v12

    .end local v12    # "currentAppWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .local v5, "currentAppWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    move/from16 v12, p2

    move-object/from16 v16, v13

    .end local v13    # "otherWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .local v16, "otherWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    move/from16 v13, p1

    invoke-direct/range {v8 .. v13}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder$$ExternalSyntheticLambda13;-><init>(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;Lcom/android/launcher3/util/RunnableList;IZ)V

    iget-object v8, v7, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v7, v0, v8}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    .line 348
    return-void
.end method

.method private bindItemsInChunks(Ljava/util/List;ILjava/util/concurrent/Executor;)V
    .locals 5
    .param p2, "chunkCount"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;I",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 398
    .local p1, "workspaceItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-direct {p0, p1, p3}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->inflateAsyncAndBind(Ljava/util/List;Ljava/util/concurrent/Executor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    return-void

    .line 403
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 404
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 405
    move v2, v1

    .line 406
    .local v2, "start":I
    add-int v3, v1, p2

    if-gt v3, v0, :cond_1

    move v3, p2

    goto :goto_1

    :cond_1
    sub-int v3, v0, v1

    .line 407
    .local v3, "chunkSize":I
    :goto_1
    new-instance v4, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder$$ExternalSyntheticLambda5;

    invoke-direct {v4, p1, v2, v3}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder$$ExternalSyntheticLambda5;-><init>(Ljava/util/List;II)V

    invoke-virtual {p0, v4, p3}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    .line 404
    .end local v2    # "start":I
    .end local v3    # "chunkSize":I
    add-int/2addr v1, p2

    goto :goto_0

    .line 411
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private inflateAsyncAndBind(Ljava/util/List;Ljava/util/concurrent/Executor;)Z
    .locals 6
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")Z"
        }
    .end annotation

    .line 375
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-static {}, Lcom/android/launcher3/Flags;->enableWorkspaceInflation()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 376
    return v1

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mCallbacks:Lcom/android/launcher3/model/BgDataModel$Callbacks;

    invoke-interface {v0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->getItemInflater()Lcom/android/launcher3/util/ItemInflater;

    move-result-object v0

    .line 379
    .local v0, "inflater":Lcom/android/launcher3/util/ItemInflater;
    if-nez v0, :cond_1

    .line 380
    return v1

    .line 383
    :cond_1
    iget v2, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mMyBindingId:I

    iget-object v3, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget v3, v3, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    .line 384
    const-string v1, "LauncherBinder"

    const-string v2, "Too many consecutive reloads, skipping obsolete view inflation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    return v4

    .line 388
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/celllayout/CellPosMapper;->DEFAULT:Lcom/android/launcher3/celllayout/CellPosMapper;

    .line 389
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v5}, Lcom/android/launcher3/LauncherModel;->getWriter(ZLcom/android/launcher3/celllayout/CellPosMapper;Lcom/android/launcher3/model/BgDataModel$Callbacks;)Lcom/android/launcher3/model/ModelWriter;

    move-result-object v1

    .line 390
    .local v1, "writer":Lcom/android/launcher3/model/ModelWriter;
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder$$ExternalSyntheticLambda14;

    invoke-direct {v3, v0, v1}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder$$ExternalSyntheticLambda14;-><init>(Lcom/android/launcher3/util/ItemInflater;Lcom/android/launcher3/model/ModelWriter;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 391
    invoke-interface {v2}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v2

    .line 392
    .local v2, "bindItems":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;>;>;"
    new-instance v3, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v3, p2}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    .line 393
    return v4
.end method

.method private synthetic lambda$bind$0(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 1
    .param p1, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 301
    invoke-interface {p1}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->clearPendingBinds()V

    .line 302
    invoke-interface {p1}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->startBinding()V

    .line 303
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SMARTSPACE_REMOVAL:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-boolean v0, v0, Lcom/android/launcher3/model/BgDataModel;->isFirstPagePinnedItemEnabled:Z

    invoke-interface {p1, v0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->setIsFirstPagePinnedItemEnabled(Z)V

    .line 307
    :cond_0
    return-void
.end method

.method private synthetic lambda$bind$1(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 1
    .param p1, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 310
    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mOrderedScreenIds:Lcom/android/launcher3/util/IntArray;

    invoke-interface {p1, v0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindScreens(Lcom/android/launcher3/util/IntArray;)V

    return-void
.end method

.method static synthetic lambda$bind$2(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0
    .param p0, "item"    # Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;
    .param p1, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 317
    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindExtraContainerItems(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V

    return-void
.end method

.method private synthetic lambda$bind$3(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    .line 317
    new-instance v0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder$$ExternalSyntheticLambda7;-><init>(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V

    iget-object v1, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private synthetic lambda$bind$4(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/util/IntSet;Ljava/util/concurrent/Executor;Lcom/android/launcher3/util/RunnableList;)V
    .locals 2
    .param p1, "otherWorkspaceItems"    # Ljava/util/ArrayList;
    .param p2, "otherAppWidgets"    # Ljava/util/ArrayList;
    .param p3, "currentScreenIds"    # Lcom/android/launcher3/util/IntSet;
    .param p4, "pendingExecutor"    # Ljava/util/concurrent/Executor;
    .param p5, "onCompleteSignal"    # Lcom/android/launcher3/util/RunnableList;

    .line 327
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->setupPendingBind(Ljava/util/List;Ljava/util/List;Lcom/android/launcher3/util/IntSet;Ljava/util/concurrent/Executor;)V

    .line 332
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder$$ExternalSyntheticLambda6;

    invoke-direct {v1, p5}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder$$ExternalSyntheticLambda6;-><init>(Lcom/android/launcher3/util/RunnableList;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 333
    return-void
.end method

.method static synthetic lambda$bind$5(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;Lcom/android/launcher3/util/RunnableList;IZLcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 6
    .param p0, "currentScreenIds"    # Lcom/android/launcher3/util/IntSet;
    .param p1, "pendingTasks"    # Lcom/android/launcher3/util/RunnableList;
    .param p2, "onCompleteSignal"    # Lcom/android/launcher3/util/RunnableList;
    .param p3, "workspaceItemCount"    # I
    .param p4, "isBindSync"    # Z
    .param p5, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 342
    invoke-static {}, Lcom/android/launcher3/Flags;->enableWorkspaceInflation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->setThreadPriority(I)V

    .line 345
    :cond_0
    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->onInitialBindComplete(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;Lcom/android/launcher3/util/RunnableList;IZ)V

    .line 347
    return-void
.end method

.method static synthetic lambda$bindItemsInChunks$11(Ljava/util/List;IILcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 2
    .param p0, "workspaceItems"    # Ljava/util/List;
    .param p1, "start"    # I
    .param p2, "chunkSize"    # I
    .param p3, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 408
    add-int v0, p1, p2

    invoke-interface {p0, p1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindItems(Ljava/util/List;Z)V

    return-void
.end method

.method private synthetic lambda$executeCallbacksTask$12(Lcom/android/launcher3/LauncherModel$CallbackTask;)V
    .locals 2
    .param p1, "task"    # Lcom/android/launcher3/LauncherModel$CallbackTask;

    .line 415
    iget v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mMyBindingId:I

    iget-object v1, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget v1, v1, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    if-eq v0, v1, :cond_0

    .line 416
    const-string v0, "LauncherBinder"

    const-string v1, "Too many consecutive reloads, skipping obsolete data-bind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mCallbacks:Lcom/android/launcher3/model/BgDataModel$Callbacks;

    invoke-interface {p1, v0}, Lcom/android/launcher3/LauncherModel$CallbackTask;->execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    .line 420
    return-void
.end method

.method static synthetic lambda$inflateAsyncAndBind$10(Ljava/util/List;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0
    .param p0, "bindItems"    # Ljava/util/List;
    .param p1, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 392
    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindInflatedItems(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$inflateAsyncAndBind$9(Lcom/android/launcher3/util/ItemInflater;Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/util/Pair;
    .locals 1
    .param p0, "inflater"    # Lcom/android/launcher3/util/ItemInflater;
    .param p1, "writer"    # Lcom/android/launcher3/model/ModelWriter;
    .param p2, "i"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 391
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/launcher3/util/ItemInflater;->inflateItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/ModelWriter;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setupPendingBind$6(Lcom/android/launcher3/model/StringCache;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0
    .param p0, "cacheClone"    # Lcom/android/launcher3/model/StringCache;
    .param p1, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 359
    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindStringCache(Lcom/android/launcher3/model/StringCache;)V

    return-void
.end method

.method static synthetic lambda$setupPendingBind$7(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0
    .param p0, "currentScreenIds"    # Lcom/android/launcher3/util/IntSet;
    .param p1, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 361
    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->finishBindingItems(Lcom/android/launcher3/util/IntSet;)V

    return-void
.end method

.method private synthetic lambda$setupPendingBind$8()V
    .locals 2

    .line 364
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->setThreadPriority(I)V

    .line 365
    sget-object v0, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/ItemInstallQueue;

    .line 366
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/ItemInstallQueue;->resumeModelPush(I)V

    .line 367
    return-void
.end method

.method private setupPendingBind(Ljava/util/List;Ljava/util/List;Lcom/android/launcher3/util/IntSet;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p3, "currentScreenIds"    # Lcom/android/launcher3/util/IntSet;
    .param p4, "pendingExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/util/IntSet;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 355
    .local p1, "otherWorkspaceItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .local p2, "otherAppWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0, p4}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->bindItemsInChunks(Ljava/util/List;ILjava/util/concurrent/Executor;)V

    .line 356
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0, p4}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->bindItemsInChunks(Ljava/util/List;ILjava/util/concurrent/Executor;)V

    .line 358
    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->stringCache:Lcom/android/launcher3/model/StringCache;

    invoke-virtual {v0}, Lcom/android/launcher3/model/StringCache;->clone()Lcom/android/launcher3/model/StringCache;

    move-result-object v0

    .line 359
    .local v0, "cacheClone":Lcom/android/launcher3/model/StringCache;
    new-instance v1, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/model/StringCache;)V

    invoke-virtual {p0, v1, p4}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    .line 361
    new-instance v1, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder$$ExternalSyntheticLambda3;

    invoke-direct {v1, p3}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/util/IntSet;)V

    invoke-virtual {p0, v1, p4}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    .line 362
    new-instance v1, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;)V

    invoke-interface {p4, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 368
    return-void
.end method


# virtual methods
.method protected executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "task"    # Lcom/android/launcher3/LauncherModel$CallbackTask;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 414
    new-instance v0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 421
    return-void
.end method
