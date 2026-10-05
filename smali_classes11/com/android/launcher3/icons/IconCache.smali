.class public Lcom/android/launcher3/icons/IconCache;
.super Lcom/android/launcher3/icons/cache/BaseIconCache;
.source "IconCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/icons/IconCache$ItemInfoUpdateReceiver;
    }
.end annotation


# static fields
.field public static final EXTRA_SHORTCUT_BADGE_OVERRIDE_PACKAGE:Ljava/lang/String; = "extra_shortcut_badge_override_package"

.field private static final TAG:Ljava/lang/String; = "Launcher.IconCache"


# instance fields
.field private final mCancelledTask:Lcom/android/launcher3/util/CancellableTask;

.field private final mComponentWithLabelCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/icons/cache/CachingLogic<",
            "Lcom/android/launcher3/icons/ComponentWithLabel;",
            ">;"
        }
    .end annotation
.end field

.field private final mIconProvider:Lcom/android/launcher3/icons/IconProvider;

.field private final mInstantAppResolver:Lcom/android/launcher3/util/InstantAppResolver;

.field private final mIsUsingFallbackOrNonDefaultIconCheck:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfoWithIcon;",
            ">;"
        }
    .end annotation
.end field

.field private final mLauncherActivityInfoCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/icons/cache/CachingLogic<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mPendingIconRequestCount:I

.field private final mShortcutCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/icons/cache/CachingLogic<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManager:Lcom/android/launcher3/pm/UserCache;

.field private final mWidgetCategoryBitmapInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/icons/BitmapInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$7npjWsRkgseKRs90b9oZSR8eIlg(Lcom/android/launcher3/icons/IconCache;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Landroid/content/pm/LauncherActivityInfo;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/icons/IconCache;->lambda$getTitleAndIcon$10(Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9uINKJQ1Lzu4eWQsgvPlfVwi6YE(Lcom/android/launcher3/icons/IconCache;Landroidx/core/util/Pair;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/icons/IconCache;->lambda$getTitlesAndIconsInBulk$18(Landroidx/core/util/Pair;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CiUfw-77JFH_5a37pQXxNtxfbzM(Lcom/android/launcher3/icons/IconCache;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/icons/IconCache;->onIconRequestEnd()V

    return-void
.end method

.method public static synthetic $r8$lambda$Qykg-uMtrd-Avt37qk-5jJ34Yd4(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$T9q4ogjCV9IQE_DiFWmovE6gpyw(Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/icons/IconCache;->lambda$updateIconInBackground$3(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$a-d7CABArn8pKj6kDCoIXdtDJAM(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hXZlNvxzCaJ77ZgPdBrrL6mx7Ro(Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/model/data/PackageItemInfo;)Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/icons/IconCache;->lambda$updateIconInBackground$4(Lcom/android/launcher3/model/data/PackageItemInfo;)Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$n_xXyxJ3w6lMHDGQYap_oUj1-DM(Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/icons/IconCache;->lambda$new$0(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$od0U34-_ZdG5tDltS8mpo54bKCA(Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/model/data/IconRequestInfo;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/icons/IconCache;->lambda$getTitlesAndIconsInBulk$14(Lcom/android/launcher3/model/data/IconRequestInfo;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Ljava/lang/String;Lcom/android/launcher3/icons/IconProvider;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "idp"    # Lcom/android/launcher3/InvariantDeviceProfile;
    .param p3, "dbFileName"    # Ljava/lang/String;
    .param p4, "iconProvider"    # Lcom/android/launcher3/icons/IconProvider;

    .line 112
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget v5, p2, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    iget v6, p2, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/icons/cache/BaseIconCache;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;IIZ)V

    .line 93
    new-instance v0, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda9;-><init>(Lcom/android/launcher3/icons/IconCache;)V

    iput-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mIsUsingFallbackOrNonDefaultIconCheck:Ljava/util/function/Predicate;

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/icons/IconCache;->mPendingIconRequestCount:I

    .line 114
    new-instance v1, Lcom/android/launcher3/icons/ComponentWithLabel$ComponentCachingLogic;

    invoke-direct {v1, p1, v0}, Lcom/android/launcher3/icons/ComponentWithLabel$ComponentCachingLogic;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/android/launcher3/icons/IconCache;->mComponentWithLabelCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;

    .line 115
    invoke-static {p1}, Lcom/android/launcher3/icons/LauncherActivityCachingLogic;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherActivityCachingLogic;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mLauncherActivityInfoCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;

    .line 116
    new-instance v0, Lcom/android/launcher3/icons/ShortcutCachingLogic;

    invoke-direct {v0}, Lcom/android/launcher3/icons/ShortcutCachingLogic;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mShortcutCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;

    .line 117
    iget-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 118
    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/icons/IconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/UserCache;

    iput-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mUserManager:Lcom/android/launcher3/pm/UserCache;

    .line 119
    iget-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/util/InstantAppResolver;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/util/InstantAppResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mInstantAppResolver:Lcom/android/launcher3/util/InstantAppResolver;

    .line 120
    iput-object p4, p0, Lcom/android/launcher3/icons/IconCache;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    .line 121
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mWidgetCategoryBitmapInfos:Landroid/util/SparseArray;

    .line 123
    new-instance v0, Lcom/android/launcher3/util/CancellableTask;

    new-instance v1, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda10;-><init>()V

    sget-object v2, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda12;

    invoke-direct {v3}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda12;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/util/CancellableTask;-><init>(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mCancelledTask:Lcom/android/launcher3/util/CancellableTask;

    .line 124
    invoke-virtual {v0}, Lcom/android/launcher3/util/CancellableTask;->cancel()V

    .line 125
    return-void
.end method

.method private createBulkQueryCursor(Ljava/util/List;Landroid/os/UserHandle;Z)Landroid/database/Cursor;
    .locals 6
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "useLowResIcons"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/launcher3/model/data/ItemInfoWithIcon;",
            ">(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/IconRequestInfo<",
            "TT;>;>;",
            "Landroid/os/UserHandle;",
            "Z)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .line 390
    .local p1, "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;>;"
    nop

    .line 391
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda23;

    invoke-direct {v1}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda23;-><init>()V

    .line 392
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda1;-><init>()V

    .line 393
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 394
    invoke-interface {v0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda2;-><init>()V

    .line 395
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 396
    invoke-virtual {p0, p2}, Lcom/android/launcher3/icons/IconCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 390
    invoke-static {v0, v1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda3;-><init>()V

    .line 396
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 397
    .local v0, "queryParams":[Ljava/lang/String;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 398
    const-string v2, "?"

    invoke-static {v1, v2}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 397
    const-string v2, ","

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, "componentNameQuery":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/launcher3/icons/IconCache;->mIconDb:Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;

    .line 401
    if-eqz p3, :cond_0

    sget-object v3, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->COLUMNS_LOW_RES:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->COLUMNS_HIGH_RES:[Ljava/lang/String;

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "componentName IN ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ) AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "profileId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 400
    invoke-virtual {v2, v3, v4, v0}, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method private declared-synchronized getBadgedIcon(Lcom/android/launcher3/icons/BitmapInfo;Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 1
    .param p1, "bitmap"    # Lcom/android/launcher3/icons/BitmapInfo;
    .param p2, "user"    # Landroid/os/UserHandle;

    monitor-enter p0

    .line 580
    if-nez p1, :cond_0

    .line 581
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/launcher3/icons/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 583
    .end local p0    # "this":Lcom/android/launcher3/icons/IconCache;
    :cond_0
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/launcher3/icons/IconCache;->getUserFlagOpLocked(Landroid/os/UserHandle;)Lcom/android/launcher3/util/FlagOp;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/icons/BitmapInfo;->withFlags(Lcom/android/launcher3/util/FlagOp;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 579
    .end local p1    # "bitmap":Lcom/android/launcher3/icons/BitmapInfo;
    .end local p2    # "user":Landroid/os/UserHandle;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic lambda$createBulkQueryCursor$12(Lcom/android/launcher3/model/data/IconRequestInfo;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "r"    # Lcom/android/launcher3/model/data/IconRequestInfo;

    .line 392
    iget-object v0, p0, Lcom/android/launcher3/model/data/IconRequestInfo;->itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$createBulkQueryCursor$13(I)[Ljava/lang/String;
    .locals 1
    .param p0, "x$0"    # I

    .line 396
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$getShortcutIcon$9(Landroid/content/pm/ShortcutInfo;)Landroid/content/pm/ShortcutInfo;
    .locals 0
    .param p0, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 272
    return-object p0
.end method

.method private synthetic lambda$getTitleAndIcon$10(Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Landroid/content/pm/LauncherActivityInfo;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 333
    iget-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mLauncherApps:Landroid/content/pm/LauncherApps;

    iget-object v1, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/LauncherApps;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getTitleAndIcon$8(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/pm/LauncherActivityInfo;
    .locals 0
    .param p0, "activityInfo"    # Landroid/content/pm/LauncherActivityInfo;

    .line 254
    return-object p0
.end method

.method static synthetic lambda$getTitleNoCache$11(Lcom/android/launcher3/icons/ComponentWithLabel;)Lcom/android/launcher3/icons/ComponentWithLabel;
    .locals 0
    .param p0, "info"    # Lcom/android/launcher3/icons/ComponentWithLabel;

    .line 339
    return-object p0
.end method

.method private synthetic lambda$getTitlesAndIconsInBulk$14(Lcom/android/launcher3/model/data/IconRequestInfo;)Z
    .locals 2
    .param p1, "iconRequest"    # Lcom/android/launcher3/model/data/IconRequestInfo;

    .line 416
    iget-object v0, p1, Lcom/android/launcher3/model/data/IconRequestInfo;->itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping Item info with null component name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/model/data/IconRequestInfo;->itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.IconCache"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v0, p1, Lcom/android/launcher3/model/data/IconRequestInfo;->itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object v1, p1, Lcom/android/launcher3/model/data/IconRequestInfo;->itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/icons/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 422
    const/4 v0, 0x0

    return v0

    .line 424
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$getTitlesAndIconsInBulk$15(Lcom/android/launcher3/model/data/IconRequestInfo;)Landroidx/core/util/Pair;
    .locals 2
    .param p0, "iconRequest"    # Lcom/android/launcher3/model/data/IconRequestInfo;

    .line 427
    iget-object v0, p0, Lcom/android/launcher3/model/data/IconRequestInfo;->itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object v0, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->user:Landroid/os/UserHandle;

    iget-boolean v1, p0, Lcom/android/launcher3/model/data/IconRequestInfo;->useLowResIcon:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getTitlesAndIconsInBulk$16(Lcom/android/launcher3/model/data/IconRequestInfo;)Z
    .locals 3
    .param p0, "iconRequest"    # Lcom/android/launcher3/model/data/IconRequestInfo;

    .line 435
    iget-object v0, p0, Lcom/android/launcher3/model/data/IconRequestInfo;->itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->itemType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping Item info for deep shortcut: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/data/IconRequestInfo;->itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v2, "Launcher.IconCache"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    const/4 v0, 0x0

    return v0

    .line 442
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$getTitlesAndIconsInBulk$17(Lcom/android/launcher3/model/data/IconRequestInfo;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "iconRequest"    # Lcom/android/launcher3/model/data/IconRequestInfo;

    .line 445
    iget-object v0, p0, Lcom/android/launcher3/model/data/IconRequestInfo;->itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$getTitlesAndIconsInBulk$18(Landroidx/core/util/Pair;Ljava/util/List;)V
    .locals 2
    .param p1, "sectionKey"    # Landroidx/core/util/Pair;
    .param p2, "filteredList"    # Ljava/util/List;

    .line 431
    nop

    .line 432
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda16;-><init>()V

    .line 433
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda17;

    invoke-direct {v1}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda17;-><init>()V

    .line 444
    invoke-static {v1}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 447
    .local v0, "duplicateIconRequestsMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;>;>;"
    const-string v1, "loadIconSubsectionInBulk"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 448
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/icons/IconCache;->loadIconSubsection(Landroidx/core/util/Pair;Ljava/util/List;Ljava/util/Map;)V

    .line 449
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 450
    return-void
.end method

.method static synthetic lambda$loadIconSubsection$19(Ljava/util/List;)Landroid/content/pm/LauncherActivityInfo;
    .locals 1
    .param p0, "duplicateIconRequests"    # Ljava/util/List;

    .line 475
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/IconRequestInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/IconRequestInfo;->launcherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    return-object v0
.end method

.method private synthetic lambda$new$0(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z
    .locals 2
    .param p1, "w"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 94
    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/icons/BitmapInfo;->isNullOrLowRes()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/icons/IconCache;->isDefaultIcon(Lcom/android/launcher3/icons/BitmapInfo;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$new$1()Ljava/lang/Object;
    .locals 1

    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$new$2(Ljava/lang/Object;)V
    .locals 0
    .param p0, "c"    # Ljava/lang/Object;

    .line 123
    return-void
.end method

.method private synthetic lambda$updateIconInBackground$3(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 183
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    .line 184
    return-object p1
.end method

.method private synthetic lambda$updateIconInBackground$4(Lcom/android/launcher3/model/data/PackageItemInfo;)Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .locals 1
    .param p1, "pii"    # Lcom/android/launcher3/model/data/PackageItemInfo;

    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIconForApp(Lcom/android/launcher3/model/data/PackageItemInfo;Z)V

    .line 189
    return-object p1
.end method

.method static synthetic lambda$updateIconInBackground$5()V
    .locals 0

    .line 205
    return-void
.end method

.method static synthetic lambda$updateTitleAndIcon$6()Landroid/content/pm/LauncherActivityInfo;
    .locals 1

    .line 226
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$updateTitleAndIcon$7()Landroid/content/pm/LauncherActivityInfo;
    .locals 1

    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

.method private loadIconSubsection(Landroidx/core/util/Pair;Ljava/util/List;Ljava/util/Map;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/launcher3/model/data/ItemInfoWithIcon;",
            ">(",
            "Landroidx/core/util/Pair<",
            "Landroid/os/UserHandle;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/IconRequestInfo<",
            "TT;>;>;",
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/IconRequestInfo<",
            "TT;>;>;>;)V"
        }
    .end annotation

    .line 458
    .local p1, "sectionKey":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Landroid/os/UserHandle;Ljava/lang/Boolean;>;"
    .local p2, "filteredList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;>;"
    .local p3, "duplicateIconRequestsMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;>;>;"
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    const-string v12, "Launcher.IconCache"

    const-string v0, "loadIconSubsectionWithDatabase"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 459
    :try_start_0
    iget-object v0, v10, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/os/UserHandle;

    iget-object v1, v10, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 462
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 459
    move-object/from16 v13, p2

    :try_start_1
    invoke-direct {v9, v13, v0, v1}, Lcom/android/launcher3/icons/IconCache;->createBulkQueryCursor(Ljava/util/List;Landroid/os/UserHandle;Z)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v14, v0

    .line 464
    .local v14, "c":Landroid/database/Cursor;
    :try_start_2
    const-string v0, "componentName"

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 465
    .local v0, "componentNameColumnIndex":I
    :goto_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 466
    nop

    .line 467
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 466
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    move-object v15, v1

    .line 468
    .local v15, "cn":Landroid/content/ComponentName;
    nop

    .line 469
    invoke-interface {v11, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    move-object v8, v1

    .line 471
    .local v8, "duplicateIconRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;>;"
    if-eqz v15, :cond_0

    .line 472
    iget-object v1, v10, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Landroid/os/UserHandle;

    new-instance v4, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda0;

    invoke-direct {v4, v8}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    iget-object v5, v9, Lcom/android/launcher3/icons/IconCache;->mLauncherActivityInfoCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;

    const/4 v7, 0x0

    iget-object v1, v10, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 479
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    .line 472
    move-object/from16 v1, p0

    move-object v2, v15

    move-object v6, v14

    move-object/from16 v17, v8

    .end local v8    # "duplicateIconRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;>;"
    .local v17, "duplicateIconRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;>;"
    move/from16 v8, v16

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/icons/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/function/Supplier;Lcom/android/launcher3/icons/cache/CachingLogic;Landroid/database/Cursor;ZZ)Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    move-result-object v1

    .line 481
    .local v1, "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/IconRequestInfo;

    .line 482
    .local v3, "iconRequest":Lcom/android/launcher3/model/data/IconRequestInfo;, "Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;"
    iget-object v4, v3, Lcom/android/launcher3/model/data/IconRequestInfo;->itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {v9, v1, v4}, Lcom/android/launcher3/icons/IconCache;->applyCacheEntry(Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 483
    .end local v3    # "iconRequest":Lcom/android/launcher3/model/data/IconRequestInfo;, "Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;"
    goto :goto_1

    .line 471
    .end local v1    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .end local v17    # "duplicateIconRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;>;"
    .restart local v8    # "duplicateIconRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;>;"
    :cond_0
    move-object/from16 v17, v8

    .line 485
    .end local v8    # "duplicateIconRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;>;"
    .end local v15    # "cn":Landroid/content/ComponentName;
    :cond_1
    goto :goto_0

    .line 486
    .end local v0    # "componentNameColumnIndex":I
    :cond_2
    if-eqz v14, :cond_3

    :try_start_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 489
    .end local v14    # "c":Landroid/database/Cursor;
    :cond_3
    goto :goto_4

    .line 459
    .restart local v14    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v14, :cond_4

    :try_start_4
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_5
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "sectionKey":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Landroid/os/UserHandle;Ljava/lang/Boolean;>;"
    .end local p2    # "filteredList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;>;"
    .end local p3    # "duplicateIconRequestsMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;>;>;"
    :cond_4
    :goto_2
    throw v1
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 486
    .end local v14    # "c":Landroid/database/Cursor;
    .restart local p1    # "sectionKey":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Landroid/os/UserHandle;Ljava/lang/Boolean;>;"
    .restart local p2    # "filteredList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;>;"
    .restart local p3    # "duplicateIconRequestsMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;>;>;"
    :catch_0
    move-exception v0

    goto :goto_3

    .line 489
    :catchall_2
    move-exception v0

    move-object/from16 v13, p2

    goto/16 :goto_b

    .line 486
    :catch_1
    move-exception v0

    move-object/from16 v13, p2

    .line 487
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :goto_3
    :try_start_6
    const-string v1, "Error reading icon cache"

    invoke-static {v12, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 489
    nop

    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 490
    nop

    .line 492
    const-string v0, "loadIconSubsectionWithFallback"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 494
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/content/ComponentName;

    .line 495
    .local v14, "cn":Landroid/content/ComponentName;
    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/launcher3/model/data/IconRequestInfo;

    .line 496
    .local v15, "iconRequestInfo":Lcom/android/launcher3/model/data/IconRequestInfo;, "Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;"
    iget-object v8, v15, Lcom/android/launcher3/model/data/IconRequestInfo;->itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 497
    .local v8, "itemInfo":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    iget-object v7, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 498
    .local v7, "icon":Lcom/android/launcher3/icons/BitmapInfo;
    iget-object v1, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->title:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    .line 499
    .local v16, "loadFallbackTitle":Z
    if-eqz v7, :cond_5

    iget-object v1, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->user:Landroid/os/UserHandle;

    .line 500
    invoke-virtual {v9, v7, v1}, Lcom/android/launcher3/icons/IconCache;->isDefaultIcon(Lcom/android/launcher3/icons/BitmapInfo;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_INFO:Lcom/android/launcher3/icons/BitmapInfo;

    if-ne v7, v1, :cond_6

    :cond_5
    const/4 v2, 0x1

    :cond_6
    move/from16 v17, v2

    .line 503
    .local v17, "loadFallbackIcon":Z
    if-nez v16, :cond_8

    if-eqz v17, :cond_7

    goto :goto_6

    :cond_7
    move-object/from16 v20, v0

    goto/16 :goto_a

    .line 504
    :cond_8
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Database bulk icon loading failed, using fallback bulk icon loading for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    new-instance v1, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    invoke-direct {v1}, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;-><init>()V

    move-object v6, v1

    .line 508
    .local v6, "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    iget-object v5, v15, Lcom/android/launcher3/model/data/IconRequestInfo;->launcherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    .line 512
    .local v5, "lai":Landroid/content/pm/LauncherActivityInfo;
    iget-object v1, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->title:Ljava/lang/CharSequence;

    iput-object v1, v6, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 513
    if-eqz v7, :cond_9

    .line 514
    iput-object v7, v6, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 516
    :cond_9
    iget-object v1, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->contentDescription:Ljava/lang/CharSequence;

    iput-object v1, v6, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    .line 518
    if-eqz v17, :cond_a

    .line 519
    iget-object v4, v9, Lcom/android/launcher3/icons/IconCache;->mLauncherActivityInfoCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;

    const/16 v18, 0x0

    iget-object v1, v10, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v19, v1

    check-cast v19, Landroid/os/UserHandle;

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v6

    move-object/from16 v20, v0

    move-object v0, v5

    .end local v5    # "lai":Landroid/content/pm/LauncherActivityInfo;
    .local v0, "lai":Landroid/content/pm/LauncherActivityInfo;
    move/from16 v5, v18

    move-object/from16 v21, v6

    .end local v6    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .local v21, "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    move/from16 v6, v16

    move-object/from16 v18, v7

    .end local v7    # "icon":Lcom/android/launcher3/icons/BitmapInfo;
    .local v18, "icon":Lcom/android/launcher3/icons/BitmapInfo;
    move-object v7, v14

    move-object/from16 v22, v8

    .end local v8    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .local v22, "itemInfo":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    move-object/from16 v8, v19

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/icons/IconCache;->loadFallbackIcon(Ljava/lang/Object;Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Lcom/android/launcher3/icons/cache/CachingLogic;ZZLandroid/content/ComponentName;Landroid/os/UserHandle;)V

    goto :goto_7

    .line 518
    .end local v0    # "lai":Landroid/content/pm/LauncherActivityInfo;
    .end local v18    # "icon":Lcom/android/launcher3/icons/BitmapInfo;
    .end local v21    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .end local v22    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .restart local v5    # "lai":Landroid/content/pm/LauncherActivityInfo;
    .restart local v6    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .restart local v7    # "icon":Lcom/android/launcher3/icons/BitmapInfo;
    .restart local v8    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    :cond_a
    move-object/from16 v20, v0

    move-object v0, v5

    move-object/from16 v21, v6

    move-object/from16 v18, v7

    move-object/from16 v22, v8

    .line 528
    .end local v5    # "lai":Landroid/content/pm/LauncherActivityInfo;
    .end local v6    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .end local v7    # "icon":Lcom/android/launcher3/icons/BitmapInfo;
    .end local v8    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .restart local v0    # "lai":Landroid/content/pm/LauncherActivityInfo;
    .restart local v18    # "icon":Lcom/android/launcher3/icons/BitmapInfo;
    .restart local v21    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .restart local v22    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    :goto_7
    if-eqz v16, :cond_b

    move-object/from16 v1, v21

    .end local v21    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .restart local v1    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    iget-object v2, v1, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz v0, :cond_c

    .line 529
    iget-object v2, v9, Lcom/android/launcher3/icons/IconCache;->mLauncherActivityInfoCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;

    iget-object v3, v10, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/launcher3/icons/IconCache;->loadFallbackTitle(Ljava/lang/Object;Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Lcom/android/launcher3/icons/cache/CachingLogic;Landroid/os/UserHandle;)V

    goto :goto_8

    .line 528
    .end local v1    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .restart local v21    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    :cond_b
    move-object/from16 v1, v21

    .line 536
    .end local v21    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .restart local v1    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    :cond_c
    :goto_8
    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/IconRequestInfo;

    .line 537
    .restart local v3    # "iconRequest":Lcom/android/launcher3/model/data/IconRequestInfo;, "Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;"
    iget-object v4, v3, Lcom/android/launcher3/model/data/IconRequestInfo;->itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {v9, v1, v4}, Lcom/android/launcher3/icons/IconCache;->applyCacheEntry(Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    .line 538
    .end local v3    # "iconRequest":Lcom/android/launcher3/model/data/IconRequestInfo;, "Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;"
    goto :goto_9

    .line 540
    .end local v0    # "lai":Landroid/content/pm/LauncherActivityInfo;
    .end local v1    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .end local v14    # "cn":Landroid/content/ComponentName;
    .end local v15    # "iconRequestInfo":Lcom/android/launcher3/model/data/IconRequestInfo;, "Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;"
    .end local v16    # "loadFallbackTitle":Z
    .end local v17    # "loadFallbackIcon":Z
    .end local v18    # "icon":Lcom/android/launcher3/icons/BitmapInfo;
    .end local v22    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    :cond_d
    :goto_a
    move-object/from16 v0, v20

    goto/16 :goto_5

    .line 541
    :cond_e
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 542
    return-void

    .line 489
    :catchall_3
    move-exception v0

    :goto_b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 490
    throw v0
.end method

.method private onIconRequestEnd()V
    .locals 2

    .line 215
    iget v0, p0, Lcom/android/launcher3/icons/IconCache;->mPendingIconRequestCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/launcher3/icons/IconCache;->mPendingIconRequestCount:I

    .line 216
    if-gtz v0, :cond_0

    .line 217
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->setThreadPriority(I)V

    .line 219
    :cond_0
    return-void
.end method


# virtual methods
.method protected applyCacheEntry(Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .locals 2
    .param p1, "entry"    # Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 588
    iget-object v0, p1, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->title:Ljava/lang/CharSequence;

    .line 589
    iget-object v0, p1, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    iput-object v0, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->contentDescription:Ljava/lang/CharSequence;

    .line 590
    iget-object v0, p1, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iput-object v0, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 591
    iget-object v0, p1, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    if-nez v0, :cond_0

    .line 593
    const-string v0, "Launcher.IconCache"

    const-string v1, "Cannot find bitmap from the cache, default icon was loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v0, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/icons/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    iput-object v0, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 596
    :cond_0
    return-void
.end method

.method protected applyPackageEntry(Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Lcom/android/launcher3/model/data/ItemInfoWithIcon;Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;)V
    .locals 2
    .param p1, "packageEntry"    # Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .param p3, "fallbackEntry"    # Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    .line 600
    iget-object v0, p1, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->title:Ljava/lang/CharSequence;

    .line 601
    iget-object v0, p3, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->appTitle:Ljava/lang/CharSequence;

    .line 602
    iget-object v0, p1, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    iput-object v0, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->contentDescription:Ljava/lang/CharSequence;

    .line 603
    iget-object v0, p1, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iput-object v0, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 604
    iget-object v0, p1, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    if-nez v0, :cond_0

    .line 606
    const-string v0, "Launcher.IconCache"

    const-string v1, "Cannot find bitmap from the cache, default icon was loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v0, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/icons/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    iput-object v0, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 609
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcom/android/launcher3/icons/IconCache;->getUpdateHandler()Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;

    .line 169
    iget-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mIconDb:Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;

    invoke-virtual {v0}, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->close()V

    .line 170
    return-void
.end method

.method public getFullResIcon(Landroid/content/pm/LauncherActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "info"    # Landroid/content/pm/LauncherActivityInfo;

    .line 612
    iget-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    iget v1, p0, Lcom/android/launcher3/icons/IconCache;->mIconDpi:I

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/icons/IconProvider;->getIcon(Landroid/content/pm/LauncherActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIconFactory()Lcom/android/launcher3/icons/BaseIconFactory;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object v0

    return-object v0
.end method

.method protected getIconSystemState(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 623
    iget-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    iget-object v1, p0, Lcom/android/launcher3/icons/IconCache;->mSystemState:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/icons/IconProvider;->getSystemStateForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSerialNumberForUser(Landroid/os/UserHandle;)J
    .locals 2
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 129
    iget-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mUserManager:Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShortcutIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .param p2, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 262
    iget-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mIsUsingFallbackOrNonDefaultIconCheck:Ljava/util/function/Predicate;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/icons/IconCache;->getShortcutIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Predicate;)V

    .line 263
    return-void
.end method

.method public getShortcutIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Predicate;)V
    .locals 8
    .param p2, "si"    # Landroid/content/pm/ShortcutInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/launcher3/model/data/ItemInfoWithIcon;",
            ">(TT;",
            "Landroid/content/pm/ShortcutInfo;",
            "Ljava/util/function/Predicate<",
            "TT;>;)V"
        }
    .end annotation

    .line 271
    .local p1, "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;, "TT;"
    .local p3, "fallbackIconCheck":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    invoke-static {p2}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromInfo(Landroid/content/pm/ShortcutInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v0

    iget-object v2, v0, Lcom/android/launcher3/shortcuts/ShortcutKey;->componentName:Landroid/content/ComponentName;

    .line 272
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda8;

    invoke-direct {v4, p2}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda8;-><init>(Landroid/content/pm/ShortcutInfo;)V

    iget-object v5, p0, Lcom/android/launcher3/icons/IconCache;->mShortcutCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 271
    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/icons/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/function/Supplier;Lcom/android/launcher3/icons/cache/CachingLogic;ZZ)Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 273
    .local v0, "bitmapInfo":Lcom/android/launcher3/icons/BitmapInfo;
    invoke-virtual {v0}, Lcom/android/launcher3/icons/BitmapInfo;->isNullOrLowRes()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/icons/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    .line 277
    :cond_0
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/icons/IconCache;->isDefaultIcon(Lcom/android/launcher3/icons/BitmapInfo;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    return-void

    .line 280
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/launcher3/icons/IconCache;->getShortcutInfoBadge(Landroid/content/pm/ShortcutInfo;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/icons/BitmapInfo;->withBadgeInfo(Lcom/android/launcher3/icons/BitmapInfo;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v1

    iput-object v1, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 281
    return-void
.end method

.method public getShortcutInfoBadge(Landroid/content/pm/ShortcutInfo;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 1
    .param p1, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;

    .line 287
    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/IconCache;->getShortcutInfoBadgeItem(Landroid/content/pm/ShortcutInfo;)Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    return-object v0
.end method

.method protected getShortcutInfoBadgeItem(Landroid/content/pm/ShortcutInfo;)Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .locals 7
    .param p1, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;

    .line 293
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "extra_shortcut_badge_override_package"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    nop

    .line 296
    .local v1, "override":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/launcher3/pm/InstallSessionHelper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v4, p0, Lcom/android/launcher3/icons/IconCache;->mContext:Landroid/content/Context;

    .line 297
    invoke-virtual {v2, v4}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/pm/InstallSessionHelper;

    .line 298
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/android/launcher3/pm/InstallSessionHelper;->isTrustedPackage(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 299
    move-object v0, v1

    goto :goto_1

    .line 302
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v2

    .line 303
    .local v2, "cn":Landroid/content/ComponentName;
    if-eqz v2, :cond_2

    .line 305
    new-instance v4, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {v4}, Lcom/android/launcher3/model/data/AppInfo;-><init>()V

    .line 306
    .local v4, "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    iput-object v5, v4, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    .line 307
    iput-object v2, v4, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 308
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 310
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, v4, Lcom/android/launcher3/model/data/AppInfo;->intent:Landroid/content/Intent;

    .line 311
    invoke-virtual {p0, v4, v3}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    .line 312
    return-object v4

    .line 315
    .end local v2    # "cn":Landroid/content/ComponentName;
    .end local v4    # "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    :cond_2
    :goto_1
    new-instance v2, Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Lcom/android/launcher3/model/data/PackageItemInfo;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 316
    .local v2, "pkgInfo":Lcom/android/launcher3/model/data/PackageItemInfo;
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIconForApp(Lcom/android/launcher3/model/data/PackageItemInfo;Z)V

    .line 317
    return-object v2
.end method

.method public declared-synchronized getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V
    .locals 7
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .param p2, "activityInfo"    # Landroid/content/pm/LauncherActivityInfo;
    .param p3, "useLowResIcon"    # Z

    monitor-enter p0

    .line 251
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/Utilities;->enableSupportForArchiving()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 252
    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->isArchived:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v4, v0

    goto :goto_0

    .end local p0    # "this":Lcom/android/launcher3/icons/IconCache;
    :cond_0
    const/4 v0, 0x0

    move v4, v0

    .line 254
    .local v4, "isAppArchived":Z
    :goto_0
    new-instance v3, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda5;

    invoke-direct {v3, p2}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda5;-><init>(Landroid/content/pm/LauncherActivityInfo;)V

    move-object v1, p0

    move-object v2, p1

    move v5, p3

    move v6, v4

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Ljava/util/function/Supplier;ZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    monitor-exit p0

    return-void

    .line 250
    .end local v4    # "isAppArchived":Z
    .end local p1    # "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .end local p2    # "activityInfo":Landroid/content/pm/LauncherActivityInfo;
    .end local p3    # "useLowResIcon":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Ljava/util/function/Supplier;ZZ)V
    .locals 7
    .param p1, "infoInOut"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .param p3, "usePkgIcon"    # Z
    .param p4, "useLowResIcon"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/ItemInfoWithIcon;",
            "Ljava/util/function/Supplier<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;ZZ)V"
        }
    .end annotation

    .local p2, "activityInfoProvider":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/content/pm/LauncherActivityInfo;>;"
    monitor-enter p0

    .line 352
    :try_start_0
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->user:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/launcher3/icons/IconCache;->mLauncherActivityInfoCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;

    move-object v0, p0

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/icons/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/function/Supplier;Lcom/android/launcher3/icons/cache/CachingLogic;ZZ)Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    move-result-object v0

    .line 355
    .local v0, "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/icons/IconCache;->applyCacheEntry(Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    monitor-exit p0

    return-void

    .line 351
    .end local v0    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .end local p0    # "this":Lcom/android/launcher3/icons/IconCache;
    .end local p1    # "infoInOut":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .end local p2    # "activityInfoProvider":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/content/pm/LauncherActivityInfo;>;"
    .end local p3    # "usePkgIcon":Z
    .end local p4    # "useLowResIcon":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Ljava/util/function/Supplier;ZZZ)V
    .locals 9
    .param p1, "infoInOut"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .param p3, "usePkgIcon"    # Z
    .param p4, "useLowResIcon"    # Z
    .param p5, "preferPackageEntry"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/ItemInfoWithIcon;",
            "Ljava/util/function/Supplier<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;ZZZ)V"
        }
    .end annotation

    .local p2, "activityInfoProvider":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/content/pm/LauncherActivityInfo;>;"
    monitor-enter p0

    .line 365
    :try_start_0
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->user:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/launcher3/icons/IconCache;->mLauncherActivityInfoCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;

    move-object v0, p0

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/icons/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/function/Supplier;Lcom/android/launcher3/icons/cache/CachingLogic;ZZ)Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    move-result-object v0

    .line 368
    .local v0, "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    if-eqz p5, :cond_0

    .line 369
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    .line 370
    .local v1, "packageName":Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->user:Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/android/launcher3/icons/IconCache;->mLauncherActivityInfoCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;

    move-object v2, p0

    move-object v5, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/icons/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/function/Supplier;Lcom/android/launcher3/icons/cache/CachingLogic;ZZ)Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    move-result-object v2

    .line 374
    .local v2, "packageEntry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    invoke-virtual {p0, v2, p1, v0}, Lcom/android/launcher3/icons/IconCache;->applyPackageEntry(Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Lcom/android/launcher3/model/data/ItemInfoWithIcon;Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;)V

    .line 375
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "packageEntry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    goto :goto_0

    .line 376
    .end local p0    # "this":Lcom/android/launcher3/icons/IconCache;
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/icons/IconCache;->applyCacheEntry(Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    :goto_0
    monitor-exit p0

    return-void

    .line 364
    .end local v0    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .end local p1    # "infoInOut":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .end local p2    # "activityInfoProvider":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/content/pm/LauncherActivityInfo;>;"
    .end local p3    # "usePkgIcon":Z
    .end local p4    # "useLowResIcon":Z
    .end local p5    # "preferPackageEntry":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V
    .locals 7
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .param p2, "useLowResIcon"    # Z

    monitor-enter p0

    .line 327
    :try_start_0
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/icons/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    iput-object v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 329
    const-string v0, ""

    iput-object v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->title:Ljava/lang/CharSequence;

    .line 330
    const-string v0, ""

    iput-object v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_0

    .line 332
    .end local p0    # "this":Lcom/android/launcher3/icons/IconCache;
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 333
    .local v0, "intent":Landroid/content/Intent;
    new-instance v3, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/icons/IconCache;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    const/4 v4, 0x1

    .line 334
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->isArchived()Z

    move-result v6

    .line 333
    move-object v1, p0

    move-object v2, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Ljava/util/function/Supplier;ZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    monitor-exit p0

    return-void

    .line 326
    .end local p1    # "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .end local p2    # "useLowResIcon":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTitleAndIconForApp(Lcom/android/launcher3/model/data/PackageItemInfo;Z)V
    .locals 7
    .param p1, "infoInOut"    # Lcom/android/launcher3/model/data/PackageItemInfo;
    .param p2, "useLowResIcon"    # Z

    monitor-enter p0

    .line 549
    :try_start_0
    iget-object v0, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/launcher3/icons/IconCache;->getEntryForPackageLocked(Ljava/lang/String;Landroid/os/UserHandle;Z)Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    move-result-object v0

    .line 551
    .local v0, "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/icons/IconCache;->applyCacheEntry(Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    .line 552
    iget v1, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->widgetCategory:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 553
    monitor-exit p0

    return-void

    .line 556
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/launcher3/icons/IconCache;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/widget/WidgetSections;->getWidgetSections(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->widgetCategory:I

    .line 557
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/WidgetSections$WidgetSection;

    .line 558
    .local v1, "widgetSection":Lcom/android/launcher3/widget/WidgetSections$WidgetSection;
    iget-object v2, p0, Lcom/android/launcher3/icons/IconCache;->mContext:Landroid/content/Context;

    iget v3, v1, Lcom/android/launcher3/widget/WidgetSections$WidgetSection;->mSectionTitle:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->title:Ljava/lang/CharSequence;

    .line 559
    iget-object v2, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/icons/IconCache;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 560
    iget-object v2, p0, Lcom/android/launcher3/icons/IconCache;->mWidgetCategoryBitmapInfos:Landroid/util/SparseArray;

    iget v3, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->widgetCategory:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/icons/BitmapInfo;

    .line 561
    .local v2, "cachedBitmap":Lcom/android/launcher3/icons/BitmapInfo;
    if-eqz v2, :cond_1

    .line 562
    iget-object v3, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/icons/IconCache;->getBadgedIcon(Lcom/android/launcher3/icons/BitmapInfo;Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v3

    iput-object v3, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 563
    monitor-exit p0

    return-void

    .line 566
    .end local p0    # "this":Lcom/android/launcher3/icons/IconCache;
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/launcher3/icons/IconCache;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 567
    .local v3, "li":Lcom/android/launcher3/icons/LauncherIcons;
    :try_start_3
    iget-object v4, p0, Lcom/android/launcher3/icons/IconCache;->mContext:Landroid/content/Context;

    iget v5, v1, Lcom/android/launcher3/widget/WidgetSections$WidgetSection;->mSectionDrawable:I

    .line 568
    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v5, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    invoke-direct {v5}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;-><init>()V

    .line 569
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->setShrinkNonAdaptiveIcons(Z)Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    move-result-object v5

    .line 567
    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/icons/LauncherIcons;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v4

    .line 570
    .local v4, "tempBitmap":Lcom/android/launcher3/icons/BitmapInfo;
    iget-object v5, p0, Lcom/android/launcher3/icons/IconCache;->mWidgetCategoryBitmapInfos:Landroid/util/SparseArray;

    iget v6, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->widgetCategory:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 571
    iget-object v5, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {p0, v4, v5}, Lcom/android/launcher3/icons/IconCache;->getBadgedIcon(Lcom/android/launcher3/icons/BitmapInfo;Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v5

    iput-object v5, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 572
    .end local v4    # "tempBitmap":Lcom/android/launcher3/icons/BitmapInfo;
    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Lcom/android/launcher3/icons/LauncherIcons;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 574
    .end local v3    # "li":Lcom/android/launcher3/icons/LauncherIcons;
    :cond_2
    goto :goto_1

    .line 566
    .restart local v3    # "li":Lcom/android/launcher3/icons/LauncherIcons;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Lcom/android/launcher3/icons/LauncherIcons;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    :try_start_6
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .end local v1    # "widgetSection":Lcom/android/launcher3/widget/WidgetSections$WidgetSection;
    .end local v2    # "cachedBitmap":Lcom/android/launcher3/icons/BitmapInfo;
    .end local p1    # "infoInOut":Lcom/android/launcher3/model/data/PackageItemInfo;
    .end local p2    # "useLowResIcon":Z
    :cond_3
    :goto_0
    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 572
    .end local v3    # "li":Lcom/android/launcher3/icons/LauncherIcons;
    .restart local v0    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .restart local v1    # "widgetSection":Lcom/android/launcher3/widget/WidgetSections$WidgetSection;
    .restart local v2    # "cachedBitmap":Lcom/android/launcher3/icons/BitmapInfo;
    .restart local p1    # "infoInOut":Lcom/android/launcher3/model/data/PackageItemInfo;
    .restart local p2    # "useLowResIcon":Z
    :catch_0
    move-exception v3

    .line 573
    .local v3, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v4, "Launcher.IconCache"

    const-string v5, "Error initializing bitmap for icons with widget category"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 576
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0

    return-void

    .line 548
    .end local v0    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .end local v1    # "widgetSection":Lcom/android/launcher3/widget/WidgetSections$WidgetSection;
    .end local v2    # "cachedBitmap":Lcom/android/launcher3/icons/BitmapInfo;
    .end local p1    # "infoInOut":Lcom/android/launcher3/model/data/PackageItemInfo;
    .end local p2    # "useLowResIcon":Z
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTitleNoCache(Lcom/android/launcher3/icons/ComponentWithLabel;)Ljava/lang/String;
    .locals 7
    .param p1, "info"    # Lcom/android/launcher3/icons/ComponentWithLabel;

    monitor-enter p0

    .line 339
    :try_start_0
    invoke-interface {p1}, Lcom/android/launcher3/icons/ComponentWithLabel;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/launcher3/icons/ComponentWithLabel;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda11;

    invoke-direct {v3, p1}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda11;-><init>(Lcom/android/launcher3/icons/ComponentWithLabel;)V

    iget-object v4, p0, Lcom/android/launcher3/icons/IconCache;->mComponentWithLabelCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/icons/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/function/Supplier;Lcom/android/launcher3/icons/cache/CachingLogic;ZZ)Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    move-result-object v0

    .line 342
    .local v0, "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    iget-object v1, v0, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 338
    .end local v0    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .end local p0    # "this":Lcom/android/launcher3/icons/IconCache;
    .end local p1    # "info":Lcom/android/launcher3/icons/ComponentWithLabel;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTitlesAndIconsInBulk(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/launcher3/model/data/ItemInfoWithIcon;",
            ">(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/IconRequestInfo<",
            "TT;>;>;)V"
        }
    .end annotation

    .local p1, "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;>;"
    monitor-enter p0

    .line 413
    nop

    .line 414
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda13;-><init>(Lcom/android/launcher3/icons/IconCache;)V

    .line 415
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda14;-><init>()V

    .line 426
    invoke-static {v1}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 429
    .local v0, "iconLoadSubsectionsMap":Ljava/util/Map;, "Ljava/util/Map<Landroidx/core/util/Pair<Landroid/os/UserHandle;Ljava/lang/Boolean;>;Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;>;>;"
    const-string v1, "loadIconsInBulk"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 430
    new-instance v1, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda15;-><init>(Lcom/android/launcher3/icons/IconCache;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 451
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    monitor-exit p0

    return-void

    .line 412
    .end local v0    # "iconLoadSubsectionsMap":Ljava/util/Map;, "Ljava/util/Map<Landroidx/core/util/Pair<Landroid/os/UserHandle;Ljava/lang/Boolean;>;Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;>;>;"
    .end local p0    # "this":Lcom/android/launcher3/icons/IconCache;
    .end local p1    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected isInstantApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 134
    iget-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mInstantAppResolver:Lcom/android/launcher3/util/InstantAppResolver;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/InstantAppResolver;->isInstantApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method public updateIconInBackground(Lcom/android/launcher3/icons/IconCache$ItemInfoUpdateReceiver;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Lcom/android/launcher3/util/CancellableTask;
    .locals 5
    .param p1, "caller"    # Lcom/android/launcher3/icons/IconCache$ItemInfoUpdateReceiver;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 181
    instance-of v0, p2, Lcom/android/launcher3/model/data/AppInfo;

    if-nez v0, :cond_3

    instance-of v0, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 186
    :cond_0
    instance-of v0, p2, Lcom/android/launcher3/model/data/PackageItemInfo;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/model/data/PackageItemInfo;

    .line 187
    .local v0, "pii":Lcom/android/launcher3/model/data/PackageItemInfo;
    new-instance v1, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda19;-><init>(Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/model/data/PackageItemInfo;)V

    .local v1, "task":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/launcher3/model/data/ItemInfoWithIcon;>;"
    goto :goto_2

    .line 192
    .end local v0    # "pii":Lcom/android/launcher3/model/data/PackageItemInfo;
    .end local v1    # "task":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/launcher3/model/data/ItemInfoWithIcon;>;"
    :cond_1
    nop

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Icon update not supported for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "null"

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 192
    :goto_0
    const-string v1, "Launcher.IconCache"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mCancelledTask:Lcom/android/launcher3/util/CancellableTask;

    return-object v0

    .line 182
    :cond_3
    :goto_1
    new-instance v0, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda18;-><init>(Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    move-object v1, v0

    .line 198
    .restart local v1    # "task":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/launcher3/model/data/ItemInfoWithIcon;>;"
    :goto_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_5

    .line 199
    iget v0, p0, Lcom/android/launcher3/icons/IconCache;->mPendingIconRequestCount:I

    if-gtz v0, :cond_4

    .line 200
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/LooperExecutor;->setThreadPriority(I)V

    .line 202
    :cond_4
    iget v0, p0, Lcom/android/launcher3/icons/IconCache;->mPendingIconRequestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/icons/IconCache;->mPendingIconRequestCount:I

    .line 203
    new-instance v0, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda20;-><init>(Lcom/android/launcher3/icons/IconCache;)V

    .local v0, "endRunnable":Ljava/lang/Runnable;
    goto :goto_3

    .line 205
    .end local v0    # "endRunnable":Ljava/lang/Runnable;
    :cond_5
    new-instance v0, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda21;-><init>()V

    .line 208
    .restart local v0    # "endRunnable":Ljava/lang/Runnable;
    :goto_3
    new-instance v2, Lcom/android/launcher3/util/CancellableTask;

    sget-object v3, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    .line 209
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda22;

    invoke-direct {v4, p1}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda22;-><init>(Lcom/android/launcher3/icons/IconCache$ItemInfoUpdateReceiver;)V

    invoke-direct {v2, v1, v3, v4, v0}, Lcom/android/launcher3/util/CancellableTask;-><init>(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    .line 210
    .local v2, "request":Lcom/android/launcher3/util/CancellableTask;, "Lcom/android/launcher3/util/CancellableTask<Lcom/android/launcher3/model/data/ItemInfoWithIcon;>;"
    iget-object v3, p0, Lcom/android/launcher3/icons/IconCache;->mWorkerHandler:Landroid/os/Handler;

    invoke-static {v3, v2}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 211
    return-object v2
.end method

.method public declared-synchronized updateIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    monitor-enter p0

    .line 148
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/icons/IconCache;->removeIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 152
    .local v5, "info":Landroid/content/pm/PackageInfo;
    iget-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mUserManager:Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v6

    .line 153
    .local v6, "userSerial":J
    iget-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/content/pm/LauncherActivityInfo;

    .line 154
    .local v3, "app":Landroid/content/pm/LauncherActivityInfo;
    iget-object v4, p0, Lcom/android/launcher3/icons/IconCache;->mLauncherActivityInfoCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/icons/IconCache;->addIconToDBAndMemCache(Ljava/lang/Object;Lcom/android/launcher3/icons/cache/CachingLogic;Landroid/content/pm/PackageInfo;JZ)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    .end local v3    # "app":Landroid/content/pm/LauncherActivityInfo;
    goto :goto_0

    .line 159
    .end local v5    # "info":Landroid/content/pm/PackageInfo;
    .end local v6    # "userSerial":J
    .end local p0    # "this":Lcom/android/launcher3/icons/IconCache;
    :cond_0
    goto :goto_1

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    const-string v1, "Launcher.IconCache"

    const-string v2, "Package not found"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    monitor-exit p0

    return-void

    .line 147
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "user":Landroid/os/UserHandle;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateSessionCache(Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;)V
    .locals 4
    .param p1, "key"    # Lcom/android/launcher3/util/PackageUserKey;
    .param p2, "info"    # Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 616
    iget-object v0, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 617
    invoke-virtual {p2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppLabel()Ljava/lang/CharSequence;

    move-result-object v3

    .line 616
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/launcher3/icons/IconCache;->cachePackageInstallInfo(Ljava/lang/String;Landroid/os/UserHandle;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 618
    return-void
.end method

.method public declared-synchronized updateTitleAndIcon(Lcom/android/launcher3/model/data/AppInfo;)V
    .locals 10
    .param p1, "application"    # Lcom/android/launcher3/model/data/AppInfo;

    monitor-enter p0

    .line 225
    :try_start_0
    iget-object v1, p1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    new-instance v3, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda6;

    invoke-direct {v3}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda6;-><init>()V

    iget-object v4, p0, Lcom/android/launcher3/icons/IconCache;->mLauncherActivityInfoCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;

    const/4 v5, 0x0

    .line 227
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/AppInfo;->usingLowResIcon()Z

    move-result v6

    .line 225
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/icons/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/function/Supplier;Lcom/android/launcher3/icons/cache/CachingLogic;ZZ)Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    move-result-object v0

    .line 228
    .local v0, "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    iget-object v1, v0, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v2, p1, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/icons/IconCache;->isDefaultIcon(Lcom/android/launcher3/icons/BitmapInfo;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 232
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/AppInfo;->isArchived()Z

    move-result v1

    .line 233
    .local v1, "preferPackageIcon":Z
    if-eqz v1, :cond_1

    .line 234
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/AppInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "packageName":Ljava/lang/String;
    new-instance v4, Landroid/content/ComponentName;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p1, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    new-instance v6, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda7;

    invoke-direct {v6}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda7;-><init>()V

    iget-object v7, p0, Lcom/android/launcher3/icons/IconCache;->mLauncherActivityInfoCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;

    const/4 v8, 0x0

    .line 238
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/AppInfo;->usingLowResIcon()Z

    move-result v9

    .line 236
    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/launcher3/icons/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/function/Supplier;Lcom/android/launcher3/icons/cache/CachingLogic;ZZ)Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    move-result-object v3

    .line 239
    .local v3, "packageEntry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    invoke-virtual {p0, v3, p1, v0}, Lcom/android/launcher3/icons/IconCache;->applyPackageEntry(Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Lcom/android/launcher3/model/data/ItemInfoWithIcon;Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;)V

    .line 240
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "packageEntry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    goto :goto_0

    .line 241
    .end local p0    # "this":Lcom/android/launcher3/icons/IconCache;
    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/icons/IconCache;->applyCacheEntry(Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :goto_0
    monitor-exit p0

    return-void

    .line 229
    .end local v1    # "preferPackageIcon":Z
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 224
    .end local v0    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .end local p1    # "application":Lcom/android/launcher3/model/data/AppInfo;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
