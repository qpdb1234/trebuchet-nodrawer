.class public Lcom/android/launcher3/folder/PreviewBackground;
.super Lcom/android/launcher3/celllayout/DelegatedCellDrawing;
.source "PreviewBackground.java"


# static fields
.field protected static final ACCEPT_SCALE_FACTOR:F = 1.2f

.field private static final BG_OPACITY:I = 0xff

.field protected static final CONSUMPTION_ANIMATION_DURATION:I = 0x64

.field private static final DRAW_SHADOW:Z = false

.field private static final DRAW_STROKE:Z = false

.field protected static final HOVER_ANIMATION_DURATION:I = 0x12c

.field protected static final HOVER_SCALE:F = 1.1f

.field private static final MAX_BG_OPACITY:I = 0xff

.field private static final SHADOW_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/folder/PreviewBackground;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHADOW_OPACITY:I = 0x28

.field private static final STROKE_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/folder/PreviewBackground;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field basePreviewOffsetX:I

.field basePreviewOffsetY:I

.field public isClipping:Z

.field private mBgColor:I

.field private mDotColor:I

.field private mDrawingDelegate:Lcom/android/launcher3/CellLayout;

.field private mInvalidateDelegate:Landroid/view/View;

.field protected mIsAccepting:Z

.field protected mIsHovered:Z

.field protected mIsHoveredOrAnimating:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field mScale:F

.field protected mScaleAnimator:Landroid/animation/ValueAnimator;

.field private final mShaderMatrix:Landroid/graphics/Matrix;

.field private mShadowAlpha:I

.field private mShadowAnimator:Landroid/animation/ObjectAnimator;

.field private final mShadowPorterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

.field private mShadowShader:Landroid/graphics/RadialGradient;

.field private mStrokeAlpha:I

.field private mStrokeAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mStrokeColor:I

.field private mStrokeWidth:F

.field previewSize:I


