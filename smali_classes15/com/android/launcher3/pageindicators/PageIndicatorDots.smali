.class public Lcom/android/launcher3/pageindicators/PageIndicatorDots;
.super Landroid/view/View;
.source "PageIndicatorDots.java"

# interfaces
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/launcher3/pageindicators/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/pageindicators/PageIndicatorDots$MyOutlineProver;,
        Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:J = 0x96L

.field private static final CURRENT_POSITION:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/pageindicators/PageIndicatorDots;",
            ">;"
        }
    .end annotation
.end field

.field private static final DOT_ALPHA:I = 0x80

.field private static final DOT_ALPHA_FRACTION:F = 0.5f

.field private static final DOT_GAP_FACTOR:I = 0x4

.field private static final ENTER_ANIMATION_DURATION:I = 0x190

.field private static final ENTER_ANIMATION_OVERSHOOT_TENSION:F = 4.9f

.field private static final ENTER_ANIMATION_STAGGERED_DELAY:I = 0x96

.field private static final ENTER_ANIMATION_START_DELAY:I = 0x12c

.field private static final INVISIBLE_ALPHA:I = 0x0

.field private static final PAGE_INDICATOR_ALPHA:I = 0xff

.field private static final PAGINATION_ALPHA:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty<",
            "Lcom/android/launcher3/pageindicators/PageIndicatorDots;",
            ">;"
        }
    .end annotation
.end field

.field private static final PAGINATION_FADE_DELAY:I

.field private static final PAGINATION_FADE_IN_DURATION:I = 0x53

.field private static final PAGINATION_FADE_OUT_DURATION:I = 0xa7

.field private static final SHIFT_PER_ANIMATION:F = 0.5f

.field private static final SHIFT_THRESHOLD:F = 0.1f

.field private static final VISIBLE_ALPHA:I = 0xff

.field private static final sTempRect:Landroid/graphics/RectF;


# instance fields
.field private mActivePage:I

.field private mAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private final mCircleGap:F

.field private mCurrentPosition:F

.field private final mDelayedPaginationFadeHandler:Landroid/os/Handler;

.field private final mDotRadius:F

