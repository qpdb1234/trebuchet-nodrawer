.class public Lcom/android/launcher3/allapps/PrivateProfileManager;
.super Lcom/android/launcher3/allapps/UserProfileManager;
.source "PrivateProfileManager.java"


# static fields
.field public static final PRIVATE_SPACE_INTENT:Landroid/content/Intent;


# instance fields
.field private final mAllApps:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "*>;"
        }
    .end annotation
.end field

.field private mAppInstallerIntent:Landroid/content/Intent;

.field private mPreInstalledSystemPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPrivateAppsSectionDecorator:Lcom/android/launcher3/allapps/PrivateAppsSectionDecorator;

.field private final mPrivateProfileMatcher:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field private mPrivateSpaceSettingsAvailable:Z

.field private mUnlockRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$SH28bScNNRQXvMKlS32PDvSEbWg(Lcom/android/launcher3/allapps/PrivateProfileManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/PrivateProfileManager;->initializeInBackgroundThread()V

    return-void
.end method

.method public static synthetic $r8$lambda$vAa78P5fSaoUsH_zmc299O9rHZA(Lcom/android/launcher3/allapps/PrivateProfileManager;Lcom/android/launcher3/model/data/AppInfo;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/PrivateProfileManager;->lambda$splitIntoUserInstalledAndSystemApps$1(Lcom/android/launcher3/model/data/AppInfo;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.action.PRIVATE_SPACE_SETUP_FLOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/allapps/PrivateProfileManager;->PRIVATE_SPACE_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/os/UserManager;Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;Lcom/android/launcher3/logging/StatsLogManager;Lcom/android/launcher3/pm/UserCache;)V
    .locals 2
    .param p1, "userManager"    # Landroid/os/UserManager;
    .param p3, "statsLogManager"    # Lcom/android/launcher3/logging/StatsLogManager;
    .param p4, "userCache"    # Lcom/android/launcher3/pm/UserCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserManager;",
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "*>;",
            "Lcom/android/launcher3/logging/StatsLogManager;",
            "Lcom/android/launcher3/pm/UserCache;",
            ")V"
        }
    .end annotation

    .line 79
    .local p2, "allApps":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<*>;"
    invoke-direct {p0, p1, p3, p4}, Lcom/android/launcher3/allapps/UserProfileManager;-><init>(Landroid/os/UserManager;Lcom/android/launcher3/logging/StatsLogManager;Lcom/android/launcher3/pm/UserCache;)V

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/PrivateProfileManager;->mPreInstalledSystemPackages:Ljava/util/Set;

    .line 70
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/PrivateProfileManager;->mAppInstallerIntent:Landroid/content/Intent;

    .line 80
    iput-object p2, p0, Lcom/android/launcher3/allapps/PrivateProfileManager;->mAllApps:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    .line 81
    new-instance v0, Lcom/android/launcher3/allapps/PrivateProfileManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p4}, Lcom/android/launcher3/allapps/PrivateProfileManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/pm/UserCache;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/PrivateProfileManager;->mPrivateProfileMatcher:Ljava/util/function/Predicate;

    .line 82
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/allapps/PrivateProfileManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/PrivateProfileManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/allapps/PrivateProfileManager;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method private enableQuietMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 246
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/PrivateProfileManager;->setQuietMode(Z)V

    .line 247
    return-void
.end method

.method private initializeInBackgroundThread()V
    .locals 0

    .line 189
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    .line 190
    invoke-direct {p0}, Lcom/android/launcher3/allapps/PrivateProfileManager;->setPreInstalledSystemPackages()V

    .line 191
    invoke-direct {p0}, Lcom/android/launcher3/allapps/PrivateProfileManager;->setAppInstallerIntent()V

    .line 192
    invoke-direct {p0}, Lcom/android/launcher3/allapps/PrivateProfileManager;->initializePrivateSpaceSettingsState()V

    .line 193
    return-void
