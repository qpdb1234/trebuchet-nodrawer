.class public Landroidx/slice/widget/RowView;
.super Landroidx/slice/widget/SliceChildView;
.source "RowView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MAX_END_ITEMS:I = 0x3

.field private static final SLIDER_INTERVAL:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "RowView"

.field private static final sCanSpecifyLargerRangeBarHeight:Z


# instance fields
.field private mActionSpinner:Landroid/widget/ProgressBar;

.field private mActions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroidx/slice/core/SliceActionImpl;",
            "Landroidx/slice/widget/SliceActionView;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowTwoLines:Z

.field private mContent:Landroid/widget/LinearLayout;

.field private mDivider:Landroid/view/View;

.field private mEndContainer:Landroid/widget/LinearLayout;

.field mHandler:Landroid/os/Handler;

.field private mHeaderActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation
.end field

.field private mIconSize:I

.field private mIdealRangeHeight:I

.field private mImageSize:I

.field private mIsHeader:Z

.field mIsRangeSliding:Z

.field private mIsSingleItem:Z

.field mLastSentRangeUpdate:J

.field private mLastUpdatedText:Landroid/widget/TextView;

.field protected mLoadingActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxSmallHeight:I

.field private mMeasuredRangeHeight:I

.field private mPrimaryText:Landroid/widget/TextView;

.field private mRangeBar:Landroid/widget/ProgressBar;

.field mRangeHasPendingUpdate:Z

.field private mRangeItem:Landroidx/slice/SliceItem;

.field mRangeMinValue:I

.field mRangeUpdater:Ljava/lang/Runnable;

.field mRangeUpdaterRunning:Z

.field mRangeValue:I

.field private mRootView:Landroid/widget/LinearLayout;

.field private mRowAction:Landroidx/slice/core/SliceActionImpl;

.field mRowContent:Landroidx/slice/widget/RowContent;

.field mRowIndex:I

.field private mSecondaryText:Landroid/widget/TextView;

.field private mSeeMoreView:Landroid/view/View;

.field private mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field mShowActionSpinner:Z

.field private mStartContainer:Landroid/widget/LinearLayout;

.field private mStartItem:Landroidx/slice/SliceItem;

.field private mToggles:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroidx/slice/core/SliceActionImpl;",
            "Landroidx/slice/widget/SliceActionView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 100
    const/4 v0, 0x1

    sput-boolean v0, Landroidx/slice/widget/RowView;->sCanSpecifyLargerRangeBarHeight:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 160
    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceChildView;-><init>(Landroid/content/Context;)V

    .line 110
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    .line 111
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    .line 116
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    .line 885
    new-instance v0, Landroidx/slice/widget/RowView$2;

    invoke-direct {v0, p0}, Landroidx/slice/widget/RowView$2;-><init>(Landroidx/slice/widget/RowView;)V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mRangeUpdater:Ljava/lang/Runnable;

    .line 893
    new-instance v0, Landroidx/slice/widget/RowView$3;

    invoke-direct {v0, p0}, Landroidx/slice/widget/RowView$3;-><init>(Landroidx/slice/widget/RowView;)V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 161
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/RowView;->mIconSize:I

    .line 162
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_small_image_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/RowView;->mImageSize:I

    .line 164
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$layout;->abc_slice_small_template:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    .line 166
    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->addView(Landroid/view/View;)V

    .line 168
    sget v0, Landroidx/slice/view/R$id;->icon_frame:I

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mStartContainer:Landroid/widget/LinearLayout;

    .line 169
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mContent:Landroid/widget/LinearLayout;

    .line 170
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    .line 171
    const v0, 0x1020010

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    .line 172
    sget v0, Landroidx/slice/view/R$id;->last_updated:I

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    .line 173
    sget v0, Landroidx/slice/view/R$id;->divider:I

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mDivider:Landroid/view/View;

    .line 174
    sget v0, Landroidx/slice/view/R$id;->action_sent_indicator:I

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mActionSpinner:Landroid/widget/ProgressBar;

    .line 175
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mActionSpinner:Landroid/widget/ProgressBar;

    invoke-static {v0, v1}, Landroidx/slice/widget/SliceViewUtil;->tintIndeterminateProgressBar(Landroid/content/Context;Landroid/widget/ProgressBar;)V

    .line 176
    const v0, 0x1020018

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_row_range_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/RowView;->mIdealRangeHeight:I

    .line 180
    return-void
.end method

