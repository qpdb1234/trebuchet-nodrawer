.class public Landroidx/slice/widget/LargeTemplateView;
.super Landroidx/slice/widget/SliceChildView;
.source "LargeTemplateView.java"


# instance fields
.field private final mAdapter:Landroidx/slice/widget/LargeSliceAdapter;

.field private mDisplayedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayedItemsHeight:I

.field private final mForeground:Landroid/view/View;

.field private mListContent:Landroidx/slice/widget/ListContent;

.field private mLoc:[I

.field private mMaxSmallHeight:I

.field private mParent:Landroidx/slice/widget/SliceView;

.field private final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mScrollingEnabled:Z

.field private mShowActionSpinner:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceChildView;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItems:Ljava/util/ArrayList;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItemsHeight:I

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mLoc:[I

    .line 60
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/slice/widget/LargeTemplateView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 61
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/slice/widget/LargeTemplateView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 62
    new-instance v1, Landroidx/slice/widget/LargeSliceAdapter;

    invoke-direct {v1, p1}, Landroidx/slice/widget/LargeSliceAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/slice/widget/LargeTemplateView;->mAdapter:Landroidx/slice/widget/LargeSliceAdapter;

    .line 63
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 64
    invoke-virtual {p0, v0}, Landroidx/slice/widget/LargeTemplateView;->addView(Landroid/view/View;)V

    .line 66
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroidx/slice/widget/LargeTemplateView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mForeground:Landroid/view/View;

    .line 67
    invoke-virtual {p0}, Landroidx/slice/widget/LargeTemplateView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x101030e

    invoke-static {v1, v2}, Landroidx/slice/widget/SliceViewUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 69
    invoke-virtual {p0, v0}, Landroidx/slice/widget/LargeTemplateView;->addView(Landroid/view/View;)V

    .line 71
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 72
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 73
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    return-void
.end method

.method private updateDisplayedItems(I)V
    .locals 5
    .param p1, "height"    # I

    .line 233
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 237
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/LargeTemplateView;->getMode()I

    move-result v0

    .line 238
    .local v0, "mode":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 239
    new-instance v2, Ljava/util/ArrayList;

    new-array v1, v1, [Landroidx/slice/SliceItem;

    iget-object v3, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v3}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/SliceItem;

    aput-object v3, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItems:Ljava/util/ArrayList;

    goto :goto_0

    .line 240
    :cond_1
    iget-boolean v1, p0, Landroidx/slice/widget/LargeTemplateView;->mScrollingEnabled:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 241
    iget-object v1, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v1, p1}, Landroidx/slice/widget/ListContent;->getItemsForNonScrollingList(I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItems:Ljava/util/ArrayList;

    goto :goto_0

    .line 243
    :cond_2
    iget-object v1, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItems:Ljava/util/ArrayList;

    .line 245
    :goto_0
    iget-object v1, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    iget-object v2, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroidx/slice/widget/ListContent;->getListHeight(Ljava/util/List;)I

    move-result v1

    iput v1, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItemsHeight:I

    .line 246
    iget-object v1, p0, Landroidx/slice/widget/LargeTemplateView;->mAdapter:Landroidx/slice/widget/LargeSliceAdapter;

    iget-object v2, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItems:Ljava/util/ArrayList;

    iget v3, p0, Landroidx/slice/widget/LargeTemplateView;->mTintColor:I

    invoke-virtual {v1, v2, v3, v0}, Landroidx/slice/widget/LargeSliceAdapter;->setSliceItems(Ljava/util/List;II)V

    .line 247
    invoke-direct {p0}, Landroidx/slice/widget/LargeTemplateView;->updateOverscroll()V

    .line 248
    return-void

    .line 234
    .end local v0    # "mode":I
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroidx/slice/widget/LargeTemplateView;->resetView()V

    .line 235
    return-void
.end method

.method private updateOverscroll()V
    .locals 4

    .line 251
    iget v0, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItemsHeight:I

    invoke-virtual {p0}, Landroidx/slice/widget/LargeTemplateView;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 252
    .local v0, "scrollable":Z
    :goto_0
    iget-object v1, p0, Landroidx/slice/widget/LargeTemplateView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v3, p0, Landroidx/slice/widget/LargeTemplateView;->mScrollingEnabled:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    :goto_1
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setOverScrollMode(I)V

    .line 255
    return-void
.end method


# virtual methods
.method public getActualHeight()I
    .locals 1

    .line 138
    iget v0, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItemsHeight:I

    return v0
.end method

.method public getLoadingActions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mAdapter:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-virtual {v0}, Landroidx/slice/widget/LargeSliceAdapter;->getLoadingActions()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSmallHeight()I
    .locals 1

    .line 143
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getSmallHeight()I

    move-result v0

    return v0

    .line 144
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 79
    invoke-super {p0}, Landroidx/slice/widget/SliceChildView;->onAttachedToWindow()V

    .line 80
    invoke-virtual {p0}, Landroidx/slice/widget/LargeTemplateView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/SliceView;

    iput-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mParent:Landroidx/slice/widget/SliceView;

    .line 81
    iget-object v1, p0, Landroidx/slice/widget/LargeTemplateView;->mAdapter:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-virtual {v1, v0, p0}, Landroidx/slice/widget/LargeSliceAdapter;->setParents(Landroidx/slice/widget/SliceView;Landroidx/slice/widget/LargeTemplateView;)V

    .line 82
    return-void
.end method

.method public onForegroundActivated(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 104
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mParent:Landroidx/slice/widget/SliceView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/slice/widget/SliceView;->isSliceViewClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mForeground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 107
    return-void

    .line 109
    :cond_0
    nop

    .line 110
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mForeground:Landroid/view/View;

    iget-object v2, p0, Landroidx/slice/widget/LargeTemplateView;->mLoc:[I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v2, p0, Landroidx/slice/widget/LargeTemplateView;->mLoc:[I

    aget v2, v2, v1

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 112
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v3, p0, Landroidx/slice/widget/LargeTemplateView;->mLoc:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 113
    .local v2, "y":I
    iget-object v3, p0, Landroidx/slice/widget/LargeTemplateView;->mForeground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    int-to-float v5, v0

    int-to-float v6, v2

    invoke-virtual {v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 115
    .end local v0    # "x":I
    .end local v2    # "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 116
    .local v0, "action":I
    if-nez v0, :cond_1

    .line 117
    iget-object v1, p0, Landroidx/slice/widget/LargeTemplateView;->mForeground:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 118
    :cond_1
    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    if-eq v0, v4, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 121
    :cond_2
    iget-object v2, p0, Landroidx/slice/widget/LargeTemplateView;->mForeground:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    .line 123
    :cond_3
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 86
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 87
    .local v0, "height":I
    iget-boolean v1, p0, Landroidx/slice/widget/LargeTemplateView;->mScrollingEnabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget v1, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItemsHeight:I

    if-eq v1, v0, :cond_0

    .line 88
    invoke-direct {p0, v0}, Landroidx/slice/widget/LargeTemplateView;->updateDisplayedItems(I)V

    .line 90
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/slice/widget/SliceChildView;->onMeasure(II)V

    .line 91
    return-void
.end method

.method public resetView()V
    .locals 4

    .line 259
    const/4 v0, 0x0

    iput v0, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItemsHeight:I

    .line 260
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 261
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mAdapter:Landroidx/slice/widget/LargeSliceAdapter;

    const/4 v1, -0x1

    invoke-virtual {p0}, Landroidx/slice/widget/LargeTemplateView;->getMode()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroidx/slice/widget/LargeSliceAdapter;->setSliceItems(Ljava/util/List;II)V

    .line 262
    iput-object v3, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    .line 263
    return-void
.end method

.method public setActionLoading(Landroidx/slice/SliceItem;)V
    .locals 2
    .param p1, "item"    # Landroidx/slice/SliceItem;

    .line 157
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mAdapter:Landroidx/slice/widget/LargeSliceAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/slice/widget/LargeSliceAdapter;->onSliceActionLoading(Landroidx/slice/SliceItem;I)V

    .line 158
    return-void
.end method

.method public setAllowTwoLines(Z)V
    .locals 1
    .param p1, "allowTwoLines"    # Z

    .line 216
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mAdapter:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/LargeSliceAdapter;->setAllowTwoLines(Z)V

    .line 217
    return-void
.end method

.method public setInsets(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/slice/widget/SliceChildView;->setInsets(IIII)V

    .line 96
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mAdapter:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/slice/widget/LargeSliceAdapter;->setInsets(IIII)V

    .line 97
    return-void
.end method

.method public setLastUpdated(J)V
    .locals 1
    .param p1, "lastUpdated"    # J

    .line 210
    invoke-super {p0, p1, p2}, Landroidx/slice/widget/SliceChildView;->setLastUpdated(J)V

    .line 211
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mAdapter:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-virtual {v0, p1, p2}, Landroidx/slice/widget/LargeSliceAdapter;->setLastUpdated(J)V

    .line 212
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

    .line 162
    .local p1, "loadingActions":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceItem;>;"
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mAdapter:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/LargeSliceAdapter;->setLoadingActions(Ljava/util/Set;)V

    .line 163
    return-void
.end method

.method public setMaxSmallHeight(I)V
    .locals 1
    .param p1, "maxSmallHeight"    # I

    .line 151
    iput p1, p0, Landroidx/slice/widget/LargeTemplateView;->mMaxSmallHeight:I

    .line 152
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mAdapter:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/LargeSliceAdapter;->setMaxSmallHeight(I)V

    .line 153
    return-void
.end method

.method public setMode(I)V
    .locals 3
    .param p1, "newMode"    # I

    .line 127
    iget v0, p0, Landroidx/slice/widget/LargeTemplateView;->mMode:I

    if-eq v0, p1, :cond_0

    .line 128
    iput p1, p0, Landroidx/slice/widget/LargeTemplateView;->mMode:I

    .line 129
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    const/4 v1, -0x1

    iget-boolean v2, p0, Landroidx/slice/widget/LargeTemplateView;->mScrollingEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroidx/slice/widget/ListContent;->getLargeHeight(IZ)I

    move-result v0

    .line 131
    .local v0, "sliceHeight":I
    invoke-direct {p0, v0}, Landroidx/slice/widget/LargeTemplateView;->updateDisplayedItems(I)V

    .line 134
    .end local v0    # "sliceHeight":I
    :cond_0
    return-void
.end method

.method public setScrollable(Z)V
    .locals 3
    .param p1, "scrollingEnabled"    # Z

    .line 223
    iget-boolean v0, p0, Landroidx/slice/widget/LargeTemplateView;->mScrollingEnabled:Z

    if-eq v0, p1, :cond_0

    .line 224
    iput-boolean p1, p0, Landroidx/slice/widget/LargeTemplateView;->mScrollingEnabled:Z

    .line 225
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    const/4 v1, -0x1

    iget-boolean v2, p0, Landroidx/slice/widget/LargeTemplateView;->mScrollingEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroidx/slice/widget/ListContent;->getLargeHeight(IZ)I

    move-result v0

    .line 227
    .local v0, "sliceHeight":I
    invoke-direct {p0, v0}, Landroidx/slice/widget/LargeTemplateView;->updateDisplayedItems(I)V

    .line 230
    .end local v0    # "sliceHeight":I
    :cond_0
    return-void
.end method

.method public setShowLastUpdated(Z)V
    .locals 1
    .param p1, "showLastUpdated"    # Z

    .line 204
    invoke-super {p0, p1}, Landroidx/slice/widget/SliceChildView;->setShowLastUpdated(Z)V

    .line 205
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mAdapter:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/LargeSliceAdapter;->setShowLastUpdated(Z)V

    .line 206
    return-void
.end method

.method public setSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 2
    .param p1, "observer"    # Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 178
    iput-object p1, p0, Landroidx/slice/widget/LargeTemplateView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 179
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mAdapter:Landroidx/slice/widget/LargeSliceAdapter;

    if-eqz v0, :cond_0

    .line 180
    iget-object v1, p0, Landroidx/slice/widget/LargeTemplateView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    invoke-virtual {v0, v1}, Landroidx/slice/widget/LargeSliceAdapter;->setSliceObserver(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    .line 182
    :cond_0
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

    .line 186
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mAdapter:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/LargeSliceAdapter;->setSliceActions(Ljava/util/List;)V

    .line 187
    return-void
.end method

.method public setSliceContent(Landroidx/slice/widget/ListContent;)V
    .locals 2
    .param p1, "sliceContent"    # Landroidx/slice/widget/ListContent;

    .line 191
    iput-object p1, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    .line 192
    const/4 v0, -0x1

    iget-boolean v1, p0, Landroidx/slice/widget/LargeTemplateView;->mScrollingEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroidx/slice/widget/ListContent;->getLargeHeight(IZ)I

    move-result v0

    .line 193
    .local v0, "sliceHeight":I
    invoke-direct {p0, v0}, Landroidx/slice/widget/LargeTemplateView;->updateDisplayedItems(I)V

    .line 194
    return-void
.end method

.method public setStyle(Landroidx/slice/widget/SliceStyle;)V
    .locals 1
    .param p1, "style"    # Landroidx/slice/widget/SliceStyle;

    .line 198
    invoke-super {p0, p1}, Landroidx/slice/widget/SliceChildView;->setStyle(Landroidx/slice/widget/SliceStyle;)V

    .line 199
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mAdapter:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/LargeSliceAdapter;->setStyle(Landroidx/slice/widget/SliceStyle;)V

    .line 200
    return-void
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "tint"    # I

    .line 172
    invoke-super {p0, p1}, Landroidx/slice/widget/SliceChildView;->setTint(I)V

    .line 173
    invoke-virtual {p0}, Landroidx/slice/widget/LargeTemplateView;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/slice/widget/LargeTemplateView;->updateDisplayedItems(I)V

    .line 174
    return-void
.end method
