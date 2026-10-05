.class public interface abstract Lcom/android/systemui/plugins/shared/LauncherOverlayManager;
.super Ljava/lang/Object;
.source "LauncherOverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayCallbacks;,
        Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayTouchProxy;,
        Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;
    }
.end annotation


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "w"    # Ljava/io/PrintWriter;

    .line 32
    return-void
.end method

.method public hideOverlay(I)V
    .locals 0
    .param p1, "duration"    # I

    .line 40
    return-void
.end method

.method public hideOverlay(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 37
    if-eqz p1, :cond_0

    const/16 v0, 0xc8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->hideOverlay(I)V

    .line 38
    return-void
.end method

.method public onActivityDestroyed()V
    .locals 0

    .line 50
    return-void
.end method

.method public onActivityPaused()V
    .locals 0

    .line 46
    return-void
.end method

.method public onActivityResumed()V
    .locals 0

    .line 44
    return-void
.end method

.method public onActivityStarted()V
    .locals 0

    .line 42
    return-void
.end method

.method public onActivityStopped()V
    .locals 0

    .line 48
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 29
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 30
    return-void
.end method

.method public onDeviceProvideChanged()V
    .locals 0

    .line 27
    return-void
.end method

.method public openOverlay()V
    .locals 0

    .line 34
    return-void
.end method
