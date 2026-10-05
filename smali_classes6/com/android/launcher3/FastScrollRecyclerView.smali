.class public abstract Lcom/android/launcher3/FastScrollRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "FastScrollRecyclerView.java"


# instance fields
.field protected mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/FastScrollRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/FastScrollRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method


# virtual methods
.method public bindFastScrollbar(Lcom/android/launcher3/views/RecyclerViewFastScroller;)V
    .locals 1
    .param p1, "scrollbar"    # Lcom/android/launcher3/views/RecyclerViewFastScroller;

    .line 59
    iput-object p1, p0, Lcom/android/launcher3/FastScrollRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    .line 60
    invoke-virtual {p1, p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setRecyclerView(Lcom/android/launcher3/FastScrollRecyclerView;)V

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/FastScrollRecyclerView;->onUpdateScrollbar(I)V

    .line 62
    return-void
.end method

.method protected getAvailableScrollBarHeight()I
    .locals 2

    .line 100
    invoke-virtual {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollbarTrackHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/FastScrollRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getThumbHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getAvailableScrollHeight()I
    .locals 3

    .line 90
    invoke-virtual {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 91
    .local v0, "firstPageHeight":I
    invoke-virtual {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->computeVerticalScrollRange()I

    move-result v1

    sub-int/2addr v1, v0

    .line 92
    .local v1, "availableScrollHeight":I
    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method public getScrollBarMarginBottom()I
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->getPaddingBottom()I

    move-result v0

    return v0
.end method

.method public getScrollBarTop()I
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/launcher3/FastScrollRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    return-object v0
.end method

.method public getScrollbarTrackHeight()I
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/android/launcher3/FastScrollRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollBarTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollBarMarginBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public onFastScrollCompleted()V
    .locals 0

    .line 169
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 183
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->isLayoutSuppressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 185
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .line 173
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 175
    if-nez p1, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "TAPL_SCROLL_FINISHED"

    invoke-static {v0, v1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendTestProtocolEventToTest(Landroid/content/Context;Ljava/lang/String;)V

    .line 179
    :cond_0
    return-void
.end method

.method public abstract onUpdateScrollbar(I)V
.end method

.method public scrollToBottomWithMotion(I)V
    .locals 3
    .param p1, "duration"    # I

    .line 201
    iget-object v0, p0, Lcom/android/launcher3/FastScrollRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->reattachThumbToScroll()V

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->getAvailableScrollHeight()I

    move-result v0

    sget-object v1, Lcom/android/app/animation/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/launcher3/FastScrollRecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    .line 205
    return-void
.end method

.method public abstract scrollToPositionAtProgress(F)Ljava/lang/String;
.end method

.method public scrollToTop()V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/launcher3/FastScrollRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->reattachThumbToScroll()V

    .line 194
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/FastScrollRecyclerView;->scrollToPosition(I)V

    .line 195
    return-void
.end method

.method public shouldContainerScroll(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "eventSource"    # Landroid/view/View;

    .line 133
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 134
    .local v0, "point":[F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 136
    iget-object v1, p0, Lcom/android/launcher3/FastScrollRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-static {v1, p2, v0}, Lcom/android/launcher3/Utilities;->mapCoordInSelfToDescendant(Landroid/view/View;Landroid/view/View;[F)V

    .line 138
    iget-object v1, p0, Lcom/android/launcher3/FastScrollRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    aget v4, v0, v2

    float-to-int v4, v4

    aget v5, v0, v3

    float-to-int v5, v5

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->shouldBlockIntercept(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    return v2

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->computeVerticalScrollOffset()I

    move-result v1

    if-nez v1, :cond_1

    move v2, v3

    :cond_1
    return v2
.end method

.method public supportsFastScrolling()Z
    .locals 1

    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method protected synchronizeScrollBarThumbOffsetToViewScroll(II)V
    .locals 2
    .param p1, "scrollY"    # I
    .param p2, "availableScrollHeight"    # I

    .line 113
    if-gtz p2, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/launcher3/FastScrollRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    .line 115
    return-void

    .line 121
    :cond_0
    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    .line 122
    invoke-virtual {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->getAvailableScrollBarHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 125
    .local v0, "scrollBarY":I
    iget-object v1, p0, Lcom/android/launcher3/FastScrollRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    .line 126
    return-void
.end method
