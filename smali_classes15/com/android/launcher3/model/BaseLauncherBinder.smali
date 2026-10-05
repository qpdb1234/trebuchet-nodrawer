.class public abstract Lcom/android/launcher3/model/BaseLauncherBinder;
.super Ljava/lang/Object;
.source "BaseLauncherBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;,
        Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;
    }
.end annotation


# static fields
.field private static final ITEMS_CHUNK:I = 0x6

.field protected static final TAG:Ljava/lang/String; = "LauncherBinder"


# instance fields
.field protected final mApp:Lcom/android/launcher3/LauncherAppState;

.field private final mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

.field protected final mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

.field final mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

.field private mMyBindingId:I

.field protected final mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;


# direct methods
.method public static synthetic $r8$lambda$ouovhU4C6cKWEKXriVHMqFRyB7s(Lcom/android/launcher3/model/BaseLauncherBinder;Lcom/android/launcher3/LauncherModel$CallbackTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder;->lambda$executeCallbacksTask$5(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ubiSRrRPrLziLe4X9mgHD0CU_Hs(Ljava/util/ArrayList;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;[Lcom/android/launcher3/model/BgDataModel$Callbacks;Lcom/android/launcher3/util/LooperExecutor;)V
    .locals 0
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p3, "allAppsList"    # Lcom/android/launcher3/model/AllAppsList;
    .param p4, "callbacksList"    # [Lcom/android/launcher3/model/BgDataModel$Callbacks;
    .param p5, "uiExecutor"    # Lcom/android/launcher3/util/LooperExecutor;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p5, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    .line 84
    iput-object p1, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 85
    iput-object p2, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    .line 86
    iput-object p3, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    .line 87
    iput-object p4, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 88
    return-void
.end method

.method private bindWorkspaceAllAtOnce(ZZ)V
    .locals 21
    .param p1, "incrementBindId"    # Z
    .param p2, "isBindSync"    # Z

    .line 131
    move-object/from16 v12, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 132
    .local v13, "workspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 133
    .local v14, "appWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    new-instance v0, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntArray;-><init>()V

    move-object v15, v0

    .line 134
    .local v15, "orderedScreenIds":Lcom/android/launcher3/util/IntArray;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 136
    .local v11, "extraItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;>;"
    iget-object v1, v12, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v1

    .line 137
    :try_start_0
    iget-object v0, v12, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 138
    iget-object v0, v12, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 139
    iget-object v0, v12, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v0}, Lcom/android/launcher3/model/BgDataModel;->collectWorkspaceScreens()Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/android/launcher3/util/IntArray;->addAll(Lcom/android/launcher3/util/IntArray;)V

    .line 140
    iget-object v0, v12, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->extraItems:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/model/BaseLauncherBinder$$ExternalSyntheticLambda6;

    invoke-direct {v2, v11}, Lcom/android/launcher3/model/BaseLauncherBinder$$ExternalSyntheticLambda6;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/IntSparseArrayMap;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 141
    if-eqz p1, :cond_0

    .line 142
    :try_start_1
    iget-object v0, v12, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget v2, v0, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    .line 143
    iget-object v0, v12, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v12, Lcom/android/launcher3/model/BaseLauncherBinder;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherModel;->getLastLoadId()I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/model/BgDataModel;->lastLoadId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    move/from16 v2, p2

    move-object/from16 v20, v11

    goto :goto_2

    .line 145
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, v12, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget v0, v0, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    iput v0, v12, Lcom/android/launcher3/model/BaseLauncherBinder;->mMyBindingId:I

    .line 146
    iget-object v0, v12, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSparseArrayMap;->size()I

    move-result v0

    .line 147
    .local v0, "workspaceItemCount":I
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 149
    iget-object v10, v12, Lcom/android/launcher3/model/BaseLauncherBinder;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    array-length v9, v10

    const/4 v1, 0x0

    move v8, v1

    :goto_1
    if-ge v8, v9, :cond_1

    aget-object v16, v10, v8

    .line 150
    .local v16, "cb":Lcom/android/launcher3/model/BgDataModel$Callbacks;
    new-instance v7, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;

    iget-object v4, v12, Lcom/android/launcher3/model/BaseLauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    iget-object v5, v12, Lcom/android/launcher3/model/BaseLauncherBinder;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v6, v12, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget v3, v12, Lcom/android/launcher3/model/BaseLauncherBinder;->mMyBindingId:I

    move-object v1, v7

    move-object/from16 v2, p0

    move/from16 v17, v3

    move-object/from16 v3, v16

    move-object v12, v7

    move/from16 v7, v17

    move/from16 v17, v8

    move-object v8, v13

    move/from16 v18, v9

    move-object v9, v14

    move-object/from16 v19, v10

    move-object v10, v11

    move-object/from16 v20, v11

    .end local v11    # "extraItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;>;"
    .local v20, "extraItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;>;"
    move-object v11, v15

    invoke-direct/range {v1 .. v11}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder;Lcom/android/launcher3/model/BgDataModel$Callbacks;Ljava/util/concurrent/Executor;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/util/IntArray;)V

    .line 152
    move/from16 v2, p2

    invoke-static {v12, v2, v0}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->-$$Nest$mbind(Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;ZI)V

    .line 149
    .end local v16    # "cb":Lcom/android/launcher3/model/BgDataModel$Callbacks;
    add-int/lit8 v8, v17, 0x1

    move-object/from16 v12, p0

    move/from16 v9, v18

    move-object/from16 v10, v19

    move-object/from16 v11, v20

    goto :goto_1

    .line 154
    .end local v20    # "extraItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;>;"
    .restart local v11    # "extraItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;>;"
    :cond_1
    return-void

    .line 147
    .end local v0    # "workspaceItemCount":I
    :catchall_1
    move-exception v0

    move/from16 v2, p2

    move-object/from16 v20, v11

    .end local v11    # "extraItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;>;"
    .restart local v20    # "extraItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;>;"
    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_2
.end method

.method static synthetic lambda$bindAllApps$0(Lcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/util/PackageUserKey;
    .locals 3
    .param p0, "appInfo"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 170
    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    iget-object v1, p0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object v0
.end method

.method static synthetic lambda$bindAllApps$1(Lcom/android/launcher3/model/data/AppInfo;)Ljava/lang/Integer;
    .locals 1
    .param p0, "appInfo"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 171
    iget v0, p0, Lcom/android/launcher3/model/data/AppInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$bindAllApps$2(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "a"    # Ljava/lang/Integer;
    .param p1, "b"    # Ljava/lang/Integer;

    .line 171
    return-object p0
.end method

.method static synthetic lambda$bindAllApps$3([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0
    .param p0, "apps"    # [Lcom/android/launcher3/model/data/AppInfo;
    .param p1, "flags"    # I
    .param p2, "packageUserKeytoUidMap"    # Ljava/util/Map;
    .param p3, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 172
    invoke-interface {p3, p0, p1, p2}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindAllApplications([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;)V

    return-void
.end method

.method private synthetic lambda$executeCallbacksTask$5(Lcom/android/launcher3/LauncherModel$CallbackTask;)V
    .locals 4
    .param p1, "task"    # Lcom/android/launcher3/LauncherModel$CallbackTask;

    .line 224
    iget v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mMyBindingId:I

    iget-object v1, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget v1, v1, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    if-eq v0, v1, :cond_0

    .line 225
    const-string v0, "LauncherBinder"

    const-string v1, "Too many consecutive reloads, skipping obsolete data-bind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 229
    .local v3, "cb":Lcom/android/launcher3/model/BgDataModel$Callbacks;
    invoke-interface {p1, v3}, Lcom/android/launcher3/LauncherModel$CallbackTask;->execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    .line 228
    .end local v3    # "cb":Lcom/android/launcher3/model/BgDataModel$Callbacks;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    :cond_1
    return-void
.end method

.method static synthetic lambda$sortWorkspaceItemsSpatially$4(IILcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/ItemInfo;)I
    .locals 3
    .param p0, "screenCellCount"    # I
    .param p1, "screenCols"    # I
    .param p2, "lhs"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "rhs"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 194
    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v1, p3, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ne v0, v1, :cond_0

    .line 196
    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    packed-switch v0, :pswitch_data_0

    .line 213
    const/4 v0, 0x0

    return v0

    .line 198
    :pswitch_0
    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    mul-int/2addr v0, p0

    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    add-int/2addr v0, v1

    .line 200
    .local v0, "lr":I
    iget v1, p3, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    mul-int/2addr v1, p0

    iget v2, p3, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    mul-int/2addr v2, p1

    add-int/2addr v1, v2

    iget v2, p3, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    add-int/2addr v1, v2

    .line 202
    .local v1, "rr":I
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    return v2

    .line 206
    .end local v0    # "lr":I
    .end local v1    # "rr":I
    :pswitch_1
    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v1, p3, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0

    .line 217
    :cond_0
    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v1, p3, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch -0x65
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bindAllApps()V
    .locals 6

    .line 166
    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/model/AllAppsList;->copyData()[Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v0

    .line 167
    .local v0, "apps":[Lcom/android/launcher3/model/data/AppInfo;
    iget-object v1, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/model/AllAppsList;->getFlags()I

    move-result v1

    .line 168
    .local v1, "flags":I
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/model/BaseLauncherBinder$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/launcher3/model/BaseLauncherBinder$$ExternalSyntheticLambda1;-><init>()V

    new-instance v4, Lcom/android/launcher3/model/BaseLauncherBinder$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lcom/android/launcher3/model/BaseLauncherBinder$$ExternalSyntheticLambda2;-><init>()V

    new-instance v5, Lcom/android/launcher3/model/BaseLauncherBinder$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Lcom/android/launcher3/model/BaseLauncherBinder$$ExternalSyntheticLambda3;-><init>()V

    .line 169
    invoke-static {v3, v4, v5}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object v3

    .line 168
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 172
    .local v2, "packageUserKeytoUidMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/util/PackageUserKey;Ljava/lang/Integer;>;"
    new-instance v3, Lcom/android/launcher3/model/BaseLauncherBinder$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/launcher3/model/BaseLauncherBinder$$ExternalSyntheticLambda4;-><init>([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;)V

    iget-object v4, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/model/BaseLauncherBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    .line 174
    return-void
.end method

.method public abstract bindDeepShortcuts()V
.end method

.method public abstract bindSmartspaceWidget()V
.end method

.method public abstract bindWidgets()V
.end method

.method public bindWorkspace(ZZ)V
    .locals 1
    .param p1, "incrementBindId"    # Z
    .param p2, "isBindSync"    # Z

    .line 94
    const-string v0, "BaseLauncherBinder#bindWorkspace"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 96
    :try_start_0
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_WORKSPACE_LOADING_OPTIMIZATION:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    .line 98
    invoke-virtual {v0}, Lcom/android/launcher3/model/BgDataModel;->collectWorkspaceScreens()Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/model/BaseLauncherBinder;->initWorkspaceBinder(ZLcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;

    move-result-object v0

    .line 99
    .local v0, "workspaceBinder":Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;
    invoke-virtual {v0, p2}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->bindCurrentWorkspacePages(Z)V

    .line 100
    invoke-virtual {v0}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->bindOtherWorkspacePages()V

    .line 101
    .end local v0    # "workspaceBinder":Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;
    goto :goto_0

    .line 102
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/model/BaseLauncherBinder;->bindWorkspaceAllAtOnce(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 106
    nop

    .line 107
    return-void

    .line 105
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 106
    throw v0
.end method

.method protected executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "task"    # Lcom/android/launcher3/LauncherModel$CallbackTask;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 223
    new-instance v0, Lcom/android/launcher3/model/BaseLauncherBinder$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder;Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 232
    return-void
.end method

.method public initWorkspaceBinder(ZLcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;
    .locals 3
    .param p1, "incrementBindId"    # Z
    .param p2, "workspacePages"    # Lcom/android/launcher3/util/IntArray;

    .line 119
    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v0

    .line 120
    if-eqz p1, :cond_0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget v2, v1, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    .line 122
    iget-object v1, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherModel;->getLastLoadId()I

    move-result v2

    iput v2, v1, Lcom/android/launcher3/model/BgDataModel;->lastLoadId:I

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget v1, v1, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    iput v1, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mMyBindingId:I

    .line 125
    new-instance v1, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;

    invoke-direct {v1, p0, p2}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder;Lcom/android/launcher3/util/IntArray;)V

    monitor-exit v0

    return-object v1

    .line 126
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public newIdleLock(Ljava/lang/Object;)Lcom/android/launcher3/util/LooperIdleLock;
    .locals 2
    .param p1, "lock"    # Ljava/lang/Object;

    .line 238
    new-instance v0, Lcom/android/launcher3/util/LooperIdleLock;

    iget-object v1, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/util/LooperIdleLock;-><init>(Ljava/lang/Object;Landroid/os/Looper;)V

    .line 240
    .local v0, "idleLock":Lcom/android/launcher3/util/LooperIdleLock;
    iget-object v1, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/MessageQueue;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperIdleLock;->queueIdle()Z

    .line 243
    :cond_0
    return-object v0
.end method

.method protected sortWorkspaceItemsSpatially(Lcom/android/launcher3/InvariantDeviceProfile;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "profile"    # Lcom/android/launcher3/InvariantDeviceProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/InvariantDeviceProfile;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 191
    .local p2, "workspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget v0, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 192
    .local v0, "screenCols":I
    iget v1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v2, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    mul-int/2addr v1, v2

    .line 193
    .local v1, "screenCellCount":I
    new-instance v2, Lcom/android/launcher3/model/BaseLauncherBinder$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, v0}, Lcom/android/launcher3/model/BaseLauncherBinder$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-static {p2, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 220
    return-void
.end method
