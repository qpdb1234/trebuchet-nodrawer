.class public Landroidx/slice/widget/SliceStyle;
.super Ljava/lang/Object;
.source "SliceStyle.java"


# instance fields
.field private mGridBottomPadding:I

.field private mGridSubtitleSize:I

.field private mGridTitleSize:I

.field private mGridTopPadding:I

.field private mHeaderSubtitleSize:I

.field private mHeaderTitleSize:I

.field private mSubtitleColor:I

.field private mSubtitleSize:I

.field private mTintColor:I

.field private mTitleColor:I

.field private mTitleSize:I

.field private mVerticalGridTextPadding:I

.field private mVerticalHeaderTextPadding:I

.field private mVerticalTextPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Landroidx/slice/widget/SliceStyle;->mTintColor:I

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Landroidx/slice/view/R$styleable;->SliceView:[I

    invoke-virtual {v1, p2, v2, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 51
    .local v1, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v2, Landroidx/slice/view/R$styleable;->SliceView_tintColor:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 52
    .local v2, "themeColor":I
    if-eq v2, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mTintColor:I

    :goto_0
    iput v0, p0, Landroidx/slice/widget/SliceStyle;->mTintColor:I

    .line 53
    sget v0, Landroidx/slice/view/R$styleable;->SliceView_titleColor:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/SliceStyle;->mTitleColor:I

    .line 54
    sget v0, Landroidx/slice/view/R$styleable;->SliceView_subtitleColor:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/SliceStyle;->mSubtitleColor:I

    .line 56
    sget v0, Landroidx/slice/view/R$styleable;->SliceView_headerTitleSize:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroidx/slice/widget/SliceStyle;->mHeaderTitleSize:I

    .line 58
    sget v0, Landroidx/slice/view/R$styleable;->SliceView_headerSubtitleSize:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroidx/slice/widget/SliceStyle;->mHeaderSubtitleSize:I

    .line 60
    sget v0, Landroidx/slice/view/R$styleable;->SliceView_headerTextVerticalPadding:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroidx/slice/widget/SliceStyle;->mVerticalHeaderTextPadding:I

    .line 63
    sget v0, Landroidx/slice/view/R$styleable;->SliceView_titleSize:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroidx/slice/widget/SliceStyle;->mTitleSize:I

    .line 64
    sget v0, Landroidx/slice/view/R$styleable;->SliceView_subtitleSize:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroidx/slice/widget/SliceStyle;->mSubtitleSize:I

    .line 66
    sget v0, Landroidx/slice/view/R$styleable;->SliceView_textVerticalPadding:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroidx/slice/widget/SliceStyle;->mVerticalTextPadding:I

    .line 69
    sget v0, Landroidx/slice/view/R$styleable;->SliceView_gridTitleSize:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroidx/slice/widget/SliceStyle;->mGridTitleSize:I

    .line 70
    sget v0, Landroidx/slice/view/R$styleable;->SliceView_gridSubtitleSize:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroidx/slice/widget/SliceStyle;->mGridSubtitleSize:I

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Landroidx/slice/view/R$dimen;->abc_slice_grid_text_inner_padding:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 74
    .local v0, "defaultVerticalGridPadding":I
    sget v4, Landroidx/slice/view/R$styleable;->SliceView_gridTextVerticalPadding:I

    int-to-float v5, v0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroidx/slice/widget/SliceStyle;->mVerticalGridTextPadding:I

    .line 76
    sget v4, Landroidx/slice/view/R$styleable;->SliceView_gridTopPadding:I

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroidx/slice/widget/SliceStyle;->mGridTopPadding:I

    .line 77
    sget v4, Landroidx/slice/view/R$styleable;->SliceView_gridBottomPadding:I

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroidx/slice/widget/SliceStyle;->mGridBottomPadding:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .end local v0    # "defaultVerticalGridPadding":I
    .end local v2    # "themeColor":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    nop

    .line 81
    return-void

    .line 79
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method public getGridBottomPadding()I
    .locals 1

    .line 140
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mGridBottomPadding:I

    return v0
.end method

.method public getGridSubtitleSize()I
    .locals 1

    .line 128
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mGridSubtitleSize:I

    return v0
.end method

.method public getGridTitleSize()I
    .locals 1

    .line 124
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mGridTitleSize:I

    return v0
.end method

.method public getGridTopPadding()I
    .locals 1

    .line 136
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mGridTopPadding:I

    return v0
.end method

.method public getHeaderSubtitleSize()I
    .locals 1

    .line 104
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mHeaderSubtitleSize:I

    return v0
.end method

.method public getHeaderTitleSize()I
    .locals 1

    .line 100
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mHeaderTitleSize:I

    return v0
.end method

.method public getSubtitleColor()I
    .locals 1

    .line 96
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mSubtitleColor:I

    return v0
.end method

.method public getSubtitleSize()I
    .locals 1

    .line 116
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mSubtitleSize:I

    return v0
.end method

.method public getTintColor()I
    .locals 1

    .line 88
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mTintColor:I

    return v0
.end method

.method public getTitleColor()I
    .locals 1

    .line 92
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mTitleColor:I

    return v0
.end method

.method public getTitleSize()I
    .locals 1

    .line 112
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mTitleSize:I

    return v0
.end method

.method public getVerticalGridTextPadding()I
    .locals 1

    .line 132
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mVerticalGridTextPadding:I

    return v0
.end method

.method public getVerticalHeaderTextPadding()I
    .locals 1

    .line 108
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mVerticalHeaderTextPadding:I

    return v0
.end method

.method public getVerticalTextPadding()I
    .locals 1

    .line 120
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mVerticalTextPadding:I

    return v0
.end method

.method public setTintColor(I)V
    .locals 0
    .param p1, "tint"    # I

    .line 84
    iput p1, p0, Landroidx/slice/widget/SliceStyle;->mTintColor:I

    .line 85
    return-void
.end method
