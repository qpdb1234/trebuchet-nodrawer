.class public Lcom/android/launcher3/util/WallpaperOffsetInterpolator;
.super Ljava/lang/Object;
.source "WallpaperOffsetInterpolator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0xfa

.field private static final MIN_PARALLAX_PAGE_SPAN:I = 0x4

.field private static final MSG_APPLY_OFFSET:I = 0x3

.field private static final MSG_JUMP_TO_FINAL:I = 0x5

.field private static final MSG_SET_NUM_PARALLAX:I = 0x4

.field private static final MSG_START_ANIMATION:I = 0x1

.field private static final MSG_UPDATE_OFFSET:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WPOffsetInterpolator"

.field private static final sTempInt:[I


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mIsRtl:Z

.field private mLockedToDefaultPage:Z

.field private mNumScreens:I

.field private mRegistered:Z

.field private final mWallpaperChangeReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

.field private mWallpaperIsLiveWallpaper:Z

.field private mWindowToken:Landroid/os/IBinder;

.field private final mWorkspace:Lcom/android/launcher3/Workspace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/Workspace<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$CJe4uT-Bku1iT8HXD9aXLhrZyvE(Lcom/android/launcher3/util/WallpaperOffsetInterpolator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->lambda$onWallpaperChanged$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$_MTMEyccIAk9_9io1hv6iKXfO6A(Lcom/android/launcher3/util/WallpaperOffsetInterpolator;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->lambda$new$0(Landroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->sTempInt:[I

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Workspace;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Workspace<",
            "*>;)V"
        }
    .end annotation

    .line 47
    .local p1, "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance v1, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/util/WallpaperOffsetInterpolator;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;-><init>(Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWallpaperChangeReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mRegistered:Z

    .line 48
    iput-object p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 49
    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mIsRtl:Z

    .line 50
    new-instance v0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$OffsetHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mHandler:Landroid/os/Handler;

    .line 51
    return-void
.end method

.method private getNumPagesExcludingEmpty()I
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    .line 156
    .local v0, "numOfPages":I
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->hasExtraEmptyScreens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v1

    sub-int v1, v0, v1

    return v1

    .line 159
    :cond_0
    return v0
.end method

.method private getNumScrollableScreensExcludingEmpty()I
    .locals 3

    .line 143
    invoke-direct {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->getNumPagesExcludingEmpty()I

    move-result v0

    int-to-float v0, v0

    .line 144
    .local v0, "numOfPages":F
    iget-object v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    return v1
.end method

.method private synthetic lambda$new$0(Landroid/content/Intent;)V
    .locals 0
    .param p1, "i"    # Landroid/content/Intent;

    .line 35
    invoke-direct {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->onWallpaperChanged()V

    return-void
.end method

.method private synthetic lambda$onWallpaperChanged$1()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWallpaperIsLiveWallpaper:Z

    .line 215
    invoke-direct {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->updateOffset()V

    .line 216
    return-void
.end method

.method private onWallpaperChanged()V
    .locals 2

    .line 211
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/util/WallpaperOffsetInterpolator;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 217
    return-void
.end method

.method private updateOffset()V
    .locals 5

    .line 190
    iget-object v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->getNumPagesForWallpaperParallax()I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWindowToken:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-static {v0, v4, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 192
    return-void
.end method

.method private wallpaperOffsetForScroll(II[I)V
    .locals 12
    .param p1, "scroll"    # I
    .param p2, "numScrollableScreens"    # I
    .param p3, "out"    # [I

    .line 70
    const/4 v0, 0x1

    aput v0, p3, v0

    .line 74
    iget-boolean v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mLockedToDefaultPage:Z

    const/4 v2, 0x0

    if-nez v1, :cond_6

    if-gt p2, v0, :cond_0

    goto :goto_3

    .line 81
    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWallpaperIsLiveWallpaper:Z

    if-eqz v1, :cond_1

    move v1, p2

    goto :goto_0

    .line 82
    :cond_1
    const/4 v1, 0x4

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_0
    nop

    .line 97
    .local v1, "numScreensForWallpaperParallax":I
    invoke-direct {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->getNumPagesExcludingEmpty()I

    move-result v3

    sub-int/2addr v3, v0

    .line 98
    .local v3, "endIndex":I
    iget-boolean v4, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mIsRtl:Z

    if-eqz v4, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v2

    .line 99
    .local v5, "leftPageIndex":I
    :goto_1
    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v3

    .line 102
    .local v4, "rightPageIndex":I
    :goto_2
    iget-object v6, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v6, v5}, Lcom/android/launcher3/Workspace;->getScrollForPage(I)I

    move-result v6

    .line 103
    .local v6, "leftPageScrollX":I
    iget-object v7, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v7, v4}, Lcom/android/launcher3/Workspace;->getScrollForPage(I)I

    move-result v7

    .line 104
    .local v7, "rightPageScrollX":I
    sub-int v8, v7, v6

    .line 105
    .local v8, "scrollRange":I
    if-gtz v8, :cond_4

    .line 106
    aput v2, p3, v2

    .line 107
    return-void

    .line 112
    :cond_4
    sub-int v9, p1, v6

    iget-object v10, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 113
    invoke-virtual {v10, v2}, Lcom/android/launcher3/Workspace;->getLayoutTransitionOffsetForPage(I)I

    move-result v10

    sub-int/2addr v9, v10

    .line 114
    .local v9, "adjustedScroll":I
    invoke-static {v9, v2, v8}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v9

    .line 115
    add-int/lit8 v10, v1, -0x1

    mul-int/2addr v10, v8

    aput v10, p3, v0

    .line 119
    const/4 v10, 0x0

    .line 120
    .local v10, "rtlOffset":I
    iget-boolean v11, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mIsRtl:Z

    if-eqz v11, :cond_5

    .line 122
    aget v0, p3, v0

    add-int/lit8 v11, p2, -0x1

    mul-int/2addr v11, v8

    sub-int v10, v0, v11

    .line 124
    :cond_5
    add-int/lit8 v0, p2, -0x1

    mul-int/2addr v0, v9

    add-int/2addr v0, v10

    aput v0, p3, v2

    .line 125
    return-void

    .line 75
    .end local v1    # "numScreensForWallpaperParallax":I
    .end local v3    # "endIndex":I
    .end local v4    # "rightPageIndex":I
    .end local v5    # "leftPageIndex":I
    .end local v6    # "leftPageScrollX":I
    .end local v7    # "rightPageScrollX":I
    .end local v8    # "scrollRange":I
    .end local v9    # "adjustedScroll":I
    .end local v10    # "rtlOffset":I
    :cond_6
    :goto_3
    iget-boolean v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mIsRtl:Z

    aput v0, p3, v2

    .line 76
    return-void
.end method


# virtual methods
.method public getNumPagesForWallpaperParallax()I
    .locals 2

    .line 181
    iget-boolean v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWallpaperIsLiveWallpaper:Z

    if-eqz v0, :cond_0

    .line 182
    iget v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mNumScreens:I

    return v0

    .line 184
    :cond_0
    const/4 v0, 0x4

    iget v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mNumScreens:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public isLockedToDefaultPage()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mLockedToDefaultPage:Z

    return v0
.end method

.method public jumpToFinal()V
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWindowToken:Landroid/os/IBinder;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 196
    return-void
.end method

.method public setLockToDefaultPage(Z)V
    .locals 0
    .param p1, "lockToDefaultPage"    # Z

    .line 57
    iput-boolean p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mLockedToDefaultPage:Z

    .line 58
    return-void
.end method

.method public setWindowToken(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 199
    iput-object p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWindowToken:Landroid/os/IBinder;

    .line 200
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWallpaperChangeReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    iget-object v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->unregisterReceiverSafely(Landroid/content/Context;)V

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mRegistered:Z

    goto :goto_0

    .line 203
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mRegistered:Z

    if-nez v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWallpaperChangeReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    iget-object v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.intent.action.WALLPAPER_CHANGED"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)V

    .line 205
    invoke-direct {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->onWallpaperChanged()V

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mRegistered:Z

    .line 208
    :cond_1
    :goto_0
    return-void
.end method

.method public syncWithScroll()V
    .locals 7

    .line 164
    invoke-direct {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->getNumScrollableScreensExcludingEmpty()I

    move-result v0

    .line 165
    .local v0, "numScreens":I
    iget-object v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getScrollX()I

    move-result v1

    sget-object v2, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->sTempInt:[I

    invoke-direct {p0, v1, v0, v2}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->wallpaperOffsetForScroll(II[I)V

    .line 166
    iget-object v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x1

    aget v2, v2, v4

    iget-object v5, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWindowToken:Landroid/os/IBinder;

    const/4 v6, 0x2

    invoke-static {v1, v6, v3, v2, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 168
    .local v1, "msg":Landroid/os/Message;
    iget v2, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mNumScreens:I

    if-eq v0, v2, :cond_1

    .line 169
    if-lez v2, :cond_0

    .line 171
    iput v4, v1, Landroid/os/Message;->what:I

    .line 173
    :cond_0
    iput v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mNumScreens:I

    .line 174
    invoke-direct {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->updateOffset()V

    .line 176
    :cond_1
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 177
    return-void
.end method

.method public wallpaperOffsetForScroll(I)F
    .locals 3
    .param p1, "scroll"    # I

    .line 128
    invoke-direct {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->getNumScrollableScreensExcludingEmpty()I

    move-result v0

    sget-object v1, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->sTempInt:[I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->wallpaperOffsetForScroll(II[I)V

    .line 129
    const/4 v0, 0x0

    aget v0, v1, v0

    int-to-float v0, v0

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method
