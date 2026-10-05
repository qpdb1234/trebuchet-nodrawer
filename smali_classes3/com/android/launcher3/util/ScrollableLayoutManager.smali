.class public Lcom/android/launcher3/util/ScrollableLayoutManager;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "ScrollableLayoutManager.java"


# static fields
.field public static final EXTRA_BOTTOM_SPACE_BY_HEIGHT_PERCENT:F = 0.050000012f

.field public static final PREDICTIVE_BACK_MIN_SCALE:F = 0.9f


# instance fields
.field protected final mCachedSizes:Landroid/util/SparseIntArray;

.field private mLastValidHeightIndex:I

.field private mRv:Landroidx/recyclerview/widget/RecyclerView;

.field private mTotalHeightCache:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 40
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mCachedSizes:Landroid/util/SparseIntArray;

    .line 52
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mTotalHeightCache:[I

    .line 53
    iput v1, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mLastValidHeightIndex:I

    .line 57
    return-void
.end method

.method private getItemsHeight(Landroidx/recyclerview/widget/RecyclerView$Adapter;I)I
    .locals 5
    .param p1, "adapter"    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .param p2, "untilIndex"    # I

    .line 135
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 136
    .local v0, "totalItems":I
    iget-object v1, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mTotalHeightCache:[I

    array-length v1, v1

    add-int/lit8 v2, v0, 0x1

    if-ge v1, v2, :cond_0

    .line 137
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mTotalHeightCache:[I

    .line 138
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mLastValidHeightIndex:I

    .line 140
    :cond_0
    if-le p2, v0, :cond_1

    .line 141
    move p2, v0

    goto :goto_0

    .line 142
    :cond_1
    if-gez p2, :cond_2

    .line 143
    const/4 p2, 0x0

    .line 145
    :cond_2
    :goto_0
    iget v1, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mLastValidHeightIndex:I

    if-gt p2, v1, :cond_3

    .line 146
    iget-object v1, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mTotalHeightCache:[I

    aget v1, v1, p2

    return v1

    .line 149
    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mTotalHeightCache:[I

    aget v1, v2, v1

    .line 150
    .local v1, "totalItemsHeight":I
    iget v2, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mLastValidHeightIndex:I

    .local v2, "i":I
    :goto_1
    if-ge v2, p2, :cond_4

    .line 151
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/launcher3/util/ScrollableLayoutManager;->incrementTotalHeight(Landroidx/recyclerview/widget/RecyclerView$Adapter;II)I

    move-result v1

    .line 152
    iget-object v3, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mTotalHeightCache:[I

    add-int/lit8 v4, v2, 0x1

    aput v1, v3, v4

    .line 150
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 154
    .end local v2    # "i":I
    :cond_4
    iput p2, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mLastValidHeightIndex:I

    .line 155
    return v1
.end method

.method private invalidateScrollCache()V
    .locals 1

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mLastValidHeightIndex:I

    .line 168
    return-void
.end method

.method private updateCachedSize(Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 80
    .local v0, "viewType":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 81
    .local v1, "size":I
    iget-object v2, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mCachedSizes:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/android/launcher3/util/ScrollableLayoutManager;->invalidateScrollCache()V

    .line 84
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mCachedSizes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 85
    return-void
.end method


# virtual methods
.method protected calculateExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;[I)V
    .locals 3
    .param p1, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;
    .param p2, "extraLayoutSpace"    # [I

    .line 121
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->calculateExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;[I)V

    .line 122
    invoke-virtual {p0}, Lcom/android/launcher3/util/ScrollableLayoutManager;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3d4cccd0    # 0.050000012f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 123
    .local v0, "extraSpacePx":I
    const/4 v1, 0x1

    aget v2, p2, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, p2, v1

    .line 124
    return-void
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 89
    iget-object v0, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mRv:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 6
    .param p1, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 94
    iget-object v0, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mRv:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 95
    .local v0, "adapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 96
    return v1

    .line 98
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher3/util/ScrollableLayoutManager;->getChildCount()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 101
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/ScrollableLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 102
    .local v2, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 103
    .local v3, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-nez v3, :cond_3

    .line 104
    return v1

    .line 106
    :cond_3
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    .line 107
    .local v4, "itemPosition":I
    if-gez v4, :cond_4

    .line 108
    return v1

    .line 110
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/util/ScrollableLayoutManager;->getPaddingTop()I

    move-result v1

    invoke-direct {p0, v0, v4}, Lcom/android/launcher3/util/ScrollableLayoutManager;->getItemsHeight(Landroidx/recyclerview/widget/RecyclerView$Adapter;I)I

    move-result v5

    add-int/2addr v1, v5

    invoke-virtual {p0, v2}, Lcom/android/launcher3/util/ScrollableLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v1, v5

    return v1

    .line 99
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v4    # "itemPosition":I
    :cond_5
    :goto_1
    return v1
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2
    .param p1, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 115
    iget-object v0, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mRv:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 116
    .local v0, "adapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/util/ScrollableLayoutManager;->getItemsHeight(Landroidx/recyclerview/widget/RecyclerView$Adapter;I)I

    move-result v1

    :goto_1
    return v1
.end method

.method protected incrementTotalHeight(Landroidx/recyclerview/widget/RecyclerView$Adapter;II)I
    .locals 2
    .param p1, "adapter"    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .param p2, "position"    # I
    .param p3, "heightUntilLastPos"    # I

    .line 163
    iget-object v0, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mCachedSizes:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    add-int/2addr v0, p3

    return v0
.end method

.method public layoutDecorated(Landroid/view/View;IIII)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 67
    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/GridLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 68
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/ScrollableLayoutManager;->updateCachedSize(Landroid/view/View;)V

    .line 69
    return-void
.end method

.method public layoutDecoratedWithMargins(Landroid/view/View;IIII)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 74
    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/GridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 75
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/ScrollableLayoutManager;->updateCachedSize(Landroid/view/View;)V

    .line 76
    return-void
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1, "view"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 61
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 62
    iput-object p1, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mRv:Landroidx/recyclerview/widget/RecyclerView;

    .line 63
    return-void
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 172
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 173
    invoke-direct {p0}, Lcom/android/launcher3/util/ScrollableLayoutManager;->invalidateScrollCache()V

    .line 174
    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 178
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 179
    invoke-direct {p0}, Lcom/android/launcher3/util/ScrollableLayoutManager;->invalidateScrollCache()V

    .line 180
    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 0
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "itemCount"    # I

    .line 190
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;->onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V

    .line 191
    invoke-direct {p0}, Lcom/android/launcher3/util/ScrollableLayoutManager;->invalidateScrollCache()V

    .line 192
    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 184
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 185
    invoke-direct {p0}, Lcom/android/launcher3/util/ScrollableLayoutManager;->invalidateScrollCache()V

    .line 186
    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .line 197
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;->onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V

    .line 198
    invoke-direct {p0}, Lcom/android/launcher3/util/ScrollableLayoutManager;->invalidateScrollCache()V

    .line 199
    return-void
.end method
