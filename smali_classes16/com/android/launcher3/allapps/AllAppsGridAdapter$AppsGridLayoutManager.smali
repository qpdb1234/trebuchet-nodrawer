.class public Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;
.super Lcom/android/launcher3/util/ScrollableLayoutManager;
.source "AllAppsGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/AllAppsGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppsGridLayoutManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/AllAppsGridAdapter;
    .param p2, "context"    # Landroid/content/Context;

    .line 102
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;, "Lcom/android/launcher3/allapps/AllAppsGridAdapter<TT;>.AppsGridLayoutManager;"
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    .line 103
    invoke-direct {p0, p2}, Lcom/android/launcher3/util/ScrollableLayoutManager;-><init>(Landroid/content/Context;)V

    .line 104
    return-void
.end method

.method private getRowsNotForAccessibility(I)I
    .locals 5
    .param p1, "adapterPosition"    # I

    .line 153
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;, "Lcom/android/launcher3/allapps/AllAppsGridAdapter<TT;>.AppsGridLayoutManager;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    .line 154
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 155
    const/4 v1, 0x0

    .line 156
    .local v1, "extraRows":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-gt v2, p1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 157
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    iget v3, v3, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->isViewType(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 158
    add-int/lit8 v1, v1, 0x1

    .line 156
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    .end local v2    # "i":I
    :cond_1
    return v1
.end method


# virtual methods
.method public getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2
    .param p1, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 124
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;, "Lcom/android/launcher3/allapps/AllAppsGridAdapter<TT;>.AppsGridLayoutManager;"
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/util/ScrollableLayoutManager;->getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v1, v1, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    .line 125
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->getRowsNotForAccessibility(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 124
    return v0
.end method

.method protected incrementTotalHeight(Landroidx/recyclerview/widget/RecyclerView$Adapter;II)I
    .locals 3
    .param p1, "adapter"    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .param p2, "position"    # I
    .param p3, "heightUntilLastPos"    # I

    .line 174
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;, "Lcom/android/launcher3/allapps/AllAppsGridAdapter<TT;>.AppsGridLayoutManager;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    .line 176
    .local v0, "item":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    iget v1, v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    invoke-static {v1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->isIconViewType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->rowAppIndex:I

    if-eqz v1, :cond_0

    .line 177
    move v1, p3

    goto :goto_0

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->mCachedSizes:Landroid/util/SparseIntArray;

    iget v2, v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    add-int/2addr v1, p3

    .line 176
    :goto_0
    return v1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 108
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;, "Lcom/android/launcher3/allapps/AllAppsGridAdapter<TT;>.AppsGridLayoutManager;"
    invoke-super {p0, p1}, Lcom/android/launcher3/util/ScrollableLayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 112
    nop

    .line 113
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroidx/core/view/accessibility/AccessibilityRecordCompat;

    move-result-object v0

    .line 114
    .local v0, "record":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v1, v1, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getNumFilteredApps()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setItemCount(I)V

    .line 115
    nop

    .line 116
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->getFromIndex()I

    move-result v1

    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->getFromIndex()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->getRowsNotForAccessibility(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 115
    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    .line 117
    nop

    .line 118
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->getToIndex()I

    move-result v1

    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->getToIndex()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->getRowsNotForAccessibility(I)I

    move-result v3

    sub-int/2addr v1, v3

    .line 117
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    .line 119
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 11
    .param p1, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;
    .param p3, "host"    # Landroid/view/View;
    .param p4, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 131
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;, "Lcom/android/launcher3/allapps/AllAppsGridAdapter<TT;>.AppsGridLayoutManager;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/util/ScrollableLayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 133
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 134
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getCollectionItemInfo()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v1

    .line 135
    .local v1, "cic":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
    instance-of v2, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    if-eqz v2, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    move-object v2, v0

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 139
    .local v2, "glp":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    nop

    .line 140
    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->getRowIndex()I

    move-result v3

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getViewAdapterPosition()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->getRowsNotForAccessibility(I)I

    move-result v4

    sub-int v5, v3, v4

    .line 141
    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->getRowSpan()I

    move-result v6

    .line 142
    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->getColumnIndex()I

    move-result v7

    .line 143
    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->getColumnSpan()I

    move-result v8

    .line 144
    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->isHeading()Z

    move-result v9

    .line 145
    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->isSelected()Z

    move-result v10

    .line 139
    invoke-static/range {v5 .. v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 146
    return-void

    .line 136
    .end local v2    # "glp":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    :cond_1
    :goto_0
    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2
    .param p1, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 166
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;, "Lcom/android/launcher3/allapps/AllAppsGridAdapter<TT;>.AppsGridLayoutManager;"
    invoke-super {p0, p1}, Lcom/android/launcher3/util/ScrollableLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 167
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->-$$Nest$fgetmOnLayoutCompletedListeners(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/AllAppsGridAdapter$OnLayoutCompletedListener;

    .line 168
    .local v1, "listener":Lcom/android/launcher3/allapps/AllAppsGridAdapter$OnLayoutCompletedListener;
    invoke-interface {v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$OnLayoutCompletedListener;->onLayoutCompleted()V

    .line 169
    .end local v1    # "listener":Lcom/android/launcher3/allapps/AllAppsGridAdapter$OnLayoutCompletedListener;
    goto :goto_0

    .line 170
    :cond_0
    return-void
.end method