.end method

.method private initializePrivateSpaceSettingsState()V
    .locals 3

    .line 196
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    .line 197
    iget-object v0, p0, Lcom/android/launcher3/allapps/PrivateProfileManager;->mAllApps:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/allapps/PrivateProfileManager;->PRIVATE_SPACE_INTENT:Landroid/content/Intent;

    .line 198
    const/high16 v2, 0x100000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 199
    .local v0, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/PrivateProfileManager;->setPrivateSpaceSettingsAvailable(Z)Z

    .line 200
    return-void
.end method

.method static synthetic lambda$new$0(Lcom/android/launcher3/pm/UserCache;Landroid/os/UserHandle;)Z
    .locals 1
    .param p0, "userCache"    # Lcom/android/launcher3/pm/UserCache;
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/launcher3/pm/UserCache;->getUserInfo(Landroid/os/UserHandle;)Lcom/android/launcher3/util/UserIconInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/UserIconInfo;->isPrivate()Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$splitIntoUserInstalledAndSystemApps$1(Lcom/android/launcher3/model/data/AppInfo;)Z
    .locals 2
    .param p1, "appInfo"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 271
    iget-object v0, p0, Lcom/android/launcher3/allapps/PrivateProfileManager;->mPreInstalledSystemPackages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/PrivateProfileManager;->mPreInstalledSystemPackages:Ljava/util/Set;

    iget-object v1, p1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 273
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 271
    :goto_0
    return v0
.end method

.method private setAppInstallerIntent()V
    .locals 3

    .line 211
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    .line 212
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/PrivateProfileManager;->getProfileUser()Landroid/os/UserHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/launcher3/allapps/PrivateProfileManager;->mAllApps:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 214
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/PrivateProfileManager;->getProfileUser()Landroid/os/UserHandle;

    move-result-object v1

    .line 213
    const-string v2, "com.android.launcher"

    invoke-static {v0, v2, v1}, Lcom/android/launcher3/uioverrides/ApiWrapper;->getAppMarketActivityIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/PrivateProfileManager;->mAppInstallerIntent:Landroid/content/Intent;

    .line 216
    :cond_0
    return-void
.end method