.method private addAction(Landroidx/slice/core/SliceActionImpl;ILandroid/view/ViewGroup;Z)V
    .locals 15
    .param p1, "actionContent"    # Landroidx/slice/core/SliceActionImpl;
    .param p2, "color"    # I
    .param p3, "container"    # Landroid/view/ViewGroup;
    .param p4, "isStart"    # Z

    .line 664
    move-object v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    new-instance v1, Landroidx/slice/widget/SliceActionView;

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/slice/widget/SliceActionView;-><init>(Landroid/content/Context;)V

    move-object v9, v1

    .line 665
    .local v9, "sav":Landroidx/slice/widget/SliceActionView;
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 666
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 667
    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 670
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result v10

    .line 671
    .local v10, "isToggle":Z
    xor-int/lit8 v1, v10, 0x1

    move v11, v1

    .line 672
    .local v11, "actionType":I
    if-eqz v10, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    move v12, v1

    .line 673
    .local v12, "rowType":I
    new-instance v1, Landroidx/slice/widget/EventInfo;

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getMode()I

    move-result v2

    iget v4, v0, Landroidx/slice/widget/RowView;->mRowIndex:I

    invoke-direct {v1, v2, v11, v12, v4}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    move-object v13, v1

    .line 674
    .local v13, "info":Landroidx/slice/widget/EventInfo;
    const/4 v14, 0x1

    if-eqz p4, :cond_2

    .line 675
    invoke-virtual {v13, v3, v3, v14}, Landroidx/slice/widget/EventInfo;->setPosition(III)V

    .line 677
    :cond_2
    iget-object v4, v0, Landroidx/slice/widget/RowView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    iget-object v6, v0, Landroidx/slice/widget/RowView;->mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    move-object v1, v9

    move-object/from16 v2, p1

    move-object v3, v13

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Landroidx/slice/widget/SliceActionView;->setAction(Landroidx/slice/core/SliceActionImpl;Landroidx/slice/widget/EventInfo;Landroidx/slice/widget/SliceView$OnSliceActionListener;ILandroidx/slice/widget/SliceActionView$SliceActionLoadingListener;)V

    .line 678
    iget-object v1, v0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    invoke-virtual/range {p1 .. p1}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 679
    invoke-virtual {v9, v14}, Landroidx/slice/widget/SliceActionView;->setLoading(Z)V

    .line 681
    :cond_3
    if-eqz v10, :cond_4

    .line 682
    iget-object v1, v0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    invoke-virtual {v1, v7, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 684
    :cond_4
    iget-object v1, v0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v7, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    :goto_1
    return-void
.end method

.method private addItem(Landroidx/slice/SliceItem;IZ)Z
    .locals 11
    .param p1, "sliceItem"    # Landroidx/slice/SliceItem;
    .param p2, "color"    # I
    .param p3, "isStart"    # Z

    .line 693
    const/4 v0, 0x0

    .line 694
    .local v0, "icon":Landroidx/core/graphics/drawable/IconCompat;
    const/4 v1, 0x0

    .line 695
    .local v1, "imageMode":I
    const/4 v2, 0x0

    .line 696
    .local v2, "timeStamp":Landroidx/slice/SliceItem;
    if-eqz p3, :cond_0

    iget-object v3, p0, Landroidx/slice/widget/RowView;->mStartContainer:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    .line 697
    .local v3, "container":Landroid/view/ViewGroup;
    :goto_0
    const-string/jumbo v4, "slice"

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_1

    .line 698
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v4

    const-string v7, "action"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 699
    :cond_1
    const-string/jumbo v4, "shortcut"

    invoke-virtual {p1, v4}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 700
    new-instance v4, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v4, p1}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    invoke-direct {p0, v4, p2, v3, p3}, Landroidx/slice/widget/RowView;->addAction(Landroidx/slice/core/SliceActionImpl;ILandroid/view/ViewGroup;Z)V

    .line 701
    return v5

    .line 703
    :cond_2
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 704
    return v6

    .line 706
    :cond_3
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object p1, v4

    check-cast p1, Landroidx/slice/SliceItem;

    .line 710
    :cond_4
    const-string v4, "image"

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 711
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 712
    const-string v4, "no_tint"

    invoke-virtual {p1, v4}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v4

    move v1, v4

    goto :goto_1

    .line 713
    :cond_5
    const-string v4, "long"

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 714
    move-object v2, p1

    .line 716
    :cond_6
    :goto_1
    const/4 v4, 0x0

    .line 717
    .local v4, "addedView":Landroid/view/View;
    if-eqz v0, :cond_a

    .line 718
    if-nez v1, :cond_7

    move v7, v5

    goto :goto_2

    :cond_7
    move v7, v6

    .line 719
    .local v7, "isIcon":Z
    :goto_2
    new-instance v8, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 720
    .local v8, "iv":Landroid/widget/ImageView;
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 721
    if-eqz v7, :cond_8

    const/4 v9, -0x1

    if-eq p2, v9, :cond_8

    .line 722
    invoke-virtual {v8, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 724
    :cond_8
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 725
    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 726
    .local v9, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v10, p0, Landroidx/slice/widget/RowView;->mImageSize:I

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 727
    iget v10, p0, Landroidx/slice/widget/RowView;->mImageSize:I

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 728
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 729
    if-eqz v7, :cond_9

    iget v10, p0, Landroidx/slice/widget/RowView;->mIconSize:I

    div-int/lit8 v10, v10, 0x2

    goto :goto_3

    :cond_9
    move v10, v6

    .line 730
    .local v10, "p":I
    :goto_3
    invoke-virtual {v8, v10, v10, v10, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 731
    move-object v4, v8

    .end local v7    # "isIcon":Z
    .end local v8    # "iv":Landroid/widget/ImageView;
    .end local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "p":I
    goto :goto_4

    .line 732
    :cond_a
    if-eqz v2, :cond_c

    .line 733
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 734
    .local v7, "tv":Landroid/widget/TextView;
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Landroidx/slice/widget/SliceViewUtil;->getTimestampString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 735
    iget-object v8, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v8, :cond_b

    .line 736
    iget-object v8, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v8}, Landroidx/slice/widget/SliceStyle;->getSubtitleSize()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v6, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 737
    iget-object v8, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v8}, Landroidx/slice/widget/SliceStyle;->getSubtitleColor()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 739
    :cond_b
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 740
    move-object v4, v7

    goto :goto_5

    .line 732
    .end local v7    # "tv":Landroid/widget/TextView;
    :cond_c
    :goto_4
    nop

    .line 742
    :goto_5
    if-eqz v4, :cond_d

    goto :goto_6

    :cond_d
    move v5, v6

    :goto_6
    return v5
.end method

