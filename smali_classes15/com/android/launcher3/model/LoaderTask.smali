.class public Lcom/android/launcher3/model/LoaderTask;
.super Ljava/lang/Object;
.source "LoaderTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEBUG:Z = true

.field public static final SMARTSPACE_ON_HOME_SCREEN:Ljava/lang/String; = "pref_smartspace_home_screen"

.field private static final TAG:Ljava/lang/String; = "LoaderTask"


# instance fields
.field protected final mApp:Lcom/android/launcher3/LauncherAppState;

.field private final mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

.field protected final mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

.field private mDbName:Ljava/lang/String;

.field private mFirstScreenBroadcast:Lcom/android/launcher3/model/FirstScreenBroadcast;

.field private final mIconCache:Lcom/android/launcher3/icons/IconCache;

.field private mInstallingPkgsCached:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsRestoreFromBackup:Z

.field private mItemsDeleted:Z

.field private final mLauncherApps:Landroid/content/pm/LauncherApps;

.field private final mLauncherBinder:Lcom/android/launcher3/model/LauncherBinder;

.field private final mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

.field private final mPendingPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionHelper:Lcom/android/launcher3/pm/InstallSessionHelper;

.field private mShortcutKeyToPinnedShortcuts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStopped:Z

.field private final mUserCache:Lcom/android/launcher3/pm/UserCache;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

