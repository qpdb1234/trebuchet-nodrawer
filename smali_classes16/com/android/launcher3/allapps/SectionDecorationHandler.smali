.class public Lcom/android/launcher3/allapps/SectionDecorationHandler;
.super Ljava/lang/Object;
.source "SectionDecorationHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/SectionDecorationHandler$UnionDecorationHandler;
    }
.end annotation


# instance fields
.field protected final mBounds:Landroid/graphics/RectF;

.field protected mContext:Landroid/content/Context;

.field protected final mCornerGroupRadius:I

.field protected final mCornerResultRadius:I

.field protected mCorners:[F

.field protected mFillAlpha:I

.field protected mFillColor:I

.field protected mFillSpacing:F

.field protected final mFocusAlpha:I

.field protected mFocusColor:I

.field protected mInlineRadius:I

.field protected mIsBottomLeftRound:Z

.field protected mIsBottomRightRound:Z

.field protected mIsBottomRound:Z

.field protected mIsTopLeftRound:Z

.field protected mIsTopRightRound:Z

.field protected mIsTopRound:Z

.field protected final mPaint:Landroid/graphics/Paint;

.field protected final mTmpPath:Landroid/graphics/Path;

.field protected final mTmpRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZZZZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fillAlpha"    # I
    .param p3, "isTopLeftRound"    # Z
    .param p4, "isTopRightRound"    # Z
    .param p5, "isBottomLeftRound"    # Z
    .param p6, "isBottomRightRound"    # Z

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mTmpPath:Landroid/graphics/Path;

    .line 36
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mTmpRect:Landroid/graphics/RectF;

    .line 40
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mBounds:Landroid/graphics/RectF;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mPaint:Landroid/graphics/Paint;

    .line 43
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mFocusAlpha:I

    .line 62
    iput-object p1, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mContext:Landroid/content/Context;

    .line 63
    iput p2, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mFillAlpha:I

    .line 64
    sget v0, Lcom/android/launcher3/R$color;->material_color_surface_bright:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mFocusColor:I

    .line 66
    sget v0, Lcom/android/launcher3/R$color;->material_color_surface_container_high:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mFillColor:I

    .line 69
    iput-boolean p3, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mIsTopLeftRound:Z

    .line 70
    iput-boolean p4, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mIsTopRightRound:Z

    .line 71
    iput-boolean p5, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mIsBottomLeftRound:Z

    .line 72
    iput-boolean p6, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mIsBottomRightRound:Z

    .line 73
    const/4 v0, 0x0

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mIsBottomRound:Z

    .line 74
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mIsTopRound:Z

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$dimen;->all_apps_recycler_view_decorator_group_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mCornerGroupRadius:I

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$dimen;->all_apps_recycler_view_decorator_result_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mCornerResultRadius:I

    .line 81
    iput v0, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mInlineRadius:I

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mFillSpacing:F

    .line 83
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/SectionDecorationHandler;->initCorners()V

    .line 84
    return-void
.end method


# virtual methods
.method public applyBackground(Landroid/view/View;Landroid/content/Context;Lcom/android/launcher3/allapps/SectionDecorationInfo;Z)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "decorationInfo"    # Lcom/android/launcher3/allapps/SectionDecorationInfo;
    .param p4, "isHighlighted"    # Z

    .line 128
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->all_apps_recycler_view_decorator_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 130
    .local v0, "inset":I
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/android/launcher3/allapps/SectionDecorationInfo;->isBottomRound()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    iget v1, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mCornerResultRadius:I

    goto :goto_1

    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mCornerGroupRadius:I

    :goto_1
    int-to-float v1, v1

    .line 133
    .local v1, "radiusBottom":F
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/android/launcher3/allapps/SectionDecorationInfo;->isTopRound()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 134
    :cond_2
    iget v2, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mCornerResultRadius:I

    goto :goto_3

    :cond_3
    :goto_2
    iget v2, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mCornerGroupRadius:I

    :goto_3
    int-to-float v2, v2

    .line 135
    .local v2, "radiusTop":F
    if-eqz p4, :cond_4

    iget v3, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mFocusColor:I

    goto :goto_4

    :cond_4
    iget v3, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mFillColor:I

    .line 137
    .local v3, "color":I
    :goto_4
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 138
    .local v4, "shape":Landroid/graphics/drawable/GradientDrawable;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 139
    const/16 v6, 0x8

    new-array v6, v6, [F

    aput v2, v6, v5

    const/4 v5, 0x1

    aput v2, v6, v5

    const/4 v5, 0x2

    aput v2, v6, v5

    const/4 v5, 0x3

    aput v2, v6, v5

    const/4 v5, 0x4

    aput v1, v6, v5

    const/4 v5, 0x5

    aput v1, v6, v5

    const/4 v5, 0x6

    aput v1, v6, v5

    const/4 v5, 0x7

    aput v1, v6, v5

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 145
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    .line 149
    .local v5, "paddingLeft":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    .line 150
    .local v6, "paddingTop":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    .line 151
    .local v7, "paddingRight":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    .line 153
    .local v8, "paddingBottom":I
    new-instance v9, Landroid/graphics/drawable/InsetDrawable;

    invoke-direct {v9, v4, v0}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 155
    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 156
    return-void
.end method

.method protected initCorners()V
    .locals 5

    .line 87
    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 88
    iget-boolean v1, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mIsTopLeftRound:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v3, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mCornerGroupRadius:I

    int-to-float v3, v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/4 v4, 0x0

    aput v3, v0, v4

    .line 89
    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mCornerGroupRadius:I

    int-to-float v1, v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const/4 v3, 0x1

    aput v1, v0, v3

    .line 90
    iget-boolean v1, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mIsTopRightRound:Z

    if-eqz v1, :cond_2

    iget v3, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mCornerGroupRadius:I

    int-to-float v3, v3

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    const/4 v4, 0x2

    aput v3, v0, v4

    .line 91
    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mCornerGroupRadius:I

    int-to-float v1, v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    const/4 v3, 0x3

    aput v1, v0, v3

    .line 92
    iget-boolean v1, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mIsBottomRightRound:Z

    if-eqz v1, :cond_4

    iget v3, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mCornerGroupRadius:I

    int-to-float v3, v3

    goto :goto_4

    :cond_4
    move v3, v2

    :goto_4
    const/4 v4, 0x4

    aput v3, v0, v4

    .line 93
    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mCornerGroupRadius:I

    int-to-float v1, v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    const/4 v3, 0x5

    aput v1, v0, v3

    .line 94
    iget-boolean v1, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mIsBottomLeftRound:Z

    if-eqz v1, :cond_6

    iget v3, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mCornerGroupRadius:I

    int-to-float v3, v3

    goto :goto_6

    :cond_6
    move v3, v2

    :goto_6
    const/4 v4, 0x6

    aput v3, v0, v4

    .line 95
    if-eqz v1, :cond_7

    iget v1, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mCornerGroupRadius:I

    int-to-float v2, v1

    :cond_7
    const/4 v1, 0x7

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mCorners:[F

    .line 97
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 116
    iget-object v0, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mTmpPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 117
    iget-object v0, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mTmpRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mFillSpacing:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mFillSpacing:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mFillSpacing:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mFillSpacing:F

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 121
    iget-object v0, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mTmpPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mTmpRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mCorners:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 122
    iget-object v0, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mTmpPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 123
    return-void
.end method

.method protected onFocusDraw(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "view"    # Landroid/view/View;

    .line 105
    if-nez p2, :cond_0

    .line 106
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mFillColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    iget-object v0, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mFillAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 110
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getScaleY()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 111
    .local v0, "scaledHeight":I
    iget-object v1, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v5

    int-to-float v6, v0

    add-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/SectionDecorationHandler;->onDraw(Landroid/graphics/Canvas;)V

    .line 113
    return-void
.end method

.method protected setFillAlpha(I)V
    .locals 1
    .param p1, "fillAlpha"    # I

    .line 100
    iput p1, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mFillAlpha:I

    .line 101
    iget-object v0, p0, Lcom/android/launcher3/allapps/SectionDecorationHandler;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 102
    return-void
.end method
