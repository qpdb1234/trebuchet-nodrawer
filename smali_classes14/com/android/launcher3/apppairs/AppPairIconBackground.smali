.class Lcom/android/launcher3/apppairs/AppPairIconBackground;
.super Landroid/graphics/drawable/Drawable;
.source "AppPairIconBackground.java"


# static fields
.field private static final ARRAY_OF_ZEROES:[F

.field private static final EMPTY_RECT:Landroid/graphics/RectF;


# instance fields
.field private final icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

.field private final mBackgroundPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->EMPTY_RECT:Landroid/graphics/RectF;

    .line 45
    const/16 v0, 0x8

    new-array v0, v0, [F

    sput-object v0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->ARRAY_OF_ZEROES:[F

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/launcher3/apppairs/AppPairIconGraphic;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconGraphic"    # Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    .line 47
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 48
    iput-object p2, p0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/R$styleable;->FolderIconPreview:[I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 51
    .local v1, "ta":Landroid/content/res/TypedArray;
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    sget v2, Lcom/android/launcher3/R$styleable;->FolderIconPreview_folderPreviewColor:I

    .line 53
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 52
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    return-void
.end method

.method private drawCustomRoundedRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;[F)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "rect"    # Landroid/graphics/RectF;
    .param p3, "radii"    # [F

    .line 144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 146
    sget-object v5, Lcom/android/launcher3/apppairs/AppPairIconBackground;->EMPTY_RECT:Landroid/graphics/RectF;

    sget-object v6, Lcom/android/launcher3/apppairs/AppPairIconBackground;->ARRAY_OF_ZEROES:[F

    iget-object v7, p0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawDoubleRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/RectF;[FLandroid/graphics/Paint;)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    invoke-virtual {v0}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->getBigRadius()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    invoke-virtual {v1}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->getBigRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 151
    :goto_0
    return-void
.end method

.method private drawLeftRightSplit(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 71
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/apppairs/AppPairIconBackground;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 72
    .local v2, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/apppairs/AppPairIconBackground;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 75
    .local v3, "height":I
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget-object v7, v0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    .line 78
    invoke-virtual {v7}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->getCenterChannelSize()F

    move-result v7

    div-float/2addr v7, v6

    sub-float/2addr v5, v7

    int-to-float v7, v3

    const/4 v8, 0x0

    invoke-direct {v4, v8, v8, v5, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 82
    .local v4, "leftSide":Landroid/graphics/RectF;
    new-instance v5, Landroid/graphics/RectF;

    int-to-float v7, v2

    div-float/2addr v7, v6

    iget-object v9, v0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    .line 83
    invoke-virtual {v9}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->getCenterChannelSize()F

    move-result v9

    div-float/2addr v9, v6

    add-float/2addr v7, v9

    int-to-float v6, v2

    int-to-float v9, v3

    invoke-direct {v5, v7, v8, v6, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 89
    .local v5, "rightSide":Landroid/graphics/RectF;
    const/16 v6, 0x8

    new-array v7, v6, [F

    iget-object v8, v0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    .line 90
    invoke-virtual {v8}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->getBigRadius()F

    move-result v8

    const/4 v9, 0x0

    aput v8, v7, v9

    iget-object v8, v0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    invoke-virtual {v8}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->getBigRadius()F

    move-result v8

    const/4 v10, 0x1

    aput v8, v7, v10

    iget-object v8, v0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    .line 91
    invoke-virtual {v8}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->getSmallRadius()F

    move-result v8

    const/4 v11, 0x2

    aput v8, v7, v11

    iget-object v8, v0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    invoke-virtual {v8}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->getSmallRadius()F

    move-result v8

    const/4 v12, 0x3

    aput v8, v7, v12

    iget-object v8, v0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    .line 92
    invoke-virtual {v8}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->getSmallRadius()F

    move-result v8

    const/4 v13, 0x4

    aput v8, v7, v13

    iget-object v8, v0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    invoke-virtual {v8}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->getSmallRadius()F

    move-result v8

    const/4 v14, 0x5

    aput v8, v7, v14

    iget-object v8, v0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    .line 93
    invoke-virtual {v8}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->getBigRadius()F

    move-result v8

    const/4 v15, 0x6

    aput v8, v7, v15

    iget-object v8, v0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    invoke-virtual {v8}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->getBigRadius()F

    move-result v8

    const/16 v16, 0x7

    aput v8, v7, v16

    .line 89
    invoke-direct {v0, v1, v4, v7}, Lcom/android/launcher3/apppairs/AppPairIconBackground;->drawCustomRoundedRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;[F)V

    .line 94
    new-array v6, v6, [F

    iget-object v7, v0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    .line 95
    invoke-virtual {v7}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->getSmallRadius()F

    move-result v7

    aput v7, v6, v9

    iget-object v7, v0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    invoke-virtual {v7}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->getSmallRadius()F

    move-result v7

    aput v7, v6, v10

    iget-object v7, v0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    .line 96
    invoke-virtual {v7}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->getBigRadius()F

    move-result v7

    aput v7, v6, v11

    iget-object v7, v0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    invoke-virtual {v7}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->getBigRadius()F

    move-result v7

    aput v7, v6, v12

    iget-object v7, v0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    .line 97
    invoke-virtual {v7}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->getBigRadius()F

    move-result v7

    aput v7, v6, v13

    iget-object v7, v0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    invoke-virtual {v7}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->getBigRadius()F

    move-result v7

    aput v7, v6, v14

    iget-object v7, v0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    .line 98
    invoke-virtual {v7}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->getSmallRadius()F

    move-result v7

    aput v7, v6, v15

    iget-object v7, v0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    invoke-virtual {v7}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->getSmallRadius()F

    move-result v7

    aput v7, v6, v16

    .line 94
    invoke-direct {v0, v1, v5, v6}, Lcom/android/launcher3/apppairs/AppPairIconBackground;->drawCustomRoundedRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;[F)V

    .line 99
    return-void
.end method

.method private drawTopBottomSplit(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 106
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/apppairs/AppPairIconBackground;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 107
    .local v2, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/apppairs/AppPairIconBackground;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 110
    .local v3, "height":I
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v2

    int-to-float v6, v3

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    iget-object v8, v0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    .line 114
    invoke-virtual {v8}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->getCenterChannelSize()F

    move-result v8

    div-float/2addr v8, v7

    sub-float/2addr v6, v8

    const/4 v8, 0x0

    invoke-direct {v4, v8, v8, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 117
    .local v4, "topSide":Landroid/graphics/RectF;
    new-instance v5, Landroid/graphics/RectF;

    int-to-float v6, v3

    div-float/2addr v6, v7

    iget-object v9, v0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    .line 119
    invoke-virtual {v9}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->getCenterChannelSize()F

    move-result v9

    div-float/2addr v9, v7

    add-float/2addr v6, v9

    int-to-float v7, v2

    int-to-float v9, v3

    invoke-direct {v5, v8, v6, v7, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 124
    .local v5, "bottomSide":Landroid/graphics/RectF;
    const/16 v6, 0x8

    new-array v7, v6, [F

    iget-object v8, v0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    .line 125
    invoke-virtual {v8}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->getBigRadius()F

    move-result v8

    const/4 v9, 0x0

    aput v8, v7, v9

    iget-object v8, v0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    invoke-virtual {v8}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->getBigRadius()F

    move-result v8

    const/4 v10, 0x1

    aput v8, v7, v10

    iget-object v8, v0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    .line 126
    invoke-virtual {v8}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->getBigRadius()F

    move-result v8

    const/4 v11, 0x2

    aput v8, v7, v11

    iget-object v8, v0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    invoke-virtual {v8}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->getBigRadius()F

    move-result v8

    const/4 v12, 0x3

    aput v8, v7, v12

    iget-object v8, v0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    .line 127
    invoke-virtual {v8}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->getSmallRadius()F

    move-result v8

    const/4 v13, 0x4

    aput v8, v7, v13

    iget-object v8, v0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    invoke-virtual {v8}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->getSmallRadius()F

    move-result v8

    const/4 v14, 0x5

    aput v8, v7, v14

    iget-object v8, v0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    .line 128
    invoke-virtual {v8}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->getSmallRadius()F

    move-result v8

    const/4 v15, 0x6

    aput v8, v7, v15

    iget-object v8, v0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    invoke-virtual {v8}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->getSmallRadius()F

    move-result v8

    const/16 v16, 0x7

    aput v8, v7, v16

    .line 124
    invoke-direct {v0, v1, v4, v7}, Lcom/android/launcher3/apppairs/AppPairIconBackground;->drawCustomRoundedRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;[F)V

    .line 129
    new-array v6, v6, [F

    iget-object v7, v0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    .line 130
    invoke-virtual {v7}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->getSmallRadius()F

    move-result v7

    aput v7, v6, v9

    iget-object v7, v0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    invoke-virtual {v7}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->getSmallRadius()F

    move-result v7

    aput v7, v6, v10

    iget-object v7, v0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    .line 131
    invoke-virtual {v7}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->getSmallRadius()F

    move-result v7

    aput v7, v6, v11

    iget-object v7, v0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    invoke-virtual {v7}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->getSmallRadius()F

    move-result v7

    aput v7, v6, v12

    iget-object v7, v0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    .line 132
    invoke-virtual {v7}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->getBigRadius()F

    move-result v7

    aput v7, v6, v13

    iget-object v7, v0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    invoke-virtual {v7}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->getBigRadius()F

    move-result v7

    aput v7, v6, v14

    iget-object v7, v0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    .line 133
    invoke-virtual {v7}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->getBigRadius()F

    move-result v7

    aput v7, v6, v15

    iget-object v7, v0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    invoke-virtual {v7}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->getBigRadius()F

    move-result v7

    aput v7, v6, v16

    .line 129
    invoke-direct {v0, v1, v5, v6}, Lcom/android/launcher3/apppairs/AppPairIconBackground;->drawCustomRoundedRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;[F)V

    .line 134
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 59
    iget-object v0, p0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->icon:Lcom/android/launcher3/apppairs/AppPairIconGraphic;

    invoke-virtual {v0}, Lcom/android/launcher3/apppairs/AppPairIconGraphic;->isLeftRightSplit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/launcher3/apppairs/AppPairIconBackground;->drawLeftRightSplit(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/apppairs/AppPairIconBackground;->drawTopBottomSplit(Landroid/graphics/Canvas;)V

    .line 64
    :goto_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 155
    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "i"    # I

    .line 160
    iget-object v0, p0, Lcom/android/launcher3/apppairs/AppPairIconBackground;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 161
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 166
    return-void
.end method
