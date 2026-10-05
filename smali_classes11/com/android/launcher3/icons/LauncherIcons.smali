.class public Lcom/android/launcher3/icons/LauncherIcons;
.super Lcom/android/launcher3/icons/BaseIconFactory;
.source "LauncherIcons.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static sPool:Lcom/android/launcher3/icons/LauncherIcons;

.field private static sPoolId:I

.field private static final sPoolSync:Ljava/lang/Object;


# instance fields
.field private mMonochromeIconFactory:Lcom/android/launcher3/icons/MonochromeIconFactory;

.field private final mPoolId:I

.field private next:Lcom/android/launcher3/icons/LauncherIcons;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/icons/LauncherIcons;->sPoolSync:Ljava/lang/Object;

    .line 42
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher3/icons/LauncherIcons;->sPoolId:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;III)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fillResIconDpi"    # I
    .param p3, "iconBitmapSize"    # I
    .param p4, "poolId"    # I

    .line 82
    invoke-static {}, Lcom/android/launcher3/graphics/IconShape;->getShape()Lcom/android/launcher3/graphics/IconShape;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/graphics/IconShape;->enableShapeDetection()Z

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/icons/BaseIconFactory;-><init>(Landroid/content/Context;IIZ)V

    .line 83
    invoke-static {p1}, Lcom/android/launcher3/util/Themes;->isThemedIconEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/icons/LauncherIcons;->mMonoIconEnabled:Z

    .line 84
    iput p4, p0, Lcom/android/launcher3/icons/LauncherIcons;->mPoolId:I

    .line 85
    return-void
.end method

.method public static clearPool()V
    .locals 2

    .line 69
    sget-object v0, Lcom/android/launcher3/icons/LauncherIcons;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/launcher3/icons/LauncherIcons;->sPool:Lcom/android/launcher3/icons/LauncherIcons;

    .line 71
    sget v1, Lcom/android/launcher3/icons/LauncherIcons;->sPoolId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/launcher3/icons/LauncherIcons;->sPoolId:I

    .line 72
    monitor-exit v0

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 49
    instance-of v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    if-eqz v0, :cond_0

    .line 50
    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;->newLauncherIcons(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object v0

    return-object v0

    .line 54
    :cond_0
    sget-object v0, Lcom/android/launcher3/icons/LauncherIcons;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lcom/android/launcher3/icons/LauncherIcons;->sPool:Lcom/android/launcher3/icons/LauncherIcons;

    if-eqz v1, :cond_1

    .line 56
    nop

    .line 57
    .local v1, "m":Lcom/android/launcher3/icons/LauncherIcons;
    iget-object v2, v1, Lcom/android/launcher3/icons/LauncherIcons;->next:Lcom/android/launcher3/icons/LauncherIcons;

    sput-object v2, Lcom/android/launcher3/icons/LauncherIcons;->sPool:Lcom/android/launcher3/icons/LauncherIcons;

    .line 58
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/launcher3/icons/LauncherIcons;->next:Lcom/android/launcher3/icons/LauncherIcons;

    .line 59
    monitor-exit v0

    return-object v1

    .line 61
    .end local v1    # "m":Lcom/android/launcher3/icons/LauncherIcons;
    :cond_1
    sget v1, Lcom/android/launcher3/icons/LauncherIcons;->sPoolId:I

    .line 62
    .local v1, "poolId":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InvariantDeviceProfile;

    .line 65
    .local v0, "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    new-instance v2, Lcom/android/launcher3/icons/LauncherIcons;

    iget v3, v0, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    iget v4, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    invoke-direct {v2, p0, v3, v4, v1}, Lcom/android/launcher3/icons/LauncherIcons;-><init>(Landroid/content/Context;III)V

    return-object v2

    .line 62
    .end local v0    # "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    .end local v1    # "poolId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 123
    invoke-virtual {p0}, Lcom/android/launcher3/icons/LauncherIcons;->recycle()V

    .line 124
    return-void
.end method

.method protected getMonochromeDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "base"    # Landroid/graphics/drawable/Drawable;

    .line 105
    invoke-super {p0, p1}, Lcom/android/launcher3/icons/BaseIconFactory;->getMonochromeDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 106
    .local v0, "mono":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_2

    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_FORCED_MONO_ICON:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/icons/LauncherIcons;->mMonochromeIconFactory:Lcom/android/launcher3/icons/MonochromeIconFactory;

    if-nez v1, :cond_1

    .line 110
    new-instance v1, Lcom/android/launcher3/icons/MonochromeIconFactory;

    iget v2, p0, Lcom/android/launcher3/icons/LauncherIcons;->mIconBitmapSize:I

    invoke-direct {v1, v2}, Lcom/android/launcher3/icons/MonochromeIconFactory;-><init>(I)V

    iput-object v1, p0, Lcom/android/launcher3/icons/LauncherIcons;->mMonochromeIconFactory:Lcom/android/launcher3/icons/MonochromeIconFactory;

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/icons/LauncherIcons;->mMonochromeIconFactory:Lcom/android/launcher3/icons/MonochromeIconFactory;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/icons/MonochromeIconFactory;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 107
    :cond_2
    :goto_0
    return-object v0
.end method

.method protected getUserInfo(Landroid/os/UserHandle;)Lcom/android/launcher3/util/UserIconInfo;
    .locals 2
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 118
    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/icons/LauncherIcons;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/pm/UserCache;->getUserInfo(Landroid/os/UserHandle;)Lcom/android/launcher3/util/UserIconInfo;

    move-result-object v0

    return-object v0
.end method

.method public recycle()V
    .locals 3

    .line 91
    sget-object v0, Lcom/android/launcher3/icons/LauncherIcons;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_0
    sget v1, Lcom/android/launcher3/icons/LauncherIcons;->sPoolId:I

    iget v2, p0, Lcom/android/launcher3/icons/LauncherIcons;->mPoolId:I

    if-eq v1, v2, :cond_0

    .line 93
    monitor-exit v0

    return-void

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/icons/LauncherIcons;->clear()V

    .line 98
    sget-object v1, Lcom/android/launcher3/icons/LauncherIcons;->sPool:Lcom/android/launcher3/icons/LauncherIcons;

    iput-object v1, p0, Lcom/android/launcher3/icons/LauncherIcons;->next:Lcom/android/launcher3/icons/LauncherIcons;

    .line 99
    sput-object p0, Lcom/android/launcher3/icons/LauncherIcons;->sPool:Lcom/android/launcher3/icons/LauncherIcons;

    .line 100
    monitor-exit v0

    .line 101
    return-void

    .line 100
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