.method private addRange(Landroidx/slice/SliceItem;)V
    .locals 9
    .param p1, "range"    # Landroidx/slice/SliceItem;

    .line 585
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 586
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mHandler:Landroid/os/Handler;

    .line 589
    :cond_0
    const-string v0, "action"

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 590
    .local v0, "isSeekBar":Z
    if-eqz v0, :cond_1

    new-instance v1, Landroid/widget/SeekBar;

    .line 591
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/widget/ProgressBar;

    .line 592
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x1010078

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    :goto_0
    nop

    .line 593
    .local v1, "progressBar":Landroid/widget/ProgressBar;
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 594
    .local v2, "progressDrawable":Landroid/graphics/drawable/Drawable;
    iget v3, p0, Landroidx/slice/widget/RowView;->mTintColor:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    if-eqz v2, :cond_2

    .line 595
    iget v3, p0, Landroidx/slice/widget/RowView;->mTintColor:I

    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 596
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 598
    :cond_2
    const-string v3, "int"

    const-string v5, "max"

    invoke-static {p1, v3, v5}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v3

    .line 599
    .local v3, "max":Landroidx/slice/SliceItem;
    if-eqz v3, :cond_3

    .line 600
    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getInt()I

    move-result v5

    iget v6, p0, Landroidx/slice/widget/RowView;->mRangeMinValue:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 602
    :cond_3
    iget v5, p0, Landroidx/slice/widget/RowView;->mRangeValue:I

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 603
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 604
    invoke-virtual {p0, v1}, Landroidx/slice/widget/RowView;->addView(Landroid/view/View;)V

    .line 605
    iput-object v1, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    .line 606
    if-eqz v0, :cond_6

    .line 607
    iget-object v5, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v5}, Landroidx/slice/widget/RowContent;->getInputRangeThumb()Landroidx/slice/SliceItem;

    move-result-object v5

    .line 608
    .local v5, "thumb":Landroidx/slice/SliceItem;
    iget-object v6, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    check-cast v6, Landroid/widget/SeekBar;

    .line 609
    .local v6, "seekBar":Landroid/widget/SeekBar;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 610
    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v7

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 611
    .local v7, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_4

    .line 612
    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 615
    .end local v7    # "d":Landroid/graphics/drawable/Drawable;
    :cond_4
    invoke-virtual {v6}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 616
    .local v7, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    iget v8, p0, Landroidx/slice/widget/RowView;->mTintColor:I

    if-eq v8, v4, :cond_5

    if-eqz v7, :cond_5

    .line 617
    iget v4, p0, Landroidx/slice/widget/RowView;->mTintColor:I

    invoke-static {v7, v4}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 618
    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 620
    :cond_5
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v6, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 622
    .end local v5    # "thumb":Landroidx/slice/SliceItem;
    .end local v6    # "seekBar":Landroid/widget/SeekBar;
    .end local v7    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    :cond_6
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->updateRangePadding()V

    .line 623
    return-void
.end method

