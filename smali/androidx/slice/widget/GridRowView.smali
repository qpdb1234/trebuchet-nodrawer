.class public Landroidx/slice/widget/GridRowView;
.super Landroidx/slice/widget/SliceChildView;
.source "GridRowView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final MAX_CELL_IMAGES:I = 0x1

.field private static final MAX_CELL_TEXT:I = 0x2

.field private static final MAX_CELL_TEXT_SMALL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GridRowView"

.field private static final TEXT_LAYOUT:I

.field private static final TITLE_TEXT_LAYOUT:I


# instance fields
.field private mForeground:Landroid/view/View;

.field private mGridContent:Landroidx/slice/widget/GridContent;

.field private mGutter:I

.field private mIconSize:I

.field private mLargeImageHeight:I

.field private mLoc:[I

.field mMaxCellUpdateScheduled:Z

.field mMaxCells:I

.field private mMaxCellsUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mRowCount:I

.field private mRowIndex:I

.field private mSmallImageMinWidth:I

.field private mSmallImageSize:I

.field private mTextPadding:I

.field private mViewContainer:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    sget v0, Landroidx/slice/view/R$layout;->abc_slice_title:I

    sput v0, Landroidx/slice/widget/GridRowView;->TITLE_TEXT_LAYOUT:I

    .line 76
    sget v0, Landroidx/slice/view/R$layout;->abc_slice_secondary_text:I

    sput v0, Landroidx/slice/widget/GridRowView;->TEXT_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/slice/widget/GridRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 108
    invoke-direct {p0, p1, p2}, Landroidx/slice/widget/SliceChildView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Landroidx/slice/widget/GridRowView;->mMaxCells:I

    .line 99
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/slice/widget/GridRowView;->mLoc:[I

    .line 560
    new-instance v1, Landroidx/slice/widget/GridRowView$1;

    invoke-direct {v1, p0}, Landroidx/slice/widget/GridRowView$1;-><init>(Landroidx/slice/widget/GridRowView;)V

    iput-object v1, p0, Landroidx/slice/widget/GridRowView;->mMaxCellsUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 109
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 110
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    .line 111
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 112
    iget-object v2, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Landroidx/slice/widget/GridRowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object v2, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 114
    sget v2, Landroidx/slice/view/R$dimen;->abc_slice_icon_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroidx/slice/widget/GridRowView;->mIconSize:I

    .line 115
    sget v2, Landroidx/slice/view/R$dimen;->abc_slice_small_image_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroidx/slice/widget/GridRowView;->mSmallImageSize:I

    .line 116
    sget v2, Landroidx/slice/view/R$dimen;->abc_slice_grid_image_only_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroidx/slice/widget/GridRowView;->mLargeImageHeight:I

    .line 117
    sget v2, Landroidx/slice/view/R$dimen;->abc_slice_grid_image_min_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroidx/slice/widget/GridRowView;->mSmallImageMinWidth:I

    .line 118
    sget v2, Landroidx/slice/view/R$dimen;->abc_slice_grid_gutter:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroidx/slice/widget/GridRowView;->mGutter:I

    .line 119
    sget v2, Landroidx/slice/view/R$dimen;->abc_slice_grid_text_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroidx/slice/widget/GridRowView;->mTextPadding:I

    .line 121
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/slice/widget/GridRowView;->mForeground:Landroid/view/View;

    .line 122
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Landroidx/slice/widget/GridRowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    return-void
.end method

.method private addCell(Landroidx/slice/widget/GridContent$CellContent;II)V
    .locals 26
    .param p1, "cell"    # Landroidx/slice/widget/GridContent$CellContent;
    .param p2, "index"    # I
    .param p3, "total"    # I

    .line 333
    move-object/from16 v6, p0

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/GridRowView;->getMode()I

    move-result v0

    const/4 v10, 0x1

    if-ne v0, v10, :cond_0

    iget-object v0, v6, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    move v11, v0

    .line 335
    .local v11, "maxCellText":I
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v12, v0

    .line 336
    .local v12, "cellContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 337
    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 339
    invoke-virtual/range {p1 .. p1}, Landroidx/slice/widget/GridContent$CellContent;->getCellItems()Ljava/util/ArrayList;

    move-result-object v13

    .line 340
    .local v13, "cellItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/slice/SliceItem;>;"
    invoke-virtual/range {p1 .. p1}, Landroidx/slice/widget/GridContent$CellContent;->getContentIntent()Landroidx/slice/SliceItem;

    move-result-object v14

    .line 342
    .local v14, "contentIntentItem":Landroidx/slice/SliceItem;
    const/4 v0, 0x0

    .line 343
    .local v0, "textCount":I
    const/4 v1, 0x0

    .line 344
    .local v1, "imageCount":I
    const/4 v2, 0x0

    .line 345
    .local v2, "added":Z
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v10, :cond_1

    move v3, v10

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    move/from16 v16, v3

    .line 346
    .local v16, "isSingleItem":Z
    const/4 v3, 0x0

    .line 348
    .local v3, "textItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    const-string/jumbo v5, "text"

    if-nez v16, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/GridRowView;->getMode()I

    move-result v4

    if-ne v4, v10, :cond_6

    .line 350
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    .line 351
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v9, v17

    check-cast v9, Landroidx/slice/SliceItem;

    .line 352
    .local v9, "cellItem":Landroidx/slice/SliceItem;
    invoke-virtual {v9}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 353
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    .end local v9    # "cellItem":Landroidx/slice/SliceItem;
    :cond_2
    goto :goto_2

    .line 357
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 358
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/slice/SliceItem;>;"
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v11, :cond_5

    .line 359
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/slice/SliceItem;

    .line 360
    .local v9, "item":Landroidx/slice/SliceItem;
    const-string/jumbo v15, "title"

    const-string v10, "large"

    filled-new-array {v15, v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 361
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 363
    .end local v9    # "item":Landroidx/slice/SliceItem;
    :cond_4
    const/4 v10, 0x1

    goto :goto_3

    .line 358
    :cond_5
    move-object v9, v3

    goto :goto_4

    .line 365
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/slice/SliceItem;>;"
    :cond_6
    move-object v9, v3

    .end local v3    # "textItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    .local v9, "textItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    :goto_4
    const/4 v3, 0x0

    .line 366
    .local v3, "prevItem":Landroidx/slice/SliceItem;
    const/4 v4, 0x0

    move v10, v0

    move v15, v1

    move/from16 v18, v2

    move/from16 v25, v4

    move-object v4, v3

    move/from16 v3, v25

    .end local v0    # "textCount":I
    .end local v1    # "imageCount":I
    .end local v2    # "added":Z
    .local v3, "i":I
    .local v4, "prevItem":Landroidx/slice/SliceItem;
    .local v10, "textCount":I
    .local v15, "imageCount":I
    .local v18, "added":Z
    :goto_5
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_c

    .line 367
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/slice/SliceItem;

    .line 368
    .local v2, "item":Landroidx/slice/SliceItem;
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, "itemFormat":Ljava/lang/String;
    invoke-direct {v6, v4}, Landroidx/slice/widget/GridRowView;->determinePadding(Landroidx/slice/SliceItem;)I

    move-result v19

    .line 370
    .local v19, "padding":I
    if-ge v10, v11, :cond_a

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 371
    const-string v0, "long"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_6

    :cond_7
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move/from16 v20, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    goto :goto_7

    .line 372
    :cond_8
    :goto_6
    if-eqz v9, :cond_9

    invoke-interface {v9, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 373
    move/from16 v20, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    goto/16 :goto_8

    .line 375
    :cond_9
    iget v0, v6, Landroidx/slice/widget/GridRowView;->mTintColor:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v21, v1

    .end local v1    # "itemFormat":Ljava/lang/String;
    .local v21, "itemFormat":Ljava/lang/String;
    move-object v1, v2

    move-object/from16 v22, v2

    .end local v2    # "item":Landroidx/slice/SliceItem;
    .local v22, "item":Landroidx/slice/SliceItem;
    move/from16 v2, v20

    move/from16 v20, v3

    .end local v3    # "i":I
    .local v20, "i":I
    move-object v3, v12

    move-object/from16 v23, v4

    .end local v4    # "prevItem":Landroidx/slice/SliceItem;
    .local v23, "prevItem":Landroidx/slice/SliceItem;
    move/from16 v4, v19

    move-object/from16 v24, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Landroidx/slice/widget/GridRowView;->addItem(Landroidx/slice/SliceItem;ILandroid/view/ViewGroup;IZ)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 376
    move-object/from16 v0, v22

    .line 377
    .end local v23    # "prevItem":Landroidx/slice/SliceItem;
    .local v0, "prevItem":Landroidx/slice/SliceItem;
    add-int/lit8 v10, v10, 0x1

    .line 378
    const/4 v1, 0x1

    move-object v4, v0

    move/from16 v18, v1

    .end local v18    # "added":Z
    .local v1, "added":Z
    goto :goto_9

    .line 370
    .end local v0    # "prevItem":Landroidx/slice/SliceItem;
    .end local v20    # "i":I
    .end local v21    # "itemFormat":Ljava/lang/String;
    .end local v22    # "item":Landroidx/slice/SliceItem;
    .local v1, "itemFormat":Ljava/lang/String;
    .restart local v2    # "item":Landroidx/slice/SliceItem;
    .restart local v3    # "i":I
    .restart local v4    # "prevItem":Landroidx/slice/SliceItem;
    .restart local v18    # "added":Z
    :cond_a
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move/from16 v20, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    .line 380
    .end local v1    # "itemFormat":Ljava/lang/String;
    .end local v2    # "item":Landroidx/slice/SliceItem;
    .end local v3    # "i":I
    .end local v4    # "prevItem":Landroidx/slice/SliceItem;
    .restart local v20    # "i":I
    .restart local v21    # "itemFormat":Ljava/lang/String;
    .restart local v22    # "item":Landroidx/slice/SliceItem;
    .restart local v23    # "prevItem":Landroidx/slice/SliceItem;
    :goto_7
    const/4 v0, 0x1

    if-ge v15, v0, :cond_b

    const-string v0, "image"

    invoke-virtual/range {v22 .. v22}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 381
    iget v2, v6, Landroidx/slice/widget/GridRowView;->mTintColor:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object v3, v12

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Landroidx/slice/widget/GridRowView;->addItem(Landroidx/slice/SliceItem;ILandroid/view/ViewGroup;IZ)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 382
    move-object/from16 v0, v22

    .line 383
    .end local v23    # "prevItem":Landroidx/slice/SliceItem;
    .restart local v0    # "prevItem":Landroidx/slice/SliceItem;
    add-int/lit8 v15, v15, 0x1

    .line 384
    const/4 v1, 0x1

    move-object v4, v0

    move/from16 v18, v1

    .end local v18    # "added":Z
    .local v1, "added":Z
    goto :goto_9

    .line 366
    .end local v0    # "prevItem":Landroidx/slice/SliceItem;
    .end local v1    # "added":Z
    .end local v19    # "padding":I
    .end local v21    # "itemFormat":Ljava/lang/String;
    .end local v22    # "item":Landroidx/slice/SliceItem;
    .restart local v18    # "added":Z
    .restart local v23    # "prevItem":Landroidx/slice/SliceItem;
    :cond_b
    :goto_8
    move-object/from16 v4, v23

    .end local v23    # "prevItem":Landroidx/slice/SliceItem;
    .restart local v4    # "prevItem":Landroidx/slice/SliceItem;
    :goto_9
    add-int/lit8 v3, v20, 0x1

    move-object/from16 v5, v24

    .end local v20    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_5

    :cond_c
    move/from16 v20, v3

    move-object/from16 v23, v4

    .line 388
    .end local v3    # "i":I
    .end local v4    # "prevItem":Landroidx/slice/SliceItem;
    .restart local v23    # "prevItem":Landroidx/slice/SliceItem;
    if-eqz v18, :cond_f

    .line 389
    invoke-virtual/range {p1 .. p1}, Landroidx/slice/widget/GridContent$CellContent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 390
    .local v0, "contentDescr":Ljava/lang/CharSequence;
    if-eqz v0, :cond_d

    .line 391
    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 393
    :cond_d
    iget-object v1, v6, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v12, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    add-int/lit8 v1, v8, -0x1

    if-eq v7, v1, :cond_e

    .line 397
    nop

    .line 398
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 399
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, v6, Landroidx/slice/widget/GridRowView;->mGutter:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 400
    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    .end local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_e
    if-eqz v14, :cond_f

    .line 403
    new-instance v1, Landroidx/slice/widget/EventInfo;

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/GridRowView;->getMode()I

    move-result v2

    iget v3, v6, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v4, v3}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    .line 405
    .local v1, "info":Landroidx/slice/widget/EventInfo;
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v7, v8}, Landroidx/slice/widget/EventInfo;->setPosition(III)V

    .line 406
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v14, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 407
    .local v2, "tagItem":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/slice/SliceItem;Landroidx/slice/widget/EventInfo;>;"
    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 408
    invoke-direct {v6, v12, v4}, Landroidx/slice/widget/GridRowView;->makeClickable(Landroid/view/View;Z)V

    .line 411
    .end local v0    # "contentDescr":Ljava/lang/CharSequence;
    .end local v1    # "info":Landroidx/slice/widget/EventInfo;
    .end local v2    # "tagItem":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/slice/SliceItem;Landroidx/slice/widget/EventInfo;>;"
    :cond_f
    return-void
.end method

.method private addItem(Landroidx/slice/SliceItem;ILandroid/view/ViewGroup;IZ)Z
    .locals 15
    .param p1, "item"    # Landroidx/slice/SliceItem;
    .param p2, "color"    # I
    .param p3, "container"    # Landroid/view/ViewGroup;
    .param p4, "padding"    # I
    .param p5, "isSingle"    # Z

    .line 425
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p1 .. p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v4

    .line 426
    .local v4, "format":Ljava/lang/String;
    const/4 v5, 0x0

    .line 427
    .local v5, "addedView":Landroid/view/View;
    const-string/jumbo v6, "text"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    const-string v8, "long"

    const-string v9, "large"

    const/4 v10, 0x0

    if-nez v6, :cond_7

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_4

    .line 444
    :cond_0
    const-string v6, "image"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 445
    invoke-virtual/range {p1 .. p1}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v6

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 446
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_6

    .line 447
    new-instance v8, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 448
    .local v8, "iv":Landroid/widget/ImageView;
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 450
    invoke-virtual {v1, v9}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v9

    const-string v11, "no_tint"

    const/4 v12, -0x1

    if-eqz v9, :cond_2

    .line 451
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 452
    if-eqz p5, :cond_1

    move v9, v12

    goto :goto_0

    :cond_1
    iget v9, v0, Landroidx/slice/widget/GridRowView;->mLargeImageHeight:I

    .line 453
    .local v9, "height":I
    :goto_0
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v12, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v9, v13

    .line 454
    .local v9, "lp":Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_3

    .line 455
    .end local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    invoke-virtual {v1, v11}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v9

    xor-int/2addr v9, v7

    .line 456
    .local v9, "isIcon":Z
    if-eqz v9, :cond_3

    iget v13, v0, Landroidx/slice/widget/GridRowView;->mIconSize:I

    goto :goto_1

    :cond_3
    iget v13, v0, Landroidx/slice/widget/GridRowView;->mSmallImageSize:I

    .line 457
    .local v13, "size":I
    :goto_1
    if-eqz v9, :cond_4

    sget-object v14, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    goto :goto_2

    :cond_4
    sget-object v14, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    :goto_2
    invoke-virtual {v8, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 458
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v9, v14

    .line 460
    .end local v13    # "size":I
    .local v9, "lp":Landroid/widget/LinearLayout$LayoutParams;
    :goto_3
    if-eq v2, v12, :cond_5

    invoke-virtual {v1, v11}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 461
    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 463
    :cond_5
    invoke-virtual {v3, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    move-object v5, v8

    move/from16 v11, p4

    goto/16 :goto_9

    .line 467
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    .end local v8    # "iv":Landroid/widget/ImageView;
    .end local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    move/from16 v11, p4

    goto/16 :goto_9

    .line 428
    :cond_7
    :goto_4
    const-string/jumbo v6, "title"

    filled-new-array {v9, v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroidx/slice/core/SliceQuery;->hasAnyHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    move-result v6

    .line 429
    .local v6, "isTitle":Z
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    if-eqz v6, :cond_8

    sget v11, Landroidx/slice/widget/GridRowView;->TITLE_TEXT_LAYOUT:I

    goto :goto_5

    :cond_8
    sget v11, Landroidx/slice/widget/GridRowView;->TEXT_LAYOUT:I

    :goto_5
    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 431
    .local v9, "tv":Landroid/widget/TextView;
    iget-object v11, v0, Landroidx/slice/widget/GridRowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v11, :cond_b

    .line 432
    if-eqz v6, :cond_9

    iget-object v11, v0, Landroidx/slice/widget/GridRowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 433
    invoke-virtual {v11}, Landroidx/slice/widget/SliceStyle;->getGridTitleSize()I

    move-result v11

    goto :goto_6

    :cond_9
    iget-object v11, v0, Landroidx/slice/widget/GridRowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v11}, Landroidx/slice/widget/SliceStyle;->getGridSubtitleSize()I

    move-result v11

    :goto_6
    int-to-float v11, v11

    .line 432
    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 434
    if-eqz v6, :cond_a

    iget-object v11, v0, Landroidx/slice/widget/GridRowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 435
    invoke-virtual {v11}, Landroidx/slice/widget/SliceStyle;->getTitleColor()I

    move-result v11

    goto :goto_7

    :cond_a
    iget-object v11, v0, Landroidx/slice/widget/GridRowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v11}, Landroidx/slice/widget/SliceStyle;->getSubtitleColor()I

    move-result v11

    .line 434
    :goto_7
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 437
    :cond_b
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 438
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v11

    invoke-static {v8, v11, v12}, Landroidx/slice/widget/SliceViewUtil;->getTimestampString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_8

    .line 439
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    :goto_8
    nop

    .line 440
    .local v8, "text":Ljava/lang/CharSequence;
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 442
    move/from16 v11, p4

    invoke-virtual {v9, v10, v11, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 443
    move-object v5, v9

    .line 444
    .end local v6    # "isTitle":Z
    .end local v8    # "text":Ljava/lang/CharSequence;
    .end local v9    # "tv":Landroid/widget/TextView;
    nop

    .line 467
    :goto_9
    if-eqz v5, :cond_d

    goto :goto_a

    :cond_d
    move v7, v10

    :goto_a
    return v7
.end method

.method private addSeeMoreCount(I)V
    .locals 13
    .param p1, "numExtra"    # I

    .line 282
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 283
    .local v0, "last":Landroid/view/View;
    iget-object v1, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 285
    iget-object v1, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v1}, Landroidx/slice/widget/GridContent;->getSeeMoreItem()Landroidx/slice/SliceItem;

    move-result-object v1

    .line 286
    .local v1, "seeMoreItem":Landroidx/slice/SliceItem;
    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 287
    .local v3, "index":I
    iget v4, p0, Landroidx/slice/widget/GridRowView;->mMaxCells:I

    .line 288
    .local v4, "total":I
    const-string/jumbo v5, "slice"

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 289
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v5

    const-string v6, "action"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 290
    :cond_0
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 292
    new-instance v2, Landroidx/slice/widget/GridContent$CellContent;

    invoke-direct {v2, v1}, Landroidx/slice/widget/GridContent$CellContent;-><init>(Landroidx/slice/SliceItem;)V

    invoke-direct {p0, v2, v3, v4}, Landroidx/slice/widget/GridRowView;->addCell(Landroidx/slice/widget/GridContent$CellContent;II)V

    .line 293
    return-void

    .line 297
    :cond_1
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 300
    .local v5, "inflater":Landroid/view/LayoutInflater;
    iget-object v6, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v6}, Landroidx/slice/widget/GridContent;->isAllImages()Z

    move-result v6

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    .line 301
    sget v6, Landroidx/slice/view/R$layout;->abc_slice_grid_see_more_overlay:I

    iget-object v9, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 303
    .local v6, "seeMoreView":Landroid/view/ViewGroup;
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 304
    sget v9, Landroidx/slice/view/R$id;->text_see_more_count:I

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .local v9, "extraText":Landroid/widget/TextView;
    goto :goto_0

    .line 306
    .end local v6    # "seeMoreView":Landroid/view/ViewGroup;
    .end local v9    # "extraText":Landroid/widget/TextView;
    :cond_2
    sget v6, Landroidx/slice/view/R$layout;->abc_slice_grid_see_more:I

    iget-object v9, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 308
    .restart local v6    # "seeMoreView":Landroid/view/ViewGroup;
    sget v9, Landroidx/slice/view/R$id;->text_see_more_count:I

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 311
    .restart local v9    # "extraText":Landroid/widget/TextView;
    sget v10, Landroidx/slice/view/R$id;->text_see_more:I

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 312
    .local v10, "moreText":Landroid/widget/TextView;
    iget-object v11, p0, Landroidx/slice/widget/GridRowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v11, :cond_3

    .line 313
    iget-object v11, p0, Landroidx/slice/widget/GridRowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v11}, Landroidx/slice/widget/SliceStyle;->getGridTitleSize()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v10, v8, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 314
    iget-object v11, p0, Landroidx/slice/widget/GridRowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v11}, Landroidx/slice/widget/SliceStyle;->getTitleColor()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 317
    .end local v10    # "moreText":Landroid/widget/TextView;
    :cond_3
    :goto_0
    iget-object v10, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v11, v8, v7, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v10, v6, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Landroidx/slice/view/R$string;->abc_slice_more_content:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    new-instance v7, Landroidx/slice/widget/EventInfo;

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getMode()I

    move-result v8

    const/4 v10, 0x4

    iget v11, p0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    invoke-direct {v7, v8, v10, v2, v11}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    .line 323
    .local v7, "info":Landroidx/slice/widget/EventInfo;
    const/4 v8, 0x2

    invoke-virtual {v7, v8, v3, v4}, Landroidx/slice/widget/EventInfo;->setPosition(III)V

    .line 324
    new-instance v8, Landroid/util/Pair;

    invoke-direct {v8, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 325
    .local v8, "tagItem":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/slice/SliceItem;Landroidx/slice/widget/EventInfo;>;"
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 326
    invoke-direct {p0, v6, v2}, Landroidx/slice/widget/GridRowView;->makeClickable(Landroid/view/View;Z)V

    .line 327
    return-void
.end method

.method private determinePadding(Landroidx/slice/SliceItem;)I
    .locals 3
    .param p1, "prevItem"    # Landroidx/slice/SliceItem;

    .line 471
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 473
    return v0

    .line 474
    :cond_0
    const-string v1, "image"

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 475
    iget v0, p0, Landroidx/slice/widget/GridRowView;->mTextPadding:I

    return v0

    .line 476
    :cond_1
    const-string/jumbo v1, "text"

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 477
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "long"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 480
    :cond_2
    return v0

    .line 478
    :cond_3
    :goto_0
    iget-object v1, p0, Landroidx/slice/widget/GridRowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v1, :cond_4

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceStyle;->getVerticalGridTextPadding()I

    move-result v0

    :cond_4
    return v0
.end method

.method private getExtraBottomPadding()I
    .locals 4

    .line 159
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->isAllImages()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    iget v0, p0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    iget v2, p0, Landroidx/slice/widget/GridRowView;->mRowCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getMode()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 161
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceStyle;->getGridBottomPadding()I

    move-result v1

    :cond_1
    return v1

    .line 164
    :cond_2
    return v1
.end method

.method private getExtraTopPadding()I
    .locals 2

    .line 149
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->isAllImages()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget v0, p0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    if-nez v0, :cond_1

    .line 152
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceStyle;->getGridTopPadding()I

    move-result v1

    :cond_0
    return v1

    .line 155
    :cond_1
    return v1
.end method

.method private makeClickable(Landroid/view/View;Z)V
    .locals 2
    .param p1, "layout"    # Landroid/view/View;
    .param p2, "isClickable"    # Z

    .line 494
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    const v1, 0x101030e

    .line 496
    .local v1, "backgroundAttr":I
    nop

    .line 497
    const v1, 0x101045c

    .line 499
    if-eqz p2, :cond_1

    .line 500
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/slice/widget/SliceViewUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_1
    nop

    .line 499
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 502
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 503
    return-void
.end method

.method private makeEntireGridClickable(Z)V
    .locals 3
    .param p1, "isClickable"    # Z

    .line 484
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move-object v2, p0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 485
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    move-object v2, p0

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mForeground:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 488
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 487
    const v2, 0x101030e

    invoke-static {v1, v2}, Landroidx/slice/widget/SliceViewUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    :cond_2
    nop

    .line 486
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 490
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 491
    return-void
.end method

.method private onForegroundActivated(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 533
    nop

    .line 534
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mForeground:Landroid/view/View;

    iget-object v1, p0, Landroidx/slice/widget/GridRowView;->mLoc:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 535
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v1, p0, Landroidx/slice/widget/GridRowView;->mLoc:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 536
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mLoc:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    sub-float/2addr v1, v3

    float-to-int v1, v1

    .line 537
    .local v1, "y":I
    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mForeground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    int-to-float v5, v0

    int-to-float v6, v1

    invoke-virtual {v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 539
    .end local v0    # "x":I
    .end local v1    # "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 540
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 541
    iget-object v1, p0, Landroidx/slice/widget/GridRowView;->mForeground:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 542
    :cond_0
    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    if-eq v0, v4, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 545
    :cond_1
    iget-object v1, p0, Landroidx/slice/widget/GridRowView;->mForeground:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 547
    :cond_2
    :goto_0
    return-void
.end method

.method private scheduleMaxCellsUpdate()Z
    .locals 3

    .line 210
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    .line 215
    iput-boolean v1, p0, Landroidx/slice/widget/GridRowView;->mMaxCellUpdateScheduled:Z

    .line 216
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Landroidx/slice/widget/GridRowView;->mMaxCellsUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 217
    return v1

    .line 219
    :cond_1
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getMaxCells()I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridRowView;->mMaxCells:I

    .line 220
    const/4 v0, 0x0

    return v0

    .line 211
    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public getActualHeight()I
    .locals 2

    .line 142
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    if-nez v0, :cond_0

    .line 143
    const/4 v0, 0x0

    return v0

    .line 145
    :cond_0
    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->getActualHeight()I

    move-result v0

    invoke-direct {p0}, Landroidx/slice/widget/GridRowView;->getExtraTopPadding()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Landroidx/slice/widget/GridRowView;->getExtraBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method getMaxCells()I
    .locals 4

    .line 225
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 228
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->getGridContent()Ljava/util/ArrayList;

    move-result-object v0

    .line 229
    .local v0, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/slice/widget/GridContent$CellContent;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 230
    iget-object v1, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v1}, Landroidx/slice/widget/GridContent;->getLargestImageMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroidx/slice/widget/GridRowView;->mLargeImageHeight:I

    goto :goto_0

    :cond_1
    iget v1, p0, Landroidx/slice/widget/GridRowView;->mSmallImageMinWidth:I

    .line 233
    .local v1, "desiredCellWidth":I
    :goto_0
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getWidth()I

    move-result v2

    iget v3, p0, Landroidx/slice/widget/GridRowView;->mGutter:I

    add-int/2addr v3, v1

    div-int/2addr v2, v3

    return v2

    .line 235
    .end local v1    # "desiredCellWidth":I
    :cond_2
    return v2

    .line 226
    .end local v0    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/slice/widget/GridContent$CellContent;>;"
    :cond_3
    :goto_1
    const/4 v0, -0x1

    return v0
.end method

.method public getSmallHeight()I
    .locals 2

    .line 134
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    if-nez v0, :cond_0

    .line 135
    const/4 v0, 0x0

    return v0

    .line 137
    :cond_0
    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->getSmallHeight()I

    move-result v0

    invoke-direct {p0}, Landroidx/slice/widget/GridRowView;->getExtraTopPadding()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Landroidx/slice/widget/GridRowView;->getExtraBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .line 507
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 508
    .local v0, "tagItem":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/slice/SliceItem;Landroidx/slice/widget/EventInfo;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroidx/slice/SliceItem;

    .line 509
    .local v1, "sliceItem":Landroidx/slice/SliceItem;
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroidx/slice/widget/EventInfo;

    .line 510
    .local v2, "info":Landroidx/slice/widget/EventInfo;
    if-eqz v1, :cond_1

    .line 511
    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    const-string v4, "action"

    invoke-static {v1, v4, v3, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    .line 513
    .local v4, "actionItem":Landroidx/slice/SliceItem;
    if-eqz v4, :cond_1

    .line 515
    :try_start_0
    invoke-virtual {v4, v3, v3}, Landroidx/slice/SliceItem;->fireAction(Landroid/content/Context;Landroid/content/Intent;)V

    .line 516
    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    if-eqz v3, :cond_0

    .line 517
    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    invoke-interface {v3, v2, v4}, Landroidx/slice/widget/SliceView$OnSliceActionListener;->onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    :cond_0
    goto :goto_0

    .line 519
    :catch_0
    move-exception v3

    .line 520
    .local v3, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v5, "GridRowView"

    const-string v6, "PendingIntent for slice cannot be sent"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 524
    .end local v3    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v4    # "actionItem":Landroidx/slice/SliceItem;
    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 169
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getSmallHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getActualHeight()I

    move-result v0

    .line 170
    .local v0, "height":I
    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 171
    iget-object v1, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 172
    invoke-super {p0, p1, p2}, Landroidx/slice/widget/SliceChildView;->onMeasure(II)V

    .line 173
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 528
    invoke-direct {p0, p2}, Landroidx/slice/widget/GridRowView;->onForegroundActivated(Landroid/view/MotionEvent;)V

    .line 529
    const/4 v0, 0x0

    return v0
.end method

.method populateViews()V
    .locals 7

    .line 240
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 244
    :cond_0
    invoke-direct {p0}, Landroidx/slice/widget/GridRowView;->scheduleMaxCellsUpdate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->getLayoutDirItem()Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->getLayoutDirItem()Landroidx/slice/SliceItem;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/slice/widget/GridRowView;->setLayoutDirection(I)V

    .line 250
    :cond_2
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->getContentIntent()Landroidx/slice/SliceItem;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 251
    new-instance v0, Landroidx/slice/widget/EventInfo;

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getMode()I

    move-result v2

    const/4 v3, 0x3

    iget v4, p0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    invoke-direct {v0, v2, v3, v1, v4}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    .line 253
    .local v0, "info":Landroidx/slice/widget/EventInfo;
    new-instance v2, Landroid/util/Pair;

    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v3}, Landroidx/slice/widget/GridContent;->getContentIntent()Landroidx/slice/SliceItem;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 254
    .local v2, "tagItem":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/slice/SliceItem;Landroidx/slice/widget/EventInfo;>;"
    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 255
    invoke-direct {p0, v1}, Landroidx/slice/widget/GridRowView;->makeEntireGridClickable(Z)V

    .line 257
    .end local v0    # "info":Landroidx/slice/widget/EventInfo;
    .end local v2    # "tagItem":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/slice/SliceItem;Landroidx/slice/widget/EventInfo;>;"
    :cond_3
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 258
    .local v0, "contentDescr":Ljava/lang/CharSequence;
    if-eqz v0, :cond_4

    .line 259
    iget-object v2, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 261
    :cond_4
    iget-object v2, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v2}, Landroidx/slice/widget/GridContent;->getGridContent()Ljava/util/ArrayList;

    move-result-object v2

    .line 262
    .local v2, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/slice/widget/GridContent$CellContent;>;"
    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v3}, Landroidx/slice/widget/GridContent;->getLargestImageMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 263
    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0

    .line 265
    :cond_5
    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 267
    :goto_0
    iget v3, p0, Landroidx/slice/widget/GridRowView;->mMaxCells:I

    .line 268
    .local v3, "maxCells":I
    iget-object v4, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v4}, Landroidx/slice/widget/GridContent;->getSeeMoreItem()Landroidx/slice/SliceItem;

    move-result-object v4

    if-eqz v4, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    .line 269
    .local v1, "hasSeeMore":Z
    :goto_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 270
    iget-object v5, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-lt v5, v3, :cond_7

    .line 271
    if-eqz v1, :cond_8

    .line 272
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-direct {p0, v5}, Landroidx/slice/widget/GridRowView;->addSeeMoreCount(I)V

    goto :goto_3

    .line 276
    :cond_7
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/slice/widget/GridContent$CellContent;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-direct {p0, v5, v4, v6}, Landroidx/slice/widget/GridRowView;->addCell(Landroidx/slice/widget/GridContent$CellContent;II)V

    .line 269
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 278
    .end local v4    # "i":I
    :cond_8
    :goto_3
    return-void

    .line 241
    .end local v0    # "contentDescr":Ljava/lang/CharSequence;
    .end local v1    # "hasSeeMore":Z
    .end local v2    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/slice/widget/GridContent$CellContent;>;"
    .end local v3    # "maxCells":I
    :cond_9
    :goto_4
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->resetView()V

    .line 242
    return-void
