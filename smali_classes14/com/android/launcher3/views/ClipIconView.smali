.class public Lcom/android/launcher3/views/ClipIconView;
.super Landroid/view/View;
.source "ClipIconView.java"

# interfaces
.implements Lcom/android/launcher3/views/ClipPathView;


# static fields
.field private static final sTmpRect:Landroid/graphics/Rect;


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private final mBlurSizeOutline:I

.field private mClipPath:Landroid/graphics/Path;

.field private final mEndRevealRect:Landroid/graphics/Rect;

.field private final mFinalDrawableBounds:Landroid/graphics/Rect;

.field private mForeground:Landroid/graphics/drawable/Drawable;

.field private mIsAdaptiveIcon:Z

.field private final mIsRtl:Z

.field private final mOutline:Landroid/graphics/Rect;

.field private mRevealAnimator:Landroid/animation/ValueAnimator;

.field private final mStartRevealRect:Landroid/graphics/Rect;

.field private mTaskCornerRadius:F


# direct methods
.method static bridge synthetic -$$Nest$fgetmOutline(Lcom/android/launcher3/views/ClipIconView;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTaskCornerRadius(Lcom/android/launcher3/views/ClipIconView;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/views/ClipIconView;->mTaskCornerRadius:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmRevealAnimator(Lcom/android/launcher3/views/ClipIconView;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/views/ClipIconView;->mRevealAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/views/ClipIconView;->sTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/views/ClipIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/ClipIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/views/ClipIconView;->mIsAdaptiveIcon:Z

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/views/ClipIconView;->mStartRevealRect:Landroid/graphics/Rect;

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/views/ClipIconView;->mEndRevealRect:Landroid/graphics/Rect;

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    .line 88
    invoke-virtual {p0}, Lcom/android/launcher3/views/ClipIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->blur_size_medium_outline:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/views/ClipIconView;->mBlurSizeOutline:I

    .line 90
    invoke-virtual {p0}, Lcom/android/launcher3/views/ClipIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/views/ClipIconView;->mIsRtl:Z

    .line 91
    return-void
.end method

.method private setBackgroundDrawableBounds(FZ)V
    .locals 3
    .param p1, "scale"    # F
    .param p2, "isLandscape"    # Z

    .line 180
    sget-object v0, Lcom/android/launcher3/views/ClipIconView;->sTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 181
    invoke-static {v0, p1}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 183
    if-eqz p2, :cond_0

    .line 184
    iget-object v1, p0, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    .line 186
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 188
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/views/ClipIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 189
    return-void
.end method

.method private update(Landroid/graphics/RectF;FFFZFFLcom/android/launcher3/DeviceProfile;)V
    .locals 16
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "progress"    # F
    .param p3, "shapeProgressStart"    # F
    .param p4, "cornerRadius"    # F
    .param p5, "isOpening"    # Z
    .param p6, "scale"    # F
    .param p7, "minSize"    # F
    .param p8, "dp"    # Lcom/android/launcher3/DeviceProfile;

    .line 130
    move-object/from16 v6, p0

    move/from16 v7, p2

    move/from16 v14, p3

    move-object/from16 v15, p8

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p5, :cond_0

    const/high16 v1, 0x41200000    # 10.0f

    move v12, v1

    goto :goto_0

    :cond_0
    move v12, v0

    .line 132
    .local v12, "toMax":F
    :goto_0
    invoke-static {v14, v7}, Ljava/lang/Math;->max(FF)F

    move-result v8

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    sget-object v13, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move/from16 v9, p3

    invoke-static/range {v8 .. v13}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v8

    .line 135
    .local v8, "shapeRevealProgress":F
    iget-boolean v0, v15, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, v6, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float v1, v1, p6

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 138
    :cond_1
    iget-object v0, v6, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float v1, v1, p6

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 141
    :goto_1
    div-float v0, p4, p6

    iput v0, v6, Lcom/android/launcher3/views/ClipIconView;->mTaskCornerRadius:F

    .line 142
    iget-boolean v0, v6, Lcom/android/launcher3/views/ClipIconView;->mIsAdaptiveIcon:Z

    if-eqz v0, :cond_7

    .line 143
    if-nez p5, :cond_3

    cmpl-float v0, v7, v14

    if-ltz v0, :cond_3

    .line 144
    iget-object v0, v6, Lcom/android/launcher3/views/ClipIconView;->mRevealAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_2

    .line 145
    invoke-static {}, Lcom/android/launcher3/graphics/IconShape;->getShape()Lcom/android/launcher3/graphics/IconShape;

    move-result-object v0

    iget-object v2, v6, Lcom/android/launcher3/views/ClipIconView;->mStartRevealRect:Landroid/graphics/Rect;

    iget-object v3, v6, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    iget v4, v6, Lcom/android/launcher3/views/ClipIconView;->mTaskCornerRadius:F

    xor-int/lit8 v5, p5, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/graphics/IconShape;->createRevealAnimator(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FZ)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    iput-object v0, v6, Lcom/android/launcher3/views/ClipIconView;->mRevealAnimator:Landroid/animation/ValueAnimator;

    .line 147
    new-instance v1, Lcom/android/launcher3/views/ClipIconView$1;

    invoke-direct {v1, v6}, Lcom/android/launcher3/views/ClipIconView$1;-><init>(Lcom/android/launcher3/views/ClipIconView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 153
    iget-object v0, v6, Lcom/android/launcher3/views/ClipIconView;->mRevealAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 155
    iget-object v0, v6, Lcom/android/launcher3/views/ClipIconView;->mRevealAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    .line 157
    :cond_2
    iget-object v0, v6, Lcom/android/launcher3/views/ClipIconView;->mRevealAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 160
    :cond_3
    iget-boolean v0, v15, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_4

    iget-object v0, v6, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_2

    :cond_4
    iget-object v0, v6, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_2
    int-to-float v0, v0

    div-float v0, v0, p7

    .line 162
    .local v0, "drawableScale":F
    iget-boolean v1, v15, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    invoke-direct {v6, v0, v1}, Lcom/android/launcher3/views/ClipIconView;->setBackgroundDrawableBounds(FZ)V

    .line 165
    iget-object v1, v6, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 166
    .local v1, "height":I
    iget-object v2, v6, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 167
    .local v2, "width":I
    iget-boolean v3, v15, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v3, :cond_5

    move v3, v4

    goto :goto_3

    .line 168
    :cond_5
    int-to-float v3, v1

    mul-float/2addr v3, v0

    int-to-float v9, v1

    sub-float/2addr v3, v9

    div-float/2addr v3, v5

    float-to-int v3, v3

    :goto_3
    nop

    .line 169
    .local v3, "diffY":I
    iget-boolean v9, v15, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v9, :cond_6

    int-to-float v4, v2

    mul-float/2addr v4, v0

    int-to-float v9, v2

    sub-float/2addr v4, v9

    div-float/2addr v4, v5

    float-to-int v4, v4

    goto :goto_4

    .line 170
    :cond_6
    nop

    :goto_4
    nop

    .line 171
    .local v4, "diffX":I
    sget-object v5, Lcom/android/launcher3/views/ClipIconView;->sTmpRect:Landroid/graphics/Rect;

    iget-object v9, v6, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 172
    invoke-virtual {v5, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 173
    iget-object v9, v6, Lcom/android/launcher3/views/ClipIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 175
    .end local v0    # "drawableScale":F
    .end local v1    # "height":I
    .end local v2    # "width":I
    .end local v3    # "diffY":I
    .end local v4    # "diffX":I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/views/ClipIconView;->invalidate()V

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/views/ClipIconView;->invalidateOutline()V

    .line 177
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 283
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 284
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/launcher3/views/ClipIconView;->mClipPath:Landroid/graphics/Path;

    if-eqz v1, :cond_0

    .line 285
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 287
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 288
    iget-object v1, p0, Lcom/android/launcher3/views/ClipIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 289
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 291
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/views/ClipIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 292
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 294
    :cond_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 295
    return-void
.end method

.method protected endReveal()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/android/launcher3/views/ClipIconView;->mRevealAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 195
    :cond_0
    return-void
.end method

.method recycle()V
    .locals 2

    .line 298
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/ClipIconView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 299
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/views/ClipIconView;->mIsAdaptiveIcon:Z

    .line 300
    iput-object v0, p0, Lcom/android/launcher3/views/ClipIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 301
    iput-object v0, p0, Lcom/android/launcher3/views/ClipIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 302
    iput-object v0, p0, Lcom/android/launcher3/views/ClipIconView;->mClipPath:Landroid/graphics/Path;

    .line 303
    iget-object v1, p0, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 304
    iget-object v1, p0, Lcom/android/launcher3/views/ClipIconView;->mRevealAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 305
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 307
    :cond_0
    iput-object v0, p0, Lcom/android/launcher3/views/ClipIconView;->mRevealAnimator:Landroid/animation/ValueAnimator;

    .line 308
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/views/ClipIconView;->mTaskCornerRadius:F

    .line 309
    iget-object v0, p0, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 310
    return-void
.end method

.method public setClipPath(Landroid/graphics/Path;)V
    .locals 0
    .param p1, "clipPath"    # Landroid/graphics/Path;

    .line 277
    iput-object p1, p0, Lcom/android/launcher3/views/ClipIconView;->mClipPath:Landroid/graphics/Path;

    .line 278
    invoke-virtual {p0}, Lcom/android/launcher3/views/ClipIconView;->invalidate()V

    .line 279
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;ILandroid/view/ViewGroup$MarginLayoutParams;ZLcom/android/launcher3/DeviceProfile;)V
    .locals 17
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "iconOffset"    # I
    .param p3, "lp"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p4, "isOpening"    # Z
    .param p5, "dp"    # Lcom/android/launcher3/DeviceProfile;

    .line 202
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    instance-of v4, v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    iput-boolean v4, v0, Lcom/android/launcher3/views/ClipIconView;->mIsAdaptiveIcon:Z

    .line 203
    const/4 v5, 0x0

    if-eqz v4, :cond_7

    .line 204
    instance-of v4, v1, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;

    .line 206
    .local v4, "isFolderIcon":Z
    move-object v6, v1

    check-cast v6, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 207
    .local v6, "adaptiveIcon":Landroid/graphics/drawable/AdaptiveIconDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 208
    .local v7, "background":Landroid/graphics/drawable/Drawable;
    if-nez v7, :cond_0

    .line 209
    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v8, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object v7, v8

    .line 211
    :cond_0
    iput-object v7, v0, Lcom/android/launcher3/views/ClipIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 212
    invoke-virtual {v6}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 213
    .local v8, "foreground":Landroid/graphics/drawable/Drawable;
    if-nez v8, :cond_1

    .line 214
    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v9, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object v8, v9

    .line 216
    :cond_1
    iput-object v8, v0, Lcom/android/launcher3/views/ClipIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 218
    iget v9, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 219
    .local v9, "originalHeight":I
    iget v10, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 221
    .local v10, "originalWidth":I
    iget v11, v0, Lcom/android/launcher3/views/ClipIconView;->mBlurSizeOutline:I

    div-int/lit8 v11, v11, 0x2

    .line 222
    .local v11, "blurMargin":I
    iget-object v12, v0, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v12, v5, v5, v10, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 224
    if-nez v4, :cond_2

    .line 225
    iget-object v12, v0, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    sub-int v13, p2, v11

    sub-int v14, p2, v11

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Rect;->inset(II)V

    .line 227
    :cond_2
    iget-object v12, v0, Lcom/android/launcher3/views/ClipIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    iget-object v13, v0, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 228
    iget-object v12, v0, Lcom/android/launcher3/views/ClipIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v13, v0, Lcom/android/launcher3/views/ClipIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 230
    iget-object v12, v0, Lcom/android/launcher3/views/ClipIconView;->mStartRevealRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v5, v5, v10, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 232
    if-nez v4, :cond_3

    .line 233
    iget-object v12, v0, Lcom/android/launcher3/views/ClipIconView;->mStartRevealRect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/android/launcher3/graphics/IconShape;->getNormalizationScale()F

    move-result v13

    invoke-static {v12, v13}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 236
    :cond_3
    iget-boolean v12, v3, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v12, :cond_4

    .line 237
    iget v12, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float v12, v12

    iget v13, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    int-to-float v13, v13

    iget v14, v3, Lcom/android/launcher3/DeviceProfile;->aspectRatio:F

    mul-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v12

    float-to-int v12, v12

    iput v12, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_0

    .line 239
    :cond_4
    iget v12, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    int-to-float v12, v12

    iget v13, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float v13, v13

    iget v14, v3, Lcom/android/launcher3/DeviceProfile;->aspectRatio:F

    mul-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v12

    float-to-int v12, v12

    iput v12, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 242
    :goto_0
    iget-boolean v12, v0, Lcom/android/launcher3/views/ClipIconView;->mIsRtl:Z

    if-eqz v12, :cond_5

    .line 243
    iget v12, v3, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v13

    sub-int/2addr v12, v13

    iget v13, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sub-int/2addr v12, v13

    goto :goto_1

    .line 244
    :cond_5
    iget v12, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_1
    nop

    .line 245
    .local v12, "left":I
    iget v13, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v14, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    add-int/2addr v14, v12

    iget v15, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    add-int/2addr v15, v5

    invoke-virtual {v0, v12, v13, v14, v15}, Lcom/android/launcher3/views/ClipIconView;->layout(IIII)V

    .line 247
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    int-to-float v5, v5

    int-to-float v13, v9

    div-float/2addr v5, v13

    iget v13, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float v13, v13

    int-to-float v14, v10

    div-float/2addr v13, v14

    invoke-static {v5, v13}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 250
    .local v5, "scale":F
    if-eqz p4, :cond_6

    .line 251
    const/high16 v13, 0x3f800000    # 1.0f

    .line 252
    .local v13, "bgDrawableStartScale":F
    iget-object v14, v0, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v15, v10, v9}, Landroid/graphics/Rect;->set(IIII)V

    move/from16 v16, v4

    goto :goto_2

    .line 254
    .end local v13    # "bgDrawableStartScale":F
    :cond_6
    const/4 v15, 0x0

    move v13, v5

    .line 255
    .restart local v13    # "bgDrawableStartScale":F
    iget-object v14, v0, Lcom/android/launcher3/views/ClipIconView;->mOutline:Landroid/graphics/Rect;

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v16, v4

    .end local v4    # "isFolderIcon":Z
    .local v16, "isFolderIcon":Z
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v14, v15, v15, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 257
    :goto_2
    iget-boolean v1, v3, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    invoke-direct {v0, v13, v1}, Lcom/android/launcher3/views/ClipIconView;->setBackgroundDrawableBounds(FZ)V

    .line 258
    iget-object v1, v0, Lcom/android/launcher3/views/ClipIconView;->mEndRevealRect:Landroid/graphics/Rect;

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v14, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v1, v15, v15, v4, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 259
    new-instance v1, Lcom/android/launcher3/views/ClipIconView$2;

    invoke-direct {v1, v0}, Lcom/android/launcher3/views/ClipIconView$2;-><init>(Lcom/android/launcher3/views/ClipIconView;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/ClipIconView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 265
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/ClipIconView;->setClipToOutline(Z)V

    .line 266
    .end local v5    # "scale":F
    .end local v6    # "adaptiveIcon":Landroid/graphics/drawable/AdaptiveIconDrawable;
    .end local v7    # "background":Landroid/graphics/drawable/Drawable;
    .end local v8    # "foreground":Landroid/graphics/drawable/Drawable;
    .end local v9    # "originalHeight":I
    .end local v10    # "originalWidth":I
    .end local v11    # "blurMargin":I
    .end local v12    # "left":I
    .end local v13    # "bgDrawableStartScale":F
    .end local v16    # "isFolderIcon":Z
    goto :goto_3

    .line 267
    :cond_7
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/views/ClipIconView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 268
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/ClipIconView;->setClipToOutline(Z)V

    .line 271
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/views/ClipIconView;->invalidate()V

    .line 272
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/views/ClipIconView;->invalidateOutline()V

    .line 273
    return-void
.end method

.method public update(Landroid/graphics/RectF;FFFZLandroid/view/View;Lcom/android/launcher3/DeviceProfile;)V
    .locals 20
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "progress"    # F
    .param p3, "shapeProgressStart"    # F
    .param p4, "cornerRadius"    # F
    .param p5, "isOpening"    # Z
    .param p6, "container"    # Landroid/view/View;
    .param p7, "dp"    # Lcom/android/launcher3/DeviceProfile;

    .line 98
    move-object/from16 v9, p1

    move-object/from16 v10, p6

    invoke-virtual/range {p6 .. p6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 100
    .local v11, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v12, p0

    iget-boolean v0, v12, Lcom/android/launcher3/views/ClipIconView;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 101
    iget v0, v9, Landroid/graphics/RectF;->left:F

    move-object/from16 v13, p7

    iget v1, v13, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    invoke-virtual {v11}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, v11, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_0

    .line 102
    :cond_0
    move-object/from16 v13, p7

    iget v0, v9, Landroid/graphics/RectF;->left:F

    invoke-virtual {v11}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_0
    move v14, v0

    .line 103
    .local v14, "dX":F
    iget v0, v9, Landroid/graphics/RectF;->top:F

    iget v1, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v1, v1

    sub-float v15, v0, v1

    .line 104
    .local v15, "dY":F
    invoke-virtual {v10, v14}, Landroid/view/View;->setTranslationX(F)V

    .line 105
    invoke-virtual {v10, v15}, Landroid/view/View;->setTranslationY(F)V

    .line 107
    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v1, v11, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v8, v0

    .line 108
    .local v8, "minSize":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float v7, v0, v8

    .line 109
    .local v7, "scaleX":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float v6, v0, v8

    .line 110
    .local v6, "scaleY":F
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 112
    .local v5, "scale":F
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v5}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    goto :goto_1

    .line 117
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v16, v5

    .end local v5    # "scale":F
    .local v16, "scale":F
    move/from16 v5, p5

    move/from16 v17, v6

    .end local v6    # "scaleY":F
    .local v17, "scaleY":F
    move/from16 v6, v16

    move/from16 v18, v7

    .end local v7    # "scaleX":F
    .local v18, "scaleX":F
    move v7, v8

    move/from16 v19, v8

    .end local v8    # "minSize":F
    .local v19, "minSize":F
    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/views/ClipIconView;->update(Landroid/graphics/RectF;FFFZFFLcom/android/launcher3/DeviceProfile;)V

    .line 119
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/view/View;->setPivotX(F)V

    .line 120
    invoke-virtual {v10, v0}, Landroid/view/View;->setPivotY(F)V

    .line 121
    move/from16 v0, v16

    .end local v16    # "scale":F
    .local v0, "scale":F
    invoke-virtual {v10, v0}, Landroid/view/View;->setScaleX(F)V

    .line 122
    invoke-virtual {v10, v0}, Landroid/view/View;->setScaleY(F)V

    .line 124
    invoke-virtual/range {p6 .. p6}, Landroid/view/View;->invalidate()V

    .line 125
    return-void

    .line 112
    .end local v0    # "scale":F
    .end local v17    # "scaleY":F
    .end local v18    # "scaleX":F
    .end local v19    # "minSize":F
    .restart local v5    # "scale":F
    .restart local v6    # "scaleY":F
    .restart local v7    # "scaleX":F
    .restart local v8    # "minSize":F
    :cond_2
    move v0, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    .line 114
    .end local v5    # "scale":F
    .end local v6    # "scaleY":F
    .end local v7    # "scaleX":F
    .end local v8    # "minSize":F
    .restart local v0    # "scale":F
    .restart local v17    # "scaleY":F
    .restart local v18    # "scaleX":F
    .restart local v19    # "minSize":F
    :goto_1
    return-void
.end method