.method private addSubtitle(Z)V
    .locals 10
    .param p1, "hasTitle"    # Z

    .line 485
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-nez v0, :cond_0

    .line 486
    return-void

    .line 488
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 489
    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getSummaryItem()Landroidx/slice/SliceItem;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 490
    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getSubtitleItem()Landroidx/slice/SliceItem;

    move-result-object v0

    :goto_0
    nop

    .line 491
    .local v0, "subtitleItem":Landroidx/slice/SliceItem;
    const/4 v2, 0x0

    .line 492
    .local v2, "subtitleTimeString":Ljava/lang/CharSequence;
    iget-boolean v3, p0, Landroidx/slice/widget/RowView;->mShowLastUpdated:Z

    if-eqz v3, :cond_2

    iget-wide v3, p0, Landroidx/slice/widget/RowView;->mLastUpdated:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 493
    iget-wide v3, p0, Landroidx/slice/widget/RowView;->mLastUpdated:J

    invoke-direct {p0, v3, v4}, Landroidx/slice/widget/RowView;->getRelativeTimeString(J)Ljava/lang/CharSequence;

    move-result-object v3

    .line 494
    .local v3, "relativeTime":Ljava/lang/CharSequence;
    if-eqz v3, :cond_2

    .line 495
    nop

    .line 496
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroidx/slice/view/R$string;->abc_slice_updated:I

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 499
    .end local v3    # "relativeTime":Ljava/lang/CharSequence;
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 500
    .local v3, "subtitle":Ljava/lang/CharSequence;
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    if-eqz v0, :cond_4

    .line 501
    const-string v4, "partial"

    invoke-virtual {v0, v4}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    move v4, v5

    goto :goto_3

    :cond_5
    :goto_2
    move v4, v1

    .line 502
    .local v4, "subtitleExists":Z
    :goto_3
    if-eqz v4, :cond_8

    .line 503
    iget-object v6, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    iget-object v6, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v6, :cond_8

    .line 505
    iget-object v6, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    iget-boolean v7, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 506
    invoke-virtual {v7}, Landroidx/slice/widget/SliceStyle;->getHeaderSubtitleSize()I

    move-result v7

    int-to-float v7, v7

    goto :goto_4

    :cond_6
    iget-object v7, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 507
    invoke-virtual {v7}, Landroidx/slice/widget/SliceStyle;->getSubtitleSize()I

    move-result v7

    int-to-float v7, v7

    .line 505
    :goto_4
    invoke-virtual {v6, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 508
    iget-object v6, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    iget-object v7, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v7}, Landroidx/slice/widget/SliceStyle;->getSubtitleColor()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 509
    iget-boolean v6, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 510
    invoke-virtual {v6}, Landroidx/slice/widget/SliceStyle;->getVerticalHeaderTextPadding()I

    move-result v6

    goto :goto_5

    :cond_7
    iget-object v6, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 511
    invoke-virtual {v6}, Landroidx/slice/widget/SliceStyle;->getVerticalTextPadding()I

    move-result v6

    :goto_5
    nop

    .line 512
    .local v6, "verticalPadding":I
    iget-object v7, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v7, v5, v6, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 515
    .end local v6    # "verticalPadding":I
    :cond_8
    const/4 v6, 0x2

    if-eqz v2, :cond_b

    .line 516
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 517
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " \u00b7 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 519
    :cond_9
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 520
    .local v7, "sp":Landroid/text/SpannableString;
    new-instance v8, Landroid/text/style/StyleSpan;

    invoke-direct {v8, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-virtual {v7, v8, v5, v9, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 521
    iget-object v8, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    iget-object v8, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v8, :cond_b

    .line 523
    iget-object v8, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    iget-boolean v9, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    if-eqz v9, :cond_a

    iget-object v9, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 524
    invoke-virtual {v9}, Landroidx/slice/widget/SliceStyle;->getHeaderSubtitleSize()I

    move-result v9

    goto :goto_6

    :cond_a
    iget-object v9, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v9}, Landroidx/slice/widget/SliceStyle;->getSubtitleSize()I

    move-result v9

    :goto_6
    int-to-float v9, v9

    .line 523
    invoke-virtual {v8, v5, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 525
    iget-object v8, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    iget-object v9, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v9}, Landroidx/slice/widget/SliceStyle;->getSubtitleColor()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 528
    .end local v7    # "sp":Landroid/text/SpannableString;
    :cond_b
    iget-object v7, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/16 v9, 0x8

    if-eqz v8, :cond_c

    move v8, v9

    goto :goto_7

    :cond_c
    move v8, v5

    :goto_7
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 529
    iget-object v7, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    if-eqz v4, :cond_d

    move v9, v5

    :cond_d
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 533
    iget v7, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    if-gtz v7, :cond_f

    iget-boolean v7, p0, Landroidx/slice/widget/RowView;->mAllowTwoLines:Z

    if-eqz v7, :cond_e

    goto :goto_8

    :cond_e
    move v7, v5

    goto :goto_9

    :cond_f
    :goto_8
    move v7, v1

    .line 534
    .local v7, "canHaveMultiLines":Z
    :goto_9
    if-eqz v7, :cond_10

    if-nez p1, :cond_10

    if-eqz v4, :cond_10

    .line 535
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_10

    goto :goto_a

    :cond_10
    move v6, v1

    .line 537
    .local v6, "maxLines":I
    :goto_a
    iget-object v8, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    if-ne v6, v1, :cond_11

    goto :goto_b

    :cond_11
    move v1, v5

    :goto_b
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 538
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 542
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 543
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 544
    return-void
.end method

.method private determineRangeValues(Landroidx/slice/SliceItem;)V
    .locals 5
    .param p1, "rangeItem"    # Landroidx/slice/SliceItem;

    .line 564
    if-nez p1, :cond_0

    .line 565
    const/4 v0, 0x0

    iput v0, p0, Landroidx/slice/widget/RowView;->mRangeMinValue:I

    .line 566
    iput v0, p0, Landroidx/slice/widget/RowView;->mRangeValue:I

    .line 567
    return-void

    .line 569
    :cond_0
    iput-object p1, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    .line 571
    const-string v0, "min"

    const-string v1, "int"

    invoke-static {p1, v1, v0}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    .line 572
    .local v0, "min":Landroidx/slice/SliceItem;
    const/4 v2, 0x0

    .line 573
    .local v2, "minValue":I
    if-eqz v0, :cond_1

    .line 574
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getInt()I

    move-result v2

    .line 576
    :cond_1
    iput v2, p0, Landroidx/slice/widget/RowView;->mRangeMinValue:I

    .line 578
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    const-string/jumbo v4, "value"

    invoke-static {v3, v1, v4}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    .line 579
    .local v1, "progress":Landroidx/slice/SliceItem;
    if-eqz v1, :cond_2

    .line 580
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getInt()I

    move-result v3

    sub-int/2addr v3, v2

    iput v3, p0, Landroidx/slice/widget/RowView;->mRangeValue:I

    .line 582
    :cond_2
    return-void
.end method

.method private getRelativeTimeString(J)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "time"    # J

    .line 547
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 548
    .local v0, "difference":J
    const-wide v2, 0x7528ad000L

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 549
    div-long v2, v0, v2

    long-to-int v2, v2

    .line 550
    .local v2, "years":I
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroidx/slice/view/R$plurals;->abc_slice_duration_years:I

    .line 551
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 550
    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 552
    .end local v2    # "years":I
    :cond_0
    const-wide/32 v2, 0x5265c00

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 553
    div-long v2, v0, v2

    long-to-int v2, v2

    .line 554
    .local v2, "days":I
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroidx/slice/view/R$plurals;->abc_slice_duration_days:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 555
    .end local v2    # "days":I
    :cond_1
    const-wide/32 v2, 0xea60

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 556
    div-long v2, v0, v2

    long-to-int v2, v2

    .line 557
    .local v2, "mins":I
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroidx/slice/view/R$plurals;->abc_slice_duration_min:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 559
    .end local v2    # "mins":I
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method private getRowContentHeight()I
    .locals 2

    .line 225
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Landroidx/slice/widget/RowView;->mIsSingleItem:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getActualHeight()I

    move-result v0

    goto :goto_1

    .line 226
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getSmallHeight()I

    move-result v0

    .line 227
    :goto_1
    nop

    .line 228
    .local v0, "rowHeight":I
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_2

    .line 229
    iget v1, p0, Landroidx/slice/widget/RowView;->mIdealRangeHeight:I

    sub-int/2addr v0, v1

    .line 231
    :cond_2
    return v0
.end method

.method private populateViews(Z)V
    .locals 10
    .param p1, "isUpdate"    # Z

    .line 341
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Landroidx/slice/widget/RowView;->mIsRangeSliding:Z

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 342
    .local v2, "skipSliderUpdate":Z
    :goto_0
    if-nez v2, :cond_1

    .line 343
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->resetViewState()V

    .line 346
    :cond_1
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v3}, Landroidx/slice/widget/RowContent;->getLayoutDirItem()Landroidx/slice/SliceItem;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 347
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v3}, Landroidx/slice/widget/RowContent;->getLayoutDirItem()Landroidx/slice/SliceItem;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getInt()I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/slice/widget/RowView;->setLayoutDirection(I)V

    .line 349
    :cond_2
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v3}, Landroidx/slice/widget/RowContent;->isDefaultSeeMore()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 350
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->showSeeMore()V

    .line 351
    return-void

    .line 353
    :cond_3
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v3}, Landroidx/slice/widget/RowContent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    .line 354
    .local v3, "contentDescr":Ljava/lang/CharSequence;
    if-eqz v3, :cond_4

    .line 355
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 357
    :cond_4
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v4}, Landroidx/slice/widget/RowContent;->getStartItem()Landroidx/slice/SliceItem;

    move-result-object v4

    iput-object v4, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    .line 358
    if-eqz v4, :cond_5

    iget v5, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    if-lez v5, :cond_5

    move v5, v0

    goto :goto_1

    :cond_5
    move v5, v1

    .line 359
    .local v5, "showStart":Z
    :goto_1
    if-eqz v5, :cond_6

    .line 360
    iget v6, p0, Landroidx/slice/widget/RowView;->mTintColor:I

    invoke-direct {p0, v4, v6, v0}, Landroidx/slice/widget/RowView;->addItem(Landroidx/slice/SliceItem;IZ)Z

    move-result v5

    .line 362
    :cond_6
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mStartContainer:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    if-eqz v5, :cond_7

    move v7, v1

    goto :goto_2

    :cond_7
    move v7, v6

    :goto_2
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 364
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v4}, Landroidx/slice/widget/RowContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object v4

    .line 365
    .local v4, "titleItem":Landroidx/slice/SliceItem;
    if-eqz v4, :cond_8

    .line 366
    iget-object v7, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    :cond_8
    iget-object v7, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v7, :cond_a

    .line 369
    iget-object v7, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    iget-boolean v8, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    if-eqz v8, :cond_9

    iget-object v8, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 370
    invoke-virtual {v8}, Landroidx/slice/widget/SliceStyle;->getHeaderTitleSize()I

    move-result v8

    int-to-float v8, v8

    goto :goto_3

    :cond_9
    iget-object v8, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 371
    invoke-virtual {v8}, Landroidx/slice/widget/SliceStyle;->getTitleSize()I

    move-result v8

    int-to-float v8, v8

    .line 369
    :goto_3
    invoke-virtual {v7, v1, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 372
    iget-object v7, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    iget-object v8, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v8}, Landroidx/slice/widget/SliceStyle;->getTitleColor()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 374
    :cond_a
    iget-object v7, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    if-eqz v4, :cond_b

    move v6, v1

    :cond_b
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    if-eqz v4, :cond_c

    move v6, v0

    goto :goto_4

    :cond_c
    move v6, v1

    :goto_4
    invoke-direct {p0, v6}, Landroidx/slice/widget/RowView;->addSubtitle(Z)V

    .line 378
    iget-object v6, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v6}, Landroidx/slice/widget/RowContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v6

    .line 379
    .local v6, "primaryAction":Landroidx/slice/SliceItem;
    if-eqz v6, :cond_d

    iget-object v7, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-eq v6, v7, :cond_d

    .line 380
    new-instance v7, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v7, v6}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    iput-object v7, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 381
    invoke-virtual {v7}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 383
    iget-object v7, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    iget v8, p0, Landroidx/slice/widget/RowView;->mTintColor:I

    iget-object v9, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, v7, v8, v9, v1}, Landroidx/slice/widget/RowView;->addAction(Landroidx/slice/core/SliceActionImpl;ILandroid/view/ViewGroup;Z)V

    .line 385
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v0}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    .line 386
    return-void

    .line 390
    :cond_d
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v1

    .line 391
    .local v1, "range":Landroidx/slice/SliceItem;
    if-eqz v1, :cond_10

    .line 392
    iget-object v7, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v7, :cond_e

    .line 393
    iget-object v7, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v7, v0}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    .line 395
    :cond_e
    if-nez v2, :cond_f

    .line 396
    invoke-direct {p0, v1}, Landroidx/slice/widget/RowView;->determineRangeValues(Landroidx/slice/SliceItem;)V

    .line 397
    invoke-direct {p0, v1}, Landroidx/slice/widget/RowView;->addRange(Landroidx/slice/SliceItem;)V

    goto :goto_5

    .line 400
    :cond_f
    iput-object v1, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    .line 402
    :goto_5
    return-void

    .line 404
    :cond_10
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->updateEndItems()V

    .line 405
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->updateActionSpinner()V

    .line 406
    return-void
