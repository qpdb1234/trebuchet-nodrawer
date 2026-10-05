.class public abstract Lcom/android/launcher3/popup/SystemShortcut;
.super Lcom/android/launcher3/model/data/ItemInfo;
.source "SystemShortcut.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/popup/SystemShortcut$UninstallApp;,
        Lcom/android/launcher3/popup/SystemShortcut$DontSuggestApp;,
        Lcom/android/launcher3/popup/SystemShortcut$Install;,
        Lcom/android/launcher3/popup/SystemShortcut$InstallToPrivateProfile;,
        Lcom/android/launcher3/popup/SystemShortcut$Widgets;,
        Lcom/android/launcher3/popup/SystemShortcut$Factory;,
        Lcom/android/launcher3/popup/SystemShortcut$AppInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Lcom/android/launcher3/model/data/ItemInfo;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field public static final APP_INFO:Lcom/android/launcher3/popup/SystemShortcut$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/popup/SystemShortcut$Factory<",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">;"
        }
    .end annotation
.end field

.field public static final DONT_SUGGEST_APP:Lcom/android/launcher3/popup/SystemShortcut$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/popup/SystemShortcut$Factory<",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTALL:Lcom/android/launcher3/popup/SystemShortcut$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/popup/SystemShortcut$Factory<",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE_PROFILE_INSTALL:Lcom/android/launcher3/popup/SystemShortcut$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/popup/SystemShortcut$Factory<",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNINSTALL_APP:Lcom/android/launcher3/popup/SystemShortcut$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/popup/SystemShortcut$Factory<",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">;"
        }
    .end annotation
.end field

.field public static final WIDGETS:Lcom/android/launcher3/popup/SystemShortcut$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/popup/SystemShortcut$Factory<",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mAccessibilityActionId:I

.field private final mIconResId:I

.field protected final mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

.field protected final mLabelResId:I

.field protected final mOriginalView:Landroid/view/View;

.field protected final mTarget:Lcom/android/launcher3/views/ActivityContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    new-instance v0, Lcom/android/launcher3/popup/SystemShortcut$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/popup/SystemShortcut$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/launcher3/popup/SystemShortcut;->WIDGETS:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    .line 138
    new-instance v0, Lcom/android/launcher3/popup/SystemShortcut$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/popup/SystemShortcut$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/launcher3/popup/SystemShortcut;->APP_INFO:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    .line 204
    new-instance v0, Lcom/android/launcher3/popup/SystemShortcut$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/launcher3/popup/SystemShortcut$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/android/launcher3/popup/SystemShortcut;->PRIVATE_PROFILE_INSTALL:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    .line 276
    new-instance v0, Lcom/android/launcher3/popup/SystemShortcut$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/launcher3/popup/SystemShortcut$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcom/android/launcher3/popup/SystemShortcut;->INSTALL:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    .line 315
    new-instance v0, Lcom/android/launcher3/popup/SystemShortcut$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/launcher3/popup/SystemShortcut$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lcom/android/launcher3/popup/SystemShortcut;->DONT_SUGGEST_APP:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    .line 338
    new-instance v0, Lcom/android/launcher3/popup/SystemShortcut$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/launcher3/popup/SystemShortcut$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Lcom/android/launcher3/popup/SystemShortcut;->UNINSTALL_APP:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    return-void
.end method