.method private setPreInstalledSystemPackages()V
    .locals 3

    .line 203
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    .line 204
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/PrivateProfileManager;->getProfileUser()Landroid/os/UserHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/launcher3/allapps/PrivateProfileManager;->mAllApps:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    .line 206
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/PrivateProfileManager;->getProfileUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/launcher3/uioverrides/ApiWrapper;->getPreInstalledSystemPackages(Landroid/content/Context;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/PrivateProfileManager;->mPreInstalledSystemPackages:Ljava/util/Set;

    .line 208
    :cond_0
    return-void
.end method

.method private transitioningFromLockedToUnlocked(II)Z
    .locals 1
    .param p1, "previousState"    # I
    .param p2, "updatedState"    # I

    .line 258
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addPrivateSpaceHeader(Ljava/util/ArrayList;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;)I"
        }
    .end annotation

    .line 87
    .local p1, "adapterItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;>;"
    new-instance v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/android/launcher3/allapps/PrivateProfileManager;->mAllApps:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iget-object v0, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mAdapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->notifyItemInserted(I)V

    .line 89
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public addPrivateSpaceInstallAppButton(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;)V"
        }
    .end annotation

    .line 102
    .local p1, "adapterItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/PrivateProfileManager;->mAllApps:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 104
    .local v0, "context":Landroid/content/Context;
    sget v1, Lcom/android/launcher3/R$drawable;->private_space_install_app_icon:I

    invoke-static {v0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v1

    .line 106
    .local v1, "shortcut":Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v0}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/icons/LauncherIcons;->createIconBitmap(Landroid/content/Intent$ShortcutIconResource;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v2

    .line 108
    .local v2, "bitmapInfo":Lcom/android/launcher3/icons/BitmapInfo;
    new-instance v3, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {v3}, Lcom/android/launcher3/model/data/AppInfo;-><init>()V

    .line 109
    .local v3, "itemInfo":Lcom/android/launcher3/model/data/AppInfo;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/launcher3/R$string;->ps_add_button_label:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    .line 110
    iget-object v4, p0, Lcom/android/launcher3/allapps/PrivateProfileManager;->mAppInstallerIntent:Landroid/content/Intent;

    iput-object v4, v3, Lcom/android/launcher3/model/data/AppInfo;->intent:Landroid/content/Intent;

    .line 111
    iput-object v2, v3, Lcom/android/launcher3/model/data/AppInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 112
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/launcher3/R$string;->ps_add_button_content_description:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/launcher3/model/data/AppInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 114
    iget v4, v3, Lcom/android/launcher3/model/data/AppInfo;->runtimeStatusFlags:I

    const v5, 0xa000

    or-int/2addr v4, v5

    iput v4, v3, Lcom/android/launcher3/model/data/AppInfo;->runtimeStatusFlags:I

    .line 116
    new-instance v4, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;-><init>(I)V

    .line 117
    .local v4, "item":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    iput-object v3, v4, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    .line 118
    new-instance v5, Lcom/android/launcher3/allapps/SectionDecorationInfo;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v5, v0, v6, v7}, Lcom/android/launcher3/allapps/SectionDecorationInfo;-><init>(Landroid/content/Context;IZ)V

    iput-object v5, v4, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->decorationInfo:Lcom/android/launcher3/allapps/SectionDecorationInfo;

    .line 121
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v5, p0, Lcom/android/launcher3/allapps/PrivateProfileManager;->mAllApps:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iget-object v5, v5, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v5, v5, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mAdapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->notifyItemInserted(I)V

    .line 123
    return-void
.end method

.method public addSystemAppsDivider(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;)I"
        }
    .end annotation

    .line 94
    .local p1, "adapterItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;>;"
    new-instance v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/android/launcher3/allapps/PrivateProfileManager;->mAllApps:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iget-object v0, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mAdapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->notifyItemInserted(I)V

    .line 97
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method applyUnlockRunnable()V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/android/launcher3/allapps/PrivateProfileManager;->mUnlockRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 252
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object v1, p0, Lcom/android/launcher3/allapps/PrivateProfileManager;->mUnlockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/PrivateProfileManager;->mUnlockRunnable:Ljava/lang/Runnable;

    .line 255
    :cond_0
    return-void
.end method

.method public getUserMatcher()Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/android/launcher3/allapps/PrivateProfileManager;->mPrivateProfileMatcher:Ljava/util/function/Predicate;

    return-object v0
.end method

.method public isPrivateSpaceHidden()Z
    .locals 3

    .line 145
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/PrivateProfileManager;->getCurrentState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/allapps/PrivateProfileManager;->mAllApps:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iget-object v1, v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    .line 146
    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/SettingsCache;

    sget-object v1, Lcom/android/launcher3/util/SettingsCache;->PRIVATE_SPACE_HIDE_WHEN_LOCKED_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 145
    :goto_0
    return v2
.end method

.method public isPrivateSpaceSettingsAvailable()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/PrivateProfileManager;->mPrivateSpaceSettingsAvailable:Z

    return v0
.end method

.method public lockPrivateProfile()V
    .locals 1

    .line 140
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/PrivateProfileManager;->enableQuietMode(Z)V

    .line 141
    return-void
.end method