.end method

.method private resetViewState()V
    .locals 5

    .line 851
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 852
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->setLayoutDirection(I)V

    .line 853
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    .line 854
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mContent:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    .line 855
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mStartContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 856
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 857
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 858
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 859
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 860
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 861
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 862
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 863
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 864
    iput-object v3, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 865
    iput-object v3, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    .line 866
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 867
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSeeMoreView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 868
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 869
    iput-object v3, p0, Landroidx/slice/widget/RowView;->mSeeMoreView:Landroid/view/View;

    .line 871
    :cond_0
    iput-boolean v1, p0, Landroidx/slice/widget/RowView;->mIsRangeSliding:Z

    .line 872
    iput-boolean v1, p0, Landroidx/slice/widget/RowView;->mRangeHasPendingUpdate:Z

    .line 873
    iput-object v3, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    .line 874
    iput v1, p0, Landroidx/slice/widget/RowView;->mRangeMinValue:I

    .line 875
    iput v1, p0, Landroidx/slice/widget/RowView;->mRangeValue:I

    .line 876
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/slice/widget/RowView;->mLastSentRangeUpdate:J

    .line 877
    iput-object v3, p0, Landroidx/slice/widget/RowView;->mHandler:Landroid/os/Handler;

    .line 878
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 879
    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->removeView(Landroid/view/View;)V

    .line 880
    iput-object v3, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    .line 882
    :cond_1
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActionSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 883
    return-void
.end method

.method private setViewClickable(Landroid/view/View;Z)V
    .locals 2
    .param p1, "layout"    # Landroid/view/View;
    .param p2, "isClickable"    # Z

    .line 836
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 837
    if-eqz p2, :cond_1

    .line 838
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x101030e

    invoke-static {v0, v1}, Landroidx/slice/widget/SliceViewUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_1
    nop

    .line 837
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 840
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 841
    return-void
.end method