.method public constructor <init>(IILcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V
    .locals 0
    .param p1, "iconResId"    # I
    .param p2, "labelResId"    # I
    .param p4, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p5, "originalView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 65
    .local p0, "this":Lcom/android/launcher3/popup/SystemShortcut;, "Lcom/android/launcher3/popup/SystemShortcut<TT;>;"
    .local p3, "target":Lcom/android/launcher3/views/ActivityContext;, "TT;"
    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    .line 66
    iput p1, p0, Lcom/android/launcher3/popup/SystemShortcut;->mIconResId:I

    .line 67
    iput p2, p0, Lcom/android/launcher3/popup/SystemShortcut;->mLabelResId:I

    .line 68
    iput p2, p0, Lcom/android/launcher3/popup/SystemShortcut;->mAccessibilityActionId:I

    .line 69
    iput-object p3, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Lcom/android/launcher3/views/ActivityContext;

    .line 70
    iput-object p4, p0, Lcom/android/launcher3/popup/SystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 71
    iput-object p5, p0, Lcom/android/launcher3/popup/SystemShortcut;->mOriginalView:Landroid/view/View;

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/popup/SystemShortcut;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/popup/SystemShortcut<",
            "TT;>;)V"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/android/launcher3/popup/SystemShortcut;, "Lcom/android/launcher3/popup/SystemShortcut<TT;>;"
    .local p1, "other":Lcom/android/launcher3/popup/SystemShortcut;, "Lcom/android/launcher3/popup/SystemShortcut<TT;>;"
    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    .line 75
    iget v0, p1, Lcom/android/launcher3/popup/SystemShortcut;->mIconResId:I

    iput v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mIconResId:I

    .line 76
    iget v0, p1, Lcom/android/launcher3/popup/SystemShortcut;->mLabelResId:I

    iput v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mLabelResId:I

    .line 77
    iget v0, p1, Lcom/android/launcher3/popup/SystemShortcut;->mAccessibilityActionId:I

    iput v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mAccessibilityActionId:I

    .line 78
    iget-object v0, p1, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Lcom/android/launcher3/views/ActivityContext;

    iput-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Lcom/android/launcher3/views/ActivityContext;

    .line 79
    iget-object v0, p1, Lcom/android/launcher3/popup/SystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iput-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 80
    iget-object v0, p1, Lcom/android/launcher3/popup/SystemShortcut;->mOriginalView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mOriginalView:Landroid/view/View;

    .line 81
    return-void
.end method

.method public static dismissTaskMenuView(Lcom/android/launcher3/views/ActivityContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(TT;)V"
        }
    .end annotation

    .line 384
    .local p0, "activity":Lcom/android/launcher3/views/ActivityContext;, "TT;"
    const/4 v0, 0x1

    const v1, 0x289d8b

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    .line 386
    return-void
.end method

.method static synthetic lambda$static$0(Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 5
    .param p0, "context"    # Lcom/android/launcher3/views/ActivityContext;
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "originalView"    # Landroid/view/View;

    .line 109
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 110
    :cond_0
    nop

    .line 111
    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v0

    new-instance v2, Lcom/android/launcher3/util/PackageUserKey;

    .line 112
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 111
    invoke-virtual {v0, v2}, Lcom/android/launcher3/popup/PopupDataProvider;->getWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    move-result-object v0

    .line 113
    .local v0, "widgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    return-object v1

    .line 116
    :cond_1
    new-instance v1, Lcom/android/launcher3/popup/SystemShortcut$Widgets;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/popup/SystemShortcut$Widgets;-><init>(Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    return-object v1
.end method

.method static synthetic lambda$static$1(Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 7
    .param p0, "context"    # Lcom/android/launcher3/views/ActivityContext;
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "originalView"    # Landroid/view/View;

    .line 206
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 207
    return-object v0

    .line 209
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_7

    instance-of v1, p1, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v1, :cond_7

    .line 211
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->hasAllAppsContainer()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 212
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 216
    :cond_1
    nop

    .line 217
    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getPrivateProfileManager()Lcom/android/launcher3/allapps/PrivateProfileManager;

    move-result-object v1

    .line 218
    .local v1, "privateProfileManager":Lcom/android/launcher3/allapps/PrivateProfileManager;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/PrivateProfileManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 222
    :cond_2
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/PrivateProfileManager;->getProfileUser()Landroid/os/UserHandle;

    move-result-object v2

    .line 223
    .local v2, "privateProfileUser":Landroid/os/UserHandle;
    if-nez v2, :cond_3

    .line 224
    return-object v0

    .line 227
    :cond_3
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 228
    .local v3, "targetComponent":Landroid/content/ComponentName;
    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v4

    new-instance v5, Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {v5, v3, v2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/AllAppsStore;->getApp(Lcom/android/launcher3/util/ComponentKey;)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 230
    return-object v0

    .line 234
    :cond_4
    nop

    .line 235
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/launcher3/R$array;->skip_private_profile_shortcut_packages:I

    .line 236
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 237
    .local v4, "packagesToSkip":[Ljava/lang/String;
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 238
    return-object v0

    .line 241
    :cond_5
    new-instance v0, Lcom/android/launcher3/popup/SystemShortcut$InstallToPrivateProfile;

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/android/launcher3/popup/SystemShortcut$InstallToPrivateProfile;-><init>(Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Landroid/os/UserHandle;)V

    return-object v0

    .line 219
    .end local v2    # "privateProfileUser":Landroid/os/UserHandle;
    .end local v3    # "targetComponent":Landroid/content/ComponentName;
    .end local v4    # "packagesToSkip":[Ljava/lang/String;
    :cond_6
    :goto_0
    return-object v0

    .line 213
    .end local v1    # "privateProfileManager":Lcom/android/launcher3/allapps/PrivateProfileManager;
    :cond_7
    :goto_1
    return-object v0
.end method

.method static synthetic lambda$static$2(Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 7
    .param p0, "activity"    # Lcom/android/launcher3/views/ActivityContext;
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "originalView"    # Landroid/view/View;

    .line 278
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 279
    return-object v0

    .line 281
    :cond_0
    instance-of v1, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 282
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 284
    .local v1, "supportsWebUI":Z
    :goto_0
    const/4 v4, 0x0

    .line 285
    .local v4, "isInstantApp":Z
    instance-of v5, p1, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v5, :cond_2

    .line 287
    move-object v5, p1

    check-cast v5, Lcom/android/launcher3/model/data/AppInfo;

    .line 288
    .local v5, "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    nop

    .line 289
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 288
    invoke-static {v6}, Lcom/android/launcher3/util/InstantAppResolver;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/util/InstantAppResolver;

    move-result-object v6

    .line 289
    invoke-virtual {v6, v5}, Lcom/android/launcher3/util/InstantAppResolver;->isInstantApp(Lcom/android/launcher3/model/data/AppInfo;)Z

    move-result v4

    .line 291
    .end local v5    # "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    :cond_2
    if-nez v1, :cond_4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    .line 292
    .local v2, "enabled":Z
    :cond_4
    :goto_1
    if-nez v2, :cond_5

    .line 293
    return-object v0

    .line 295
    :cond_5
    new-instance v0, Lcom/android/launcher3/popup/SystemShortcut$Install;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/popup/SystemShortcut$Install;-><init>(Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    return-object v0
.end method

.method static synthetic lambda$static$3(Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 1
    .param p0, "activity"    # Lcom/android/launcher3/views/ActivityContext;
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "originalView"    # Landroid/view/View;

    .line 317
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->isPredictedItem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    const/4 v0, 0x0

    return-object v0

    .line 320
    :cond_0
    new-instance v0, Lcom/android/launcher3/popup/SystemShortcut$DontSuggestApp;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/popup/SystemShortcut$DontSuggestApp;-><init>(Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    return-object v0
.end method

.method static synthetic lambda$static$4(Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 3
    .param p0, "activityContext"    # Lcom/android/launcher3/views/ActivityContext;
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "originalView"    # Landroid/view/View;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 346
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/launcher3/SecondaryDropTarget;->getUninstallTarget(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ComponentName;

    move-result-object v1

    .line 353
    .local v1, "cn":Landroid/content/ComponentName;
    if-nez v1, :cond_1

    .line 356
    return-object v0

    .line 358
    :cond_1
    new-instance v0, Lcom/android/launcher3/popup/SystemShortcut$UninstallApp;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/launcher3/popup/SystemShortcut$UninstallApp;-><init>(Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Landroid/content/ComponentName;)V

    return-object v0
.end method


# virtual methods
.method public createAccessibilityAction(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 94
    .local p0, "this":Lcom/android/launcher3/popup/SystemShortcut;, "Lcom/android/launcher3/popup/SystemShortcut<TT;>;"
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget v1, p0, Lcom/android/launcher3/popup/SystemShortcut;->mAccessibilityActionId:I

    iget v2, p0, Lcom/android/launcher3/popup/SystemShortcut;->mLabelResId:I

    .line 95
    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 94
    return-object v0
.end method

.method public hasHandlerForAction(I)Z
    .locals 1
    .param p1, "action"    # I

    .line 99
    .local p0, "this":Lcom/android/launcher3/popup/SystemShortcut;, "Lcom/android/launcher3/popup/SystemShortcut<TT;>;"
    iget v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mAccessibilityActionId:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setIconAndContentDescriptionFor(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/ImageView;

    .line 89
    .local p0, "this":Lcom/android/launcher3/popup/SystemShortcut;, "Lcom/android/launcher3/popup/SystemShortcut<TT;>;"
    iget v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mIconResId:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/popup/SystemShortcut;->mLabelResId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 91
    return-void
.end method

.method public setIconAndLabelFor(Landroid/view/View;Landroid/widget/TextView;)V
    .locals 1
    .param p1, "iconView"    # Landroid/view/View;
    .param p2, "labelView"    # Landroid/widget/TextView;

    .line 84
    .local p0, "this":Lcom/android/launcher3/popup/SystemShortcut;, "Lcom/android/launcher3/popup/SystemShortcut<TT;>;"
    iget v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mIconResId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 85
    iget v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mLabelResId:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 86
    return-void
.end method
