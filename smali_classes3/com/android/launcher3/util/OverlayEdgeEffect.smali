.class public Lcom/android/launcher3/util/OverlayEdgeEffect;
.super Lcom/android/launcher3/util/EdgeEffectCompat;
.source "OverlayEdgeEffect.java"


# instance fields
.field protected mDistance:F

.field protected final mIsRtl:Z

.field protected mIsScrolling:Z

.field protected final mOverlay:Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayTouchProxy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayTouchProxy;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "overlay"    # Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayTouchProxy;

    .line 39
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p2, p0, Lcom/android/launcher3/util/OverlayEdgeEffect;->mOverlay:Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayTouchProxy;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/util/OverlayEdgeEffect;->mIsRtl:Z

    .line 42
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public finish()V
    .locals 1

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/OverlayEdgeEffect;->mDistance:F

    .line 122
    return-void
.end method

.method public getDistance()F
    .locals 1

    .line 46
    iget v0, p0, Lcom/android/launcher3/util/OverlayEdgeEffect;->mDistance:F

    return v0
.end method

.method public isFinished()Z
    .locals 2

    .line 82
    iget v0, p0, Lcom/android/launcher3/util/OverlayEdgeEffect;->mDistance:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAbsorb(I)V
    .locals 0
    .param p1, "velocity"    # I

    .line 78
    return-void
.end method

.method public onFlingVelocity(I)V
    .locals 2
    .param p1, "velocity"    # I

    .line 99
    iget-object v0, p0, Lcom/android/launcher3/util/OverlayEdgeEffect;->mOverlay:Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayTouchProxy;

    int-to-float v1, p1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayTouchProxy;->onFlingVelocity(F)V

    .line 100
    return-void
.end method

.method public onPullDistance(FF)F
    .locals 8
    .param p1, "deltaDistance"    # F
    .param p2, "displacement"    # F

    .line 54
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, p2

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 57
    .local v0, "mv":Landroid/view/MotionEvent;
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/util/OverlayEdgeEffect;->onPullDistance(FFLandroid/view/MotionEvent;)F

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 57
    return v1

    .line 59
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 60
    throw v1
.end method

.method public onPullDistance(FFLandroid/view/MotionEvent;)F
    .locals 3
    .param p1, "deltaDistance"    # F
    .param p2, "displacement"    # F
    .param p3, "ev"    # Landroid/view/MotionEvent;

    .line 65
    iget v0, p0, Lcom/android/launcher3/util/OverlayEdgeEffect;->mDistance:F

    add-float/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/util/OverlayEdgeEffect;->mDistance:F

    .line 66
    iget-boolean v0, p0, Lcom/android/launcher3/util/OverlayEdgeEffect;->mIsScrolling:Z

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 68
    .local v0, "originalAction":I
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 69
    iget-object v2, p0, Lcom/android/launcher3/util/OverlayEdgeEffect;->mOverlay:Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayTouchProxy;

    invoke-interface {v2, p3, v1}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayTouchProxy;->onOverlayMotionEvent(Landroid/view/MotionEvent;F)V

    .line 70
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 71
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher3/util/OverlayEdgeEffect;->mIsScrolling:Z

    .line 73
    .end local v0    # "originalAction":I
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/OverlayEdgeEffect;->mOverlay:Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayTouchProxy;

    iget v2, p0, Lcom/android/launcher3/util/OverlayEdgeEffect;->mDistance:F

    invoke-interface {v0, p3, v2}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayTouchProxy;->onOverlayMotionEvent(Landroid/view/MotionEvent;F)V

    .line 74
    iget v0, p0, Lcom/android/launcher3/util/OverlayEdgeEffect;->mDistance:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    move v1, p1

    :cond_1
    return v1
.end method

.method public onRelease()V
    .locals 8

    .line 91
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/launcher3/util/OverlayEdgeEffect;->mDistance:F

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 93
    .local v0, "mv":Landroid/view/MotionEvent;
    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/OverlayEdgeEffect;->onRelease(Landroid/view/MotionEvent;)V

    .line 94
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 95
    return-void
.end method

.method public onRelease(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 104
    iget-boolean v0, p0, Lcom/android/launcher3/util/OverlayEdgeEffect;->mIsScrolling:Z

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 106
    .local v0, "originalAction":I
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 107
    iget-object v1, p0, Lcom/android/launcher3/util/OverlayEdgeEffect;->mOverlay:Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayTouchProxy;

    iget v2, p0, Lcom/android/launcher3/util/OverlayEdgeEffect;->mDistance:F

    invoke-interface {v1, p1, v2}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayTouchProxy;->onOverlayMotionEvent(Landroid/view/MotionEvent;F)V

    .line 108
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 110
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/util/OverlayEdgeEffect;->mDistance:F

    .line 111
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/util/OverlayEdgeEffect;->mIsScrolling:Z

    .line 113
    .end local v0    # "originalAction":I
    :cond_0
    return-void
.end method