.method private showSeeMore()V
    .locals 3

    .line 746
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$layout;->abc_slice_row_show_more:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 748
    .local v0, "b":Landroid/widget/Button;
    new-instance v1, Landroidx/slice/widget/RowView$1;

    invoke-direct {v1, p0, v0}, Landroidx/slice/widget/RowView$1;-><init>(Landroidx/slice/widget/RowView;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 773
    iget v1, p0, Landroidx/slice/widget/RowView;->mTintColor:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 774
    iget v1, p0, Landroidx/slice/widget/RowView;->mTintColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 776
    :cond_0
    iput-object v0, p0, Landroidx/slice/widget/RowView;->mSeeMoreView:Landroid/view/View;

    .line 777
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 778
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v2}, Landroidx/slice/widget/RowContent;->getSlice()Landroidx/slice/SliceItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 779
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    .line 780
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 781
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->updateActionSpinner()V

    .line 783
    :cond_1
    return-void
.end method

.method private updateEndItems()V
    .locals 10

    .line 409
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-nez v0, :cond_0

    .line 410
    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 415
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getEndItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 416
    .local v0, "endItems":Ljava/util/List;
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mHeaderActions:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 418
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mHeaderActions:Ljava/util/List;

    .line 421
    :cond_1
    iget v1, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 422
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    :cond_2
    const/4 v1, 0x0

    .line 427
    .local v1, "endItemCount":I
    const/4 v2, 0x0

    .line 428
    .local v2, "firstItemIsADefaultToggle":Z
    const/4 v3, 0x0

    .line 429
    .local v3, "endAction":Landroidx/slice/SliceItem;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const-string v6, "action"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ge v4, v5, :cond_7

    .line 430
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Landroidx/slice/SliceItem;

    if-eqz v5, :cond_3

    .line 431
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/slice/SliceItem;

    goto :goto_1

    .line 432
    :cond_3
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v5}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v5

    :goto_1
    nop

    .line 433
    .local v5, "endItem":Landroidx/slice/SliceItem;
    const/4 v9, 0x3

    if-ge v1, v9, :cond_6

    .line 434
    iget v9, p0, Landroidx/slice/widget/RowView;->mTintColor:I

    invoke-direct {p0, v5, v9, v7}, Landroidx/slice/widget/RowView;->addItem(Landroidx/slice/SliceItem;IZ)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 435
    if-nez v3, :cond_4

    invoke-static {v5, v6}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 436
    move-object v3, v5

    .line 438
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 439
    if-ne v1, v8, :cond_6

    .line 440
    iget-object v6, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 441
    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v6

    const-string v9, "image"

    invoke-static {v6, v9}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v6

    if-nez v6, :cond_5

    move v7, v8

    goto :goto_2

    :cond_5
    nop

    :goto_2
    move v2, v7

    .line 429
    .end local v5    # "endItem":Landroidx/slice/SliceItem;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 446
    .end local v4    # "i":I
    :cond_7
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    if-lez v1, :cond_8

    move v9, v7

    goto :goto_3

    :cond_8
    move v9, v5

    :goto_3
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 449
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mDivider:Landroid/view/View;

    iget-object v9, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v9, :cond_9

    if-eqz v2, :cond_9

    move v5, v7

    :cond_9
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 451
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-eqz v4, :cond_a

    .line 452
    invoke-static {v4, v6}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    if-eqz v4, :cond_a

    move v4, v8

    goto :goto_4

    :cond_a
    move v4, v7

    .line 453
    .local v4, "hasStartAction":Z
    :goto_4
    if-eqz v3, :cond_b

    move v5, v8

    goto :goto_5

    :cond_b
    move v5, v7

    .line 455
    .local v5, "hasEndItemAction":Z
    :goto_5
    const/4 v6, 0x0

    .line 456
    .local v6, "endAndRowActionTheSame":Z
    iget-object v9, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v9, :cond_c

    .line 457
    iget-object v7, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v7, v8}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    goto :goto_7

    .line 458
    :cond_c
    if-eq v5, v4, :cond_10

    if-eq v1, v8, :cond_d

    if-eqz v4, :cond_10

    .line 460
    :cond_d
    const/4 v6, 0x1

    .line 461
    iget-object v9, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_e

    .line 462
    iget-object v7, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/slice/core/SliceActionImpl;

    iput-object v7, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    goto :goto_6

    .line 463
    :cond_e
    iget-object v9, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_f

    iget-object v9, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ne v9, v8, :cond_f

    .line 464
    iget-object v9, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/slice/widget/SliceActionView;

    invoke-virtual {v7}, Landroidx/slice/widget/SliceActionView;->getAction()Landroidx/slice/core/SliceActionImpl;

    move-result-object v7

    iput-object v7, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 466
    :cond_f
    :goto_6
    iget-object v7, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v7, v8}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    .line 469
    :cond_10
    :goto_7
    iget-object v7, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v7, :cond_11

    if-nez v6, :cond_11

    iget-object v9, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    .line 470
    invoke-virtual {v7}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v7

    invoke-interface {v9, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 471
    iput-boolean v8, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    .line 473
    :cond_11
    return-void
.end method

.method private updateRangePadding()V
    .locals 7

    .line 626
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_4

    .line 627
    instance-of v1, v0, Landroid/widget/SeekBar;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/SeekBar;

    .line 628
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 629
    .local v0, "thumbSize":I
    :goto_0
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v1, :cond_1

    .line 630
    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getLineCount()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    iget v1, p0, Landroidx/slice/widget/RowView;->mInsetTop:I

    .line 633
    .local v1, "topInsetPadding":I
    :goto_1
    if-eqz v0, :cond_2

    iget v3, p0, Landroidx/slice/widget/RowView;->mInsetStart:I

    div-int/lit8 v4, v0, 0x2

    if-lt v3, v4, :cond_2

    iget v3, p0, Landroidx/slice/widget/RowView;->mInsetEnd:I

    div-int/lit8 v4, v0, 0x2

    if-lt v3, v4, :cond_2

    .line 636
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    iget v3, p0, Landroidx/slice/widget/RowView;->mInsetStart:I

    iget v4, p0, Landroidx/slice/widget/RowView;->mInsetEnd:I

    iget v5, p0, Landroidx/slice/widget/RowView;->mInsetBottom:I

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    goto :goto_2

    .line 639
    :cond_2
    if-eqz v0, :cond_3

    div-int/lit8 v2, v0, 0x2

    .line 640
    .local v2, "thumbPadding":I
    :cond_3
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    iget v4, p0, Landroidx/slice/widget/RowView;->mInsetStart:I

    add-int/2addr v4, v2

    iget v5, p0, Landroidx/slice/widget/RowView;->mInsetEnd:I

    add-int/2addr v5, v2

    iget v6, p0, Landroidx/slice/widget/RowView;->mInsetBottom:I

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    .line 644
    .end local v0    # "thumbSize":I
    .end local v1    # "topInsetPadding":I
    .end local v2    # "thumbPadding":I
    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public getActualHeight()I
    .locals 2

    .line 215
    iget-boolean v0, p0, Landroidx/slice/widget/RowView;->mIsSingleItem:Z

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getSmallHeight()I

    move-result v0

    return v0

    .line 218
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    iget v1, p0, Landroidx/slice/widget/RowView;->mMaxSmallHeight:I

    .line 219
    invoke-virtual {v0, v1}, Landroidx/slice/widget/RowContent;->getActualHeight(I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSmallHeight()I
    .locals 2

    .line 209
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    iget v1, p0, Landroidx/slice/widget/RowView;->mMaxSmallHeight:I

    .line 210
    invoke-virtual {v0, v1}, Landroidx/slice/widget/RowContent;->getSmallHeight(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 803
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getActionItem()Landroidx/slice/SliceItem;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 806
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 807
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/SliceActionView;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 808
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/SliceActionView;

    :goto_0
    nop

    .line 809
    .local v0, "sav":Landroidx/slice/widget/SliceActionView;
    if-eqz v0, :cond_2

    instance-of v1, p1, Landroidx/slice/widget/SliceActionView;

    if-nez v1, :cond_2

    .line 812
    invoke-virtual {v0}, Landroidx/slice/widget/SliceActionView;->sendAction()V

    goto :goto_1

    .line 814
    :cond_2
    iget v1, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    if-nez v1, :cond_3

    .line 818
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->performClick()Z

    goto :goto_1

    .line 821
    :cond_3
    :try_start_0
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 822
    invoke-virtual {v1}, Landroidx/slice/core/SliceActionImpl;->getActionItem()Landroidx/slice/SliceItem;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/slice/SliceItem;->fireActionInternal(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    .line 823
    if-eqz v1, :cond_4

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    if-eqz v1, :cond_4

    .line 824
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v2}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v2

    iget v3, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    invoke-interface {v1, v2, v3}, Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;->onSliceActionLoading(Landroidx/slice/SliceItem;I)V

    .line 825
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v2}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 827
    :cond_4
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->updateActionSpinner()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    goto :goto_1

    .line 828
    :catch_0
    move-exception v1

    .line 829
    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "RowView"

    const-string v3, "PendingIntent for slice cannot be sent"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 833
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_1
    return-void

    .line 804
    .end local v0    # "sav":Landroidx/slice/widget/SliceActionView;
    :cond_5
    :goto_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 302
    iget v0, p0, Landroidx/slice/widget/RowView;->mInsetStart:I

    iget v1, p0, Landroidx/slice/widget/RowView;->mInsetEnd:I

    add-int/2addr v0, v1

    .line 303
    .local v0, "insets":I
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0}, Landroidx/slice/widget/RowView;->getRowContentHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 304
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    .line 308
    iget v1, p0, Landroidx/slice/widget/RowView;->mIdealRangeHeight:I

    iget v2, p0, Landroidx/slice/widget/RowView;->mMeasuredRangeHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 309
    .local v1, "verticalPadding":I
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->getRowContentHeight()I

    move-result v2

    add-int/2addr v2, v1

    .line 310
    .local v2, "top":I
    iget v3, p0, Landroidx/slice/widget/RowView;->mMeasuredRangeHeight:I

    add-int/2addr v3, v2

    .line 311
    .local v3, "bottom":I
    iget-object v5, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v5, v4, v2, v6, v3}, Landroid/widget/ProgressBar;->layout(IIII)V

    .line 313
    .end local v1    # "verticalPadding":I
    .end local v2    # "top":I
    .end local v3    # "bottom":I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 274
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getSmallHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getActualHeight()I

    move-result v0

    .line 275
    .local v0, "totalHeight":I
    :goto_0
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->getRowContentHeight()I

    move-result v1

    .line 276
    .local v1, "rowHeight":I
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 278
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 279
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 280
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4, p1, p2}, Landroidx/slice/widget/RowView;->measureChild(Landroid/view/View;II)V

    goto :goto_1

    .line 282
    :cond_1
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 284
    :goto_1
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    if-eqz v4, :cond_3

    .line 287
    sget-boolean v4, Landroidx/slice/widget/RowView;->sCanSpecifyLargerRangeBarHeight:Z

    if-eqz v4, :cond_2

    iget v3, p0, Landroidx/slice/widget/RowView;->mIdealRangeHeight:I

    .line 288
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_2

    :cond_2
    nop

    .line 289
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    :goto_2
    nop

    .line 290
    .local v3, "rangeMeasureSpec":I
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v4, p1, v3}, Landroidx/slice/widget/RowView;->measureChild(Landroid/view/View;II)V

    .line 293
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v4

    iput v4, p0, Landroidx/slice/widget/RowView;->mMeasuredRangeHeight:I

    .line 296
    .end local v3    # "rangeMeasureSpec":I
    :cond_3
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 297
    .local v2, "totalHeightSpec":I
    invoke-super {p0, p1, v2}, Landroidx/slice/widget/SliceChildView;->onMeasure(II)V

    .line 298
    return-void
