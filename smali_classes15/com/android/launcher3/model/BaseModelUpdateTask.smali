.class public abstract Lcom/android/launcher3/model/BaseModelUpdateTask;
.super Ljava/lang/Object;
.source "BaseModelUpdateTask.java"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$ModelUpdateTask;


# static fields
.field private static final DEBUG_TASKS:Z = false

.field private static final TAG:Ljava/lang/String; = "BaseModelUpdateTask"


# instance fields
.field private mAllAppsList:Lcom/android/launcher3/model/AllAppsList;

.field private mApp:Lcom/android/launcher3/LauncherAppState;

.field private mDataModel:Lcom/android/launcher3/model/BgDataModel;

.field private mModel:Lcom/android/launcher3/LauncherModel;

.field private mUiExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$4ZefZ-rXQ24hmdx8EYqnlKuLDM8(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tuG5Wi3K75NjC1nygBEPdpHJI5o(Lcom/android/launcher3/util/IntSparseArrayMap;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$bindApplicationsIfNeeded$10(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "a"    # Ljava/lang/Integer;
    .param p1, "b"    # Ljava/lang/Integer;

    .line 156
    return-object p0
.end method

.method static synthetic lambda$bindApplicationsIfNeeded$11([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0
    .param p0, "apps"    # [Lcom/android/launcher3/model/data/AppInfo;
    .param p1, "flags"    # I
    .param p2, "packageUserKeytoUidMap"    # Ljava/util/Map;
    .param p3, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 157
    invoke-interface {p3, p0, p1, p2}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindAllApplications([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;)V

    return-void
.end method

.method static synthetic lambda$bindApplicationsIfNeeded$8(Lcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/util/PackageUserKey;
    .locals 3
    .param p0, "appInfo"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 155
    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    iget-object v1, p0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object v0
.end method

.method static synthetic lambda$bindApplicationsIfNeeded$9(Lcom/android/launcher3/model/data/AppInfo;)Ljava/lang/Integer;
    .locals 1
    .param p0, "appInfo"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 156
    iget v0, p0, Lcom/android/launcher3/model/data/AppInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$bindDeepShortcuts$5(Ljava/util/HashMap;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0
    .param p0, "shortcutMapCopy"    # Ljava/util/HashMap;
    .param p1, "callbacks"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 132
    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindDeepShortcutMap(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic lambda$bindExtraContainerItems$4(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0
    .param p0, "item"    # Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;
    .param p1, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 126
    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindExtraContainerItems(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V

    return-void
.end method

.method static synthetic lambda$bindUpdatedWidgets$6(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0
    .param p0, "widgets"    # Ljava/util/ArrayList;
    .param p1, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 138
    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindAllWidgets(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$bindUpdatedWorkspaceItems$1(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
    .locals 2
    .param p0, "info"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 110
    iget v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->id:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$bindUpdatedWorkspaceItems$2(Ljava/util/List;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0
    .param p0, "workspaceUpdates"    # Ljava/util/List;
    .param p1, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 113
    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindWorkspaceItemsChanged(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$bindUpdatedWorkspaceItems$3(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)I
    .locals 1
    .param p0, "info"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 118
    iget v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->container:I

    return v0
.end method

.method static synthetic lambda$deleteAndBindComponentsRemoved$7(Ljava/util/function/Predicate;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0
    .param p0, "matcher"    # Ljava/util/function/Predicate;
    .param p1, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 146
    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindWorkspaceComponentsRemoved(Ljava/util/function/Predicate;)V

    return-void
.end method

.method static synthetic lambda$scheduleCallbackTask$0(Lcom/android/launcher3/LauncherModel$CallbackTask;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0
    .param p0, "task"    # Lcom/android/launcher3/LauncherModel$CallbackTask;
    .param p1, "cb"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 97
    invoke-interface {p0, p1}, Lcom/android/launcher3/LauncherModel$CallbackTask;->execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method


# virtual methods
.method public bindApplicationsIfNeeded()V
    .locals 6

    .line 150
    iget-object v0, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/model/AllAppsList;->getAndResetChangeFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/model/AllAppsList;->copyData()[Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v0

    .line 152
    .local v0, "apps":[Lcom/android/launcher3/model/data/AppInfo;
    iget-object v1, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/model/AllAppsList;->getFlags()I

    move-result v1

    .line 153
    .local v1, "flags":I
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda2;-><init>()V

    new-instance v4, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda3;-><init>()V

    new-instance v5, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda4;

    invoke-direct {v5}, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda4;-><init>()V

    .line 154
    invoke-static {v3, v4, v5}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object v3

    .line 153
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 157
    .local v2, "packageUserKeytoUidMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/util/PackageUserKey;Ljava/lang/Integer;>;"
    new-instance v3, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda5;-><init>([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;)V

    invoke-virtual {p0, v3}, Lcom/android/launcher3/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 159
    .end local v0    # "apps":[Lcom/android/launcher3/model/data/AppInfo;
    .end local v1    # "flags":I
    .end local v2    # "packageUserKeytoUidMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/util/PackageUserKey;Ljava/lang/Integer;>;"
    :cond_0
    return-void
.end method

.method public bindDeepShortcuts(Lcom/android/launcher3/model/BgDataModel;)V
    .locals 2
    .param p1, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 132
    .local v0, "shortcutMapCopy":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/ComponentKey;Ljava/lang/Integer;>;"
    new-instance v1, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda13;

    invoke-direct {v1, v0}, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda13;-><init>(Ljava/util/HashMap;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 133
    return-void
.end method

.method public bindExtraContainerItems(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    .line 126
    new-instance v0, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 127
    return-void
.end method

.method public bindUpdatedWidgets(Lcom/android/launcher3/model/BgDataModel;)V
    .locals 2
    .param p1, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;

    .line 136
    iget-object v0, p1, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    iget-object v1, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 137
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/WidgetsModel;->getWidgetsListForPicker(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 138
    .local v0, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;>;"
    new-instance v1, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda6;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 139
    return-void
.end method

.method public bindUpdatedWorkspaceItems(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 109
    .local p1, "allUpdates":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda7;-><init>()V

    .line 110
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 111
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 112
    .local v0, "workspaceUpdates":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    new-instance v1, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0}, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda8;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 117
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda9;-><init>()V

    .line 118
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    .line 119
    invoke-interface {v1}, Ljava/util/stream/IntStream;->distinct()Ljava/util/stream/IntStream;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->extraItems:Lcom/android/launcher3/util/IntSparseArrayMap;

    .line 120
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda10;

    invoke-direct {v3, v2}, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda10;-><init>(Lcom/android/launcher3/util/IntSparseArrayMap;)V

    invoke-interface {v1, v3}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda11;

    invoke-direct {v2}, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda11;-><init>()V

    .line 121
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda12;-><init>(Lcom/android/launcher3/model/BaseModelUpdateTask;)V

    .line 122
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 123
    return-void
.end method

.method public deleteAndBindComponentsRemoved(Ljava/util/function/Predicate;Ljava/lang/String;)V
    .locals 1
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 143
    .local p1, "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/model/ModelWriter;->deleteItemsFromDatabase(Ljava/util/function/Predicate;Ljava/lang/String;)V

    .line 146
    new-instance v0, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Predicate;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 147
    return-void
.end method

.method public abstract execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
.end method

.method public getModelWriter()Lcom/android/launcher3/model/ModelWriter;
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mModel:Lcom/android/launcher3/LauncherModel;

    sget-object v1, Lcom/android/launcher3/celllayout/CellPosMapper;->DEFAULT:Lcom/android/launcher3/celllayout/CellPosMapper;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/launcher3/LauncherModel;->getWriter(ZLcom/android/launcher3/celllayout/CellPosMapper;Lcom/android/launcher3/model/BgDataModel$Callbacks;)Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "model"    # Lcom/android/launcher3/LauncherModel;
    .param p3, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p4, "allAppsList"    # Lcom/android/launcher3/model/AllAppsList;
    .param p5, "uiExecutor"    # Ljava/util/concurrent/Executor;

    .line 66
    iput-object p1, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 67
    iput-object p2, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 68
    iput-object p3, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mDataModel:Lcom/android/launcher3/model/BgDataModel;

    .line 69
    iput-object p4, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    .line 70
    iput-object p5, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mUiExecutor:Ljava/util/concurrent/Executor;

    .line 71
    return-void
.end method

.method public final run()V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->isModelLoaded()Z

    move-result v0

    .line 76
    .local v0, "isModelLoaded":Z
    if-nez v0, :cond_0

    .line 81
    return-void

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v2, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/launcher3/model/BaseModelUpdateTask;->execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V

    .line 84
    return-void
.end method

.method public final scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V
    .locals 6
    .param p1, "task"    # Lcom/android/launcher3/LauncherModel$CallbackTask;

    .line 96
    iget-object v0, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getCallbacks()[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 97
    .local v3, "cb":Lcom/android/launcher3/model/BgDataModel$Callbacks;
    iget-object v4, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mUiExecutor:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda14;

    invoke-direct {v5, p1, v3}, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda14;-><init>(Lcom/android/launcher3/LauncherModel$CallbackTask;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 96
    .end local v3    # "cb":Lcom/android/launcher3/model/BgDataModel$Callbacks;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method
