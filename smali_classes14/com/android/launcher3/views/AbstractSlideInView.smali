.class public abstract Lcom/android/launcher3/views/AbstractSlideInView;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "AbstractSlideInView.java"

# interfaces
.implements Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Lcom/android/launcher3/AbstractFloatingView;",
        "Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;"
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION:I = 0x12c

.field protected static final TRANSLATION_SHIFT:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/views/AbstractSlideInView<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected static final TRANSLATION_SHIFT_CLOSED:F = 1.0f

.field protected static final TRANSLATION_SHIFT_OPENED:F = 0.0f

.field private static final VIEW_NO_SCALE:F = 1.0f


# instance fields
.field protected final mActivityContext:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final mColorScrim:Landroid/view/View;

.field protected mContent:Landroid/view/ViewGroup;

.field private mContentBackground:Landroid/graphics/drawable/Drawable;

.field private mContentBackgroundParentView:Landroid/view/View;

.field private mDragStartProgress:F

.field protected mFromTranslationShift:F

.field protected mIsBackProgressing:Z

.field protected mNoIntercept:Z

.field protected mOnCloseBeginListener:Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;

.field protected mOnCloseListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mOpenCloseAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field private mScrollDuration:J

.field private mScrollEndProgress:F

.field private mScrollInterpolator:Landroid/view/animation/Interpolator;

.field protected final mSlideInViewScale:Lcom/android/launcher3/anim/AnimatedFloat;

.field protected final mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

.field protected mToTranslationShift:F

.field protected mTranslationShift:F

.field protected final mViewOutlineProvider:Landroid/view/ViewOutlineProvider;