.end method

.method public resetView()V
    .locals 1

    .line 845
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 846
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 847
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->resetViewState()V

    .line 848
    return-void
.end method

.method sendSliderValue()V
    .locals 5

    .line 647
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_0

    .line 649
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/slice/widget/RowView;->mLastSentRangeUpdate:J

    .line 650
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 651
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.app.slice.extra.RANGE_VALUE"

    iget v4, p0, Landroidx/slice/widget/RowView;->mRangeValue:I

    .line 652
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 650
    invoke-virtual {v0, v1, v2}, Landroidx/slice/SliceItem;->fireAction(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    goto :goto_0

    .line 653
    :catch_0
    move-exception v0

    .line 654
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "RowView"

    const-string v2, "PendingIntent for slice cannot be sent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 657
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setAllowTwoLines(Z)V
    .locals 1
    .param p1, "allowTwoLines"    # Z

    .line 266
    iput-boolean p1, p0, Landroidx/slice/widget/RowView;->mAllowTwoLines:Z

    .line 267
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_0

    .line 268
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/slice/widget/RowView;->populateViews(Z)V

    .line 270
    :cond_0
    return-void
.end method

.method public setInsets(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .line 184
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/slice/widget/SliceChildView;->setInsets(IIII)V

    .line 185
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 186
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 187
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->updateRangePadding()V

    .line 189
    :cond_0
    return-void
.end method

.method public setLastUpdated(J)V
    .locals 1
    .param p1, "lastUpdated"    # J

    .line 477
    invoke-super {p0, p1, p2}, Landroidx/slice/widget/SliceChildView;->setLastUpdated(J)V

    .line 478
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_1

    .line 479
    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 480
    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 479
    :goto_0
    invoke-direct {p0, v0}, Landroidx/slice/widget/RowView;->addSubtitle(Z)V

    .line 482
    :cond_1
    return-void
.end method

.method public setLoadingActions(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceItem;",
            ">;)V"
        }
    .end annotation

    .line 791
    .local p1, "actions":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceItem;>;"
    if-nez p1, :cond_0

    .line 792
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 793
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    goto :goto_0

    .line 795
    :cond_0
    iput-object p1, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    .line 797
    :goto_0
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->updateEndItems()V

    .line 798
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->updateActionSpinner()V

    .line 799
    return-void
.end method

.method public setMaxSmallHeight(I)V
    .locals 1
    .param p1, "maxSmallHeight"    # I

    .line 200
    iput p1, p0, Landroidx/slice/widget/RowView;->mMaxSmallHeight:I

    .line 201
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_0

    .line 202
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/slice/widget/RowView;->populateViews(Z)V

    .line 204
    :cond_0
    return-void
.end method

.method public setShowLastUpdated(Z)V
    .locals 1
    .param p1, "showLastUpdated"    # Z

    .line 258
    invoke-super {p0, p1}, Landroidx/slice/widget/SliceChildView;->setShowLastUpdated(Z)V

    .line 259
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_0

    .line 260
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/slice/widget/RowView;->populateViews(Z)V

    .line 262
    :cond_0
    return-void
.end method

.method public setSingleItem(Z)V
    .locals 0
    .param p1, "isSingleItem"    # Z

    .line 195
    iput-boolean p1, p0, Landroidx/slice/widget/RowView;->mIsSingleItem:Z

    .line 196
    return-void
.end method

.method public setSliceActions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;)V"
        }
    .end annotation

    .line 250
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    iput-object p1, p0, Landroidx/slice/widget/RowView;->mHeaderActions:Ljava/util/List;

    .line 251
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_0

    .line 252
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->updateEndItems()V

    .line 254
    :cond_0
    return-void
