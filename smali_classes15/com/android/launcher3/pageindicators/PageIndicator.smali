.class public interface abstract Lcom/android/launcher3/pageindicators/PageIndicator;
.super Ljava/lang/Object;
.source "PageIndicator.java"


# virtual methods
.method public pauseAnimations()V
    .locals 0

    .line 51
    return-void
.end method

.method public abstract setActiveMarker(I)V
.end method

.method public abstract setMarkersCount(I)V
.end method

.method public setPaintColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 65
    return-void
.end method

.method public setPauseScroll(ZZ)V
    .locals 0
    .param p1, "pause"    # Z
    .param p2, "isTwoPanels"    # Z

    .line 37
    return-void
.end method

.method public abstract setScroll(II)V
.end method

.method public setShouldAutoHide(Z)V
    .locals 0
    .param p1, "shouldAutoHide"    # Z

    .line 44
    return-void
.end method

.method public skipAnimationsToEnd()V
    .locals 0

    .line 58
    return-void
.end method