.method public openPrivateSpaceSettings()V
    .locals 2

    .line 164
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/PrivateProfileManager;->mPrivateSpaceSettingsAvailable:Z

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/launcher3/allapps/PrivateProfileManager;->mAllApps:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/allapps/PrivateProfileManager;->PRIVATE_SPACE_INTENT:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 167
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    .line 151
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/PrivateProfileManager;->getCurrentState()I

    move-result v0

    .line 152
    .local v0, "previousState":I
    iget-object v1, p0, Lcom/android/launcher3/allapps/PrivateProfileManager;->mAllApps:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v1

    .line 153
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/AllAppsStore;->hasModelFlag(I)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 154
    .local v1, "isEnabled":Z
    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    .line 155
    .local v2, "updatedState":I
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/PrivateProfileManager;->setCurrentState(I)V

    .line 156
    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/PrivateProfileManager;->resetPrivateSpaceDecorator(I)V

    .line 157
    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/allapps/PrivateProfileManager;->transitioningFromLockedToUnlocked(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/PrivateProfileManager;->applyUnlockRunnable()V

    .line 160
    :cond_1
    return-void
.end method

.method resetPrivateSpaceDecorator(I)V
    .locals 4
    .param p1, "updatedState"    # I

    .line 220
    iget-object v0, p0, Lcom/android/launcher3/allapps/PrivateProfileManager;->mAllApps:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iget-object v0, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    .line 221
    .local v0, "mainAdapterHolder":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<*>.AdapterHolder;"
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 223
    iget-object v1, p0, Lcom/android/launcher3/allapps/PrivateProfileManager;->mPrivateAppsSectionDecorator:Lcom/android/launcher3/allapps/PrivateAppsSectionDecorator;

    if-nez v1, :cond_0

    .line 224
    new-instance v1, Lcom/android/launcher3/allapps/PrivateAppsSectionDecorator;

    iget-object v2, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mAppsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-direct {v1, v2}, Lcom/android/launcher3/allapps/PrivateAppsSectionDecorator;-><init>(Lcom/android/launcher3/allapps/AlphabeticalAppsList;)V

    iput-object v1, p0, Lcom/android/launcher3/allapps/PrivateProfileManager;->mPrivateAppsSectionDecorator:Lcom/android/launcher3/allapps/PrivateAppsSectionDecorator;

    .line 227
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getItemDecorationCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 228
    iget-object v2, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/PrivateProfileManager;->mPrivateAppsSectionDecorator:Lcom/android/launcher3/allapps/PrivateAppsSectionDecorator;

    .line 229
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 231
    return-void

    .line 227
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    .end local v1    # "i":I
    :cond_2
    iget-object v1, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v2, p0, Lcom/android/launcher3/allapps/PrivateProfileManager;->mPrivateAppsSectionDecorator:Lcom/android/launcher3/allapps/PrivateAppsSectionDecorator;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_1

    .line 238
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/allapps/PrivateProfileManager;->mPrivateAppsSectionDecorator:Lcom/android/launcher3/allapps/PrivateAppsSectionDecorator;

    if-eqz v1, :cond_4

    .line 239
    iget-object v1, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v2, p0, Lcom/android/launcher3/allapps/PrivateProfileManager;->mPrivateAppsSectionDecorator:Lcom/android/launcher3/allapps/PrivateAppsSectionDecorator;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 242
    :cond_4
    :goto_1
    return-void
.end method

.method public setPrivateSpaceSettingsAvailable(Z)Z
    .locals 0
    .param p1, "value"    # Z

    .line 176
    iput-boolean p1, p0, Lcom/android/launcher3/allapps/PrivateProfileManager;->mPrivateSpaceSettingsAvailable:Z

    return p1
.end method

.method public splitIntoUserInstalledAndSystemApps()Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation

    .line 271
    new-instance v0, Lcom/android/launcher3/allapps/PrivateProfileManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/PrivateProfileManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/allapps/PrivateProfileManager;)V

    return-object v0
.end method

.method public unlockPrivateProfile(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/PrivateProfileManager;->enableQuietMode(Z)V

    .line 135
    iput-object p1, p0, Lcom/android/launcher3/allapps/PrivateProfileManager;->mUnlockRunnable:Ljava/lang/Runnable;

    .line 136
    return-void
.end method