.end method

.method public resetView()V
    .locals 3

    .line 551
    iget-boolean v0, p0, Landroidx/slice/widget/GridRowView;->mMaxCellUpdateScheduled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 552
    iput-boolean v1, p0, Landroidx/slice/widget/GridRowView;->mMaxCellUpdateScheduled:Z

    .line 553
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Landroidx/slice/widget/GridRowView;->mMaxCellsUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 555
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 556
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/slice/widget/GridRowView;->setLayoutDirection(I)V

    .line 557
    invoke-direct {p0, v1}, Landroidx/slice/widget/GridRowView;->makeEntireGridClickable(Z)V

    .line 558
    return-void
.end method

.method public setInsets(IIII)V
    .locals 3
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/slice/widget/SliceChildView;->setInsets(IIII)V

    .line 128
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Landroidx/slice/widget/GridRowView;->getExtraTopPadding()I

    move-result v1

    add-int/2addr v1, p2

    invoke-direct {p0}, Landroidx/slice/widget/GridRowView;->getExtraBottomPadding()I

    move-result v2

    add-int/2addr v2, p4

    invoke-virtual {v0, p1, v1, p3, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 129
    return-void
.end method

.method public setSliceItem(Landroidx/slice/SliceItem;ZIILandroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 6
    .param p1, "slice"    # Landroidx/slice/SliceItem;
    .param p2, "isHeader"    # Z
    .param p3, "rowIndex"    # I
    .param p4, "rowCount"    # I
    .param p5, "observer"    # Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 191
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->resetView()V

    .line 192
    invoke-virtual {p0, p5}, Landroidx/slice/widget/GridRowView;->setSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    .line 193
    iput p3, p0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    .line 194
    iput p4, p0, Landroidx/slice/widget/GridRowView;->mRowCount:I

    .line 195
    new-instance v0, Landroidx/slice/widget/GridContent;

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/slice/widget/GridContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;)V

    iput-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    .line 197
    invoke-direct {p0}, Landroidx/slice/widget/GridRowView;->scheduleMaxCellsUpdate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->populateViews()V

    .line 200
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    iget v1, p0, Landroidx/slice/widget/GridRowView;->mInsetStart:I

    iget v2, p0, Landroidx/slice/widget/GridRowView;->mInsetTop:I

    invoke-direct {p0}, Landroidx/slice/widget/GridRowView;->getExtraTopPadding()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Landroidx/slice/widget/GridRowView;->mInsetEnd:I

    iget v4, p0, Landroidx/slice/widget/GridRowView;->mInsetBottom:I

    .line 201
    invoke-direct {p0}, Landroidx/slice/widget/GridRowView;->getExtraBottomPadding()I

    move-result v5

    add-int/2addr v4, v5

    .line 200
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 202
    return-void
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "tintColor"    # I

    .line 177
    invoke-super {p0, p1}, Landroidx/slice/widget/SliceChildView;->setTint(I)V

    .line 178
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->resetView()V

    .line 181
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->populateViews()V

    .line 183
    :cond_0
    return-void
.end method