# direct methods
.method public static synthetic $r8$lambda$G9V87UbHBcrLjaWYM_O8xbvlPAM(Lcom/android/launcher3/folder/PreviewBackground;FFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/folder/PreviewBackground;->lambda$animateScale$0(FFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmShadowAlpha(Lcom/android/launcher3/folder/PreviewBackground;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mShadowAlpha:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStrokeAlpha(Lcom/android/launcher3/folder/PreviewBackground;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mStrokeAlpha:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmShadowAlpha(Lcom/android/launcher3/folder/PreviewBackground;I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mShadowAlpha:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShadowAnimator(Lcom/android/launcher3/folder/PreviewBackground;Landroid/animation/ObjectAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mShadowAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStrokeAlpha(Lcom/android/launcher3/folder/PreviewBackground;I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mStrokeAlpha:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStrokeAlphaAnimator(Lcom/android/launcher3/folder/PreviewBackground;Landroid/animation/ObjectAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mStrokeAlphaAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearDrawingDelegate(Lcom/android/launcher3/folder/PreviewBackground;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/folder/PreviewBackground;->clearDrawingDelegate()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 113
    new-instance v0, Lcom/android/launcher3/folder/PreviewBackground$1;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "strokeAlpha"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/PreviewBackground$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/folder/PreviewBackground;->STROKE_ALPHA:Landroid/util/Property;

    .line 127
    new-instance v0, Lcom/android/launcher3/folder/PreviewBackground$2;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "shadowAlpha"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/PreviewBackground$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/folder/PreviewBackground;->SHADOW_ALPHA:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Lcom/android/launcher3/celllayout/DelegatedCellDrawing;-><init>()V

    .line 69
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mShadowPorterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mShadowShader:Landroid/graphics/RadialGradient;

    .line 73
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 74
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPath:Landroid/graphics/Path;

    .line 76
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    .line 78
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    .line 83
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mStrokeAlpha:I

    .line 84
    iput v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mShadowAlpha:I

    .line 95
    iput-boolean v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->isClipping:Z

    return-void
.end method

.method private clearDrawingDelegate()V
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDrawingDelegate:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v0, p0}, Lcom/android/launcher3/CellLayout;->removeDelegatedCellDrawing(Lcom/android/launcher3/celllayout/DelegatedCellDrawing;)V

    .line 392
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDrawingDelegate:Lcom/android/launcher3/CellLayout;

    .line 393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->isClipping:Z

    .line 394
    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->invalidate()V

    .line 395
    return-void
.end method

.method private delegateDrawing(Lcom/android/launcher3/CellLayout;II)V
    .locals 1
    .param p1, "delegate"    # Lcom/android/launcher3/CellLayout;
    .param p2, "cellX"    # I
    .param p3, "cellY"    # I

    .line 376
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDrawingDelegate:Lcom/android/launcher3/CellLayout;

    if-eq v0, p1, :cond_0

    .line 377
    invoke-virtual {p1, p0}, Lcom/android/launcher3/CellLayout;->addDelegatedCellDrawing(Lcom/android/launcher3/celllayout/DelegatedCellDrawing;)V

    .line 380
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDrawingDelegate:Lcom/android/launcher3/CellLayout;

    .line 381
    iput p2, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDelegateCellX:I

    .line 382
    iput p3, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDelegateCellY:I

    .line 384
    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->invalidate()V

    .line 385
    return-void
.end method

.method private synthetic lambda$animateScale$0(FFLandroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "endScale"    # F
    .param p2, "startScale"    # F
    .param p3, "animation"    # Landroid/animation/ValueAnimator;

    .line 425
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 426
    .local v0, "prog":F
    mul-float v1, v0, p1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    .line 427
    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->invalidate()V

    .line 428
    return-void
.end method


# virtual methods
.method public animateBackgroundStroke()V
    .locals 0

    .line 319
    return-void
.end method

.method protected animateScale(ZZ)V
    .locals 7
    .param p1, "isAccepting"    # Z
    .param p2, "isHovered"    # Z

    .line 402
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 406
    :cond_0
    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    .line 407
    .local v0, "startScale":F
    if-eqz p1, :cond_1

    const v1, 0x3f99999a    # 1.2f

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const v1, 0x3f8ccccd    # 1.1f

    goto :goto_0

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 409
    .local v1, "endScale":F
    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher3/folder/PreviewBackground;->mIsAccepting:Z

    if-eq p1, v2, :cond_3

    sget-object v2, Lcom/android/app/animation/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/android/app/animation/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    .line 410
    .local v2, "interpolator":Landroid/view/animation/Interpolator;
    :goto_1
    iget-boolean v3, p0, Lcom/android/launcher3/folder/PreviewBackground;->mIsAccepting:Z

    if-eq p1, v3, :cond_4

    const/16 v3, 0x64

    goto :goto_2

    .line 411
    :cond_4
    const/16 v3, 0x12c

    :goto_2
    nop

    .line 412
    .local v3, "duration":I
    iput-boolean p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mIsAccepting:Z

    .line 413
    iput-boolean p2, p0, Lcom/android/launcher3/folder/PreviewBackground;->mIsHovered:Z

    .line 414
    cmpl-float v4, v0, v1

    if-nez v4, :cond_6

    .line 415
    if-nez p1, :cond_5

    .line 416
    invoke-direct {p0}, Lcom/android/launcher3/folder/PreviewBackground;->clearDrawingDelegate()V

    .line 418
    :cond_5
    iget-boolean v4, p0, Lcom/android/launcher3/folder/PreviewBackground;->mIsHovered:Z

    iput-boolean v4, p0, Lcom/android/launcher3/folder/PreviewBackground;->mIsHoveredOrAnimating:Z

    .line 419
    return-void

    .line 423
    :cond_6
    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    .line 424
    new-instance v5, Lcom/android/launcher3/folder/PreviewBackground$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v1, v0}, Lcom/android/launcher3/folder/PreviewBackground$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/folder/PreviewBackground;FF)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 429
    iget-object v4, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/launcher3/folder/PreviewBackground$5;

    invoke-direct {v5, p0}, Lcom/android/launcher3/folder/PreviewBackground$5;-><init>(Lcom/android/launcher3/folder/PreviewBackground;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 446
    iget-object v4, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 447
    iget-object v4, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 448
    iget-object v4, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 449
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public animateToAccept(Lcom/android/launcher3/CellLayout;II)V
    .locals 2
    .param p1, "cl"    # Lcom/android/launcher3/CellLayout;
    .param p2, "cellX"    # I
    .param p3, "cellY"    # I

    .line 452
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/folder/PreviewBackground;->delegateDrawing(Lcom/android/launcher3/CellLayout;II)V

    .line 453
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mIsHovered:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/folder/PreviewBackground;->animateScale(ZZ)V

    .line 454
    return-void
.end method

.method public animateToRest()V
    .locals 2

    .line 457
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mIsHovered:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/folder/PreviewBackground;->animateScale(ZZ)V

    .line 458
    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 250
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 251
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getBgColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 253
    invoke-static {}, Lcom/android/launcher3/graphics/IconShape;->getShape()Lcom/android/launcher3/graphics/IconShape;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetX()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetY()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getScaledRadius()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/graphics/IconShape;->drawShape(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    .line 254
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->drawShadow(Landroid/graphics/Canvas;)V

    .line 255
    return-void
.end method

.method public drawBackgroundStroke(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 339
    return-void
.end method

.method public drawLeaveBehind(Landroid/graphics/Canvas;I)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "color"    # I

    .line 354
    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    .line 355
    .local v0, "originalScale":F
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    .line 357
    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 358
    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 359
    invoke-static {}, Lcom/android/launcher3/graphics/IconShape;->getShape()Lcom/android/launcher3/graphics/IconShape;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetX()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetY()I

    move-result v1

    int-to-float v5, v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getScaledRadius()I

    move-result v1

    int-to-float v6, v1

    iget-object v7, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/graphics/IconShape;->drawShape(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    .line 361
    iput v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    .line 362
    return-void
.end method

.method public drawOverItem(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 157
    iget-boolean v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->isClipping:Z

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->drawBackgroundStroke(Landroid/graphics/Canvas;)V

    .line 160
    :cond_0
    return-void
.end method

.method public drawShadow(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 259
    return-void
.end method

.method public drawUnderItem(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 146
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->drawBackground(Landroid/graphics/Canvas;)V

    .line 147
    iget-boolean v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->isClipping:Z

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->drawBackgroundStroke(Landroid/graphics/Canvas;)V

    .line 150
    :cond_0
    return-void
.end method

.method drawingDelegated()Z
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDrawingDelegate:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public fadeInBackgroundShadow()V
    .locals 0

    .line 300
    return-void
.end method

.method getAcceptScaleProgress()F
    .locals 2

    .line 223
    iget-boolean v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mIsHoveredOrAnimating:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    const v1, 0x3e4cccd0    # 0.20000005f

    div-float/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getBgColor()I
    .locals 1

    .line 242
    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mBgColor:I

    return v0
.end method

.method getBounds(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 195
    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    .line 196
    .local v0, "top":I
    iget v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    .line 197
    .local v1, "left":I
    iget v2, p0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    add-int v3, v1, v2

    .line 198
    .local v3, "right":I
    add-int/2addr v2, v0

    .line 199
    .local v2, "bottom":I
    invoke-virtual {p1, v1, v0, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 200
    return-void
.end method

.method public getClipPath()Landroid/graphics/Path;
    .locals 6

    .line 365
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 366
    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getScaledRadius()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f900000    # 1.125f

    mul-float/2addr v0, v1

    .line 368
    .local v0, "radius":F
    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getRadius()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v0, v1

    .line 369
    .local v1, "radiusDifference":F
    iget v2, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    .line 370
    .local v2, "offsetX":F
    iget v3, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    .line 371
    .local v3, "offsetY":F
    invoke-static {}, Lcom/android/launcher3/graphics/IconShape;->getShape()Lcom/android/launcher3/graphics/IconShape;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4, v5, v2, v3, v0}, Lcom/android/launcher3/graphics/IconShape;->addToPath(Landroid/graphics/Path;FFF)V

    .line 372
    iget-object v4, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPath:Landroid/graphics/Path;

    return-object v4
.end method

.method public getDotColor()I
    .locals 1

    .line 246
    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDotColor:I

    return v0
.end method

.method getOffsetX()I
    .locals 3

    .line 211
    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getScaledRadius()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getRadius()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method getOffsetY()I
    .locals 3

    .line 215
    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getScaledRadius()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getRadius()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getRadius()I
    .locals 1

    .line 203
    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getScaledRadius()I
    .locals 2

    .line 207
    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getRadius()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 461
    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mStrokeWidth:F

    return v0
.end method

.method invalidate()V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mInvalidateDelegate:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDrawingDelegate:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->invalidate()V

    .line 234
    :cond_1
    return-void
.end method

.method protected setHovered(Z)V
    .locals 1
    .param p1, "hovered"    # Z

    .line 465
    iget-boolean v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mIsAccepting:Z

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->animateScale(ZZ)V

    .line 466
    return-void
.end method

.method setInvalidateDelegate(Landroid/view/View;)V
    .locals 0
    .param p1, "invalidateDelegate"    # Landroid/view/View;

    .line 237
    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mInvalidateDelegate:Landroid/view/View;

    .line 238
    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->invalidate()V

    .line 239
    return-void
.end method

.method public setup(Landroid/content/Context;Lcom/android/launcher3/views/ActivityContext;Landroid/view/View;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Lcom/android/launcher3/views/ActivityContext;
    .param p3, "invalidateDelegate"    # Landroid/view/View;
    .param p4, "availableSpaceX"    # I
    .param p5, "topPadding"    # I

    .line 164
    iput-object p3, p0, Lcom/android/launcher3/folder/PreviewBackground;->mInvalidateDelegate:Landroid/view/View;

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/R$styleable;->FolderIconPreview:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 167
    .local v0, "ta":Landroid/content/res/TypedArray;
    sget v1, Lcom/android/launcher3/R$attr;->notificationDotColor:I

    invoke-static {p1, v1}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDotColor:I

    .line 168
    sget v1, Lcom/android/launcher3/R$styleable;->FolderIconPreview_folderIconBorderColor:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mStrokeColor:I

    .line 169
    sget v1, Lcom/android/launcher3/R$styleable;->FolderIconPreview_folderPreviewColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mBgColor:I

    .line 170
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 172
    invoke-interface {p2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 173
    .local v1, "grid":Lcom/android/launcher3/DeviceProfile;
    iget v2, v1, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    iput v2, p0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    .line 175
    sub-int v2, p4, v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    .line 176
    iget v2, v1, Lcom/android/launcher3/DeviceProfile;->folderIconOffsetYPx:I

    add-int/2addr v2, p5

    iput v2, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/android/launcher3/folder/PreviewBackground;->mStrokeWidth:F

    .line 191
    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->invalidate()V

    .line 192
    return-void
.end method
