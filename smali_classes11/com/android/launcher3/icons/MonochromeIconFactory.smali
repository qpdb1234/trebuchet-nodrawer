.class public Lcom/android/launcher3/icons/MonochromeIconFactory;
.super Landroid/graphics/drawable/Drawable;
.source "MonochromeIconFactory.java"


# instance fields
.field private final mAlphaBitmap:Landroid/graphics/Bitmap;

.field private final mAlphaCanvas:Landroid/graphics/Canvas;

.field private final mBitmapSize:I

.field private final mCopyPaint:Landroid/graphics/Paint;

.field private final mDrawPaint:Landroid/graphics/Paint;

.field private final mEdgePixelLength:I

.field private final mFlatBitmap:Landroid/graphics/Bitmap;

.field private final mFlatCanvas:Landroid/graphics/Canvas;

.field private final mPixels:[B

.field private final mSrcRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(I)V
    .locals 8
    .param p1, "iconBitmapSize"    # I

    .line 62
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 63
    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v0

    .line 64
    .local v0, "extraFactor":F
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    div-float/2addr v2, v1

    .line 65
    .local v2, "viewPortScale":F
    mul-int/lit8 v1, p1, 0x2

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/icons/MonochromeIconFactory;->mBitmapSize:I

    .line 66
    mul-int v3, v1, v1

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/android/launcher3/icons/MonochromeIconFactory;->mPixels:[B

    .line 67
    sub-int v3, v1, p1

    mul-int/2addr v3, v1

    const/4 v4, 0x2

    div-int/2addr v3, v4

    iput v3, p0, Lcom/android/launcher3/icons/MonochromeIconFactory;->mEdgePixelLength:I

    .line 69
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/icons/MonochromeIconFactory;->mFlatBitmap:Landroid/graphics/Bitmap;

    .line 70
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v5, p0, Lcom/android/launcher3/icons/MonochromeIconFactory;->mFlatCanvas:Landroid/graphics/Canvas;

    .line 72
    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/icons/MonochromeIconFactory;->mAlphaBitmap:Landroid/graphics/Bitmap;

    .line 73
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v5, p0, Lcom/android/launcher3/icons/MonochromeIconFactory;->mAlphaCanvas:Landroid/graphics/Canvas;

    .line 75
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/android/launcher3/icons/MonochromeIconFactory;->mDrawPaint:Landroid/graphics/Paint;

    .line 76
    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    new-instance v3, Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/android/launcher3/icons/MonochromeIconFactory;->mSrcRect:Landroid/graphics/Rect;

    .line 79
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/launcher3/icons/MonochromeIconFactory;->mCopyPaint:Landroid/graphics/Paint;

    .line 80
    sget-object v3, Landroid/graphics/BlendMode;->SRC:Landroid/graphics/BlendMode;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 84
    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 85
    .local v3, "satMatrix":Landroid/graphics/ColorMatrix;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 86
    invoke-virtual {v3}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v5

    .line 87
    .local v5, "vals":[F
    const/16 v6, 0x11

    const v7, 0x3eaaa64c    # 0.3333f

    aput v7, v5, v6

    const/16 v6, 0x10

    aput v7, v5, v6

    const/16 v6, 0xf

    aput v7, v5, v6

    .line 88
    const/16 v6, 0x13

    aput v4, v5, v6

    const/16 v6, 0x12

    aput v4, v5, v6

    .line 89
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v5}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 90
    return-void
.end method

.method private drawDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 93
    if-eqz p1, :cond_0

    .line 94
    iget v0, p0, Lcom/android/launcher3/icons/MonochromeIconFactory;->mBitmapSize:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 95
    iget-object v0, p0, Lcom/android/launcher3/icons/MonochromeIconFactory;->mFlatCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 97
    :cond_0
    return-void
.end method

.method private generateMono()V
    .locals 13

    .line 121
    iget-object v0, p0, Lcom/android/launcher3/icons/MonochromeIconFactory;->mAlphaCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/launcher3/icons/MonochromeIconFactory;->mFlatBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher3/icons/MonochromeIconFactory;->mCopyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 124
    iget-object v0, p0, Lcom/android/launcher3/icons/MonochromeIconFactory;->mPixels:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 125
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 126
    iget-object v1, p0, Lcom/android/launcher3/icons/MonochromeIconFactory;->mAlphaBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 128
    const/16 v1, 0xff

    .line 129
    .local v1, "min":I
    const/4 v2, 0x0

    .line 130
    .local v2, "max":I
    iget-object v3, p0, Lcom/android/launcher3/icons/MonochromeIconFactory;->mPixels:[B

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_0

    aget-byte v7, v3, v6

    .line 131
    .local v7, "b":B
    and-int/lit16 v8, v7, 0xff

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 132
    and-int/lit16 v8, v7, 0xff

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 130
    .end local v7    # "b":B
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 135
    :cond_0
    if-ge v1, v2, :cond_5

    .line 137
    sub-int v3, v2, v1

    int-to-float v3, v3

    .line 142
    .local v3, "range":F
    const/4 v4, 0x0

    .line 143
    .local v4, "sum":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget v7, p0, Lcom/android/launcher3/icons/MonochromeIconFactory;->mEdgePixelLength:I

    const/4 v8, 0x1

    if-ge v6, v7, :cond_1

    .line 144
    iget-object v7, p0, Lcom/android/launcher3/icons/MonochromeIconFactory;->mPixels:[B

    aget-byte v9, v7, v6

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v4, v9

    .line 145
    array-length v9, v7

    sub-int/2addr v9, v8

    sub-int/2addr v9, v6

    aget-byte v7, v7, v9

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v4, v7

    .line 143
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 147
    .end local v6    # "i":I
    :cond_1
    int-to-float v6, v4

    int-to-float v7, v7

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v7, v9

    div-float/2addr v6, v7

    .line 148
    .local v6, "edgeAverage":F
    int-to-float v7, v1

    sub-float v7, v6, v7

    div-float/2addr v7, v3

    .line 149
    .local v7, "edgeMapped":F
    const/high16 v9, 0x3f000000    # 0.5f

    cmpl-float v9, v7, v9

    if-lez v9, :cond_2

    move v5, v8

    .line 151
    .local v5, "flipColor":Z
    :cond_2
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    iget-object v9, p0, Lcom/android/launcher3/icons/MonochromeIconFactory;->mPixels:[B

    array-length v10, v9

    if-ge v8, v10, :cond_4

    .line 152
    aget-byte v9, v9, v8

    and-int/lit16 v9, v9, 0xff

    .line 153
    .local v9, "p":I
    sub-int v10, v9, v1

    mul-int/lit16 v10, v10, 0xff

    int-to-float v10, v10

    div-float/2addr v10, v3

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 154
    .local v10, "p2":I
    iget-object v11, p0, Lcom/android/launcher3/icons/MonochromeIconFactory;->mPixels:[B

    if-eqz v5, :cond_3

    rsub-int v12, v10, 0xff

    int-to-byte v12, v12

    goto :goto_3

    :cond_3
    int-to-byte v12, v10

    :goto_3
    aput-byte v12, v11, v8

    .line 151
    .end local v9    # "p":I
    .end local v10    # "p2":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 156
    .end local v8    # "i":I
    :cond_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 157
    iget-object v8, p0, Lcom/android/launcher3/icons/MonochromeIconFactory;->mAlphaBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 159
    .end local v3    # "range":F
    .end local v4    # "sum":I
    .end local v5    # "flipColor":Z
    .end local v6    # "edgeAverage":F
    .end local v7    # "edgeMapped":F
    :cond_5
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 163
    iget-object v0, p0, Lcom/android/launcher3/icons/MonochromeIconFactory;->mAlphaBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher3/icons/MonochromeIconFactory;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/icons/MonochromeIconFactory;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/icons/MonochromeIconFactory;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 164
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 168
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "i"    # I

    .line 173
    iget-object v0, p0, Lcom/android/launcher3/icons/MonochromeIconFactory;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 174
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 178
    iget-object v0, p0, Lcom/android/launcher3/icons/MonochromeIconFactory;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 179
    return-void
.end method

.method public wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 104
    instance-of v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_0

    .line 105
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 106
    .local v0, "aid":Landroid/graphics/drawable/AdaptiveIconDrawable;
    iget-object v1, p0, Lcom/android/launcher3/icons/MonochromeIconFactory;->mFlatCanvas:Landroid/graphics/Canvas;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 107
    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/icons/MonochromeIconFactory;->drawDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/icons/MonochromeIconFactory;->drawDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    invoke-direct {p0}, Lcom/android/launcher3/icons/MonochromeIconFactory;->generateMono()V

    .line 110
    new-instance v1, Lcom/android/launcher3/icons/BaseIconFactory$ClippedMonoDrawable;

    invoke-direct {v1, p0}, Lcom/android/launcher3/icons/BaseIconFactory$ClippedMonoDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v1

    .line 112
    .end local v0    # "aid":Landroid/graphics/drawable/AdaptiveIconDrawable;
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/icons/MonochromeIconFactory;->mFlatCanvas:Landroid/graphics/Canvas;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 113
    invoke-direct {p0, p1}, Lcom/android/launcher3/icons/MonochromeIconFactory;->drawDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    invoke-direct {p0}, Lcom/android/launcher3/icons/MonochromeIconFactory;->generateMono()V

    .line 115
    return-object p0
.end method
