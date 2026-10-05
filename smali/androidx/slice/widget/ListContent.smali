.class public Landroidx/slice/widget/ListContent;
.super Ljava/lang/Object;
.source "ListContent.java"


# instance fields
.field private mColorItem:Landroidx/slice/SliceItem;

.field private mContext:Landroid/content/Context;

.field private mGridBottomPadding:I

.field private mGridTopPadding:I

.field private mHeaderItem:Landroidx/slice/SliceItem;

.field private mLargeHeight:I

.field private mLayoutDirItem:Landroidx/slice/SliceItem;

.field private mMaxSmallHeight:I

.field private mMinScrollHeight:I

.field private mRowItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSeeMoreItem:Landroidx/slice/SliceItem;

.field private mSlice:Landroidx/slice/Slice;

.field private mSliceActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/slice/Slice;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slice"    # Landroidx/slice/Slice;

    .line 83
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroidx/slice/widget/ListContent;-><init>(Landroid/content/Context;Landroidx/slice/Slice;Landroid/util/AttributeSet;II)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/slice/Slice;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slice"    # Landroidx/slice/Slice;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/slice/widget/ListContent;->init(Landroid/content/Context;Landroidx/slice/Slice;Landroidx/slice/widget/SliceStyle;)V

    .line 95
    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 97
    .local v0, "theme":Landroid/content/res/Resources$Theme;
    if-eqz v0, :cond_0

    .line 98
    sget-object v1, Landroidx/slice/view/R$styleable;->SliceView:[I

    invoke-virtual {v0, p3, v1, p4, p5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 101
    .local v1, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v2, Landroidx/slice/view/R$styleable;->SliceView_gridTopPadding:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/ListContent;->mGridTopPadding:I

    .line 102
    sget v2, Landroidx/slice/view/R$styleable;->SliceView_gridTopPadding:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/ListContent;->mGridBottomPadding:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    goto :goto_0

    .line 105
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v2

    .line 110
    .end local v0    # "theme":Landroid/content/res/Resources$Theme;
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Landroidx/slice/widget/ListContent;->populate(Landroidx/slice/Slice;)Z

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/slice/Slice;Landroidx/slice/widget/SliceStyle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slice"    # Landroidx/slice/Slice;
    .param p3, "styles"    # Landroidx/slice/widget/SliceStyle;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroidx/slice/widget/ListContent;->init(Landroid/content/Context;Landroidx/slice/Slice;Landroidx/slice/widget/SliceStyle;)V

    .line 88
    invoke-direct {p0, p2}, Landroidx/slice/widget/ListContent;->populate(Landroidx/slice/Slice;)Z

    .line 89
    return-void
.end method

.method private static findHeaderItem(Landroidx/slice/Slice;)Landroidx/slice/SliceItem;
    .locals 7
    .param p0, "slice"    # Landroidx/slice/Slice;

    .line 438
    const-string v0, "list_item"

    const-string/jumbo v1, "shortcut"

    const-string v2, "actions"

    const-string v3, "keywords"

    const-string/jumbo v4, "ttl"

    const-string v5, "last_updated"

    const-string v6, "horizontal"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "nonHints":[Ljava/lang/String;
    const-string/jumbo v1, "slice"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    .line 441
    .local v1, "header":Landroidx/slice/SliceItem;
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroidx/slice/widget/ListContent;->isValidHeader(Landroidx/slice/SliceItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 442
    return-object v1

    .line 444
    :cond_0
    return-object v2
.end method

.method private getHeight(Landroidx/slice/SliceItem;ZIII)I
    .locals 5
    .param p1, "item"    # Landroidx/slice/SliceItem;
    .param p2, "isHeader"    # Z
    .param p3, "index"    # I
    .param p4, "count"    # I
    .param p5, "mode"    # I

    .line 294
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    goto :goto_3

    .line 297
    :cond_0
    const-string v0, "horizontal"

    invoke-virtual {p1, v0}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 298
    new-instance v0, Landroidx/slice/widget/GridContent;

    iget-object v3, p0, Landroidx/slice/widget/ListContent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, p1}, Landroidx/slice/widget/GridContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;)V

    .line 299
    .local v0, "gc":Landroidx/slice/widget/GridContent;
    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->isAllImages()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p3, :cond_1

    iget v3, p0, Landroidx/slice/widget/ListContent;->mGridTopPadding:I

    goto :goto_0

    :cond_1
    move v3, v1

    .line 300
    .local v3, "topPadding":I
    :goto_0
    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->isAllImages()Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v4, p4, -0x1

    if-ne p3, v4, :cond_2

    iget v1, p0, Landroidx/slice/widget/ListContent;->mGridBottomPadding:I

    .line 301
    .local v1, "bottomPadding":I
    :cond_2
    if-ne p5, v2, :cond_3

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->getSmallHeight()I

    move-result v2

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->getActualHeight()I

    move-result v2

    .line 302
    .local v2, "height":I
    :goto_1
    add-int v4, v2, v3

    add-int/2addr v4, v1

    return v4

    .line 304
    .end local v0    # "gc":Landroidx/slice/widget/GridContent;
    .end local v1    # "bottomPadding":I
    .end local v2    # "height":I
    .end local v3    # "topPadding":I
    :cond_4
    new-instance v0, Landroidx/slice/widget/RowContent;

    iget-object v1, p0, Landroidx/slice/widget/ListContent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Landroidx/slice/widget/RowContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;Z)V

    .line 305
    .local v0, "rc":Landroidx/slice/widget/RowContent;
    iget v1, p0, Landroidx/slice/widget/ListContent;->mMaxSmallHeight:I

    if-ne p5, v2, :cond_5

    invoke-virtual {v0, v1}, Landroidx/slice/widget/RowContent;->getSmallHeight(I)I

    move-result v1

    goto :goto_2

    .line 306
    :cond_5
    invoke-virtual {v0, v1}, Landroidx/slice/widget/RowContent;->getActualHeight(I)I

    move-result v1

    :goto_2
    return v1

    .line 295
    .end local v0    # "rc":Landroidx/slice/widget/RowContent;
    :cond_6
    :goto_3
    return v1
.end method

.method public static getRowType(Landroid/content/Context;Landroidx/slice/SliceItem;ZLjava/util/List;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rowItem"    # Landroidx/slice/SliceItem;
    .param p2, "isHeader"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/slice/SliceItem;",
            "Z",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;)I"
        }
    .end annotation

    .line 377
    .local p3, "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 378
    const-string v1, "horizontal"

    invoke-virtual {p1, v1}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    const/4 v0, 0x1

    return v0

    .line 381
    :cond_0
    new-instance v1, Landroidx/slice/widget/RowContent;

    invoke-direct {v1, p0, p1, p2}, Landroidx/slice/widget/RowContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;Z)V

    .line 382
    .local v1, "rc":Landroidx/slice/widget/RowContent;
    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v2

    .line 383
    .local v2, "actionItem":Landroidx/slice/SliceItem;
    const/4 v3, 0x0

    .line 384
    .local v3, "primaryAction":Landroidx/slice/core/SliceAction;
    if-eqz v2, :cond_1

    .line 385
    new-instance v4, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v4, v2}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    move-object v3, v4

    .line 387
    :cond_1
    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 388
    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v4, "action"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    :goto_0
    return v0

    .line 391
    :cond_3
    const/4 v4, 0x3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroidx/slice/core/SliceAction;->isToggle()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 392
    return v4

    .line 393
    :cond_4
    if-eqz p2, :cond_7

    if-eqz p3, :cond_7

    .line 394
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 395
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/slice/core/SliceAction;

    invoke-interface {v6}, Landroidx/slice/core/SliceAction;->isToggle()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 396
    return v4

    .line 394
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 399
    .end local v5    # "i":I
    :cond_6
    return v0

    .line 401
    :cond_7
    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getToggleItems()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_8

    move v0, v4

    :cond_8
    return v0

    .line 407
    .end local v1    # "rc":Landroidx/slice/widget/RowContent;
    .end local v2    # "actionItem":Landroidx/slice/SliceItem;
    .end local v3    # "primaryAction":Landroidx/slice/core/SliceAction;
    :cond_9
    return v0
