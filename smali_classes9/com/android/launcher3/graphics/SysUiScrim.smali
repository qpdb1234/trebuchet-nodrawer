.class public Lcom/android/launcher3/graphics/SysUiScrim;
.super Ljava/lang/Object;
.source "SysUiScrim.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# static fields
.field private static final ALPHA_MASK_BITMAP_WIDTH_DP:I = 0x2

.field private static final BOTTOM_MASK_HEIGHT_DP:I = 0xc8

.field private static final MAX_SYSUI_SCRIM_ALPHA:I = 0xff

.field private static final TOP_MASK_HEIGHT_DP:I = 0x46


# instance fields
.field private final mActivity:Lcom/android/launcher3/BaseDraggingActivity;

.field private mAnimateScrimOnNextDraw:Z

.field private final mBottomMaskBitmap:Landroid/graphics/Bitmap;

.field private final mBottomMaskHeight:I

.field private final mBottomMaskPaint:Landroid/graphics/Paint;

.field private final mBottomMaskRect:Landroid/graphics/RectF;

.field private mDrawBottomScrim:Z

.field private mDrawTopScrim:Z

.field private final mHideSysUiScrim:Z

.field private final mRoot:Landroid/view/View;

.field private final mScreenOnListener:Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;

.field private mSkipScrimAnimationForTest:Z

.field private final mSysUiAnimMultiplier:Lcom/android/launcher3/anim/AnimatedFloat;

.field private final mSysUiProgress:Lcom/android/launcher3/anim/AnimatedFloat;

.field private final mTopMaskBitmap:Landroid/graphics/Bitmap;

.field private final mTopMaskHeight:I

.field private final mTopMaskPaint:Landroid/graphics/Paint;

.field private final mTopMaskRect:Landroid/graphics/RectF;


