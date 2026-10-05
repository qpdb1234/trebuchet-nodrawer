.class public Lcom/android/launcher3/secondarydisplay/SecondaryDragView;
.super Lcom/android/launcher3/dragndrop/DragView;
.source "SecondaryDragView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/dragndrop/DragView<",
        "Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;",
        ">;"
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$3a-m7brkRFAoihHRupiCJW5pUXw(Lcom/android/launcher3/secondarydisplay/SecondaryDragView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/secondarydisplay/SecondaryDragView;->lambda$animateTo$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;Landroid/graphics/drawable/Drawable;IIFFF)V
    .locals 0
    .param p1, "launcher"    # Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "registrationX"    # I
    .param p4, "registrationY"    # I
    .param p5, "initialScale"    # F
    .param p6, "scaleOnDrop"    # F
    .param p7, "finalScaleDps"    # F

    .line 34
    invoke-direct/range {p0 .. p7}, Lcom/android/launcher3/dragndrop/DragView;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;IIFFF)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;Landroid/view/View;IIIIFFF)V
    .locals 0
    .param p1, "launcher"    # Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;
    .param p2, "content"    # Landroid/view/View;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "registrationX"    # I
    .param p6, "registrationY"    # I
    .param p7, "initialScale"    # F
    .param p8, "scaleOnDrop"    # F
    .param p9, "finalScaleDps"    # F

    .line 41
    invoke-direct/range {p0 .. p9}, Lcom/android/launcher3/dragndrop/DragView;-><init>(Landroid/content/Context;Landroid/view/View;IIIIFFF)V

    .line 43
    return-void
.end method

.method private synthetic lambda$animateTo$0(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .line 48
    if-eqz p1, :cond_0

    .line 49
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragView;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/views/BaseDragLayer;->removeView(Landroid/view/View;)V

    .line 52
    return-void
.end method


# virtual methods
.method public animateTo(IILjava/lang/Runnable;I)V
    .locals 4
    .param p1, "toTouchX"    # I
    .param p2, "toTouchY"    # I
    .param p3, "onCompleteRunnable"    # Ljava/lang/Runnable;
    .param p4, "duration"    # I

    .line 47
    new-instance v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3}, Lcom/android/launcher3/secondarydisplay/SecondaryDragView$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/secondarydisplay/SecondaryDragView;Ljava/lang/Runnable;)V

    .line 54
    .local v0, "onAnimationEnd":Ljava/lang/Runnable;
    nop

    .line 55
    invoke-virtual {p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDragView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$integer;->config_dropAnimMinDuration:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 54
    invoke-static {p4, v1}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 57
    invoke-virtual {p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDragView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragView;->mRegistrationX:I

    sub-int v2, p1, v2

    int-to-float v2, v2

    .line 58
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragView;->mRegistrationY:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    .line 59
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragView;->mScaleOnDrop:F

    .line 60
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragView;->mScaleOnDrop:F

    .line 61
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 62
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, p4

    .line 63
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 65
    return-void
.end method