# direct methods
.method public static synthetic $r8$lambda$JJ-CcIGKZpvmCfI8TzIoVTGlR50(Lcom/android/launcher3/views/AbstractSlideInView;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/views/AbstractSlideInView;->lambda$setUpOpenCloseAnimation$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 70
    new-instance v0, Lcom/android/launcher3/views/AbstractSlideInView$1;

    const-string v1, "translationShift"

    invoke-direct {v0, v1}, Lcom/android/launcher3/views/AbstractSlideInView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/views/AbstractSlideInView;->TRANSLATION_SHIFT:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 151
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 122
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mTranslationShift:F

    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOnCloseListeners:Ljava/util/List;

    .line 132
    new-instance v1, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v2, Lcom/android/launcher3/views/AbstractSlideInView$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/launcher3/views/AbstractSlideInView$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/views/AbstractSlideInView;)V

    invoke-direct {v1, v2, v0}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;F)V

    iput-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSlideInViewScale:Lcom/android/launcher3/anim/AnimatedFloat;

    .line 138
    new-instance v0, Lcom/android/launcher3/views/AbstractSlideInView$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/views/AbstractSlideInView$2;-><init>(Lcom/android/launcher3/views/AbstractSlideInView;)V

    iput-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 152
    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    .line 154
    sget-object v0, Lcom/android/app/animation/Interpolators;->SCROLL_CUBIC:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 155
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mScrollDuration:J

    .line 156
    new-instance v0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    sget-object v1, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->VERTICAL:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    invoke-direct {v0, p1, p0, v1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;-><init>(Landroid/content/Context;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;)V

    iput-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    .line 159
    new-instance v0, Lcom/android/launcher3/anim/PendingAnimation;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    invoke-virtual {v0}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 161
    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/AbstractSlideInView;->getScrimColor(Landroid/content/Context;)I

    move-result v0

    .line 162
    .local v0, "scrimColor":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/views/AbstractSlideInView;->createColorScrim(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mColorScrim:Landroid/view/View;

    .line 163
    return-void
.end method

.method private drawScaledBackground(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 339
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContentBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContentBackgroundParentView:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_1

    .line 342
    :cond_0
    nop

    .line 343
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContentBackgroundParentView:Landroid/view/View;

    .line 344
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContentBackgroundParentView:Landroid/view/View;

    .line 345
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContentBackgroundParentView:Landroid/view/View;

    .line 346
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 347
    iget-boolean v5, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mIsBackProgressing:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getBottomOffsetPx()I

    move-result v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    add-int/2addr v4, v5

    .line 342
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 348
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContentBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 349
    return-void

    .line 340
    :cond_2
    :goto_1
    return-void
.end method

.method private isOpeningAnimationRunning()Z
    .locals 1

    .line 369
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mIsOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$setUpOpenCloseAnimation$0(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "b"    # Ljava/lang/Boolean;

    .line 207
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->finishedScrolling()V

    .line 208
    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->announceAccessibilityChanges()V

    .line 209
    return-void
.end method

.method private setUpCloseAnimation(J)Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 2
    .param p1, "duration"    # J

    .line 188
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/launcher3/views/AbstractSlideInView;->setUpOpenCloseAnimation(FFJ)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    return-object v0
.end method

.method private setUpOpenCloseAnimation(FFJ)Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 7
    .param p1, "fromTranslationShift"    # F
    .param p2, "toTranslationShift"    # F
    .param p3, "duration"    # J

    .line 202
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    iput p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mFromTranslationShift:F

    .line 203
    iput p2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mToTranslationShift:F

    .line 205
    new-instance v0, Lcom/android/launcher3/anim/PendingAnimation;

    invoke-direct {v0, p3, p4}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    .line 206
    .local v0, "animation":Lcom/android/launcher3/anim/PendingAnimation;
    new-instance v1, Lcom/android/launcher3/views/AbstractSlideInView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/views/AbstractSlideInView$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/views/AbstractSlideInView;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    .line 211
    sget-object v3, Lcom/android/launcher3/views/AbstractSlideInView;->TRANSLATION_SHIFT:Landroid/util/FloatProperty;

    sget-object v6, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move-object v1, v0

    move-object v2, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    .line 213
    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/AbstractSlideInView;->onOpenCloseAnimationPending(Lcom/android/launcher3/anim/PendingAnimation;)V

    .line 215
    invoke-virtual {v0}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 216
    return-object v1
.end method


# virtual methods
.method public addOnCloseListener(Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;

    .line 423
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOnCloseListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    return-void
.end method

.method protected animateSlideInViewToNoScale()V
    .locals 3

    .line 316
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSlideInViewScale:Lcom/android/launcher3/anim/AnimatedFloat;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 317
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 319
    return-void
.end method

.method protected attachToContainer()V
    .locals 2

    .line 228
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mColorScrim:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mColorScrim:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/BaseDragLayer;->addView(Landroid/view/View;)V

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/views/BaseDragLayer;->addView(Landroid/view/View;)V

    .line 232
    return-void
.end method

.method protected createColorScrim(Landroid/content/Context;I)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bgColor"    # I

    .line 474
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 475
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->forceHasOverlappingRendering(Z)V

    .line 476
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 478
    new-instance v1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    .line 479
    .local v1, "lp":Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->ignoreInsets:Z

    .line 480
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 323
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher3/views/AbstractSlideInView;->drawScaledBackground(Landroid/graphics/Canvas;)V

    .line 324
    invoke-super {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 325
    return-void
.end method

.method protected getBottomOffsetPx()I
    .locals 3

    .line 354
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getMeasuredHeight()I

    move-result v0

    .line 355
    .local v0, "height":I
    int-to-float v1, v0

    const v2, 0x3f666666    # 0.9f

    div-float/2addr v1, v2

    int-to-float v2, v0

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method protected getIdleInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 457
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    sget-object v0, Lcom/android/app/animation/Interpolators;->ACCELERATE:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method protected getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;
    .locals 1

    .line 470
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    return-object v0
.end method

.method protected getScrimColor(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 238
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    const/4 v0, -0x1

    return v0
.end method

.method protected getShiftRange()F
    .locals 1

    .line 245
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method protected handleClose(ZJ)V
    .locals 5
    .param p1, "animate"    # Z
    .param p2, "defaultDuration"    # J

    .line 427
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mIsOpen:Z

    if-nez v0, :cond_0

    .line 428
    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOnCloseBeginListener:Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/views/AbstractSlideInView$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/launcher3/views/AbstractSlideInView$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 432
    if-nez p1, :cond_1

    .line 433
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->pause()V

    .line 434
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/AbstractSlideInView;->setTranslationShift(F)V

    .line 435
    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->onCloseComplete()V

    .line 436
    return-void

    .line 440
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->isIdleState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 441
    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/views/AbstractSlideInView;->setUpCloseAnimation(J)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 442
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 443
    .local v0, "animator":Landroid/animation/ValueAnimator;
    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getIdleInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 445
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 446
    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 447
    iget-wide v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mScrollDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 448
    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget-object v3, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 449
    invoke-virtual {v3}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mScrollEndProgress:F

    aput v4, v2, v3

    .line 448
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 452
    :goto_0
    new-instance v1, Lcom/android/launcher3/views/AbstractSlideInView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/views/AbstractSlideInView$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/views/AbstractSlideInView;)V

    invoke-static {v1}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 453
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 454
    return-void
.end method

.method protected isEventOverContent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 365
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onBackCancelled()V
    .locals 0

    .line 311
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    invoke-super {p0}, Lcom/android/launcher3/AbstractFloatingView;->onBackCancelled()V

    .line 312
    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->animateSlideInViewToNoScale()V

    .line 313
    return-void
.end method

.method public onBackInvoked()V
    .locals 0

    .line 305
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    invoke-super {p0}, Lcom/android/launcher3/AbstractFloatingView;->onBackInvoked()V

    .line 306
    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->animateSlideInViewToNoScale()V

    .line 307
    return-void
.end method

.method public onBackProgressed(Landroid/window/BackEvent;)V
    .locals 5
    .param p1, "backEvent"    # Landroid/window/BackEvent;

    .line 287
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    invoke-virtual {p1}, Landroid/window/BackEvent;->getProgress()F

    move-result v0

    .line 288
    .local v0, "progress":F
    sget-object v1, Lcom/android/app/animation/Interpolators;->PREDICTIVE_BACK_DECELERATED_EASE:Landroid/view/animation/Interpolator;

    .line 289
    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 290
    .local v1, "deceleratedProgress":F
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mIsBackProgressing:Z

    .line 291
    iget-object v2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSlideInViewScale:Lcom/android/launcher3/anim/AnimatedFloat;

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v1

    const v4, 0x3dccccd0    # 0.100000024f

    mul-float/2addr v3, v4

    const v4, 0x3f666666    # 0.9f

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/launcher3/anim/AnimatedFloat;->updateValue(F)V

    .line 293
    return-void
.end method

.method protected onCloseComplete()V
    .locals 2

    .line 461
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mIsOpen:Z

    .line 462
    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/views/BaseDragLayer;->removeView(Landroid/view/View;)V

    .line 463
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mColorScrim:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mColorScrim:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/BaseDragLayer;->removeView(Landroid/view/View;)V

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOnCloseListeners:Ljava/util/List;

    new-instance v1, Lcom/android/launcher3/views/AbstractSlideInView$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/launcher3/views/AbstractSlideInView$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 467
    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 259
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mNoIntercept:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 260
    return v1

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->isIdleState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 265
    .local v0, "directionsToDetectScroll":I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->setDetectableScrollConditions(IZ)V

    .line 267
    iget-object v2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 268
    iget-object v2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v2}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->isDraggingOrSettling()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/AbstractSlideInView;->isEventOverContent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 273
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 274
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->isIdleState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    invoke-direct {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->isOpeningAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/AbstractSlideInView;->isEventOverContent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    invoke-virtual {p0, v1}, Lcom/android/launcher3/views/AbstractSlideInView;->close(Z)V

    .line 281
    :cond_0
    return v1
.end method

.method public onDrag(F)Z
    .locals 4
    .param p1, "displacement"    # F

    .line 387
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    iget v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mDragStartProgress:F

    iget v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mToTranslationShift:F

    iget v2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mFromTranslationShift:F

    sub-float/2addr v1, v2

    .line 388
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    .line 389
    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getShiftRange()F

    move-result v2

    div-float v2, p1, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 390
    .local v0, "progress":F
    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v3}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    .line 391
    const/4 v1, 0x1

    return v1
.end method

.method public onDragEnd(F)V
    .locals 8
    .param p1, "velocity"    # F

    .line 396
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_0

    .line 397
    const v0, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    .line 398
    .local v0, "successfulShiftThreshold":F
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->isFling(F)Z

    move-result v1

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    cmpl-float v1, p1, v4

    if-gtz v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mTranslationShift:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_4

    .line 400
    :cond_2
    invoke-static {p1}, Lcom/android/app/animation/Interpolators;->scrollInterpolatorForVelocity(F)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 401
    iget v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mTranslationShift:F

    sub-float v1, v3, v1

    invoke-static {p1, v1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->calculateDuration(FF)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mScrollDuration:J

    .line 403
    iget v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mToTranslationShift:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_3

    move v3, v4

    :cond_3
    iput v3, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mScrollEndProgress:F

    .line 404
    invoke-virtual {p0, v2}, Lcom/android/launcher3/views/AbstractSlideInView;->close(Z)V

    goto :goto_2

    .line 406
    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 407
    .local v1, "animator":Landroid/animation/ValueAnimator;
    sget-object v5, Lcom/android/app/animation/Interpolators;->DECELERATE:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 408
    const/4 v5, 0x2

    new-array v5, v5, [F

    iget-object v6, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 409
    invoke-virtual {v6}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v6

    const/4 v7, 0x0

    aput v6, v5, v7

    .line 410
    iget v6, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mToTranslationShift:F

    cmpl-float v6, v6, v4

    if-nez v6, :cond_5

    goto :goto_1

    :cond_5
    move v3, v4

    :goto_1
    aput v3, v5, v2

    .line 408
    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 411
    iget v2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mTranslationShift:F

    invoke-static {p1, v2}, Lcom/android/launcher3/touch/BaseSwipeDetector;->calculateDuration(FF)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 412
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 414
    .end local v1    # "animator":Landroid/animation/ValueAnimator;
    :goto_2
    return-void
.end method

.method public onDragStart(ZF)V
    .locals 2
    .param p1, "start"    # Z
    .param p2, "startDisplacement"    # F

    .line 376
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->pause()V

    .line 378
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mDragStartProgress:F

    goto :goto_0

    .line 380
    :cond_0
    const-wide/16 v0, 0x12c

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/views/AbstractSlideInView;->setUpCloseAnimation(J)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 381
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mDragStartProgress:F

    .line 383
    :goto_0
    return-void
.end method

.method protected onOpenCloseAnimationPending(Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 0
    .param p1, "animation"    # Lcom/android/launcher3/anim/PendingAnimation;

    .line 225
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    return-void
.end method

.method protected onScaleProgressChanged()V
    .locals 3

    .line 296
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSlideInViewScale:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v0, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    .line 297
    .local v0, "scaleProgress":F
    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 298
    iget-boolean v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mIsBackProgressing:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/views/AbstractSlideInView;->setClipChildren(Z)V

    .line 299
    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    iget-boolean v2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mIsBackProgressing:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 300
    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->invalidate()V

    .line 301
    return-void
.end method

.method protected setContentBackgroundWithParent(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "parentView"    # Landroid/view/View;

    .line 333
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    iput-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContentBackground:Landroid/graphics/drawable/Drawable;

    .line 334
    iput-object p2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContentBackgroundParentView:Landroid/view/View;

    .line 335
    return-void
.end method

.method public setOnCloseBeginListener(Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;)V
    .locals 0
    .param p1, "onCloseBeginListener"    # Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;

    .line 418
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    iput-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOnCloseBeginListener:Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;

    .line 419
    return-void
.end method

.method protected setTranslationShift(F)V
    .locals 3
    .param p1, "translationShift"    # F

    .line 249
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    iput p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mTranslationShift:F

    .line 250
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getShiftRange()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 251
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mColorScrim:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 252
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mTranslationShift:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->invalidate()V

    .line 255
    return-void
.end method

.method protected final setUpDefaultOpenAnimation()Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 4

    .line 171
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    const/4 v0, 0x0

    const-wide/16 v1, 0x12c

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/android/launcher3/views/AbstractSlideInView;->setUpOpenCloseAnimation(FFJ)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    .line 173
    .local v0, "animation":Lcom/android/launcher3/anim/AnimatorPlaybackController;
    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 174
    return-object v0
.end method

.method protected final setUpOpenAnimation(J)Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 2
    .param p1, "duration"    # J

    .line 183
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView;, "Lcom/android/launcher3/views/AbstractSlideInView<TT;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/launcher3/views/AbstractSlideInView;->setUpOpenCloseAnimation(FFJ)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    return-object v0
.end method