# direct methods
.method public static synthetic $r8$lambda$GL5bT9YI-MCEIQsQZ96i98AM3Mo(Lcom/android/launcher3/graphics/SysUiScrim;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/graphics/SysUiScrim;->reapplySysUiAlpha()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAnimateScrimOnNextDraw(Lcom/android/launcher3/graphics/SysUiScrim;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mAnimateScrimOnNextDraw:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/android/launcher3/graphics/SysUiScrim$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/graphics/SysUiScrim$1;-><init>(Lcom/android/launcher3/graphics/SysUiScrim;)V

    iput-object v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mScreenOnListener:Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;

    .line 78
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mTopMaskRect:Landroid/graphics/RectF;

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mTopMaskPaint:Landroid/graphics/Paint;

    .line 83
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mBottomMaskRect:Landroid/graphics/RectF;

    .line 84
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mBottomMaskPaint:Landroid/graphics/Paint;

    .line 91
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mSkipScrimAnimationForTest:Z

    .line 93
    iput-boolean v1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mAnimateScrimOnNextDraw:Z

    .line 94
    new-instance v1, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v2, Lcom/android/launcher3/graphics/SysUiScrim$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/launcher3/graphics/SysUiScrim$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/graphics/SysUiScrim;)V

    invoke-direct {v1, v2}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mSysUiAnimMultiplier:Lcom/android/launcher3/anim/AnimatedFloat;

    .line 95
    new-instance v1, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v2, Lcom/android/launcher3/graphics/SysUiScrim$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/launcher3/graphics/SysUiScrim$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/graphics/SysUiScrim;)V

    invoke-direct {v1, v2}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mSysUiProgress:Lcom/android/launcher3/anim/AnimatedFloat;

    .line 98
    iput-object p1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mRoot:Landroid/view/View;

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/BaseDraggingActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/BaseDraggingActivity;

    iput-object v1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    .line 100
    invoke-virtual {v1}, Lcom/android/launcher3/BaseDraggingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 102
    .local v1, "dm":Landroid/util/DisplayMetrics;
    const/high16 v2, 0x428c0000    # 70.0f

    invoke-static {v2, v1}, Lcom/android/launcher3/testing/shared/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mTopMaskHeight:I

    .line 103
    const/high16 v3, 0x43480000    # 200.0f

    invoke-static {v3, v1}, Lcom/android/launcher3/testing/shared/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mBottomMaskHeight:I

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/launcher3/R$attr;->isWorkspaceDarkText:I

    invoke-static {v4, v5}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mHideSysUiScrim:Z

    .line 106
    const/4 v5, 0x0

    const v6, 0xffffff

    if-eqz v4, :cond_0

    move-object v2, v5

    goto :goto_0

    :cond_0
    const v7, 0x3dffffff    # 0.12499999f

    const v8, 0xaffffff

    filled-new-array {v7, v8, v6}, [I

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-direct {p0, v2, v7, v8}, Lcom/android/launcher3/graphics/SysUiScrim;->createDitheredAlphaMask(I[I[F)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mTopMaskBitmap:Landroid/graphics/Bitmap;

    .line 109
    const v2, -0xddddde

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const v0, 0x2fffffff

    filled-new-array {v6, v0}, [I

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-direct {p0, v3, v0, v2}, Lcom/android/launcher3/graphics/SysUiScrim;->createDitheredAlphaMask(I[I[F)Landroid/graphics/Bitmap;

    move-result-object v5

    :goto_1
    iput-object v5, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mBottomMaskBitmap:Landroid/graphics/Bitmap;

    .line 114
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->KEYGUARD_ANIMATION:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez v4, :cond_2

    .line 115
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 117
    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createDitheredAlphaMask(I[I[F)Landroid/graphics/Bitmap;
    .locals 16
    .param p1, "height"    # I
    .param p2, "colors"    # [I
    .param p3, "positions"    # [F

    .line 218
    move/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/launcher3/graphics/SysUiScrim;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseDraggingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 219
    .local v2, "dm":Landroid/util/DisplayMetrics;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3, v2}, Lcom/android/launcher3/testing/shared/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v3

    .line 220
    .local v3, "width":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 221
    .local v4, "dst":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 222
    .local v5, "c":Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x4

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    .line 223
    .local v6, "paint":Landroid/graphics/Paint;
    new-instance v15, Landroid/graphics/LinearGradient;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    int-to-float v11, v0

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v7, v15

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    invoke-direct/range {v7 .. v14}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 225
    .local v7, "lg":Landroid/graphics/LinearGradient;
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 226
    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 227
    return-object v4
.end method

.method private reapplySysUiAlpha()V
    .locals 1

    .line 204
    invoke-direct {p0}, Lcom/android/launcher3/graphics/SysUiScrim;->reapplySysUiAlphaNoInvalidate()V

    .line 205
    iget-boolean v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mHideSysUiScrim:Z

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 208
    :cond_0
    return-void
.end method

.method private reapplySysUiAlphaNoInvalidate()V
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mSysUiProgress:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v0, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iget-object v1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mSysUiAnimMultiplier:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v1, v1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    mul-float/2addr v0, v1

    .line 212
    .local v0, "factor":F
    iget-boolean v1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mSkipScrimAnimationForTest:Z

    if-eqz v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mBottomMaskPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v3, v0, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 214
    iget-object v1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mTopMaskPaint:Landroid/graphics/Paint;

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 215
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 123
    iget-boolean v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mHideSysUiScrim:Z

    if-nez v0, :cond_3

    .line 124
    iget-object v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mSysUiProgress:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v0, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    .line 125
    iput-boolean v2, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mAnimateScrimOnNextDraw:Z

    .line 126
    return-void

    .line 129
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mAnimateScrimOnNextDraw:Z

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mSysUiAnimMultiplier:Lcom/android/launcher3/anim/AnimatedFloat;

    iput v1, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    .line 131
    invoke-direct {p0}, Lcom/android/launcher3/graphics/SysUiScrim;->reapplySysUiAlphaNoInvalidate()V

    .line 133
    iget-object v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mSysUiAnimMultiplier:Lcom/android/launcher3/anim/AnimatedFloat;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 134
    .local v0, "oa":Landroid/animation/ObjectAnimator;
    const-wide/16 v3, 0x258

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 135
    iget-object v1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseDraggingActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getTransitionBackgroundFadeDuration()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 136
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 137
    iput-boolean v2, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mAnimateScrimOnNextDraw:Z

    .line 140
    .end local v0    # "oa":Landroid/animation/ObjectAnimator;
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mDrawTopScrim:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mTopMaskBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mTopMaskRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mTopMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 143
    :cond_2
    iget-boolean v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mDrawBottomScrim:Z

    if-eqz v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mBottomMaskBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mBottomMaskRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mBottomMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 147
    :cond_3
    return-void
.end method

.method public getSysUIMultiplier()Lcom/android/launcher3/anim/AnimatedFloat;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mSysUiAnimMultiplier:Lcom/android/launcher3/anim/AnimatedFloat;

    return-object v0
.end method

.method public getSysUIProgress()Lcom/android/launcher3/anim/AnimatedFloat;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mSysUiProgress:Lcom/android/launcher3/anim/AnimatedFloat;

    return-object v0
.end method

.method public onInsetsChanged(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 171
    iget-object v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 172
    .local v0, "dp":Lcom/android/launcher3/DeviceProfile;
    iget v1, p1, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mDrawTopScrim:Z

    .line 173
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/android/launcher3/DeviceProfile;->isGestureMode:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mDrawBottomScrim:Z

    .line 174
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 178
    sget-object v0, Lcom/android/launcher3/util/ScreenOnTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/ScreenOnTracker;

    iget-object v1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mScreenOnListener:Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/ScreenOnTracker;->addListener(Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;)V

    .line 179
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 183
    sget-object v0, Lcom/android/launcher3/util/ScreenOnTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/ScreenOnTracker;

    iget-object v1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mScreenOnListener:Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/ScreenOnTracker;->removeListener(Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;)V

    .line 184
    return-void
.end method

.method public setSize(II)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 190
    iget-object v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mTopMaskRect:Landroid/graphics/RectF;

    int-to-float v1, p1

    iget v2, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mTopMaskHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 191
    iget-object v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mBottomMaskRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mBottomMaskHeight:I

    sub-int v1, p2, v1

    int-to-float v1, v1

    int-to-float v2, p1

    int-to-float v4, p2

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 192
    return-void
.end method

.method public skipScrimAnimation()V
    .locals 1

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/graphics/SysUiScrim;->mSkipScrimAnimationForTest:Z

    .line 200
    invoke-direct {p0}, Lcom/android/launcher3/graphics/SysUiScrim;->reapplySysUiAlpha()V

    .line 201
    return-void
.end method