.end method

.method public setSliceItem(Landroidx/slice/SliceItem;ZIILandroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 6
    .param p1, "slice"    # Landroidx/slice/SliceItem;
    .param p2, "isHeader"    # Z
    .param p3, "index"    # I
    .param p4, "rowCount"    # I
    .param p5, "observer"    # Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 321
    invoke-virtual {p0, p5}, Landroidx/slice/widget/RowView;->setSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, "isUpdate":Z
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/slice/widget/RowContent;->isValid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 326
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v2, :cond_0

    new-instance v2, Landroidx/slice/SliceStructure;

    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 327
    invoke-virtual {v3}, Landroidx/slice/widget/RowContent;->getSlice()Landroidx/slice/SliceItem;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/slice/SliceStructure;-><init>(Landroidx/slice/SliceItem;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 328
    .local v2, "prevSs":Landroidx/slice/SliceStructure;
    :goto_0
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v3}, Landroidx/slice/widget/RowContent;->getSlice()Landroidx/slice/SliceItem;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 329
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 328
    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 330
    .local v3, "sameSliceId":Z
    new-instance v4, Landroidx/slice/SliceStructure;

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/slice/SliceStructure;-><init>(Landroidx/slice/Slice;)V

    invoke-virtual {v4, v2}, Landroidx/slice/SliceStructure;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 331
    .local v4, "sameStructure":Z
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    move v0, v5

    .line 333
    .end local v2    # "prevSs":Landroidx/slice/SliceStructure;
    .end local v3    # "sameSliceId":Z
    .end local v4    # "sameStructure":Z
    :cond_2
    iput-boolean v1, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    .line 334
    iput-boolean p2, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    .line 335
    new-instance v1, Landroidx/slice/widget/RowContent;

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    invoke-direct {v1, v2, p1, v3}, Landroidx/slice/widget/RowContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;Z)V

    iput-object v1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 336
    iput p3, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    .line 337
    invoke-direct {p0, v0}, Landroidx/slice/widget/RowView;->populateViews(Z)V

    .line 338
    return-void
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "tintColor"    # I

    .line 236
    invoke-super {p0, p1}, Landroidx/slice/widget/SliceChildView;->setTint(I)V

    .line 237
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_0

    .line 239
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/slice/widget/RowView;->populateViews(Z)V

    .line 241
    :cond_0
    return-void
.end method

.method updateActionSpinner()V
    .locals 2

    .line 786
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActionSpinner:Landroid/widget/ProgressBar;

    iget-boolean v1, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 787
    return-void
.end method
