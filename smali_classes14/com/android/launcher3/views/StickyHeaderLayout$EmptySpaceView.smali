.class public Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;
.super Landroid/view/View;
.source "StickyHeaderLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/views/StickyHeaderLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmptySpaceView"
.end annotation


# instance fields
.field private mHeight:I

.field private mOnYChangeCallback:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$DMAOe5eQOTMQIVECUabLIzNILSI(Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 277
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 274
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;->mHeight:I

    .line 278
    invoke-virtual {p0}, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 279
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "v"    # Landroid/animation/ValueAnimator;

    .line 278
    invoke-direct {p0}, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;->notifyYChanged()V

    return-void
.end method

.method private notifyYChanged()V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;->mOnYChangeCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 323
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 325
    :cond_0
    return-void
.end method


# virtual methods
.method public offsetTopAndBottom(I)V
    .locals 0
    .param p1, "offset"    # I

    .line 311
    invoke-super {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 312
    invoke-direct {p0}, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;->notifyYChanged()V

    .line 313
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 305
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 306
    invoke-direct {p0}, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;->notifyYChanged()V

    .line 307
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 296
    iget v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;->mHeight:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/view/View;->onMeasure(II)V

    .line 297
    return-void
.end method

.method public setFixedHeight(I)Z
    .locals 1
    .param p1, "height"    # I

    .line 286
    iget v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;->mHeight:I

    if-eq v0, p1, :cond_0

    .line 287
    iput p1, p0, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;->mHeight:I

    .line 288
    invoke-virtual {p0}, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;->requestLayout()V

    .line 289
    const/4 v0, 0x1

    return v0

    .line 291
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setOnYChangeCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 300
    iput-object p1, p0, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;->mOnYChangeCallback:Ljava/lang/Runnable;

    .line 301
    return-void
.end method

.method public setTranslationY(F)V
    .locals 0
    .param p1, "translationY"    # F

    .line 317
    invoke-super {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 318
    invoke-direct {p0}, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;->notifyYChanged()V

    .line 319
    return-void
.end method