.field protected final mWidgetProvidersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$qiuv82o71zOaU1I8eZ5668BnIbE(Lcom/android/launcher3/model/LoaderTask;Lcom/android/launcher3/model/data/IconRequestInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/LoaderTask;->lambda$loadAllApps$8(Lcom/android/launcher3/model/data/IconRequestInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tOGU8jTEOtSKpjs_v5f_sThAqdg(Lcom/android/launcher3/model/LoaderTask;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/LoaderTask;->lambda$processAppPairItems$5(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vXeMwkYxBWeeA_rcg3nVfpHJoq4(Lcom/android/launcher3/model/LoaderTask;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/LoaderTask;->lambda$processAppPairItems$4(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelDelegate;Lcom/android/launcher3/model/LauncherBinder;)V
    .locals 7
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "bgAllAppsList"    # Lcom/android/launcher3/model/AllAppsList;
    .param p3, "bgModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p4, "modelDelegate"    # Lcom/android/launcher3/model/ModelDelegate;
    .param p5, "launcherBinder"    # Lcom/android/launcher3/model/LauncherBinder;

    .line 159
    new-instance v6, Lcom/android/launcher3/model/UserManagerState;

    invoke-direct {v6}, Lcom/android/launcher3/model/UserManagerState;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/model/LoaderTask;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelDelegate;Lcom/android/launcher3/model/LauncherBinder;Lcom/android/launcher3/model/UserManagerState;)V

    .line 160
    return-void
.end method

.method constructor <init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelDelegate;Lcom/android/launcher3/model/LauncherBinder;Lcom/android/launcher3/model/UserManagerState;)V
    .locals 2
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "bgAllAppsList"    # Lcom/android/launcher3/model/AllAppsList;
    .param p3, "bgModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p4, "modelDelegate"    # Lcom/android/launcher3/model/ModelDelegate;
    .param p5, "launcherBinder"    # Lcom/android/launcher3/model/LauncherBinder;
    .param p6, "userManagerState"    # Lcom/android/launcher3/model/UserManagerState;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mWidgetProvidersMap:Ljava/util/Map;

    .line 153
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mPendingPackages:Ljava/util/Set;

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/model/LoaderTask;->mItemsDeleted:Z

    .line 166
    iput-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 167
    iput-object p2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    .line 168
    iput-object p3, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    .line 169
    iput-object p4, p0, Lcom/android/launcher3/model/LoaderTask;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    .line 170
    iput-object p5, p0, Lcom/android/launcher3/model/LoaderTask;->mLauncherBinder:Lcom/android/launcher3/model/LauncherBinder;

    .line 171
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 172
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Landroid/os/UserManager;

    .line 173
    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/UserCache;

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mUserCache:Lcom/android/launcher3/pm/UserCache;

    .line 174
    sget-object v0, Lcom/android/launcher3/pm/InstallSessionHelper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/InstallSessionHelper;

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mSessionHelper:Lcom/android/launcher3/pm/InstallSessionHelper;

    .line 175
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    .line 176
    iput-object p6, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mInstallingPkgsCached:Ljava/util/HashMap;

    .line 178
    return-void
.end method

.method public static isValidProvider(Landroid/appwidget/AppWidgetProviderInfo;)Z
    .locals 1
    .param p0, "provider"    # Landroid/appwidget/AppWidgetProviderInfo;

    .line 793
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 794
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 793
    :goto_0
    return v0
.end method

.method private synthetic lambda$loadAllApps$8(Lcom/android/launcher3/model/data/IconRequestInfo;)V
    .locals 2
    .param p1, "iconRequestInfo"    # Lcom/android/launcher3/model/data/IconRequestInfo;

    .line 736
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iget-object v1, p1, Lcom/android/launcher3/model/data/IconRequestInfo;->itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/AllAppsList;->updateSectionName(Lcom/android/launcher3/model/data/AppInfo;)V

    return-void
.end method

.method static synthetic lambda$loadWorkspaceImpl$2(Lcom/android/launcher3/util/PackageUserKey;)Ljava/lang/String;
    .locals 1
    .param p0, "info"    # Lcom/android/launcher3/util/PackageUserKey;

    .line 448
    iget-object v0, p0, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$processAppPairItems$3(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 2
    .param p0, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 510
    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$processAppPairItems$4(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 512
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    return-void
.end method

.method private synthetic lambda$processAppPairItems$5(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 2
    .param p1, "fi"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 511
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/model/LoaderTask;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$processFolderItems$6(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/folder/FolderGridOrganizer;)V
    .locals 0
    .param p0, "folder"    # Lcom/android/launcher3/model/data/FolderInfo;
    .param p1, "verifier"    # Lcom/android/launcher3/folder/FolderGridOrganizer;

    .line 570
    invoke-virtual {p1, p0}, Lcom/android/launcher3/folder/FolderGridOrganizer;->setFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderGridOrganizer;

    return-void
.end method

.method static synthetic lambda$processFolderItems$7(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/folder/FolderGridOrganizer;)Z
    .locals 1
    .param p0, "info"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p1, "it"    # Lcom/android/launcher3/folder/FolderGridOrganizer;

    .line 584
    iget v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->rank:I

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/FolderGridOrganizer;->isItemInPreview(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$run$0(Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .locals 0
    .param p0, "pkgs"    # Ljava/util/HashSet;
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 305
    return-void
.end method

.method static synthetic lambda$run$1(Lcom/android/launcher3/model/BgDataModel$Callbacks;Lcom/android/launcher3/model/AllAppsToWorkspaceTask$Placement;)V
    .locals 4
    .param p0, "cb"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;
    .param p1, "placement"    # Lcom/android/launcher3/model/AllAppsToWorkspaceTask$Placement;

    .line 368
    invoke-virtual {p1}, Lcom/android/launcher3/model/AllAppsToWorkspaceTask$Placement;->copyNewScreens()Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/launcher3/model/AllAppsToWorkspaceTask$Placement;->addedItems:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0, v0, v1, v2}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindAppsAdded(Lcom/android/launcher3/util/IntArray;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private loadAllApps()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation

    .line 661
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mUserCache:Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v0}, Lcom/android/launcher3/pm/UserCache;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    .line 662
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 664
    .local v3, "allActivityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/model/AllAppsList;->clear()V

    .line 666
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 667
    .local v4, "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/AppInfo;>;>;"
    const/4 v0, 0x0

    .line 668
    .local v0, "isWorkProfileQuiet":Z
    const/4 v5, 0x0

    .line 669
    .local v5, "isPrivateProfileQuiet":Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v5

    move v5, v0

    .end local v0    # "isWorkProfileQuiet":Z
    .local v5, "isWorkProfileQuiet":Z
    .local v7, "isPrivateProfileQuiet":Z
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 671
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v11, v1, Lcom/android/launcher3/model/LoaderTask;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v11, v8, v0}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v8

    .line 674
    .local v8, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    if-eqz v8, :cond_7

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    move-object/from16 v16, v0

    goto/16 :goto_5

    .line 677
    :cond_0
    iget-object v11, v1, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    invoke-virtual {v11, v0}, Lcom/android/launcher3/model/UserManagerState;->isUserQuiet(Landroid/os/UserHandle;)Z

    move-result v11

    .line 679
    .local v11, "quietMode":Z
    invoke-static {}, Lcom/android/launcher3/Flags;->enablePrivateSpace()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 680
    iget-object v12, v1, Lcom/android/launcher3/model/LoaderTask;->mUserCache:Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v12, v0}, Lcom/android/launcher3/pm/UserCache;->getUserInfo(Landroid/os/UserHandle;)Lcom/android/launcher3/util/UserIconInfo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher3/util/UserIconInfo;->isWork()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 681
    move v5, v11

    goto :goto_1

    .line 682
    :cond_1
    iget-object v12, v1, Lcom/android/launcher3/model/LoaderTask;->mUserCache:Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v12, v0}, Lcom/android/launcher3/pm/UserCache;->getUserInfo(Landroid/os/UserHandle;)Lcom/android/launcher3/util/UserIconInfo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher3/util/UserIconInfo;->isPrivate()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 683
    move v7, v11

    .line 687
    :cond_2
    :goto_1
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_6

    .line 688
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/LauncherActivityInfo;

    .line 689
    .local v13, "app":Landroid/content/pm/LauncherActivityInfo;
    new-instance v14, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v15, v1, Lcom/android/launcher3/model/LoaderTask;->mUserCache:Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v15, v0}, Lcom/android/launcher3/pm/UserCache;->getUserInfo(Landroid/os/UserHandle;)Lcom/android/launcher3/util/UserIconInfo;

    move-result-object v15

    invoke-direct {v14, v13, v15, v11}, Lcom/android/launcher3/model/data/AppInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;Lcom/android/launcher3/util/UserIconInfo;Z)V

    .line 690
    .local v14, "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    invoke-static {}, Lcom/android/launcher3/Utilities;->enableSupportForArchiving()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-virtual {v13}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    iget-boolean v15, v15, Landroid/content/pm/ApplicationInfo;->isArchived:Z

    if-eqz v15, :cond_5

    .line 693
    invoke-virtual {v13}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 694
    .local v15, "appPackageName":Ljava/lang/String;
    iget-object v10, v1, Lcom/android/launcher3/model/LoaderTask;->mInstallingPkgsCached:Ljava/util/HashMap;

    if-eqz v10, :cond_3

    new-instance v9, Lcom/android/launcher3/util/PackageUserKey;

    invoke-direct {v9, v15, v0}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageInstaller$SessionInfo;

    goto :goto_3

    .line 696
    :cond_3
    iget-object v9, v1, Lcom/android/launcher3/model/LoaderTask;->mSessionHelper:Lcom/android/launcher3/pm/InstallSessionHelper;

    invoke-virtual {v9, v0, v15}, Lcom/android/launcher3/pm/InstallSessionHelper;->getActiveSessionInfo(Landroid/os/UserHandle;Ljava/lang/String;)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v9

    :goto_3
    nop

    .line 698
    .local v9, "si":Landroid/content/pm/PackageInstaller$SessionInfo;
    if-eqz v9, :cond_4

    .line 699
    iget v10, v14, Lcom/android/launcher3/model/data/AppInfo;->runtimeStatusFlags:I

    or-int/lit16 v10, v10, 0x400

    iput v10, v14, Lcom/android/launcher3/model/data/AppInfo;->runtimeStatusFlags:I

    .line 700
    invoke-virtual {v9}, Landroid/content/pm/PackageInstaller$SessionInfo;->getProgress()F

    move-result v10

    const/high16 v16, 0x42c80000    # 100.0f

    mul-float v10, v10, v16

    float-to-int v10, v10

    move-object/from16 v16, v0

    const/4 v0, 0x1

    .end local v0    # "user":Landroid/os/UserHandle;
    .local v16, "user":Landroid/os/UserHandle;
    invoke-virtual {v14, v10, v0}, Lcom/android/launcher3/model/data/AppInfo;->setProgressLevel(II)V

    goto :goto_4

    .line 698
    .end local v16    # "user":Landroid/os/UserHandle;
    .restart local v0    # "user":Landroid/os/UserHandle;
    :cond_4
    move-object/from16 v16, v0

    .end local v0    # "user":Landroid/os/UserHandle;
    .restart local v16    # "user":Landroid/os/UserHandle;
    goto :goto_4

    .line 690
    .end local v9    # "si":Landroid/content/pm/PackageInstaller$SessionInfo;
    .end local v15    # "appPackageName":Ljava/lang/String;
    .end local v16    # "user":Landroid/os/UserHandle;
    .restart local v0    # "user":Landroid/os/UserHandle;
    :cond_5
    move-object/from16 v16, v0

    .line 705
    .end local v0    # "user":Landroid/os/UserHandle;
    .restart local v16    # "user":Landroid/os/UserHandle;
    :goto_4
    new-instance v0, Lcom/android/launcher3/model/data/IconRequestInfo;

    const/4 v9, 0x0

    invoke-direct {v0, v14, v13, v9}, Lcom/android/launcher3/model/data/IconRequestInfo;-><init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 707
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    invoke-virtual {v0, v14, v13, v9}, Lcom/android/launcher3/model/AllAppsList;->add(Lcom/android/launcher3/model/data/AppInfo;Landroid/content/pm/LauncherActivityInfo;Z)V

    .line 687
    .end local v13    # "app":Landroid/content/pm/LauncherActivityInfo;
    .end local v14    # "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v16

    goto :goto_2

    .end local v16    # "user":Landroid/os/UserHandle;
    .restart local v0    # "user":Landroid/os/UserHandle;
    :cond_6
    move-object/from16 v16, v0

    .line 710
    .end local v0    # "user":Landroid/os/UserHandle;
    .end local v12    # "i":I
    .restart local v16    # "user":Landroid/os/UserHandle;
    invoke-interface {v3, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 711
    .end local v8    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .end local v11    # "quietMode":Z
    .end local v16    # "user":Landroid/os/UserHandle;
    goto/16 :goto_0

    .line 674
    .restart local v0    # "user":Landroid/os/UserHandle;
    .restart local v8    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    :cond_7
    move-object/from16 v16, v0

    .line 675
    .end local v0    # "user":Landroid/os/UserHandle;
    .restart local v16    # "user":Landroid/os/UserHandle;
    :goto_5
    return-object v3

    .line 714
    .end local v8    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .end local v16    # "user":Landroid/os/UserHandle;
    :cond_8
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->PROMISE_APPS_IN_ALL_APPS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 717
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mSessionHelper:Lcom/android/launcher3/pm/InstallSessionHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/pm/InstallSessionHelper;->getAllVerifiedSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 718
    .local v6, "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    iget-object v9, v1, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iget-object v10, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 719
    invoke-virtual {v10}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 720
    invoke-static {v6}, Lcom/android/launcher3/pm/PackageInstallInfo;->fromInstallingState(Landroid/content/pm/PackageInstaller$SessionInfo;)Lcom/android/launcher3/pm/PackageInstallInfo;

    move-result-object v11

    .line 718
    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/launcher3/model/AllAppsList;->addPromiseApp(Landroid/content/Context;Lcom/android/launcher3/pm/PackageInstallInfo;Z)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v9

    .line 723
    .local v9, "promiseAppInfo":Lcom/android/launcher3/model/data/AppInfo;
    if-eqz v9, :cond_9

    .line 724
    new-instance v10, Lcom/android/launcher3/model/data/IconRequestInfo;

    .line 727
    invoke-virtual {v9}, Lcom/android/launcher3/model/data/AppInfo;->usingLowResIcon()Z

    move-result v11

    invoke-direct {v10, v9, v8, v11}, Lcom/android/launcher3/model/data/IconRequestInfo;-><init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V

    .line 724
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 729
    .end local v6    # "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    .end local v9    # "promiseAppInfo":Lcom/android/launcher3/model/data/AppInfo;
    :cond_9
    goto :goto_6

    .line 717
    :cond_a
    const/4 v12, 0x0

    goto :goto_7

    .line 714
    :cond_b
    const/4 v12, 0x0

    .line 732
    :goto_7
    const-string v0, "LoadAllAppsIconsInBulk"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 734
    :try_start_0
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/icons/IconCache;->getTitlesAndIconsInBulk(Ljava/util/List;)V

    .line 735
    new-instance v0, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda9;

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda9;-><init>(Lcom/android/launcher3/model/LoaderTask;)V

    invoke-interface {v4, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 738
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 739
    nop

    .line 741
    invoke-static {}, Lcom/android/launcher3/Flags;->enablePrivateSpace()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 742
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    const/16 v6, 0x8

    invoke-virtual {v0, v6, v5}, Lcom/android/launcher3/model/AllAppsList;->setFlags(IZ)V

    .line 743
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    const/16 v6, 0x10

    invoke-virtual {v0, v6, v7}, Lcom/android/launcher3/model/AllAppsList;->setFlags(IZ)V

    goto :goto_8

    .line 745
    :cond_c
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iget-object v6, v1, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    .line 746
    invoke-virtual {v6}, Lcom/android/launcher3/model/UserManagerState;->isAnyProfileQuietModeEnabled()Z

    move-result v6

    .line 745
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v6}, Lcom/android/launcher3/model/AllAppsList;->setFlags(IZ)V

    .line 748
    :goto_8
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iget-object v6, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 749
    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher3/util/PackageManagerHelper;->hasShortcutsPermission(Landroid/content/Context;)Z

    move-result v6

    .line 748
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v6}, Lcom/android/launcher3/model/AllAppsList;->setFlags(IZ)V

    .line 750
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iget-object v6, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 751
    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v9, "android.permission.MODIFY_QUIET_MODE"

    invoke-virtual {v6, v9}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_d

    move v9, v8

    goto :goto_9

    :cond_d
    move v9, v12

    .line 750
    :goto_9
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v9}, Lcom/android/launcher3/model/AllAppsList;->setFlags(IZ)V

    .line 754
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/model/AllAppsList;->getAndResetChangeFlag()Z

    .line 755
    return-object v3

    .line 738
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 739
    throw v0
.end method

.method private loadDeepShortcuts()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 759
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 760
    .local v0, "allShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 762
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/model/AllAppsList;->hasShortcutHostPermission()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 763
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mUserCache:Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v1}, Lcom/android/launcher3/pm/UserCache;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 764
    .local v2, "user":Landroid/os/UserHandle;
    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v2}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 765
    new-instance v3, Lcom/android/launcher3/shortcuts/ShortcutRequest;

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/android/launcher3/shortcuts/ShortcutRequest;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    .line 766
    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    move-result-object v3

    .line 767
    .local v3, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 768
    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/launcher3/model/BgDataModel;->updateDeepShortcutCounts(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V

    .line 770
    .end local v2    # "user":Landroid/os/UserHandle;
    .end local v3    # "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :cond_0
    goto :goto_0

    .line 772
    :cond_1
    return-object v0
.end method

.method private loadFolderNames()V
    .locals 7

    .line 776
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iget-object v1, v1, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/folder/FolderNameProvider;->newInstance(Landroid/content/Context;Ljava/util/List;Lcom/android/launcher3/util/IntSparseArrayMap;)Lcom/android/launcher3/folder/FolderNameProvider;

    move-result-object v0

    .line 779
    .local v0, "provider":Lcom/android/launcher3/folder/FolderNameProvider;
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v1

    .line 780
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v3}, Lcom/android/launcher3/util/IntSparseArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 781
    new-instance v3, Lcom/android/launcher3/folder/FolderNameInfos;

    invoke-direct {v3}, Lcom/android/launcher3/folder/FolderNameInfos;-><init>()V

    .line 782
    .local v3, "suggestionInfos":Lcom/android/launcher3/folder/FolderNameInfos;
    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/util/IntSparseArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/FolderInfo;

    .line 783
    .local v4, "info":Lcom/android/launcher3/model/data/FolderInfo;
    iget-object v5, v4, Lcom/android/launcher3/model/data/FolderInfo;->suggestedFolderNames:Lcom/android/launcher3/folder/FolderNameInfos;

    if-nez v5, :cond_0

    .line 784
    iget-object v5, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v4, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, v5, v6, v3}, Lcom/android/launcher3/folder/FolderNameProvider;->getSuggestedFolderName(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher3/folder/FolderNameInfos;)V

    .line 786
    iput-object v3, v4, Lcom/android/launcher3/model/data/FolderInfo;->suggestedFolderNames:Lcom/android/launcher3/folder/FolderNameInfos;

    .line 780
    .end local v3    # "suggestionInfos":Lcom/android/launcher3/folder/FolderNameInfos;
    .end local v4    # "info":Lcom/android/launcher3/model/data/FolderInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 789
    .end local v2    # "i":I
    :cond_1
    monitor-exit v1

    .line 790
    return-void

    .line 789
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private loadWorkspaceImpl(Ljava/util/List;Ljava/lang/String;Lcom/android/launcher3/model/LoaderMemoryLogger;Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;)V
    .locals 27
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "memoryLogger"    # Lcom/android/launcher3/model/LoaderMemoryLogger;
    .param p4, "restoreEventLogger"    # Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/model/LoaderMemoryLogger;",
            "Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;",
            ")V"
        }
    .end annotation

    .line 427
    .local p1, "allDeepShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 428
    .local v2, "context":Landroid/content/Context;
    new-instance v0, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {v0, v2}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    move-object/from16 v16, v0

    .line 429
    .local v16, "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    invoke-static {}, Lcom/android/launcher3/Utilities;->isBootCompleted()Z

    move-result v20

    .line 430
    .local v20, "isSdCardReady":Z
    new-instance v15, Lcom/android/launcher3/widget/WidgetInflater;

    invoke-direct {v15, v2}, Lcom/android/launcher3/widget/WidgetInflater;-><init>(Landroid/content/Context;)V

    .line 432
    .local v15, "widgetInflater":Lcom/android/launcher3/widget/WidgetInflater;
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lcom/android/launcher3/model/ModelDbController;

    move-result-object v14

    .line 433
    .local v14, "dbController":Lcom/android/launcher3/model/ModelDbController;
    move-object/from16 v13, p4

    invoke-virtual {v14, v13}, Lcom/android/launcher3/model/ModelDbController;->tryMigrateDB(Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;)V

    .line 434
    const-string v0, "LoaderTask"

    const-string v3, "loadWorkspace: loading default favorites"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-virtual {v14}, Lcom/android/launcher3/model/ModelDbController;->loadDefaultFavoritesIfNecessary()V

    .line 437
    iget-object v12, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v12

    .line 438
    :try_start_0
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v0}, Lcom/android/launcher3/model/BgDataModel;->clear()V

    .line 439
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mPendingPackages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 441
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mSessionHelper:Lcom/android/launcher3/pm/InstallSessionHelper;

    .line 442
    invoke-virtual {v0}, Lcom/android/launcher3/pm/InstallSessionHelper;->getActiveSessions()Ljava/util/HashMap;

    move-result-object v0

    move-object v11, v0

    .line 443
    .local v11, "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    invoke-static {}, Lcom/android/launcher3/Utilities;->enableSupportForArchiving()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v0, :cond_0

    .line 444
    :try_start_1
    iput-object v11, v1, Lcom/android/launcher3/model/LoaderTask;->mInstallingPkgsCached:Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 501
    .end local v11    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    :catchall_0
    move-exception v0

    move-object/from16 v22, v2

    move-object v2, v12

    move-object/from16 v26, v14

    goto/16 :goto_6

    .line 446
    .restart local v11    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/icons/IconCache;)V

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 447
    const-string v0, "LoaderTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadWorkspace: Packages with active install sessions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 448
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda4;

    invoke-direct {v5}, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 447
    invoke-static {v0, v3}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    new-instance v0, Lcom/android/launcher3/model/FirstScreenBroadcast;

    invoke-direct {v0, v11}, Lcom/android/launcher3/model/FirstScreenBroadcast;-><init>(Ljava/util/HashMap;)V

    iput-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mFirstScreenBroadcast:Lcom/android/launcher3/model/FirstScreenBroadcast;

    .line 452
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mShortcutKeyToPinnedShortcuts:Ljava/util/Map;

    .line 453
    new-instance v0, Lcom/android/launcher3/model/LoaderCursor;

    const-string v4, "favorites"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 454
    move-object v3, v14

    move-object/from16 v6, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/model/ModelDbController;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v5, v1, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    .line 455
    iget-boolean v6, v1, Lcom/android/launcher3/model/LoaderTask;->mIsRestoreFromBackup:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    move-object v6, v13

    goto :goto_1

    :cond_1
    move-object v6, v7

    :goto_1
    invoke-direct {v0, v3, v4, v5, v6}, Lcom/android/launcher3/model/LoaderCursor;-><init>(Landroid/database/Cursor;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/UserManagerState;Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;)V

    move-object v4, v0

    .line 456
    .local v4, "c":Lcom/android/launcher3/model/LoaderCursor;
    invoke-virtual {v4}, Lcom/android/launcher3/model/LoaderCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    move-object v10, v0

    .line 457
    .local v10, "extras":Landroid/os/Bundle;
    if-nez v10, :cond_2

    :goto_2
    goto :goto_3

    :cond_2
    const-string v0, "db_name"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :goto_3
    iput-object v7, v1, Lcom/android/launcher3/model/LoaderTask;->mDbName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 459
    :try_start_3
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 460
    .local v0, "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    invoke-direct {v1, v2, v0}, Lcom/android/launcher3/model/LoaderTask;->queryPinnedShortcutsForUnlockedUsers(Landroid/content/Context;Landroid/util/LongSparseArray;)V

    .line 462
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v3

    .line 464
    .local v9, "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    new-instance v21, Lcom/android/launcher3/model/WorkspaceItemProcessor;

    iget-object v6, v1, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    iget-object v7, v1, Lcom/android/launcher3/model/LoaderTask;->mLauncherApps:Landroid/content/pm/LauncherApps;

    iget-object v8, v1, Lcom/android/launcher3/model/LoaderTask;->mPendingPackages:Ljava/util/Set;

    iget-object v5, v1, Lcom/android/launcher3/model/LoaderTask;->mShortcutKeyToPinnedShortcuts:Ljava/util/Map;

    iget-object v3, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v22, v2

    .end local v2    # "context":Landroid/content/Context;
    .local v22, "context":Landroid/content/Context;
    :try_start_4
    iget-object v2, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v13, v1, Lcom/android/launcher3/model/LoaderTask;->mWidgetProvidersMap:Ljava/util/Map;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v17, v3

    move-object/from16 v3, v21

    move-object/from16 v18, v5

    move-object/from16 v5, p3

    move-object/from16 v23, v9

    .end local v9    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .local v23, "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    move-object/from16 v9, v18

    move-object/from16 v24, v10

    .end local v10    # "extras":Landroid/os/Bundle;
    .local v24, "extras":Landroid/os/Bundle;
    move-object/from16 v10, v17

    move-object/from16 v25, v11

    .end local v11    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .local v25, "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    move-object v11, v2

    move-object v2, v12

    move-object v12, v13

    move-object/from16 v13, v25

    move-object/from16 v26, v14

    .end local v14    # "dbController":Lcom/android/launcher3/model/ModelDbController;
    .local v26, "dbController":Lcom/android/launcher3/model/ModelDbController;
    move/from16 v14, v20

    move-object/from16 v17, v23

    move-object/from16 v18, v0

    move-object/from16 v19, p1

    :try_start_5
    invoke-direct/range {v3 .. v19}, Lcom/android/launcher3/model/WorkspaceItemProcessor;-><init>(Lcom/android/launcher3/model/LoaderCursor;Lcom/android/launcher3/model/LoaderMemoryLogger;Lcom/android/launcher3/model/UserManagerState;Landroid/content/pm/LauncherApps;Ljava/util/Set;Ljava/util/Map;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Ljava/util/Map;Ljava/util/HashMap;ZLcom/android/launcher3/widget/WidgetInflater;Lcom/android/launcher3/util/PackageManagerHelper;Ljava/util/List;Landroid/util/LongSparseArray;Ljava/util/List;)V

    move-object/from16 v3, v21

    .line 471
    .local v3, "itemProcessor":Lcom/android/launcher3/model/WorkspaceItemProcessor;
    :goto_4
    iget-boolean v5, v1, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lcom/android/launcher3/model/LoaderCursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 472
    invoke-virtual {v3}, Lcom/android/launcher3/model/WorkspaceItemProcessor;->processItem()V

    goto :goto_4

    .line 474
    :cond_3
    move-object/from16 v5, v23

    .end local v23    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .local v5, "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    invoke-direct {v1, v5}, Lcom/android/launcher3/model/LoaderTask;->tryLoadWorkspaceIconsInBulk(Ljava/util/List;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 476
    .end local v0    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .end local v3    # "itemProcessor":Lcom/android/launcher3/model/WorkspaceItemProcessor;
    .end local v5    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    :try_start_6
    invoke-static {v4}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 477
    nop

    .line 479
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->CHANGE_MODEL_DELEGATE_LOADING_ORDER:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_4

    .line 480
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    iget-object v3, v1, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    iget-object v5, v1, Lcom/android/launcher3/model/LoaderTask;->mLauncherBinder:Lcom/android/launcher3/model/LauncherBinder;

    iget-object v5, v5, Lcom/android/launcher3/model/LauncherBinder;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    iget-object v6, v1, Lcom/android/launcher3/model/LoaderTask;->mShortcutKeyToPinnedShortcuts:Ljava/util/Map;

    invoke-virtual {v0, v3, v5, v6}, Lcom/android/launcher3/model/ModelDelegate;->loadAndBindWorkspaceItems(Lcom/android/launcher3/model/UserManagerState;[Lcom/android/launcher3/model/BgDataModel$Callbacks;Ljava/util/Map;)V

    .line 482
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    iget-object v3, v1, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    iget-object v5, v1, Lcom/android/launcher3/model/LoaderTask;->mLauncherBinder:Lcom/android/launcher3/model/LauncherBinder;

    iget-object v5, v5, Lcom/android/launcher3/model/LauncherBinder;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    iget-object v6, v1, Lcom/android/launcher3/model/LoaderTask;->mShortcutKeyToPinnedShortcuts:Ljava/util/Map;

    invoke-virtual {v0, v3, v5, v6}, Lcom/android/launcher3/model/ModelDelegate;->loadAndBindAllAppsItems(Lcom/android/launcher3/model/UserManagerState;[Lcom/android/launcher3/model/BgDataModel$Callbacks;Ljava/util/Map;)V

    .line 484
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    iget-object v3, v1, Lcom/android/launcher3/model/LoaderTask;->mLauncherBinder:Lcom/android/launcher3/model/LauncherBinder;

    iget-object v3, v3, Lcom/android/launcher3/model/LauncherBinder;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/model/ModelDelegate;->loadAndBindOtherItems([Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    .line 485
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    invoke-virtual {v0}, Lcom/android/launcher3/model/ModelDelegate;->markActive()V

    .line 489
    :cond_4
    iget-boolean v0, v1, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    if-eqz v0, :cond_5

    .line 490
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v0}, Lcom/android/launcher3/model/BgDataModel;->clear()V

    .line 491
    monitor-exit v2

    return-void

    .line 495
    :cond_5
    invoke-virtual {v4}, Lcom/android/launcher3/model/LoaderCursor;->commitDeleted()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/launcher3/model/LoaderTask;->mItemsDeleted:Z

    .line 497
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->processFolderItems()V

    .line 498
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->processAppPairItems()V

    .line 500
    invoke-virtual {v4}, Lcom/android/launcher3/model/LoaderCursor;->commitRestoredItems()V

    .line 501
    .end local v4    # "c":Lcom/android/launcher3/model/LoaderCursor;
    .end local v24    # "extras":Landroid/os/Bundle;
    .end local v25    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    monitor-exit v2

    .line 502
    return-void

    .line 476
    .restart local v4    # "c":Lcom/android/launcher3/model/LoaderCursor;
    .restart local v24    # "extras":Landroid/os/Bundle;
    .restart local v25    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    :catchall_1
    move-exception v0

    goto :goto_5

    .end local v24    # "extras":Landroid/os/Bundle;
    .end local v25    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v26    # "dbController":Lcom/android/launcher3/model/ModelDbController;
    .restart local v10    # "extras":Landroid/os/Bundle;
    .restart local v11    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v14    # "dbController":Lcom/android/launcher3/model/ModelDbController;
    :catchall_2
    move-exception v0

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object v2, v12

    move-object/from16 v26, v14

    .end local v10    # "extras":Landroid/os/Bundle;
    .end local v11    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v14    # "dbController":Lcom/android/launcher3/model/ModelDbController;
    .restart local v24    # "extras":Landroid/os/Bundle;
    .restart local v25    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v26    # "dbController":Lcom/android/launcher3/model/ModelDbController;
    goto :goto_5

    .end local v22    # "context":Landroid/content/Context;
    .end local v24    # "extras":Landroid/os/Bundle;
    .end local v25    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v26    # "dbController":Lcom/android/launcher3/model/ModelDbController;
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v10    # "extras":Landroid/os/Bundle;
    .restart local v11    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v14    # "dbController":Lcom/android/launcher3/model/ModelDbController;
    :catchall_3
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object v2, v12

    move-object/from16 v26, v14

    .end local v2    # "context":Landroid/content/Context;
    .end local v10    # "extras":Landroid/os/Bundle;
    .end local v11    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v14    # "dbController":Lcom/android/launcher3/model/ModelDbController;
    .restart local v22    # "context":Landroid/content/Context;
    .restart local v24    # "extras":Landroid/os/Bundle;
    .restart local v25    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v26    # "dbController":Lcom/android/launcher3/model/ModelDbController;
    :goto_5
    invoke-static {v4}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 477
    nop

    .end local v15    # "widgetInflater":Lcom/android/launcher3/widget/WidgetInflater;
    .end local v16    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .end local v20    # "isSdCardReady":Z
    .end local v22    # "context":Landroid/content/Context;
    .end local v26    # "dbController":Lcom/android/launcher3/model/ModelDbController;
    .end local p1    # "allDeepShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local p2    # "selection":Ljava/lang/String;
    .end local p3    # "memoryLogger":Lcom/android/launcher3/model/LoaderMemoryLogger;
    .end local p4    # "restoreEventLogger":Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;
    throw v0

    .line 501
    .end local v4    # "c":Lcom/android/launcher3/model/LoaderCursor;
    .end local v24    # "extras":Landroid/os/Bundle;
    .end local v25    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v14    # "dbController":Lcom/android/launcher3/model/ModelDbController;
    .restart local v15    # "widgetInflater":Lcom/android/launcher3/widget/WidgetInflater;
    .restart local v16    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .restart local v20    # "isSdCardReady":Z
    .restart local p1    # "allDeepShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local p2    # "selection":Ljava/lang/String;
    .restart local p3    # "memoryLogger":Lcom/android/launcher3/model/LoaderMemoryLogger;
    .restart local p4    # "restoreEventLogger":Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;
    :catchall_4
    move-exception v0

    move-object/from16 v22, v2

    move-object v2, v12

    move-object/from16 v26, v14

    .end local v2    # "context":Landroid/content/Context;
    .end local v14    # "dbController":Lcom/android/launcher3/model/ModelDbController;
    .restart local v22    # "context":Landroid/content/Context;
    .restart local v26    # "dbController":Lcom/android/launcher3/model/ModelDbController;
    :goto_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_6
.end method

.method private static logASplit(Ljava/lang/String;)V
    .locals 1
    .param p0, "label"    # Ljava/lang/String;

    .line 799
    const-string v0, "LoaderTask"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    return-void
.end method

.method private processAppPairItems()V
    .locals 2

    .line 509
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda2;-><init>()V

    .line 510
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/model/LoaderTask;)V

    .line 511
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 513
    return-void
.end method

.method private processFolderItems()V
    .locals 8

    .line 566
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    .line 567
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    .line 568
    .local v0, "verifiers":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/folder/FolderGridOrganizer;>;"
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/FolderInfo;

    .line 569
    .local v2, "folder":Lcom/android/launcher3/model/data/FolderInfo;
    iget-object v3, v2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/launcher3/folder/Folder;->ITEM_POS_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 570
    new-instance v3, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda7;

    invoke-direct {v3, v2}, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda7;-><init>(Lcom/android/launcher3/model/data/FolderInfo;)V

    invoke-interface {v0, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 571
    iget-object v3, v2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 576
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "rank":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 577
    iget-object v5, v2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 579
    .local v5, "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    iget v6, v2, Lcom/android/launcher3/model/data/FolderInfo;->itemType:I

    const/16 v7, 0xa

    if-eq v6, v7, :cond_0

    .line 580
    iput v4, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->rank:I

    .line 583
    :cond_0
    invoke-virtual {v5}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->usingLowResIcon()Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->itemType:I

    if-nez v6, :cond_1

    .line 584
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda8;

    invoke-direct {v7, v5}, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda8;-><init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 585
    iget-object v6, p0, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    .line 576
    .end local v5    # "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 588
    .end local v2    # "folder":Lcom/android/launcher3/model/data/FolderInfo;
    .end local v3    # "size":I
    .end local v4    # "rank":I
    :cond_2
    goto :goto_0

    .line 589
    :cond_3
    return-void
.end method

.method private queryPinnedShortcutsForUnlockedUsers(Landroid/content/Context;Landroid/util/LongSparseArray;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 526
    .local p2, "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mUserCache:Lcom/android/launcher3/pm/UserCache;

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/model/UserManagerState;->init(Lcom/android/launcher3/pm/UserCache;Landroid/os/UserManager;)V

    .line 528
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mUserCache:Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v0}, Lcom/android/launcher3/pm/UserCache;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 529
    .local v1, "user":Landroid/os/UserHandle;
    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mUserCache:Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    .line 530
    .local v2, "serialNo":J
    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v1}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v4

    .line 533
    .local v4, "userUnlocked":Z
    if-eqz v4, :cond_2

    .line 534
    new-instance v5, Lcom/android/launcher3/shortcuts/ShortcutRequest;

    invoke-direct {v5, p1, v1}, Lcom/android/launcher3/shortcuts/ShortcutRequest;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    .line 535
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    move-result-object v5

    .line 536
    .local v5, "pinnedShortcuts":Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;
    invoke-virtual {v5}, Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;->wasSuccess()Z

    move-result v6

    const-string v7, "LoaderTask"

    if-eqz v6, :cond_1

    .line 537
    invoke-virtual {v5}, Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ShortcutInfo;

    .line 538
    .local v8, "shortcut":Landroid/content/pm/ShortcutInfo;
    iget-object v9, p0, Lcom/android/launcher3/model/LoaderTask;->mShortcutKeyToPinnedShortcuts:Ljava/util/Map;

    invoke-static {v8}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromInfo(Landroid/content/pm/ShortcutInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v10

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    .end local v8    # "shortcut":Landroid/content/pm/ShortcutInfo;
    goto :goto_1

    .line 541
    :cond_0
    invoke-virtual {v5}, Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 542
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No pinned shortcuts found for user "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 548
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Shortcut request failed for user "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", user may still be locked."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const/4 v4, 0x0

    .line 553
    .end local v5    # "pinnedShortcuts":Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;
    :cond_2
    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p2, v2, v3, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 554
    .end local v1    # "user":Landroid/os/UserHandle;
    .end local v2    # "serialNo":J
    .end local v4    # "userUnlocked":Z
    goto/16 :goto_0

    .line 556
    :cond_3
    return-void
.end method

.method private sanitizeFolders(Z)V
    .locals 6
    .param p1, "itemsDeleted"    # Z

    .line 629
    if-eqz p1, :cond_1

    .line 631
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lcom/android/launcher3/model/ModelDbController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/model/ModelDbController;->deleteEmptyFolders()Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    .line 632
    .local v0, "deletedFolderIds":Lcom/android/launcher3/util/IntArray;
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v1

    .line 633
    :try_start_0
    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 634
    .local v3, "folderId":I
    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v5, v5, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/util/IntSparseArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 635
    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v4, v3}, Lcom/android/launcher3/util/IntSparseArrayMap;->remove(I)V

    .line 636
    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v4, v3}, Lcom/android/launcher3/util/IntSparseArrayMap;->remove(I)V

    .line 637
    .end local v3    # "folderId":I
    goto :goto_0

    .line 638
    :cond_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 640
    .end local v0    # "deletedFolderIds":Lcom/android/launcher3/util/IntArray;
    :cond_1
    :goto_1
    return-void
.end method

.method private sanitizeWidgetsShortcutsAndPackages()V
    .locals 5

    .line 643
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 646
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lcom/android/launcher3/model/ModelDbController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/model/ModelDbController;->removeGhostWidgets()V

    .line 649
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/model/BgDataModel;->updateShortcutPinnedState(Landroid/content/Context;)V

    .line 651
    invoke-static {}, Lcom/android/launcher3/Utilities;->isBootCompleted()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mPendingPackages:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 652
    new-instance v1, Lcom/android/launcher3/model/SdCardAvailableReceiver;

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mPendingPackages:Ljava/util/Set;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/model/SdCardAvailableReceiver;-><init>(Lcom/android/launcher3/LauncherAppState;Ljava/util/Set;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    .line 656
    invoke-virtual {v3}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 652
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 658
    :cond_0
    return-void
.end method

.method private sendFirstScreenActiveInstallsBroadcast()V
    .locals 7

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v0, "firstScreenItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v1}, Lcom/android/launcher3/model/BgDataModel;->getAllWorkspaceItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 201
    .local v1, "allItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v2}, Lcom/android/launcher3/model/BgDataModel;->collectWorkspaceScreens()Lcom/android/launcher3/util/IntArray;

    move-result-object v2

    .line 202
    .local v2, "allScreens":Lcom/android/launcher3/util/IntArray;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v3

    .line 203
    .local v3, "firstScreen":I
    filled-new-array {v3}, [I

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/util/IntSet;->wrap([I)Lcom/android/launcher3/util/IntSet;

    move-result-object v4

    .line 205
    .local v4, "firstScreens":Lcom/android/launcher3/util/IntSet;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v1, v0, v5}, Lcom/android/launcher3/model/ModelUtils;->filterCurrentWorkspaceItems(Lcom/android/launcher3/util/IntSet;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 207
    iget-object v5, p0, Lcom/android/launcher3/model/LoaderTask;->mFirstScreenBroadcast:Lcom/android/launcher3/model/FirstScreenBroadcast;

    iget-object v6, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/android/launcher3/model/FirstScreenBroadcast;->sendBroadcasts(Landroid/content/Context;Ljava/util/List;)V

    .line 208
    return-void
.end method

.method private setIgnorePackages(Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;)V
    .locals 6
    .param p1, "updateHandler"    # Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;

    .line 609
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v0

    .line 610
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    .line 611
    .local v2, "info":Lcom/android/launcher3/model/data/ItemInfo;
    instance-of v3, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v3, :cond_0

    .line 612
    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 613
    .local v3, "si":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    invoke-virtual {v3}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isPromise()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 614
    iget-object v4, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->user:Landroid/os/UserHandle;

    .line 615
    invoke-virtual {v3}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 614
    invoke-virtual {p1, v4, v5}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->addPackagesToIgnore(Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_1

    .line 617
    .end local v3    # "si":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :cond_0
    instance-of v3, v2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v3, :cond_1

    .line 618
    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 619
    .local v3, "lawi":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 620
    iget-object v4, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    iget-object v5, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 621
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 620
    invoke-virtual {p1, v4, v5}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->addPackagesToIgnore(Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_2

    .line 617
    .end local v3    # "lawi":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    :cond_1
    :goto_1
    nop

    .line 624
    .end local v2    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_2
    :goto_2
    goto :goto_0

    .line 625
    :cond_3
    monitor-exit v0

    .line 626
    return-void

    .line 625
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private tryLoadWorkspaceIconsInBulk(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/IconRequestInfo<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 593
    .local p1, "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    const-string v0, "LoadWorkspaceIconsInBulk"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 595
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/icons/IconCache;->getTitlesAndIconsInBulk(Ljava/util/List;)V

    .line 596
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/IconRequestInfo;

    .line 597
    .local v1, "iconRequestInfo":Lcom/android/launcher3/model/data/IconRequestInfo;, "Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    iget-object v2, v1, Lcom/android/launcher3/model/data/IconRequestInfo;->itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 598
    .local v2, "wai":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    iget-object v4, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v5, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/icons/IconCache;->isDefaultIcon(Lcom/android/launcher3/icons/BitmapInfo;Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 599
    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/launcher3/model/data/IconRequestInfo;->loadWorkspaceIcon(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    .end local v1    # "iconRequestInfo":Lcom/android/launcher3/model/data/IconRequestInfo;, "Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .end local v2    # "wai":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :cond_0
    goto :goto_0

    .line 603
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 604
    nop

    .line 605
    return-void

    .line 603
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 604
    throw v0
.end method

.method private declared-synchronized verifyNotStopped()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;
        }
    .end annotation

    monitor-enter p0

    .line 191
    :try_start_0
    iget-boolean v0, p0, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 194
    monitor-exit p0

    return-void

    .line 192
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Loader stopped"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    .end local p0    # "this":Lcom/android/launcher3/model/LoaderTask;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected loadWorkspace(Ljava/util/List;Ljava/lang/String;Lcom/android/launcher3/model/LoaderMemoryLogger;Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;)V
    .locals 4
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "memoryLogger"    # Lcom/android/launcher3/model/LoaderMemoryLogger;
    .param p4, "restoreEventLogger"    # Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/model/LoaderMemoryLogger;",
            "Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;",
            ")V"
        }
    .end annotation

    .line 402
    .local p1, "allDeepShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const-string v0, "LoadWorkspace"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 404
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/model/LoaderTask;->loadWorkspaceImpl(Ljava/util/List;Ljava/lang/String;Lcom/android/launcher3/model/LoaderMemoryLogger;Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 407
    nop

    .line 408
    const-string v0, "loadWorkspace"

    invoke-static {v0}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    .line 410
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->CHANGE_MODEL_DELEGATE_LOADING_ORDER:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 412
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mLauncherBinder:Lcom/android/launcher3/model/LauncherBinder;

    iget-object v2, v2, Lcom/android/launcher3/model/LauncherBinder;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mShortcutKeyToPinnedShortcuts:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/model/ModelDelegate;->loadAndBindWorkspaceItems(Lcom/android/launcher3/model/UserManagerState;[Lcom/android/launcher3/model/BgDataModel$Callbacks;Ljava/util/Map;)V

    .line 414
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    invoke-virtual {v0}, Lcom/android/launcher3/model/ModelDelegate;->markActive()V

    .line 415
    const-string v0, "workspaceDelegateItems"

    invoke-static {v0}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/model/BgDataModel;->isFirstPagePinnedItemEnabled:Z

    .line 420
    return-void

    .line 406
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 407
    throw v0
.end method

.method public run()V
    .locals 19

    .line 211
    move-object/from16 v1, p0

    monitor-enter p0

    .line 213
    :try_start_0
    iget-boolean v0, v1, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    if-eqz v0, :cond_0

    .line 214
    monitor-exit p0

    return-void

    .line 216
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 218
    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v2, "LoaderTask"

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    .line 219
    new-instance v0, Lcom/android/launcher3/model/LoaderMemoryLogger;

    invoke-direct {v0}, Lcom/android/launcher3/model/LoaderMemoryLogger;-><init>()V

    move-object v2, v0

    .line 220
    .local v2, "memoryLogger":Lcom/android/launcher3/model/LoaderMemoryLogger;
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 221
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    sget-object v3, Lcom/android/launcher3/LauncherPrefs;->IS_FIRST_LOAD_AFTER_RESTORE:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/launcher3/model/LoaderTask;->mIsRestoreFromBackup:Z

    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, "restoreEventLogger":Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;
    invoke-static {}, Lcom/android/launcher3/Flags;->enableLauncherBrMetricsFixed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 224
    sget-object v3, Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;->Companion:Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger$Companion;

    iget-object v4, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 225
    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger$Companion;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    .line 223
    :cond_1
    move-object v3, v0

    .line 227
    .end local v0    # "restoreEventLogger":Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;
    .local v3, "restoreEventLogger":Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;
    :goto_0
    :try_start_1
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel;->beginLoader(Lcom/android/launcher3/model/LoaderTask;)Lcom/android/launcher3/LauncherModel$LoaderTransaction;

    move-result-object v0
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v0

    .line 229
    .local v4, "transaction":Lcom/android/launcher3/LauncherModel$LoaderTransaction;
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 230
    .local v5, "allShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const-string v0, ""

    invoke-virtual {v1, v5, v0, v2, v3}, Lcom/android/launcher3/model/LoaderTask;->loadWorkspace(Ljava/util/List;Ljava/lang/String;Lcom/android/launcher3/model/LoaderMemoryLogger;Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;)V

    .line 236
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->dbFile:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/launcher3/model/LoaderTask;->mDbName:Ljava/lang/String;

    invoke-static {v0, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 238
    iget-boolean v0, v1, Lcom/android/launcher3/model/LoaderTask;->mItemsDeleted:Z

    invoke-direct {v1, v0}, Lcom/android/launcher3/model/LoaderTask;->sanitizeFolders(Z)V

    .line 239
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->sanitizeWidgetsShortcutsAndPackages()V

    .line 240
    const-string v0, "sanitizeData"

    invoke-static {v0}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    .line 243
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 244
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mLauncherBinder:Lcom/android/launcher3/model/LauncherBinder;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lcom/android/launcher3/model/LauncherBinder;->bindWorkspace(ZZ)V

    .line 245
    const-string v0, "bindWorkspace"

    invoke-static {v0}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    .line 247
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    invoke-virtual {v0}, Lcom/android/launcher3/model/ModelDelegate;->workspaceLoadComplete()V

    .line 249
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->sendFirstScreenActiveInstallsBroadcast()V

    .line 250
    const-string v0, "sendFirstScreenActiveInstallsBroadcast"

    invoke-static {v0}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->waitForIdle()V

    .line 254
    const-string v0, "step 1 complete"

    invoke-static {v0}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    .line 255
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 258
    const-string v0, "LoadAllApps"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 261
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->loadAllApps()Ljava/util/List;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 263
    .local v0, "allActivityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    :try_start_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 264
    nop

    .line 265
    const-string v8, "loadAllApps"

    invoke-static {v8}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    .line 267
    sget-object v8, Lcom/android/launcher3/config/FeatureFlags;->CHANGE_MODEL_DELEGATE_LOADING_ORDER:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v8}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 268
    iget-object v8, v1, Lcom/android/launcher3/model/LoaderTask;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    iget-object v9, v1, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    iget-object v10, v1, Lcom/android/launcher3/model/LoaderTask;->mLauncherBinder:Lcom/android/launcher3/model/LauncherBinder;

    iget-object v10, v10, Lcom/android/launcher3/model/LauncherBinder;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    iget-object v11, v1, Lcom/android/launcher3/model/LoaderTask;->mShortcutKeyToPinnedShortcuts:Ljava/util/Map;

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/launcher3/model/ModelDelegate;->loadAndBindAllAppsItems(Lcom/android/launcher3/model/UserManagerState;[Lcom/android/launcher3/model/BgDataModel$Callbacks;Ljava/util/Map;)V

    .line 270
    const-string v8, "allAppsDelegateItems"

    invoke-static {v8}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    .line 272
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 273
    iget-object v8, v1, Lcom/android/launcher3/model/LoaderTask;->mLauncherBinder:Lcom/android/launcher3/model/LauncherBinder;

    invoke-virtual {v8}, Lcom/android/launcher3/model/LauncherBinder;->bindAllApps()V

    .line 274
    const-string v8, "bindAllApps"

    invoke-static {v8}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    .line 276
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 277
    iget-object v8, v1, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    invoke-virtual {v8}, Lcom/android/launcher3/icons/IconCache;->getUpdateHandler()Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;

    move-result-object v8

    .line 278
    .local v8, "updateHandler":Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;
    invoke-direct {v1, v8}, Lcom/android/launcher3/model/LoaderTask;->setIgnorePackages(Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;)V

    .line 279
    iget-object v9, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 280
    invoke-virtual {v9}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/launcher3/icons/LauncherActivityCachingLogic;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherActivityCachingLogic;

    move-result-object v9

    iget-object v10, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 281
    invoke-virtual {v10}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda10;

    invoke-direct {v11, v10}, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda10;-><init>(Lcom/android/launcher3/LauncherModel;)V

    .line 279
    invoke-virtual {v8, v0, v9, v11}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->updateIcons(Ljava/util/List;Lcom/android/launcher3/icons/cache/CachingLogic;Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;)V

    .line 282
    const-string v9, "update icon cache"

    invoke-static {v9}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    .line 284
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 285
    const-string v9, "save shortcuts in icon cache"

    invoke-static {v9}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    .line 286
    new-instance v9, Lcom/android/launcher3/icons/ShortcutCachingLogic;

    invoke-direct {v9}, Lcom/android/launcher3/icons/ShortcutCachingLogic;-><init>()V

    iget-object v10, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 287
    invoke-virtual {v10}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda10;

    invoke-direct {v11, v10}, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda10;-><init>(Lcom/android/launcher3/LauncherModel;)V

    .line 286
    invoke-virtual {v8, v5, v9, v11}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->updateIcons(Ljava/util/List;Lcom/android/launcher3/icons/cache/CachingLogic;Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;)V

    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->waitForIdle()V

    .line 291
    const-string v9, "step 2 complete"

    invoke-static {v9}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    .line 292
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 295
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->loadDeepShortcuts()Ljava/util/List;

    move-result-object v9

    .line 296
    .local v9, "allDeepShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const-string v10, "loadDeepShortcuts"

    invoke-static {v10}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    .line 298
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 299
    iget-object v10, v1, Lcom/android/launcher3/model/LoaderTask;->mLauncherBinder:Lcom/android/launcher3/model/LauncherBinder;

    invoke-virtual {v10}, Lcom/android/launcher3/model/LauncherBinder;->bindDeepShortcuts()V

    .line 300
    const-string v10, "bindDeepShortcuts"

    invoke-static {v10}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    .line 302
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 303
    const-string v10, "save deep shortcuts in icon cache"

    invoke-static {v10}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    .line 304
    new-instance v10, Lcom/android/launcher3/icons/ShortcutCachingLogic;

    invoke-direct {v10}, Lcom/android/launcher3/icons/ShortcutCachingLogic;-><init>()V

    new-instance v11, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda11;

    invoke-direct {v11}, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->updateIcons(Ljava/util/List;Lcom/android/launcher3/icons/cache/CachingLogic;Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;)V

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->waitForIdle()V

    .line 309
    const-string v10, "step 3 complete"

    invoke-static {v10}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    .line 310
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 313
    iget-object v10, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v10, v10, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    iget-object v11, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 314
    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/launcher3/model/WidgetsModel;->update(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    move-result-object v10

    .line 315
    .local v10, "allWidgetsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/icons/ComponentWithLabelAndIcon;>;"
    const-string v11, "load widgets"

    invoke-static {v11}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    .line 317
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 318
    iget-object v11, v1, Lcom/android/launcher3/model/LoaderTask;->mLauncherBinder:Lcom/android/launcher3/model/LauncherBinder;

    invoke-virtual {v11}, Lcom/android/launcher3/model/LauncherBinder;->bindWidgets()V

    .line 319
    const-string v11, "bindWidgets"

    invoke-static {v11}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    .line 320
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 321
    iget-object v11, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v11}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v11

    .line 323
    .local v11, "prefs":Lcom/android/launcher3/LauncherPrefs;
    sget-object v12, Lcom/android/launcher3/config/FeatureFlags;->SMARTSPACE_AS_A_WIDGET:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v12}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v12

    if-eqz v12, :cond_4

    sget-object v12, Lcom/android/launcher3/LauncherPrefs;->SHOULD_SHOW_SMARTSPACE:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {v11, v12}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 324
    iget-object v12, v1, Lcom/android/launcher3/model/LoaderTask;->mLauncherBinder:Lcom/android/launcher3/model/LauncherBinder;

    invoke-virtual {v12}, Lcom/android/launcher3/model/LauncherBinder;->bindSmartspaceWidget()V

    .line 326
    new-array v12, v6, [Lkotlin/Pair;

    sget-object v13, Lcom/android/launcher3/LauncherPrefs;->SHOULD_SHOW_SMARTSPACE:Lcom/android/launcher3/ConstantItem;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/launcher3/ConstantItem;->to(Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    aput-object v13, v12, v7

    invoke-virtual {v11, v12}, Lcom/android/launcher3/LauncherPrefs;->putSync([Lkotlin/Pair;)V

    .line 327
    const-string v12, "bindSmartspaceWidget"

    invoke-static {v12}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    .line 328
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    goto :goto_1

    .line 329
    :cond_4
    sget-object v12, Lcom/android/launcher3/config/FeatureFlags;->SMARTSPACE_AS_A_WIDGET:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v12}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    .line 335
    :goto_1
    sget-object v12, Lcom/android/launcher3/config/FeatureFlags;->CHANGE_MODEL_DELEGATE_LOADING_ORDER:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v12}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 336
    iget-object v12, v1, Lcom/android/launcher3/model/LoaderTask;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    iget-object v13, v1, Lcom/android/launcher3/model/LoaderTask;->mLauncherBinder:Lcom/android/launcher3/model/LauncherBinder;

    iget-object v13, v13, Lcom/android/launcher3/model/LauncherBinder;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    invoke-virtual {v12, v13}, Lcom/android/launcher3/model/ModelDelegate;->loadAndBindOtherItems([Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    .line 337
    const-string v12, "otherDelegateItems"

    invoke-static {v12}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    .line 338
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 341
    :cond_5
    new-instance v12, Lcom/android/launcher3/icons/ComponentWithLabelAndIcon$ComponentWithIconCachingLogic;

    iget-object v13, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 342
    invoke-virtual {v13}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13, v6}, Lcom/android/launcher3/icons/ComponentWithLabelAndIcon$ComponentWithIconCachingLogic;-><init>(Landroid/content/Context;Z)V

    iget-object v13, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 343
    invoke-virtual {v13}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda12;

    invoke-direct {v14, v13}, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda12;-><init>(Lcom/android/launcher3/LauncherModel;)V

    .line 341
    invoke-virtual {v8, v10, v12, v14}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->updateIcons(Ljava/util/List;Lcom/android/launcher3/icons/cache/CachingLogic;Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;)V

    .line 344
    const-string v12, "save widgets in icon cache"

    invoke-static {v12}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    .line 347
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->loadFolderNames()V

    .line 349
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 350
    invoke-virtual {v8}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->finish()V

    .line 351
    const-string v12, "finish icon update"

    invoke-static {v12}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    .line 353
    iget-object v12, v1, Lcom/android/launcher3/model/LoaderTask;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    invoke-virtual {v12}, Lcom/android/launcher3/model/ModelDelegate;->modelLoadComplete()V

    .line 354
    invoke-virtual {v4}, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->commit()V

    .line 355
    invoke-virtual {v2}, Lcom/android/launcher3/model/LoaderMemoryLogger;->clearLogs()V

    .line 363
    iget-object v12, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v13, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v14, v1, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    .line 364
    invoke-static {v12, v13, v14}, Lcom/android/launcher3/model/AllAppsToWorkspaceTask;->placeAllAppsOnWorkspace(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)Lcom/android/launcher3/model/AllAppsToWorkspaceTask$Placement;

    move-result-object v12

    .line 366
    .local v12, "placement":Lcom/android/launcher3/model/AllAppsToWorkspaceTask$Placement;
    invoke-virtual {v12}, Lcom/android/launcher3/model/AllAppsToWorkspaceTask$Placement;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_7

    .line 367
    iget-object v13, v1, Lcom/android/launcher3/model/LoaderTask;->mLauncherBinder:Lcom/android/launcher3/model/LauncherBinder;

    iget-object v13, v13, Lcom/android/launcher3/model/LauncherBinder;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    array-length v14, v13

    move v15, v7

    :goto_2
    if-ge v15, v14, :cond_6

    aget-object v16, v13, v15

    move-object/from16 v17, v16

    .line 368
    .local v17, "cb":Lcom/android/launcher3/model/BgDataModel$Callbacks;
    sget-object v6, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v7, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda1;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    .end local v17    # "cb":Lcom/android/launcher3/model/BgDataModel$Callbacks;
    .local v0, "cb":Lcom/android/launcher3/model/BgDataModel$Callbacks;
    .local v18, "allActivityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    invoke-direct {v7, v0, v12}, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/model/BgDataModel$Callbacks;Lcom/android/launcher3/model/AllAppsToWorkspaceTask$Placement;)V

    invoke-virtual {v6, v7}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 367
    .end local v0    # "cb":Lcom/android/launcher3/model/BgDataModel$Callbacks;
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v18

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto :goto_2

    .end local v18    # "allActivityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .local v0, "allActivityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    :cond_6
    move-object/from16 v18, v0

    .end local v0    # "allActivityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .restart local v18    # "allActivityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    goto :goto_3

    .line 366
    .end local v18    # "allActivityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .restart local v0    # "allActivityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    :cond_7
    move-object/from16 v18, v0

    .line 372
    .end local v0    # "allActivityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .restart local v18    # "allActivityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    :goto_3
    const-string v0, "addAllAppsToWorkspace"

    invoke-static {v0}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    .line 374
    .end local v12    # "placement":Lcom/android/launcher3/model/AllAppsToWorkspaceTask$Placement;
    iget-boolean v0, v1, Lcom/android/launcher3/model/LoaderTask;->mIsRestoreFromBackup:Z

    if-eqz v0, :cond_8

    .line 375
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/launcher3/model/LoaderTask;->mIsRestoreFromBackup:Z

    .line 376
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    const/4 v6, 0x1

    new-array v6, v6, [Lkotlin/Pair;

    sget-object v7, Lcom/android/launcher3/LauncherPrefs;->IS_FIRST_LOAD_AFTER_RESTORE:Lcom/android/launcher3/ConstantItem;

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/android/launcher3/ConstantItem;->to(Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v6, v12

    invoke-virtual {v0, v6}, Lcom/android/launcher3/LauncherPrefs;->putSync([Lkotlin/Pair;)V

    .line 377
    if-eqz v3, :cond_8

    .line 378
    invoke-virtual {v3}, Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;->reportLauncherRestoreResults()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 381
    .end local v5    # "allShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local v8    # "updateHandler":Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;
    .end local v9    # "allDeepShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local v10    # "allWidgetsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/icons/ComponentWithLabelAndIcon;>;"
    .end local v11    # "prefs":Lcom/android/launcher3/LauncherPrefs;
    .end local v18    # "allActivityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    :cond_8
    if-eqz v4, :cond_a

    :try_start_5
    invoke-virtual {v4}, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->close()V
    :try_end_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_5

    .line 263
    .restart local v5    # "allShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :catchall_0
    move-exception v0

    move-object v6, v0

    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 264
    nop

    .end local v2    # "memoryLogger":Lcom/android/launcher3/model/LoaderMemoryLogger;
    .end local v3    # "restoreEventLogger":Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;
    .end local v4    # "transaction":Lcom/android/launcher3/LauncherModel$LoaderTransaction;
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 227
    .end local v5    # "allShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v2    # "memoryLogger":Lcom/android/launcher3/model/LoaderMemoryLogger;
    .restart local v3    # "restoreEventLogger":Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;
    .restart local v4    # "transaction":Lcom/android/launcher3/LauncherModel$LoaderTransaction;
    :catchall_1
    move-exception v0

    move-object v5, v0

    if-eqz v4, :cond_9

    :try_start_7
    invoke-virtual {v4}, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v6, v0

    :try_start_8
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "memoryLogger":Lcom/android/launcher3/model/LoaderMemoryLogger;
    .end local v3    # "restoreEventLogger":Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;
    :cond_9
    :goto_4
    throw v5
    :try_end_8
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 384
    .end local v4    # "transaction":Lcom/android/launcher3/LauncherModel$LoaderTransaction;
    .restart local v2    # "memoryLogger":Lcom/android/launcher3/model/LoaderMemoryLogger;
    .restart local v3    # "restoreEventLogger":Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Lcom/android/launcher3/model/LoaderMemoryLogger;->printLogs()V

    .line 386
    throw v0

    .line 381
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 383
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    const-string v4, "Cancelled"

    invoke-static {v4}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Ljava/lang/String;)V

    .line 387
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    :cond_a
    :goto_5
    nop

    .line 388
    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/TraceHelper;->endSection()V

    .line 389
    return-void

    .line 216
    .end local v2    # "memoryLogger":Lcom/android/launcher3/model/LoaderMemoryLogger;
    .end local v3    # "restoreEventLogger":Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;
    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0
.end method

.method public declared-synchronized stopLocked()V
    .locals 1

    monitor-enter p0

    .line 392
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    .line 393
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    monitor-exit p0

    return-void

    .line 391
    .end local p0    # "this":Lcom/android/launcher3/model/LoaderTask;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized waitForIdle()V
    .locals 3

    monitor-enter p0

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mLauncherBinder:Lcom/android/launcher3/model/LauncherBinder;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/model/LauncherBinder;->newIdleLock(Ljava/lang/Object;)Lcom/android/launcher3/util/LooperIdleLock;

    move-result-object v0

    .line 187
    .local v0, "idleLock":Lcom/android/launcher3/util/LooperIdleLock;
    :goto_0
    iget-boolean v1, p0, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    if-nez v1, :cond_0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/LooperIdleLock;->awaitLocked(J)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 188
    .end local p0    # "this":Lcom/android/launcher3/model/LoaderTask;
    :cond_0
    monitor-exit p0

    return-void

    .line 183
    .end local v0    # "idleLock":Lcom/android/launcher3/util/LooperIdleLock;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