.end method

.method private static getSeeMoreItem(Landroidx/slice/Slice;)Landroidx/slice/SliceItem;
    .locals 5
    .param p0, "slice"    # Landroidx/slice/Slice;

    .line 449
    const-string v0, "see_more"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v1, v0, v1}, Landroidx/slice/core/SliceQuery;->findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    .line 451
    .local v0, "item":Landroidx/slice/SliceItem;
    if-eqz v0, :cond_1

    .line 452
    const-string/jumbo v2, "slice"

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 453
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v1

    .line 454
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/SliceItem;

    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v3

    const-string v4, "action"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 455
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    return-object v2

    .line 457
    :cond_0
    return-object v0

    .line 460
    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    :cond_1
    return-object v1
.end method

.method private init(Landroid/content/Context;Landroidx/slice/Slice;Landroidx/slice/widget/SliceStyle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slice"    # Landroidx/slice/Slice;
    .param p3, "styles"    # Landroidx/slice/widget/SliceStyle;

    .line 114
    iput-object p2, p0, Landroidx/slice/widget/ListContent;->mSlice:Landroidx/slice/Slice;

    .line 115
    if-nez p2, :cond_0

    .line 116
    return-void

    .line 118
    :cond_0
    iput-object p1, p0, Landroidx/slice/widget/ListContent;->mContext:Landroid/content/Context;

    .line 119
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroidx/slice/widget/SliceStyle;->getGridTopPadding()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    iput v1, p0, Landroidx/slice/widget/ListContent;->mGridTopPadding:I

    .line 120
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroidx/slice/widget/SliceStyle;->getGridBottomPadding()I

    move-result v0

    :cond_2
    iput v0, p0, Landroidx/slice/widget/ListContent;->mGridBottomPadding:I

    .line 121
    if-eqz p1, :cond_3

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_row_min_height:I

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/ListContent;->mMinScrollHeight:I

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_large_height:I

    .line 125
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/ListContent;->mLargeHeight:I

    .line 127
    :cond_3
    return-void
.end method

.method public static isValidHeader(Landroidx/slice/SliceItem;)Z
    .locals 5
    .param p0, "sliceItem"    # Landroidx/slice/SliceItem;

    .line 467
    const-string/jumbo v0, "slice"

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "keywords"

    const-string v2, "see_more"

    const-string v3, "list_item"

    const-string v4, "actions"

    filled-new-array {v3, v4, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 470
    const/4 v0, 0x0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v2, "text"

    invoke-static {p0, v2, v0, v0}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    .line 471
    .local v0, "item":Landroidx/slice/SliceItem;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 473
    .end local v0    # "item":Landroidx/slice/SliceItem;
    :cond_1
    return v1
.end method

.method private populate(Landroidx/slice/Slice;)Z
    .locals 10
    .param p1, "slice"    # Landroidx/slice/Slice;

    .line 137
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 138
    :cond_0
    const-string v1, "color"

    const-string v2, "int"

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3, v3}, Landroidx/slice/core/SliceQuery;->findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/widget/ListContent;->mColorItem:Landroidx/slice/SliceItem;

    .line 139
    const-string v1, "layout_direction"

    invoke-static {p1, v2, v1, v3, v3}, Landroidx/slice/core/SliceQuery;->findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/widget/ListContent;->mLayoutDirItem:Landroidx/slice/SliceItem;

    .line 141
    if-eqz v1, :cond_2

    .line 143
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getInt()I

    move-result v1

    invoke-static {v1}, Landroidx/slice/widget/SliceViewUtil;->resolveLayoutDirection(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v3, p0, Landroidx/slice/widget/ListContent;->mLayoutDirItem:Landroidx/slice/SliceItem;

    :cond_1
    iput-object v3, p0, Landroidx/slice/widget/ListContent;->mLayoutDirItem:Landroidx/slice/SliceItem;

    .line 149
    :cond_2
    invoke-static {p1}, Landroidx/slice/SliceMetadata;->getSliceActions(Landroidx/slice/Slice;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/widget/ListContent;->mSliceActions:Ljava/util/List;

    .line 151
    invoke-static {p1}, Landroidx/slice/widget/ListContent;->findHeaderItem(Landroidx/slice/Slice;)Landroidx/slice/SliceItem;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/widget/ListContent;->mHeaderItem:Landroidx/slice/SliceItem;

    .line 152
    if-eqz v1, :cond_3

    .line 153
    iget-object v2, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_3
    invoke-static {p1}, Landroidx/slice/widget/ListContent;->getSeeMoreItem(Landroidx/slice/Slice;)Landroidx/slice/SliceItem;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/widget/ListContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    .line 157
    invoke-virtual {p1}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v1

    .line 158
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 159
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/SliceItem;

    .line 160
    .local v3, "child":Landroidx/slice/SliceItem;
    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v4

    .line 161
    .local v4, "format":Ljava/lang/String;
    const-string/jumbo v5, "ttl"

    const-string v6, "last_updated"

    const-string v7, "actions"

    const-string v8, "see_more"

    const-string v9, "keywords"

    filled-new-array {v7, v8, v9, v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v5

    .line 163
    .local v5, "isNonRowContent":Z
    if-nez v5, :cond_6

    const-string v6, "action"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string/jumbo v6, "slice"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 164
    :cond_4
    iget-object v6, p0, Landroidx/slice/widget/ListContent;->mHeaderItem:Landroidx/slice/SliceItem;

    const-string v7, "list_item"

    if-nez v6, :cond_5

    invoke-virtual {v3, v7}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 165
    iput-object v3, p0, Landroidx/slice/widget/ListContent;->mHeaderItem:Landroidx/slice/SliceItem;

    .line 166
    iget-object v6, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 167
    :cond_5
    invoke-virtual {v3, v7}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 168
    iget-object v6, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .end local v3    # "child":Landroidx/slice/SliceItem;
    .end local v4    # "format":Ljava/lang/String;
    .end local v5    # "isNonRowContent":Z
    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    .end local v2    # "i":I
    :cond_7
    iget-object v2, p0, Landroidx/slice/widget/ListContent;->mHeaderItem:Landroidx/slice/SliceItem;

    if-nez v2, :cond_8

    iget-object v2, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_8

    .line 174
    iget-object v2, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/SliceItem;

    iput-object v0, p0, Landroidx/slice/widget/ListContent;->mHeaderItem:Landroidx/slice/SliceItem;

    .line 176
    :cond_8
    invoke-virtual {p0}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getColorItem()Landroidx/slice/SliceItem;
    .locals 1

    .line 329
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mColorItem:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public getHeaderItem()Landroidx/slice/SliceItem;
    .locals 1

    .line 334
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mHeaderItem:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public getHeaderTemplateType()I
    .locals 4

    .line 363
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/slice/widget/ListContent;->mHeaderItem:Landroidx/slice/SliceItem;

    const/4 v2, 0x1

    iget-object v3, p0, Landroidx/slice/widget/ListContent;->mSliceActions:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Landroidx/slice/widget/ListContent;->getRowType(Landroid/content/Context;Landroidx/slice/SliceItem;ZLjava/util/List;)I

    move-result v0

    return v0
.end method

.method public getItemsForNonScrollingList(I)Ljava/util/ArrayList;
    .locals 14
    .param p1, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v0, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/slice/SliceItem;>;"
    iget-object v1, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 256
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/ListContent;->hasHeader()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    move v1, v2

    .line 257
    .local v1, "minItemCount":I
    :goto_0
    const/4 v3, 0x0

    .line 259
    .local v3, "visibleHeight":I
    iget-object v4, p0, Landroidx/slice/widget/ListContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 260
    new-instance v4, Landroidx/slice/widget/RowContent;

    iget-object v6, p0, Landroidx/slice/widget/ListContent;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroidx/slice/widget/ListContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    invoke-direct {v4, v6, v7, v5}, Landroidx/slice/widget/RowContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;Z)V

    .line 261
    .local v4, "rc":Landroidx/slice/widget/RowContent;
    iget v6, p0, Landroidx/slice/widget/ListContent;->mMaxSmallHeight:I

    invoke-virtual {v4, v6}, Landroidx/slice/widget/RowContent;->getActualHeight(I)I

    move-result v6

    add-int/2addr v3, v6

    .line 263
    .end local v4    # "rc":Landroidx/slice/widget/RowContent;
    :cond_2
    iget-object v4, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 264
    .local v4, "rowCount":I
    const/4 v6, 0x0

    move v12, v6

    .local v12, "i":I
    :goto_1
    if-ge v12, v4, :cond_6

    .line 265
    const/4 v6, 0x0

    .line 266
    .local v6, "hasRealHeader":Z
    if-nez v12, :cond_3

    .line 267
    iget-object v7, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/slice/SliceItem;

    const-string v8, "list_item"

    const-string v9, "horizontal"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v7

    xor-int/2addr v7, v2

    move v6, v7

    move v13, v6

    goto :goto_2

    .line 266
    :cond_3
    move v13, v6

    .line 269
    .end local v6    # "hasRealHeader":Z
    .local v13, "hasRealHeader":Z
    :goto_2
    iget-object v6, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroidx/slice/SliceItem;

    if-nez v12, :cond_4

    if-eqz v13, :cond_4

    move v8, v2

    goto :goto_3

    :cond_4
    move v8, v5

    :goto_3
    const/4 v11, 0x2

    move-object v6, p0

    move v9, v12

    move v10, v4

    invoke-direct/range {v6 .. v11}, Landroidx/slice/widget/ListContent;->getHeight(Landroidx/slice/SliceItem;ZIII)I

    move-result v6

    .line 271
    .local v6, "itemHeight":I
    if-lez p1, :cond_5

    add-int v7, v3, v6

    if-le v7, p1, :cond_5

    .line 272
    goto :goto_4

    .line 274
    :cond_5
    add-int/2addr v3, v6

    .line 275
    iget-object v7, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    .end local v6    # "itemHeight":I
    .end local v13    # "hasRealHeader":Z
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 278
    .end local v12    # "i":I
    :cond_6
    :goto_4
    iget-object v2, p0, Landroidx/slice/widget/ListContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, v1, :cond_7

    .line 279
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v2, v4, :cond_7

    .line 281
    iget-object v2, p0, Landroidx/slice/widget/ListContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_8

    .line 285
    iget-object v2, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_8
    return-object v0

    .line 254
    .end local v1    # "minItemCount":I
    .end local v3    # "visibleHeight":I
    .end local v4    # "rowCount":I
    :cond_9
    :goto_5
    return-object v0
.end method

.method public getLargeHeight(IZ)I
    .locals 5
    .param p1, "maxHeight"    # I
    .param p2, "scrollable"    # Z

    .line 193
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroidx/slice/widget/ListContent;->getListHeight(Ljava/util/List;)I

    move-result v0

    .line 194
    .local v0, "desiredHeight":I
    if-lez p1, :cond_0

    .line 196
    invoke-virtual {p0}, Landroidx/slice/widget/ListContent;->getSmallHeight()I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 198
    :cond_0
    if-lez p1, :cond_1

    move v1, p1

    goto :goto_0

    :cond_1
    iget v1, p0, Landroidx/slice/widget/ListContent;->mLargeHeight:I

    .line 202
    .local v1, "maxLargeHeight":I
    :goto_0
    sub-int v2, v0, v1

    iget v3, p0, Landroidx/slice/widget/ListContent;->mMinScrollHeight:I

    if-lt v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 205
    .local v2, "bigEnoughToScroll":Z
    :goto_1
    if-eqz v2, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    if-gtz p1, :cond_4

    move v3, v0

    goto :goto_2

    .line 207
    :cond_4
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_2
    nop

    .line 208
    .local v3, "height":I
    if-nez p2, :cond_5

    .line 209
    invoke-virtual {p0, v3}, Landroidx/slice/widget/ListContent;->getItemsForNonScrollingList(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroidx/slice/widget/ListContent;->getListHeight(Ljava/util/List;)I

    move-result v3

    .line 211
    :cond_5
    return v3
.end method

.method public getLayoutDirItem()Landroidx/slice/SliceItem;
    .locals 1

    .line 324
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mLayoutDirItem:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public getListHeight(Ljava/util/List;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/SliceItem;",
            ">;)I"
        }
    .end annotation

    .line 221
    .local p1, "listItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget-object v1, p0, Landroidx/slice/widget/ListContent;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    goto :goto_2

    .line 224
    :cond_0
    const/4 v1, 0x0

    .line 225
    .local v1, "height":I
    const/4 v2, 0x0

    .line 226
    .local v2, "hasRealHeader":Z
    const/4 v3, 0x0

    .line 227
    .local v3, "maybeHeader":Landroidx/slice/SliceItem;
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const-string v5, "horizontal"

    const/4 v6, 0x1

    if-nez v4, :cond_1

    .line 228
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Landroidx/slice/SliceItem;

    .line 229
    const-string v4, "list_item"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v4

    xor-int/2addr v4, v6

    move v2, v4

    .line 231
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v6, :cond_2

    invoke-virtual {v3, v5}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 232
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x2

    move-object v7, p0

    move-object v8, v3

    invoke-direct/range {v7 .. v12}, Landroidx/slice/widget/ListContent;->getHeight(Landroidx/slice/SliceItem;ZIII)I

    move-result v0

    return v0

    .line 234
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 235
    .local v4, "rowCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_4

    .line 236
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroidx/slice/SliceItem;

    if-nez v5, :cond_3

    if-eqz v2, :cond_3

    move v9, v6

    goto :goto_1

    :cond_3
    move v9, v0

    :goto_1
    const/4 v12, 0x2

    move-object v7, p0

    move v10, v5

    move v11, v4

    invoke-direct/range {v7 .. v12}, Landroidx/slice/widget/ListContent;->getHeight(Landroidx/slice/SliceItem;ZIII)I

    move-result v7

    add-int/2addr v1, v7

    .line 235
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 239
    .end local v5    # "i":I
    :cond_4
    return v1

    .line 222
    .end local v1    # "height":I
    .end local v2    # "hasRealHeader":Z
    .end local v3    # "maybeHeader":Landroidx/slice/SliceItem;
    .end local v4    # "rowCount":I
    :cond_5
    :goto_2
    return v0
.end method

.method public getPrimaryAction()Landroidx/slice/SliceItem;
    .locals 5

    .line 415
    const/4 v0, 0x0

    .line 416
    .local v0, "action":Landroidx/slice/SliceItem;
    iget-object v1, p0, Landroidx/slice/widget/ListContent;->mHeaderItem:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_1

    .line 417
    const-string v2, "horizontal"

    invoke-virtual {v1, v2}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    new-instance v1, Landroidx/slice/widget/GridContent;

    iget-object v2, p0, Landroidx/slice/widget/ListContent;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroidx/slice/widget/ListContent;->mHeaderItem:Landroidx/slice/SliceItem;

    invoke-direct {v1, v2, v3}, Landroidx/slice/widget/GridContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;)V

    .line 419
    .local v1, "gc":Landroidx/slice/widget/GridContent;
    invoke-virtual {v1}, Landroidx/slice/widget/GridContent;->getContentIntent()Landroidx/slice/SliceItem;

    move-result-object v0

    .line 420
    .end local v1    # "gc":Landroidx/slice/widget/GridContent;
    goto :goto_0

    .line 421
    :cond_0
    new-instance v1, Landroidx/slice/widget/RowContent;

    iget-object v2, p0, Landroidx/slice/widget/ListContent;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroidx/slice/widget/ListContent;->mHeaderItem:Landroidx/slice/SliceItem;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroidx/slice/widget/RowContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;Z)V

    .line 422
    .local v1, "rc":Landroidx/slice/widget/RowContent;
    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v0

    .line 425
    .end local v1    # "rc":Landroidx/slice/widget/RowContent;
    :cond_1
    :goto_0
    const-string v1, "action"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 426
    const-string/jumbo v3, "shortcut"

    const-string/jumbo v4, "title"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 427
    .local v3, "hints":[Ljava/lang/String;
    iget-object v4, p0, Landroidx/slice/widget/ListContent;->mSlice:Landroidx/slice/Slice;

    invoke-static {v4, v1, v3, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    .line 429
    .end local v3    # "hints":[Ljava/lang/String;
    :cond_2
    if-nez v0, :cond_3

    .line 430
    iget-object v3, p0, Landroidx/slice/widget/ListContent;->mSlice:Landroidx/slice/Slice;

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v1, v2, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    .line 432
    :cond_3
    return-object v0
.end method

.method public getRowItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSeeMoreItem()Landroidx/slice/SliceItem;
    .locals 1

    .line 344
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 1

    .line 319
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mSlice:Landroidx/slice/Slice;

    return-object v0
.end method

.method public getSliceActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation

    .line 339
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mSliceActions:Ljava/util/List;

    return-object v0
.end method

.method public getSmallHeight()I
    .locals 6

    .line 183
    iget-object v1, p0, Landroidx/slice/widget/ListContent;->mHeaderItem:Landroidx/slice/SliceItem;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/slice/widget/ListContent;->getHeight(Landroidx/slice/SliceItem;ZIII)I

    move-result v0

    return v0
.end method

.method public hasHeader()Z
    .locals 1

    .line 356
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mHeaderItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/slice/widget/ListContent;->isValidHeader(Landroidx/slice/SliceItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 314
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mSlice:Landroidx/slice/Slice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setMaxSmallHeight(I)V
    .locals 0
    .param p1, "maxSmallHeight"    # I

    .line 130
    iput p1, p0, Landroidx/slice/widget/ListContent;->mMaxSmallHeight:I

    .line 131
    return-void
.end method