.field private mEntryAnimationRadiusFactors:[F

.field private mFinalPosition:F

.field private final mHidePaginationRunnable:Ljava/lang/Runnable;

.field private final mIsRtl:Z

.field private mIsScrollPaused:Z

.field private mIsTwoPanels:Z

.field private mNumPages:I

.field private mPaginationPaint:Landroid/graphics/Paint;

.field private mShouldAutoHide:Z

.field private mToAlpha:I

.field private mTotalScroll:I


# direct methods
.method public static synthetic $r8$lambda$4HXx8uJ0VaNLytysbnArC5Bv9-8(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->lambda$new$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentPosition(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDotRadius(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEntryAnimationRadiusFactors(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)[F
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mEntryAnimationRadiusFactors:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFinalPosition(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mFinalPosition:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPaginationPaint(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mPaginationPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShouldAutoHide(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mShouldAutoHide:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAlphaAnimator(Lcom/android/launcher3/pageindicators/PageIndicatorDots;Landroid/animation/ObjectAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAnimator(Lcom/android/launcher3/pageindicators/PageIndicatorDots;Landroid/animation/ObjectAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentPosition(Lcom/android/launcher3/pageindicators/PageIndicatorDots;F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEntryAnimationRadiusFactors(Lcom/android/launcher3/pageindicators/PageIndicatorDots;[F)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mEntryAnimationRadiusFactors:[F

    return-void
.end method

.method static bridge synthetic -$$Nest$manimateToPosition(Lcom/android/launcher3/pageindicators/PageIndicatorDots;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->animateToPosition(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetActiveRect(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)Landroid/graphics/RectF;
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getActiveRect()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhideAfterDelay(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->hideAfterDelay()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 61
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v0

    sput v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->PAGINATION_FADE_DELAY:I

    .line 80
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->sTempRect:Landroid/graphics/RectF;

    .line 82
    new-instance v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$1;

    const-string v1, "current_position"

    invoke-direct {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->CURRENT_POSITION:Landroid/util/FloatProperty;

    .line 97
    new-instance v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$2;

    const-string v1, "pagination_alpha"

    invoke-direct {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->PAGINATION_ALPHA:Landroid/util/IntProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 152
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDelayedPaginationFadeHandler:Landroid/os/Handler;

    .line 140
    new-instance v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)V

    iput-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mHidePaginationRunnable:Ljava/lang/Runnable;

    .line 154
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mPaginationPaint:Landroid/graphics/Paint;

    .line 155
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 156
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mPaginationPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/launcher3/R$attr;->folderPaginationColor:I

    invoke-static {p1, v1}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->page_indicator_dot_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    .line 158
    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCircleGap:F

    .line 159
    new-instance v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$MyOutlineProver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots$MyOutlineProver;-><init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;Lcom/android/launcher3/pageindicators/PageIndicatorDots$MyOutlineProver-IA;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mIsRtl:Z

    .line 161
    return-void
.end method

.method private animatePaginationToAlpha(I)V
    .locals 3
    .param p1, "alpha"    # I

    .line 237
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mToAlpha:I

    if-ne p1, v0, :cond_0

    .line 239
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 245
    :cond_1
    sget-object v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->PAGINATION_ALPHA:Landroid/util/IntProperty;

    filled-new-array {p1}, [I

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 249
    iget v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mToAlpha:I

    if-ge p1, v1, :cond_2

    .line 250
    const-wide/16 v1, 0xa7

    goto :goto_0

    .line 251
    :cond_2
    const-wide/16 v1, 0x53

    .line 249
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 252
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/launcher3/pageindicators/PageIndicatorDots$3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots$3;-><init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 258
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 259
    iput p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mToAlpha:I

    .line 260
    return-void
.end method

.method private animateToPosition(F)V
    .locals 4
    .param p1, "position"    # F

    .line 283
    iput p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mFinalPosition:F

    .line 284
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 285
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mFinalPosition:F

    iput v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    iget v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mFinalPosition:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    iget v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mFinalPosition:F

    cmpl-float v1, v0, v1

    const/high16 v2, 0x3f000000    # 0.5f

    if-lez v1, :cond_1

    .line 289
    sub-float/2addr v0, v2

    goto :goto_0

    :cond_1
    add-float/2addr v0, v2

    .line 290
    .local v0, "positionForThisAnim":F
    :goto_0
    sget-object v1, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->CURRENT_POSITION:Landroid/util/FloatProperty;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 291
    new-instance v2, Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener;-><init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener-IA;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 292
    iget-object v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 293
    iget-object v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 295
    .end local v0    # "positionForThisAnim":F
    :cond_2
    return-void
.end method

.method private getActiveRect()Landroid/graphics/RectF;
    .locals 9

    .line 449
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    float-to-int v1, v0

    int-to-float v1, v1

    .line 450
    .local v1, "startCircle":F
    sub-float/2addr v0, v1

    .line 451
    .local v0, "delta":F
    iget v2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    .line 452
    .local v2, "diameter":F
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    iget v5, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCircleGap:F

    iget v6, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mNumPages:I

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v6, v7

    div-float/2addr v6, v3

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    sub-float/2addr v4, v5

    .line 455
    .local v4, "startX":F
    sget-object v5, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->sTempRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    iget v8, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    sub-float/2addr v6, v8

    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 456
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v7

    iget v8, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    add-float/2addr v6, v8

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    .line 457
    iget v6, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCircleGap:F

    mul-float/2addr v6, v1

    add-float/2addr v6, v4

    iput v6, v5, Landroid/graphics/RectF;->left:F

    .line 458
    iget v6, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v2

    iput v6, v5, Landroid/graphics/RectF;->right:F

    .line 460
    cmpg-float v6, v0, v7

    if-gez v6, :cond_0

    .line 462
    iget v6, v5, Landroid/graphics/RectF;->right:F

    iget v7, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCircleGap:F

    mul-float/2addr v7, v0

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 465
    :cond_0
    iget v6, v5, Landroid/graphics/RectF;->right:F

    iget v8, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCircleGap:F

    add-float/2addr v6, v8

    iput v6, v5, Landroid/graphics/RectF;->right:F

    .line 467
    sub-float/2addr v0, v7

    .line 468
    iget v6, v5, Landroid/graphics/RectF;->left:F

    iget v7, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCircleGap:F

    mul-float/2addr v7, v0

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->left:F

    .line 471
    :goto_0
    iget-boolean v3, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mIsRtl:Z

    if-eqz v3, :cond_1

    .line 472
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 473
    .local v3, "rectWidth":F
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->right:F

    .line 474
    iget v6, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v3

    iput v6, v5, Landroid/graphics/RectF;->left:F

    .line 477
    .end local v3    # "rectWidth":F
    :cond_1
    return-object v5
.end method

.method private hideAfterDelay()V
    .locals 4

    .line 232
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDelayedPaginationFadeHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 233
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDelayedPaginationFadeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mHidePaginationRunnable:Ljava/lang/Runnable;

    sget v2, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->PAGINATION_FADE_DELAY:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 234
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->animatePaginationToAlpha(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 402
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mNumPages:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 403
    return-void

    .line 406
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mShouldAutoHide:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mTotalScroll:I

    if-nez v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mPaginationPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 408
    return-void

    .line 412
    :cond_1
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCircleGap:F

    .line 413
    .local v0, "circleGap":F
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCircleGap:F

    iget v5, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mNumPages:I

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    div-float/2addr v5, v3

    mul-float/2addr v4, v5

    sub-float/2addr v2, v4

    iget v3, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    sub-float/2addr v2, v3

    .line 417
    .local v2, "startX":F
    add-float/2addr v3, v2

    .line 418
    .local v3, "x":F
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getHeight()I

    move-result v4

    div-int/2addr v4, v1

    int-to-float v1, v4

    .line 420
    .local v1, "y":F
    iget-object v4, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mEntryAnimationRadiusFactors:[F

    if-eqz v4, :cond_5

    .line 422
    iget-boolean v4, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mIsRtl:Z

    if-eqz v4, :cond_2

    .line 423
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v3, v4, v3

    .line 424
    neg-float v0, v0

    .line 426
    :cond_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mEntryAnimationRadiusFactors:[F

    array-length v5, v5

    if-ge v4, v5, :cond_4

    .line 427
    iget-object v5, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mPaginationPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mActivePage:I

    if-ne v4, v6, :cond_3

    const/16 v6, 0xff

    goto :goto_1

    :cond_3
    const/16 v6, 0x80

    :goto_1
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 428
    iget v5, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    iget-object v6, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mEntryAnimationRadiusFactors:[F

    aget v6, v6, v4

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mPaginationPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 430
    add-float/2addr v3, v0

    .line 426
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v4    # "i":I
    :cond_4
    goto :goto_3

    .line 433
    :cond_5
    iget-object v4, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mPaginationPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    .line 436
    .local v4, "alpha":I
    iget-object v5, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mPaginationPaint:Landroid/graphics/Paint;

    int-to-float v6, v4

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 437
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    iget v6, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mNumPages:I

    if-ge v5, v6, :cond_6

    .line 438
    iget v6, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    iget-object v7, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mPaginationPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 439
    add-float/2addr v3, v0

    .line 437
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 443
    .end local v5    # "i":I
    :cond_6
    iget-object v5, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mPaginationPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 444
    invoke-direct {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getActiveRect()Landroid/graphics/RectF;

    move-result-object v5

    iget v6, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    iget-object v7, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mPaginationPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 446
    .end local v4    # "alpha":I
    :goto_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 393
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    .line 394
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mNumPages:I

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 395
    .local v0, "width":I
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 396
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    goto :goto_1

    :cond_1
    const/high16 v1, 0x40800000    # 4.0f

    iget v2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    .line 397
    .local v1, "height":I
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->setMeasuredDimension(II)V

    .line 398
    return-void
.end method

.method public pauseAnimations()V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->pause()V

    .line 270
    :cond_0
    return-void
.end method

.method public playEntryAnimation()V
    .locals 8

    .line 316
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mEntryAnimationRadiusFactors:[F

    array-length v0, v0

    .line 317
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 318
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mEntryAnimationRadiusFactors:[F

    .line 319
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->invalidate()V

    .line 320
    return-void

    .line 323
    :cond_0
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x409ccccd    # 4.9f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 324
    .local v1, "interpolator":Landroid/view/animation/Interpolator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 325
    .local v2, "animSet":Landroid/animation/AnimatorSet;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 326
    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v5, 0x190

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 327
    .local v4, "anim":Landroid/animation/ValueAnimator;
    move v5, v3

    .line 328
    .local v5, "index":I
    new-instance v6, Lcom/android/launcher3/pageindicators/PageIndicatorDots$4;

    invoke-direct {v6, p0, v5}, Lcom/android/launcher3/pageindicators/PageIndicatorDots$4;-><init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;I)V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 335
    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 336
    mul-int/lit16 v6, v3, 0x96

    add-int/lit16 v6, v6, 0x12c

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 337
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 325
    .end local v4    # "anim":Landroid/animation/ValueAnimator;
    .end local v5    # "index":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 340
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Lcom/android/launcher3/pageindicators/PageIndicatorDots$5;

    invoke-direct {v3, p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots$5;-><init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 349
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 350
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public prepareEntryAnimation()V
    .locals 1

    .line 311
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mNumPages:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mEntryAnimationRadiusFactors:[F

    .line 312
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->invalidate()V

    .line 313
    return-void
.end method

.method public setActiveMarker(I)V
    .locals 1
    .param p1, "activePage"    # I

    .line 356
    iget-boolean v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mIsTwoPanels:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->FOLDABLE_SINGLE_PAGE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    div-int/lit8 p1, p1, 0x2

    .line 360
    :cond_0
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mActivePage:I

    if-eq v0, p1, :cond_1

    .line 361
    iput p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mActivePage:I

    .line 363
    :cond_1
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 527
    return-void
.end method

.method public setMarkersCount(I)V
    .locals 2
    .param p1, "numMarkers"    # I

    .line 367
    iput p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mNumPages:I

    .line 370
    if-lez p1, :cond_0

    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mActivePage:I

    if-ne p1, v0, :cond_0

    .line 371
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mActivePage:I

    .line 372
    sget-object v1, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->CURRENT_POSITION:Landroid/util/FloatProperty;

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->requestLayout()V

    .line 376
    return-void
.end method

.method public setPaintColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 228
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mPaginationPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 229
    return-void
.end method

.method public setPauseScroll(ZZ)V
    .locals 2
    .param p1, "pause"    # Z
    .param p2, "isTwoPanels"    # Z

    .line 380
    iput-boolean p2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mIsTwoPanels:Z

    .line 383
    iget-boolean v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mIsScrollPaused:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 384
    sget-object v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->CURRENT_POSITION:Landroid/util/FloatProperty;

    iget v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mActivePage:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 387
    :cond_0
    iput-boolean p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mIsScrollPaused:Z

    .line 388
    return-void
.end method

.method public setScroll(II)V
    .locals 7
    .param p1, "currentScroll"    # I
    .param p2, "totalScroll"    # I

    .line 165
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 166
    sget-object v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->CURRENT_POSITION:Landroid/util/FloatProperty;

    iget v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mActivePage:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 167
    return-void

    .line 170
    :cond_0
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mNumPages:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 171
    return-void

    .line 175
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mIsScrollPaused:Z

    if-eqz v0, :cond_2

    .line 176
    return-void

    .line 179
    :cond_2
    iget-boolean v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mShouldAutoHide:Z

    if-eqz v0, :cond_3

    .line 180
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->animatePaginationToAlpha(I)V

    .line 183
    :cond_3
    iget-boolean v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mIsRtl:Z

    if-eqz v0, :cond_4

    .line 184
    sub-int p1, p2, p1

    .line 187
    :cond_4
    iput p2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mTotalScroll:I

    .line 189
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mNumPages:I

    sub-int/2addr v0, v1

    div-int v0, p2, v0

    .line 190
    .local v0, "scrollPerPage":I
    if-nez v0, :cond_5

    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    div-int v1, p1, v0

    .line 191
    .local v1, "pageToLeft":I
    :goto_0
    mul-int v2, v1, v0

    .line 192
    .local v2, "pageToLeftScroll":I
    add-int v3, v2, v0

    .line 194
    .local v3, "pageToRightScroll":I
    const v4, 0x3dcccccd    # 0.1f

    int-to-float v5, v0

    mul-float/2addr v5, v4

    .line 195
    .local v5, "scrollThreshold":F
    int-to-float v4, p1

    int-to-float v6, v2

    add-float/2addr v6, v5

    cmpg-float v4, v4, v6

    if-gez v4, :cond_6

    .line 197
    int-to-float v4, v1

    invoke-direct {p0, v4}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->animateToPosition(F)V

    .line 198
    iget-boolean v4, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mShouldAutoHide:Z

    if-eqz v4, :cond_8

    .line 199
    invoke-direct {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->hideAfterDelay()V

    goto :goto_1

    .line 201
    :cond_6
    int-to-float v4, p1

    int-to-float v6, v3

    sub-float/2addr v6, v5

    cmpl-float v4, v4, v6

    if-lez v4, :cond_7

    .line 203
    add-int/lit8 v4, v1, 0x1

    int-to-float v4, v4

    invoke-direct {p0, v4}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->animateToPosition(F)V

    .line 204
    iget-boolean v4, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mShouldAutoHide:Z

    if-eqz v4, :cond_8

    .line 205
    invoke-direct {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->hideAfterDelay()V

    goto :goto_1

    .line 209
    :cond_7
    int-to-float v4, v1

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v4, v6

    invoke-direct {p0, v4}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->animateToPosition(F)V

    .line 210
    iget-boolean v4, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mShouldAutoHide:Z

    if-eqz v4, :cond_8

    .line 211
    iget-object v4, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDelayedPaginationFadeHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 214
    :cond_8
    :goto_1
    return-void
.end method

.method public setShouldAutoHide(Z)V
    .locals 2
    .param p1, "shouldAutoHide"    # Z

    .line 218
    iput-boolean p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mShouldAutoHide:Z

    .line 219
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mPaginationPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->hideAfterDelay()V

    goto :goto_0

    .line 221
    :cond_0
    if-nez p1, :cond_1

    .line 222
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDelayedPaginationFadeHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 224
    :cond_1
    :goto_0
    return-void
.end method

.method public skipAnimationsToEnd()V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 280
    :cond_0
    return-void
.end method

.method public stopAllAnimations()V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 302
    :cond_0
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mActivePage:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mFinalPosition:F

    .line 303
    sget-object v1, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->CURRENT_POSITION:Landroid/util/FloatProperty;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 304
    return-void
.end method
