.class public Lcom/android/launcher3/model/ModelDelegate;
.super Ljava/lang/Object;
.source "ModelDelegate.java"

# interfaces
.implements Lcom/android/launcher3/util/ResourceBasedOverride;


# instance fields
.field protected mApp:Lcom/android/launcher3/LauncherAppState;

.field protected mAppsList:Lcom/android/launcher3/model/AllAppsList;

.field protected mContext:Landroid/content/Context;

.field protected mDataModel:Lcom/android/launcher3/model/BgDataModel;

.field protected mIsPrimaryInstance:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private init(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p3, "appsList"    # Lcom/android/launcher3/model/AllAppsList;
    .param p4, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p5, "isPrimaryInstance"    # Z

    .line 65
    iput-object p2, p0, Lcom/android/launcher3/model/ModelDelegate;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 66
    iput-object p3, p0, Lcom/android/launcher3/model/ModelDelegate;->mAppsList:Lcom/android/launcher3/model/AllAppsList;

    .line 67
    iput-object p4, p0, Lcom/android/launcher3/model/ModelDelegate;->mDataModel:Lcom/android/launcher3/model/BgDataModel;

    .line 68
    iput-boolean p5, p0, Lcom/android/launcher3/model/ModelDelegate;->mIsPrimaryInstance:Z

    .line 69
    iput-object p1, p0, Lcom/android/launcher3/model/ModelDelegate;->mContext:Landroid/content/Context;

    .line 70
    return-void
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Z)Lcom/android/launcher3/model/ModelDelegate;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "appsList"    # Lcom/android/launcher3/model/AllAppsList;
    .param p3, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p4, "isPrimaryInstance"    # Z

    .line 46
    const-class v0, Lcom/android/launcher3/model/ModelDelegate;

    sget v1, Lcom/android/launcher3/R$string;->model_delegate_class:I

    invoke-static {v0, p0, v1}, Lcom/android/launcher3/util/ResourceBasedOverride$Overrides;->getObject(Ljava/lang/Class;Landroid/content/Context;I)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/ModelDelegate;

    .line 48
    .local v0, "delegate":Lcom/android/launcher3/model/ModelDelegate;
    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/model/ModelDelegate;->init(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Z)V

    .line 49
    return-object v0
.end method


# virtual methods
.method public bindAllModelExtras([Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0
    .param p1, "callbacks"    # [Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 99
    return-void
.end method

.method public destroy()V
    .locals 0

    .line 126
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 134
    return-void
.end method

.method public loadAndBindAllAppsItems(Lcom/android/launcher3/model/UserManagerState;[Lcom/android/launcher3/model/BgDataModel$Callbacks;Ljava/util/Map;)V
    .locals 0
    .param p1, "ums"    # Lcom/android/launcher3/model/UserManagerState;
    .param p2, "callbacks"    # [Lcom/android/launcher3/model/BgDataModel$Callbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/UserManagerState;",
            "[",
            "Lcom/android/launcher3/model/BgDataModel$Callbacks;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 91
    .local p3, "pinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    return-void
.end method

.method public loadAndBindOtherItems([Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0
    .param p1, "callbacks"    # [Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 95
    return-void
.end method

.method public loadAndBindWorkspaceItems(Lcom/android/launcher3/model/UserManagerState;[Lcom/android/launcher3/model/BgDataModel$Callbacks;Ljava/util/Map;)V
    .locals 0
    .param p1, "ums"    # Lcom/android/launcher3/model/UserManagerState;
    .param p2, "callbacks"    # [Lcom/android/launcher3/model/BgDataModel$Callbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/UserManagerState;",
            "[",
            "Lcom/android/launcher3/model/BgDataModel$Callbacks;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 85
    .local p3, "pinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    return-void
.end method

.method public loadStringCache(Lcom/android/launcher3/model/StringCache;)V
    .locals 1
    .param p1, "cache"    # Lcom/android/launcher3/model/StringCache;

    .line 107
    iget-object v0, p0, Lcom/android/launcher3/model/ModelDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/model/StringCache;->loadStrings(Landroid/content/Context;)V

    .line 108
    return-void
.end method

.method public markActive()V
    .locals 0

    .line 102
    return-void
.end method

.method public modelLoadComplete()V
    .locals 0

    .line 120
    return-void
.end method

.method public validateData()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/model/ModelDelegate;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/PackageManagerHelper;->hasShortcutsPermission(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/model/ModelDelegate;->mAppsList:Lcom/android/launcher3/model/AllAppsList;

    .line 76
    invoke-virtual {v1}, Lcom/android/launcher3/model/AllAppsList;->hasShortcutHostPermission()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/launcher3/model/ModelDelegate;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    .line 79
    :cond_0
    return-void
.end method

.method public workspaceLoadComplete()V
    .locals 0

    .line 114
    return-void
.end method
