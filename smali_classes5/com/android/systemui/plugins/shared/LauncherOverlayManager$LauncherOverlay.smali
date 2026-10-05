.class public interface abstract Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;
.super Ljava/lang/Object;
.source "LauncherOverlayManager.java"

# interfaces
.implements Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayTouchProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/shared/LauncherOverlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LauncherOverlay"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public onFlingVelocity(F)V
    .locals 0
    .param p1, "velocity"    # F

    .line 81
    return-void
.end method

.method public onOverlayMotionEvent(Landroid/view/MotionEvent;F)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "scrollProgress"    # F

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 87
    :pswitch_0
    const/4 v0, 0x0

    invoke-interface {p0, p2, v0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;->onScrollChange(FZ)V

    goto :goto_0

    .line 88
    :pswitch_1
    invoke-interface {p0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;->onScrollInteractionEnd()V

    goto :goto_0

    .line 86
    :pswitch_2
    invoke-interface {p0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;->onScrollInteractionBegin()V

    .line 91
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public abstract onScrollChange(FZ)V
.end method

.method public abstract onScrollInteractionBegin()V
.end method

.method public abstract onScrollInteractionEnd()V
.end method

.method public abstract setOverlayCallbacks(Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayCallbacks;)V
.end method
