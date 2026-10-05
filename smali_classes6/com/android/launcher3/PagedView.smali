.class public abstract Lcom/android/launcher3/PagedView;
.super Landroid/view/ViewGroup;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/PagedView$ComputePageScrollsLogic;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ":",
        "Lcom/android/launcher3/pageindicators/PageIndicator;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# static fields
.field public static final ACTION_MOVE_ALLOW_EASY_FLING:I = 0xfe

.field private static final DEBUG:Z = false

.field public static final DEBUG_FAILED_QUICKSWITCH:Z = false

.field public static final INVALID_PAGE:I = -0x1

.field protected static final INVALID_POINTER:I = -0x1

.field private static final MAX_SCROLL_PROGRESS:F = 1.0f

.field private static final RETURN_TO_ORIGINAL_PAGE_THRESHOLD:F = 0.33f

.field private static final SIGNIFICANT_MOVE_THRESHOLD:F = 0.4f

.field protected static final SIMPLE_SCROLL_LOGIC:Lcom/android/launcher3/PagedView$ComputePageScrollsLogic;

.field private static final TAG:Ljava/lang/String; = "PagedView"


# instance fields
.field protected mActivePointerId:I

.field private mAllowEasyFling:Z

.field protected mAllowOverScroll:Z

.field protected mCurrentPage:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field protected mCurrentPageScrollDiff:I

.field protected mCurrentScrollOverPage:I

.field private mDownMotionPrimary:F

.field private mDownMotionX:F

.field private mDownMotionY:F

.field private mEasyFlingThresholdVelocity:I

.field protected mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

.field protected mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

.field protected mFirstLayout:Z

.field private mFlingThresholdVelocity:I

.field private mFreeScroll:Z

.field protected final mInsets:Landroid/graphics/Rect;

.field private mIsBeingDragged:Z

.field protected mIsLayoutValid:Z

.field protected mIsPageInTransition:Z

.field protected mIsRtl:Z

.field private mLastMotion:I

.field protected mMaxScroll:I

.field private mMaximumVelocity:I

.field private mMinFlingVelocity:I

.field protected mMinScroll:I

.field private mMinSnapVelocity:I

.field protected mNextPage:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private final mOnPageScrollsInitializedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mOnPageTransitionEndCallback:Ljava/lang/Runnable;

.field private mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

.field protected mPageIndicator:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field mPageIndicatorViewId:I

.field protected mPageScrolls:[I

.field protected mPageSlop:I

.field private mPageSnapAnimationDuration:I

.field protected mPageSpacing:I

.field protected mScroller:Landroid/widget/OverScroller;

.field private mTmpIntPair:[I

.field private mTotalMotion:F

.field protected mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public static synthetic $r8$lambda$2CBM4xFhjXD-SRmQKyIvUNkjhg0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->cancelLongPress()V

    return-void
.end method

.method public static synthetic $r8$lambda$IQ3UFUXn3XBm7nZqZLsZ-_qgZj0(Lcom/android/launcher3/PagedView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/PagedView;->lambda$onTouchEvent$4(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$RE2cyPGGbCkb2dMWzyjrpjq4LAY(Lcom/android/launcher3/PagedView;Ljava/util/function/Consumer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/PagedView;->lambda$forEachVisiblePage$1(Ljava/util/function/Consumer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RmAjypfmOwvSKIFlCrabQ08xwdw(Lcom/android/launcher3/PagedView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->lambda$onViewRemoved$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$S4VUq4Nk4YxW7Ruh_sILwn_Oly8(Lcom/android/launcher3/PagedView;Ljava/util/ArrayList;IILjava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/PagedView;->lambda$addFocusables$3(Ljava/util/ArrayList;IILjava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nZoSQKDYcf7fdsQ3_pZe51rdUKM(Lcom/android/launcher3/PagedView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/PagedView;->lambda$onTouchEvent$5(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Lcom/android/launcher3/PagedView$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/PagedView$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/launcher3/PagedView;->SIMPLE_SCROLL_LOGIC:Lcom/android/launcher3/PagedView$ComputePageScrollsLogic;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 160
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 164
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 168
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    .line 95
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/PagedView;->mFirstLayout:Z

    .line 106
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 112
    iput v0, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    .line 121
    sget-object v3, Lcom/android/launcher3/touch/PagedOrientationHandler;->DEFAULT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iput-object v3, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 124
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/PagedView;->mOnPageScrollsInitializedCallbacks:Ljava/util/ArrayList;

    .line 127
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    .line 135
    iput-boolean v1, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    .line 139
    iput v2, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 141
    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    .line 148
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    .line 154
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/launcher3/PagedView;->mTmpIntPair:[I

    .line 170
    sget-object v1, Lcom/android/launcher3/R$styleable;->PagedView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 172
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/android/launcher3/R$styleable;->PagedView_pageIndicator:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/PagedView;->mPageIndicatorViewId:I

    .line 173
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 175
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setHapticFeedbackEnabled(Z)V

    .line 176
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    .line 178
    new-instance v2, Landroid/widget/OverScroller;

    sget-object v3, Lcom/android/app/animation/Interpolators;->SCROLL:Landroid/view/animation/Interpolator;

    invoke-direct {v2, p1, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    .line 179
    iput v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 180
    iput v0, p0, Lcom/android/launcher3/PagedView;->mCurrentScrollOverPage:I

    .line 182
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 183
    .local v2, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/PagedView;->mTouchSlop:I

    .line 184
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/PagedView;->mPageSlop:I

    .line 185
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/PagedView;->mMaximumVelocity:I

    .line 187
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->updateVelocityValues()V

    .line 189
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->initEdgeEffect()V

    .line 190
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setDefaultFocusHighlightEnabled(Z)V

    .line 191
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setWillNotDraw(Z)V

    .line 192
    return-void
.end method

.method private abortScrollerAnimation(Z)V
    .locals 1
    .param p1, "resetNextPage"    # Z

    .line 273
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 274
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onScrollerAnimationAborted()V

    .line 277
    if-eqz p1, :cond_0

    .line 278
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 279
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    .line 281
    :cond_0
    return-void
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1556
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1557
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1559
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1560
    return-void
.end method

.method private dispatchPageCountChanged()V
    .locals 3

    .line 890
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 891
    check-cast v0, Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v2

    div-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->setMarkersCount(I)V

    .line 895
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 896
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .line 1668
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 1669
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 1670
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private ensureWithinScrollBounds(I)I
    .locals 5
    .param p1, "page"    # I

    .line 406
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 407
    .local v0, "dir":I
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v1

    .line 409
    .local v1, "currScroll":I
    :cond_1
    iget v2, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    const-string v3, "PagedView"

    if-ge v1, v2, :cond_2

    .line 410
    add-int/2addr p1, v0

    .line 411
    move v2, v1

    .line 412
    .local v2, "prevScroll":I
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v1

    .line 413
    if-gt v1, v2, :cond_1

    .line 414
    const-string v4, "validateNewPage: failed to find a page > mMinScrollX"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    nop

    .line 418
    .end local v2    # "prevScroll":I
    :cond_2
    iget v2, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    if-le v1, v2, :cond_3

    .line 419
    sub-int/2addr p1, v0

    .line 420
    move v2, v1

    .line 421
    .restart local v2    # "prevScroll":I
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v1

    .line 422
    if-lt v1, v2, :cond_2

    .line 423
    const-string v4, "validateNewPage: failed to find a page < mMaxScrollX"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    nop

    .line 427
    .end local v2    # "prevScroll":I
    :cond_3
    return p1
.end method

.method private getDisplacementFromScreenCenter(II)I
    .locals 4
    .param p1, "childIndex"    # I
    .param p2, "screenCenter"    # I

    .line 1639
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getChildVisibleSize(I)I

    move-result v0

    .line 1640
    .local v0, "childSize":I
    div-int/lit8 v1, v0, 0x2

    .line 1641
    .local v1, "halfChildSize":I
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getChildOffset(I)I

    move-result v2

    add-int/2addr v2, v1

    .line 1642
    .local v2, "childCenter":I
    sub-int v3, v2, p2

    return v3
.end method

.method private getNeighbourPageIndices(I)Lcom/android/launcher3/util/IntSet;
    .locals 4
    .param p1, "focus"    # I

    .line 354
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v0

    .line 356
    .local v0, "panelCount":I
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    .line 359
    .local v1, "currentPage":I
    const/16 v2, 0x11

    if-ne p1, v2, :cond_0

    .line 360
    sub-int v2, v1, v0

    .local v2, "nextPage":I
    goto :goto_0

    .line 361
    .end local v2    # "nextPage":I
    :cond_0
    const/16 v2, 0x42

    if-ne p1, v2, :cond_2

    .line 362
    add-int v2, v1, v0

    .line 367
    .restart local v2    # "nextPage":I
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result v2

    .line 368
    if-ne v2, v1, :cond_1

    .line 370
    new-instance v3, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v3}, Lcom/android/launcher3/util/IntSet;-><init>()V

    return-object v3

    .line 373
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/launcher3/PagedView;->getPageIndices(I)Lcom/android/launcher3/util/IntSet;

    move-result-object v3

    return-object v3

    .line 365
    .end local v2    # "nextPage":I
    :cond_2
    new-instance v2, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v2}, Lcom/android/launcher3/util/IntSet;-><init>()V

    return-object v2
.end method

.method private getPageIndices(I)Lcom/android/launcher3/util/IntSet;
    .locals 5
    .param p1, "pageIndex"    # I

    .line 339
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getLeftmostVisiblePageForIndex(I)I

    move-result p1

    .line 341
    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    .line 342
    .local v0, "pageIndices":Lcom/android/launcher3/util/IntSet;
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v1

    .line 343
    .local v1, "panelCount":I
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v2

    .line 344
    .local v2, "pageCount":I
    move v3, p1

    .local v3, "page":I
    :goto_0
    add-int v4, p1, v1

    if-ge v3, v4, :cond_0

    if-ge v3, v2, :cond_0

    .line 345
    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/IntSet;->add(I)V

    .line 344
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 347
    .end local v3    # "page":I
    :cond_0
    return-object v0
.end method

.method private getPageNearestToCenterOfScreen(I)I
    .locals 6
    .param p1, "primaryScroll"    # I

    .line 1623
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getScreenCenter(I)I

    move-result v0

    .line 1624
    .local v0, "screenCenter":I
    const v1, 0x7fffffff

    .line 1625
    .local v1, "minDistanceFromScreenCenter":I
    const/4 v2, -0x1

    .line 1626
    .local v2, "minDistanceFromScreenCenterIndex":I
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v3

    .line 1627
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 1628
    nop

    .line 1629
    invoke-direct {p0, v4, v0}, Lcom/android/launcher3/PagedView;->getDisplacementFromScreenCenter(II)I

    move-result v5

    .line 1628
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 1630
    .local v5, "distanceFromScreenCenter":I
    if-ge v5, v1, :cond_0

    .line 1631
    move v1, v5

    .line 1632
    move v2, v4

    .line 1627
    .end local v5    # "distanceFromScreenCenter":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1635
    .end local v4    # "i":I
    :cond_1
    return v2
.end method

.method private getPageWidthSize(I)I
    .locals 2
    .param p1, "widthSize"    # I

    .line 668
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 669
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v1

    div-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 668
    return v0
.end method

.method private isVisible(I)Z
    .locals 2
    .param p1, "pageIndex"    # I

    .line 399
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getLeftmostVisiblePageForIndex(I)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$addFocusables$3(Ljava/util/ArrayList;IILjava/lang/Integer;)V
    .locals 1
    .param p1, "views"    # Ljava/util/ArrayList;
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .param p4, "pageIndex"    # Ljava/lang/Integer;

    .line 1000
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    return-void
.end method

.method private synthetic lambda$forEachVisiblePage$1(Ljava/util/function/Consumer;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "callback"    # Ljava/util/function/Consumer;
    .param p2, "pageIndex"    # Ljava/lang/Integer;

    .line 381
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 382
    .local v0, "page":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 383
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 385
    :cond_0
    return-void
.end method

.method private synthetic lambda$onTouchEvent$4(II)V
    .locals 0
    .param p1, "finalPage"    # I
    .param p2, "velocity"    # I

    .line 1422
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/PagedView;->snapToPageWithVelocity(II)Z

    return-void
.end method

.method private synthetic lambda$onTouchEvent$5(II)V
    .locals 0
    .param p1, "finalPage"    # I
    .param p2, "velocity"    # I

    .line 1429
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/PagedView;->snapToPageWithVelocity(II)Z

    return-void
.end method

.method private synthetic lambda$onViewRemoved$2()V
    .locals 1

    .line 908
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 909
    iput v0, p0, Lcom/android/launcher3/PagedView;->mCurrentScrollOverPage:I

    .line 910
    return-void
.end method

.method static synthetic lambda$static$0(Landroid/view/View;)Z
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1571
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1572
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1573
    .local v1, "pointerId":I
    iget v2, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    .line 1577
    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1578
    .local v2, "newPointerIndex":I
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v3, p1, v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryDirection(Landroid/view/MotionEvent;I)F

    move-result v3

    iput v3, p0, Lcom/android/launcher3/PagedView;->mDownMotionPrimary:F

    .line 1579
    float-to-int v3, v3

    iput v3, p0, Lcom/android/launcher3/PagedView;->mLastMotion:I

    .line 1580
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 1581
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_1

    .line 1582
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1585
    .end local v2    # "newPointerIndex":I
    :cond_1
    return-void
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .line 1563
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1564
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1565
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1566
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1568
    :cond_0
    return-void
.end method

.method private sendScrollAccessibilityEvent()V
    .locals 3

    .line 537
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->isObservedEventType(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 539
    nop

    .line 540
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 541
    .local v0, "ev":Landroid/view/accessibility/AccessibilityEvent;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 542
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 543
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollY()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 544
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget v2, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    invoke-interface {v1, v0, v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setMaxScroll(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 545
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 548
    .end local v0    # "ev":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private updatePageIndicator()V
    .locals 2

    .line 463
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 464
    check-cast v0, Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->setActiveMarker(I)V

    .line 466
    :cond_0
    return-void
.end method

.method private updateVelocityValues()V
    .locals 2

    .line 633
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 634
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/android/launcher3/R$dimen;->fling_threshold_velocity:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mFlingThresholdVelocity:I

    .line 635
    sget v1, Lcom/android/launcher3/R$dimen;->easy_fling_threshold_velocity:I

    .line 636
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mEasyFlingThresholdVelocity:I

    .line 637
    sget v1, Lcom/android/launcher3/R$dimen;->min_fling_velocity:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mMinFlingVelocity:I

    .line 638
    sget v1, Lcom/android/launcher3/R$dimen;->min_page_snap_velocity:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mMinSnapVelocity:I

    .line 639
    sget v1, Lcom/android/launcher3/R$integer;->config_pageSnapAnimationDuration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mPageSnapAnimationDuration:I

    .line 640
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onVelocityValuesUpdated()V

    .line 641
    return-void
.end method

.method private validateNewPage(I)I
    .locals 3
    .param p1, "newPage"    # I

    .line 296
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->ensureWithinScrollBounds(I)I

    move-result p1

    .line 298
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result p1

    .line 300
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 302
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getLeftmostVisiblePageForIndex(I)I

    move-result p1

    .line 304
    :cond_0
    return p1
.end method


# virtual methods
.method public abortScrollerAnimation()V
    .locals 1

    .line 263
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/util/EdgeEffectCompat;->finish()V

    .line 264
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/util/EdgeEffectCompat;->finish()V

    .line 265
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    .line 266
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 991
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    .line 992
    return-void

    .line 997
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->getPageIndices(I)Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    .line 998
    invoke-direct {p0, p2}, Lcom/android/launcher3/PagedView;->getNeighbourPageIndices(I)Lcom/android/launcher3/util/IntSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSet;->addAll(Lcom/android/launcher3/util/IntSet;)Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/PagedView$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/launcher3/PagedView$$ExternalSyntheticLambda8;-><init>(Lcom/android/launcher3/PagedView;Ljava/util/ArrayList;II)V

    .line 999
    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSet;->forEach(Ljava/util/function/Consumer;)V

    .line 1001
    return-void
.end method

.method protected announcePageForAccessibility()V
    .locals 1

    .line 551
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 555
    :cond_0
    return-void
.end method

.method protected canAnnouncePageDescription()Z
    .locals 1

    .line 1901
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method protected canScroll(FF)Z
    .locals 2
    .param p1, "absVScroll"    # F
    .param p2, "absHScroll"    # F

    .line 1551
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    .line 1552
    .local v0, "ac":Lcom/android/launcher3/views/ActivityContext;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method protected cancelCurrentPageLongPress()V
    .locals 1

    .line 1184
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    new-instance v0, Lcom/android/launcher3/PagedView$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/PagedView$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->forEachVisiblePage(Ljava/util/function/Consumer;)V

    .line 1185
    return-void
.end method

.method protected computeMaxScroll()I
    .locals 3

    .line 871
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    .line 872
    .local v0, "childCount":I
    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 873
    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    .line 874
    .local v1, "index":I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v2

    return v2

    .line 876
    .end local v1    # "index":I
    :cond_1
    return v1
.end method

.method protected computeMinScroll()I
    .locals 1

    .line 867
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public computeScroll()V
    .locals 0

    .line 611
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->computeScrollHelper()Z

    .line 612
    return-void
.end method

.method protected computeScrollHelper()Z
    .locals 6

    .line 558
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 560
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    .line 561
    .local v0, "oldPos":I
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v2

    .line 562
    .local v2, "newPos":I
    if-eq v0, v2, :cond_0

    .line 563
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    sget-object v4, Lcom/android/launcher3/touch/PagedOrientationHandler;->VIEW_SCROLL_TO:Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;

    iget-object v5, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v5

    invoke-interface {v3, p0, v4, v5}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;I)V

    .line 566
    :cond_0
    iget-boolean v3, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    if-eqz v3, :cond_2

    .line 567
    iget v3, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    if-ge v2, v3, :cond_1

    if-lt v0, v3, :cond_1

    .line 568
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/EdgeEffectCompat;->onAbsorb(I)V

    .line 569
    invoke-direct {p0, v1}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    .line 570
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onEdgeAbsorbingScroll()V

    goto :goto_0

    .line 571
    :cond_1
    iget v3, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    if-le v2, v3, :cond_2

    if-gt v0, v3, :cond_2

    .line 572
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/EdgeEffectCompat;->onAbsorb(I)V

    .line 573
    invoke-direct {p0, v1}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    .line 574
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onEdgeAbsorbingScroll()V

    .line 580
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    .line 581
    invoke-virtual {v5}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v5

    .line 580
    invoke-interface {v3, v4, v5}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v3

    .line 582
    .local v3, "finalPos":I
    if-ne v2, v3, :cond_3

    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v4}, Lcom/android/launcher3/util/EdgeEffectCompat;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v4}, Lcom/android/launcher3/util/EdgeEffectCompat;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 583
    invoke-direct {p0, v1}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    .line 586
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 587
    const/4 v1, 0x1

    return v1

    .line 588
    .end local v0    # "oldPos":I
    .end local v2    # "newPos":I
    .end local v3    # "finalPos":I
    :cond_4
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_6

    .line 589
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->sendScrollAccessibilityEvent()V

    .line 590
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 591
    .local v0, "prevPage":I
    iget v3, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-direct {p0, v3}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 592
    iput v3, p0, Lcom/android/launcher3/PagedView;->mCurrentScrollOverPage:I

    .line 593
    iput v2, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 594
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->notifyPageSwitchListener(I)V

    .line 598
    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-nez v2, :cond_5

    .line 599
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    .line 602
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->canAnnouncePageDescription()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 603
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->announcePageForAccessibility()V

    .line 606
    .end local v0    # "prevPage":I
    :cond_6
    return v1
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1152
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    .line 1153
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "touchSlopScale"    # F

    .line 1161
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget v0, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1162
    .local v0, "pointerIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 1164
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, p1, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryDirection(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 1165
    .local v1, "primaryDirection":F
    iget v2, p0, Lcom/android/launcher3/PagedView;->mLastMotion:I

    int-to-float v2, v2

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    .line 1166
    .local v2, "diff":I
    iget v3, p0, Lcom/android/launcher3/PagedView;->mTouchSlop:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1167
    .local v3, "touchSlop":I
    const/4 v4, 0x1

    if-gt v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/16 v6, 0xfe

    if-ne v5, v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v4

    .line 1169
    .local v5, "moved":Z
    :goto_1
    if-eqz v5, :cond_3

    .line 1171
    iput-boolean v4, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    .line 1172
    iget v6, p0, Lcom/android/launcher3/PagedView;->mTotalMotion:F

    iget v7, p0, Lcom/android/launcher3/PagedView;->mLastMotion:I

    int-to-float v7, v7

    sub-float/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v6, v7

    iput v6, p0, Lcom/android/launcher3/PagedView;->mTotalMotion:F

    .line 1173
    float-to-int v6, v1

    iput v6, p0, Lcom/android/launcher3/PagedView;->mLastMotion:I

    .line 1174
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageBeginTransition()V

    .line 1176
    invoke-virtual {p0, v4}, Lcom/android/launcher3/PagedView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1178
    :cond_3
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 7
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .line 956
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 957
    return v1

    .line 960
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_2

    .line 961
    const/16 v0, 0x11

    if-ne p2, v0, :cond_1

    .line 962
    const/16 p2, 0x42

    goto :goto_0

    .line 963
    :cond_1
    const/16 v0, 0x42

    if-ne p2, v0, :cond_2

    .line 964
    const/16 p2, 0x11

    .line 968
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    .line 969
    .local v0, "currentPage":I
    const/4 v2, -0x1

    .line 970
    .local v2, "closestNeighbourIndex":I
    const v3, 0x7fffffff

    .line 972
    .local v3, "closestNeighbourDistance":I
    invoke-direct {p0, p2}, Lcom/android/launcher3/PagedView;->getNeighbourPageIndices(I)Lcom/android/launcher3/util/IntSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/util/IntSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 973
    .local v5, "neighbourPageIndex":I
    sub-int v6, v5, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 974
    .local v6, "distance":I
    if-le v3, v6, :cond_3

    .line 975
    move v3, v6

    .line 976
    move v2, v5

    .line 978
    .end local v5    # "neighbourPageIndex":I
    .end local v6    # "distance":I
    :cond_3
    goto :goto_1

    .line 979
    :cond_4
    const/4 v4, -0x1

    if-eq v2, v4, :cond_5

    .line 980
    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .line 981
    .local v4, "page":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    .line 982
    invoke-virtual {v4, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 983
    return v1

    .line 986
    .end local v4    # "page":Landroid/view/View;
    :cond_5
    const/4 v1, 0x0

    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1953
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1954
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->drawEdgeEffect(Landroid/graphics/Canvas;)V

    .line 1955
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    .line 1956
    return-void
.end method

.method protected drawEdgeEffect(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1959
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/util/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/util/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1960
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getWidth()I

    move-result v0

    .line 1961
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getHeight()I

    move-result v1

    .line 1962
    .local v1, "height":I
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v2}, Lcom/android/launcher3/util/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1963
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1964
    .local v2, "restoreCount":I
    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1965
    neg-int v3, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1966
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v3, v1, v0}, Lcom/android/launcher3/util/EdgeEffectCompat;->setSize(II)V

    .line 1967
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/util/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1968
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->postInvalidateOnAnimation()V

    .line 1970
    :cond_1
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1972
    .end local v2    # "restoreCount":I
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v2}, Lcom/android/launcher3/util/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1973
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1974
    .restart local v2    # "restoreCount":I
    int-to-float v3, v0

    const/4 v4, 0x0

    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {p1, v5, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1975
    int-to-float v3, v0

    iget v4, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1977
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v3, v1, v0}, Lcom/android/launcher3/util/EdgeEffectCompat;->setSize(II)V

    .line 1978
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/util/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1979
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->postInvalidateOnAnimation()V

    .line 1981
    :cond_3
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1984
    .end local v0    # "width":I
    .end local v1    # "height":I
    .end local v2    # "restoreCount":I
    :cond_4
    return-void
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .param p1, "focused"    # Landroid/view/View;

    .line 1012
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1013
    .local v0, "current":Landroid/view/View;
    move-object v1, p1

    .line 1015
    .local v1, "v":Landroid/view/View;
    :goto_0
    if-ne v1, v0, :cond_0

    .line 1016
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 1017
    return-void

    .line 1019
    :cond_0
    if-ne v1, p0, :cond_1

    .line 1020
    return-void

    .line 1022
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 1023
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_2

    .line 1024
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/view/View;

    .line 1028
    .end local v2    # "parent":Landroid/view/ViewParent;
    goto :goto_0

    .line 1026
    .restart local v2    # "parent":Landroid/view/ViewParent;
    :cond_2
    return-void
.end method

.method public forEachVisiblePage(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 380
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getVisiblePageIndices()Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/PagedView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/PagedView$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/PagedView;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSet;->forEach(Ljava/util/function/Consumer;)V

    .line 386
    return-void
.end method

.method public forceFinishScroller()V
    .locals 2

    .line 288
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 291
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 292
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    .line 293
    return-void
.end method

.method public forceLayout()V
    .locals 1

    .line 661
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsLayoutValid:Z

    .line 662
    invoke-super {p0}, Landroid/view/ViewGroup;->forceLayout()V

    .line 663
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1810
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getChildGap(II)I
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 858
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected getChildOffset(I)I
    .locals 2
    .param p1, "index"    # I

    .line 915
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 916
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 917
    .local v0, "pageAtIndex":Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getChildStart(Landroid/view/View;)I

    move-result v1

    return v1

    .line 915
    .end local v0    # "pageAtIndex":Landroid/view/View;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getChildVisibleSize(I)I
    .locals 2
    .param p1, "index"    # I

    .line 921
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 922
    .local v0, "layout":Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v1

    return v1
.end method

.method public getCurrentPage()I
    .locals 1

    .line 217
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    return v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 4

    .line 1905
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$string;->default_scroll_format:I

    .line 1906
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 1905
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDestinationPage()I
    .locals 1

    .line 1611
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getDestinationPage(I)I

    move-result v0

    return v0
.end method

.method protected getDestinationPage(I)I
    .locals 1
    .param p1, "primaryScroll"    # I

    .line 1615
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen(I)I

    move-result v0

    return v0
.end method

.method protected getDisplacementFromScreenCenter(I)I
    .locals 3
    .param p1, "childIndex"    # I

    .line 1646
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    .line 1647
    .local v0, "primaryScroll":I
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getScreenCenter(I)I

    move-result v1

    .line 1648
    .local v1, "screenCenter":I
    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/PagedView;->getDisplacementFromScreenCenter(II)I

    move-result v2

    return v2
.end method

.method protected getDownMotionX()F
    .locals 1

    .line 1910
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget v0, p0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    return v0
.end method

.method protected getDownMotionY()F
    .locals 1

    .line 1914
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget v0, p0, Lcom/android/launcher3/PagedView;->mDownMotionY:F

    return v0
.end method

.method public getExpectedHeight()I
    .locals 1

    .line 615
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getExpectedWidth()I
    .locals 1

    .line 624
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getLayoutTransitionOffsetForPage(I)I
    .locals 5
    .param p1, "index"    # I

    .line 1222
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageScrollsInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    array-length v0, v0

    if-ge p1, v0, :cond_2

    if-gez p1, :cond_0

    goto :goto_1

    .line 1225
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1227
    .local v0, "child":Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingRight()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingLeft()I

    move-result v1

    .line 1228
    .local v1, "scrollOffset":I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    aget v2, v2, p1

    add-int/2addr v2, v1

    .line 1229
    .local v2, "baselineX":I
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v3

    int-to-float v4, v2

    sub-float/2addr v3, v4

    float-to-int v3, v3

    return v3

    .line 1223
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "scrollOffset":I
    .end local v2    # "baselineX":I
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public getLeftmostVisiblePageForIndex(I)I
    .locals 2
    .param p1, "pageIndex"    # I

    .line 314
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v0

    .line 315
    .local v0, "panelCount":I
    rem-int v1, p1, v0

    sub-int v1, p1, v1

    return v1
.end method

.method public getNextPage()I
    .locals 2

    .line 224
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    :goto_0
    return v0
.end method

.method public getNormalChildHeight()I
    .locals 2

    .line 619
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getExpectedHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getNormalChildWidth()I
    .locals 2

    .line 628
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getExpectedWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPageAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .line 232
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    .line 228
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageIndicator()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 207
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    return-object v0
.end method

.method public getPageNearestToCenterOfScreen()I
    .locals 1

    .line 1619
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen(I)I

    move-result v0

    return v0
.end method

.method protected getPageScrolls([IZLcom/android/launcher3/PagedView$ComputePageScrollsLogic;)Z
    .locals 22
    .param p1, "outPageScrolls"    # [I
    .param p2, "layoutChildren"    # Z
    .param p3, "scrollLogic"    # Lcom/android/launcher3/PagedView$ComputePageScrollsLogic;

    .line 804
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v1

    .line 806
    .local v1, "childCount":I
    iget-boolean v2, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_0

    add-int/lit8 v4, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 807
    .local v4, "startIndex":I
    :goto_0
    const/4 v5, -0x1

    if-eqz v2, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v1

    .line 808
    .local v6, "endIndex":I
    :goto_1
    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x1

    :goto_2
    move v2, v5

    .line 810
    .local v2, "delta":I
    iget-object v5, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v8, v0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    invoke-interface {v5, v0, v8}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getCenterForPage(Landroid/view/View;Landroid/graphics/Rect;)I

    move-result v5

    .line 812
    .local v5, "pageCenter":I
    iget-object v8, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v9, v0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    invoke-interface {v8, v0, v9}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getScrollOffsetStart(Landroid/view/View;Landroid/graphics/Rect;)I

    move-result v8

    .line 813
    .local v8, "scrollOffsetStart":I
    iget-object v9, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v10, v0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    invoke-interface {v9, v0, v10}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getScrollOffsetEnd(Landroid/view/View;Landroid/graphics/Rect;)I

    move-result v9

    .line 814
    .local v9, "scrollOffsetEnd":I
    const/4 v10, 0x0

    .line 815
    .local v10, "pageScrollChanged":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v11

    .line 817
    .local v11, "panelCount":I
    move v12, v4

    .local v12, "i":I
    move v13, v8

    .local v13, "childStart":I
    :goto_3
    if-eq v12, v6, :cond_8

    .line 818
    invoke-virtual {v0, v12}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v14

    .line 819
    .local v14, "child":Landroid/view/View;
    move-object/from16 v15, p3

    invoke-interface {v15, v14}, Lcom/android/launcher3/PagedView$ComputePageScrollsLogic;->shouldIncludeView(Landroid/view/View;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 820
    iget-object v3, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    move/from16 v7, p2

    invoke-interface {v3, v14, v13, v5, v7}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getChildBounds(Landroid/view/View;IIZ)Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;

    move-result-object v3

    .line 822
    .local v3, "bounds":Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;
    move/from16 v17, v4

    .end local v4    # "startIndex":I
    .local v17, "startIndex":I
    iget v4, v3, Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;->primaryDimension:I

    .line 823
    .local v4, "primaryDimension":I
    move/from16 v18, v5

    .end local v5    # "pageCenter":I
    .local v18, "pageCenter":I
    iget v5, v3, Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;->childPrimaryEnd:I

    .line 828
    .local v5, "childPrimaryEnd":I
    move-object/from16 v19, v3

    .end local v3    # "bounds":Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;
    .local v19, "bounds":Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;
    iget-boolean v3, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v3, :cond_3

    sub-int v3, v5, v9

    goto :goto_4

    :cond_3
    sub-int v3, v13, v8

    .line 829
    .local v3, "pageScroll":I
    :goto_4
    move/from16 v20, v5

    .end local v5    # "childPrimaryEnd":I
    .local v20, "childPrimaryEnd":I
    aget v5, p1, v12

    if-eq v5, v3, :cond_4

    .line 830
    const/4 v10, 0x1

    .line 831
    aput v3, p1, v12

    .line 833
    :cond_4
    add-int v5, v12, v2

    invoke-virtual {v0, v12, v5}, Lcom/android/launcher3/PagedView;->getChildGap(II)I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v13, v5

    .line 836
    iget-boolean v5, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    goto :goto_5

    :cond_5
    add-int/lit8 v5, v11, -0x1

    .line 837
    .local v5, "lastPanel":I
    :goto_5
    move/from16 v21, v3

    .end local v3    # "pageScroll":I
    .local v21, "pageScroll":I
    rem-int v3, v12, v11

    if-ne v3, v5, :cond_7

    .line 838
    iget v3, v0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v13, v3

    goto :goto_6

    .line 819
    .end local v17    # "startIndex":I
    .end local v18    # "pageCenter":I
    .end local v19    # "bounds":Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;
    .end local v20    # "childPrimaryEnd":I
    .end local v21    # "pageScroll":I
    .local v4, "startIndex":I
    .local v5, "pageCenter":I
    :cond_6
    move/from16 v7, p2

    move/from16 v17, v4

    move/from16 v18, v5

    .line 817
    .end local v4    # "startIndex":I
    .end local v5    # "pageCenter":I
    .end local v14    # "child":Landroid/view/View;
    .restart local v17    # "startIndex":I
    .restart local v18    # "pageCenter":I
    :cond_7
    :goto_6
    add-int/2addr v12, v2

    move/from16 v4, v17

    move/from16 v5, v18

    goto :goto_3

    .end local v17    # "startIndex":I
    .end local v18    # "pageCenter":I
    .restart local v4    # "startIndex":I
    .restart local v5    # "pageCenter":I
    :cond_8
    move/from16 v7, p2

    move-object/from16 v15, p3

    move/from16 v17, v4

    move/from16 v18, v5

    .line 843
    .end local v4    # "startIndex":I
    .end local v5    # "pageCenter":I
    .end local v12    # "i":I
    .end local v13    # "childStart":I
    .restart local v17    # "startIndex":I
    .restart local v18    # "pageCenter":I
    const/4 v3, 0x1

    if-le v11, v3, :cond_a

    .line 844
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v1, :cond_a

    .line 847
    invoke-virtual {v0, v3}, Lcom/android/launcher3/PagedView;->getLeftmostVisiblePageForIndex(I)I

    move-result v4

    aget v4, p1, v4

    .line 848
    .local v4, "adjustedScroll":I
    aget v5, p1, v3

    if-eq v5, v4, :cond_9

    .line 849
    aput v4, p1, v3

    .line 850
    const/4 v10, 0x1

    .line 844
    .end local v4    # "adjustedScroll":I
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 854
    .end local v3    # "i":I
    :cond_a
    return v10
.end method

.method public getPageSpacing()I
    .locals 1

    .line 886
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget v0, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    return v0
.end method

.method protected getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;
    .locals 1

    .line 236
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    return-object v0
.end method

.method protected getPanelCount()I
    .locals 1

    .line 322
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method protected getScreenCenter(I)I
    .locals 6
    .param p1, "primaryScroll"    # I

    .line 1652
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScale(Landroid/view/View;)F

    move-result v0

    .line 1653
    .local v0, "primaryScale":F
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPivotX()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPivotY()F

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(FF)F

    move-result v1

    .line 1654
    .local v1, "primaryPivot":F
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v2, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v2

    .line 1655
    .local v2, "pageOrientationSize":I
    int-to-float v3, p1

    int-to-float v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v4, v1

    div-float/2addr v4, v0

    add-float/2addr v3, v4

    add-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    return v3
.end method

.method public getScrollForPage(I)I
    .locals 2
    .param p1, "index"    # I

    .line 1212
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageScrollsInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    array-length v1, v0

    if-ge p1, v1, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 1215
    :cond_0
    aget v0, v0, p1

    return v0

    .line 1213
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getScrollProgress(ILandroid/view/View;I)F
    .locals 9
    .param p1, "screenCenter"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "page"    # I

    .line 1188
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 1189
    .local v0, "halfScreenSize":I
    invoke-virtual {p0, p3}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v1

    add-int/2addr v1, v0

    sub-int v1, p1, v1

    .line 1190
    .local v1, "delta":I
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v2

    .line 1191
    .local v2, "panelCount":I
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v3

    .line 1193
    .local v3, "pageCount":I
    add-int v4, p3, v2

    .line 1194
    .local v4, "adjacentPage":I
    if-gez v1, :cond_0

    iget-boolean v5, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v5, :cond_1

    :cond_0
    if-lez v1, :cond_2

    iget-boolean v5, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v5, :cond_2

    .line 1195
    :cond_1
    sub-int v4, p3, v2

    .line 1199
    :cond_2
    if-ltz v4, :cond_4

    add-int/lit8 v5, v3, -0x1

    if-le v4, v5, :cond_3

    goto :goto_0

    .line 1202
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v5

    invoke-virtual {p0, p3}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .local v5, "totalDistance":I
    goto :goto_1

    .line 1200
    .end local v5    # "totalDistance":I
    :cond_4
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v2

    .line 1205
    .restart local v5    # "totalDistance":I
    :goto_1
    int-to-float v6, v1

    int-to-float v7, v5

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v7, v8

    div-float/2addr v6, v7

    .line 1206
    .local v6, "scrollProgress":F
    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 1207
    const/high16 v7, -0x40800000    # -1.0f

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1208
    return v6
.end method

.method protected getSnapAnimationDuration()I
    .locals 1

    .line 1707
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget v0, p0, Lcom/android/launcher3/PagedView;->mPageSnapAnimationDuration:I

    return v0
.end method

.method public getVisibleChildrenRange()[I
    .locals 10

    .line 1923
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const/4 v0, 0x0

    .line 1924
    .local v0, "visibleLeft":F
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 1925
    .local v1, "visibleRight":F
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScaleX()F

    move-result v2

    .line 1926
    .local v2, "scaleX":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 1927
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 1928
    .local v3, "mid":F
    sub-float v4, v3, v0

    div-float/2addr v4, v2

    sub-float v0, v3, v4

    .line 1929
    sub-float v4, v1, v3

    div-float/2addr v4, v2

    add-float v1, v3, v4

    .line 1932
    .end local v3    # "mid":F
    :cond_0
    const/4 v3, -0x1

    .line 1933
    .local v3, "leftChild":I
    const/4 v4, -0x1

    .line 1934
    .local v4, "rightChild":I
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v5

    .line 1935
    .local v5, "childCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_3

    .line 1936
    invoke-virtual {p0, v6}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    .line 1938
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    .line 1939
    .local v8, "left":F
    cmpg-float v9, v8, v1

    if-gtz v9, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v8

    cmpl-float v9, v9, v0

    if-ltz v9, :cond_2

    .line 1940
    const/4 v9, -0x1

    if-ne v3, v9, :cond_1

    .line 1941
    move v3, v6

    .line 1943
    :cond_1
    move v4, v6

    .line 1935
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "left":F
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1946
    .end local v6    # "i":I
    :cond_3
    iget-object v6, p0, Lcom/android/launcher3/PagedView;->mTmpIntPair:[I

    const/4 v7, 0x0

    aput v3, v6, v7

    .line 1947
    const/4 v7, 0x1

    aput v4, v6, v7

    .line 1948
    return-object v6
.end method

.method public getVisiblePageIndices()Lcom/android/launcher3/util/IntSet;
    .locals 1

    .line 329
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->getPageIndices(I)Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    return-object v0
.end method

.method protected initEdgeEffect()V
    .locals 2

    .line 195
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    new-instance v0, Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    .line 196
    new-instance v0, Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    .line 197
    return-void
.end method

.method public initParentViews(Landroid/view/View;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;

    .line 200
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicatorViewId:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 201
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    .line 202
    check-cast v0, Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v2

    div-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->setMarkersCount(I)V

    .line 204
    :cond_0
    return-void
.end method

.method public isHandlingTouch()Z
    .locals 1

    .line 1148
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    return v0
.end method

.method protected isPageInTransition()Z
    .locals 1

    .line 489
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    return v0
.end method

.method protected isPageOrderFlipped()Z
    .locals 1

    .line 1814
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected isPageScrollsInitialized()Z
    .locals 2

    .line 714
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isSignificantMove(FI)Z
    .locals 2
    .param p1, "absoluteDelta"    # F
    .param p2, "pageOrientedSize"    # I

    .line 1255
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    int-to-float v0, p2

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVisible(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 392
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->isVisible(I)Z

    move-result v0

    return v0
.end method

.method protected notifyPageSwitchListener(I)V
    .locals 0
    .param p1, "prevPage"    # I

    .line 459
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->updatePageIndicator()V

    .line 460
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 649
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 650
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->updateVelocityValues()V

    .line 651
    return-void
.end method

.method protected onEdgeAbsorbingScroll()V
    .locals 0

    .line 1492
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1514
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    .line 1515
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 1520
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/16 v2, 0x9

    if-eqz v0, :cond_0

    .line 1521
    const/4 v0, 0x0

    .line 1522
    .local v0, "vscroll":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .local v2, "hscroll":F
    goto :goto_0

    .line 1524
    .end local v0    # "vscroll":F
    .end local v2    # "hscroll":F
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    .line 1525
    .restart local v0    # "vscroll":F
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 1527
    .restart local v2    # "hscroll":F
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/PagedView;->canScroll(FF)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 1528
    return v4

    .line 1530
    :cond_1
    const/4 v3, 0x0

    cmpl-float v5, v2, v3

    if-nez v5, :cond_2

    cmpl-float v5, v0, v3

    if-eqz v5, :cond_8

    .line 1531
    :cond_2
    iget-boolean v5, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v5, :cond_4

    cmpg-float v5, v2, v3

    if-ltz v5, :cond_3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_6

    :cond_3
    move v4, v1

    goto :goto_1

    .line 1532
    :cond_4
    cmpl-float v5, v2, v3

    if-gtz v5, :cond_5

    cmpl-float v3, v0, v3

    if-lez v3, :cond_6

    :cond_5
    move v4, v1

    :cond_6
    :goto_1
    move v3, v4

    .line 1533
    .local v3, "isForwardScroll":Z
    if-eqz v3, :cond_7

    .line 1534
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollRight()Z

    goto :goto_2

    .line 1536
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollLeft()Z

    .line 1538
    :goto_2
    return v1

    .line 1543
    .end local v0    # "vscroll":F
    .end local v2    # "hscroll":F
    .end local v3    # "isForwardScroll":Z
    :cond_8
    :goto_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1861
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1862
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1863
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1821
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1822
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageOrderFlipped()Z

    move-result v0

    .line 1823
    .local v0, "pagesFlipped":Z
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1824
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v1

    .line 1825
    .local v1, "primaryScroll":I
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v5

    sub-int/2addr v4, v5

    if-lt v3, v4, :cond_1

    .line 1826
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v5

    sub-int/2addr v4, v5

    if-ne v3, v4, :cond_4

    .line 1827
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v3

    if-eq v1, v3, :cond_4

    .line 1828
    :cond_1
    if-eqz v0, :cond_2

    .line 1829
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_1

    .line 1830
    :cond_2
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 1828
    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1831
    iget-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v3, :cond_3

    .line 1832
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_2

    .line 1833
    :cond_3
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 1831
    :goto_2
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1835
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v3

    if-gtz v3, :cond_5

    .line 1836
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v3

    if-eq v1, v3, :cond_8

    .line 1837
    :cond_5
    if-eqz v0, :cond_6

    .line 1838
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_3

    .line 1839
    :cond_6
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 1837
    :goto_3
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1840
    iget-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v3, :cond_7

    .line 1841
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_4

    .line 1842
    :cond_7
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 1840
    :goto_4
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1847
    :cond_8
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 1848
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 1849
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1053
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 1055
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1062
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1063
    .local v0, "action":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    .line 1064
    const/4 v1, 0x1

    return v1

    .line 1067
    :cond_1
    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1105
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1106
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->releaseVelocityTracker()V

    goto :goto_0

    .line 1073
    :pswitch_2
    iget v1, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1074
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1101
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->resetTouchState()V

    .line 1102
    goto :goto_0

    .line 1085
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1086
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1088
    .local v3, "y":F
    iput v2, p0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    .line 1089
    iput v3, p0, Lcom/android/launcher3/PagedView;->mDownMotionY:F

    .line 1090
    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v4, p1, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryDirection(Landroid/view/MotionEvent;I)F

    move-result v4

    iput v4, p0, Lcom/android/launcher3/PagedView;->mDownMotionPrimary:F

    .line 1091
    float-to-int v4, v4

    iput v4, p0, Lcom/android/launcher3/PagedView;->mLastMotion:I

    .line 1092
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/launcher3/PagedView;->mTotalMotion:F

    .line 1093
    iput-boolean v1, p0, Lcom/android/launcher3/PagedView;->mAllowEasyFling:Z

    .line 1094
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 1095
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->updateIsBeingDraggedOnTouchDown(Landroid/view/MotionEvent;)V

    .line 1096
    nop

    .line 1114
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 737
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsLayoutValid:Z

    .line 738
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v1

    .line 739
    .local v1, "childCount":I
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    .line 740
    .local v2, "pageScrolls":[I
    const/4 v3, 0x0

    .line 741
    .local v3, "pageScrollChanged":Z
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageScrollsInitialized()Z

    move-result v4

    if-nez v4, :cond_0

    .line 742
    new-array v2, v1, [I

    .line 743
    const/4 v3, 0x1

    .line 748
    :cond_0
    sget-object v4, Lcom/android/launcher3/PagedView;->SIMPLE_SCROLL_LOGIC:Lcom/android/launcher3/PagedView$ComputePageScrollsLogic;

    invoke-virtual {p0, v2, v0, v4}, Lcom/android/launcher3/PagedView;->getPageScrolls([IZLcom/android/launcher3/PagedView$ComputePageScrollsLogic;)Z

    move-result v0

    or-int/2addr v0, v3

    .line 749
    .end local v3    # "pageScrollChanged":Z
    .local v0, "pageScrollChanged":Z
    iput-object v2, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    .line 751
    if-nez v1, :cond_1

    .line 752
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onPageScrollsInitialized()V

    .line 753
    return-void

    .line 756
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v3

    .line 759
    .local v3, "transition":Landroid/animation/LayoutTransition;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 760
    new-instance v4, Lcom/android/launcher3/PagedView$1;

    invoke-direct {v4, p0}, Lcom/android/launcher3/PagedView$1;-><init>(Lcom/android/launcher3/PagedView;)V

    invoke-virtual {v3, v4}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    goto :goto_0

    .line 777
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateMinAndMaxScrollX()V

    .line 780
    :goto_0
    iget-boolean v4, p0, Lcom/android/launcher3/PagedView;->mFirstLayout:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ltz v4, :cond_3

    if-ge v4, v1, :cond_3

    .line 781
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateCurrentPageScroll()V

    .line 782
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/launcher3/PagedView;->mFirstLayout:Z

    .line 785
    :cond_3
    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v0, :cond_5

    .line 787
    invoke-static {}, Lcom/android/launcher3/Utilities;->isRunningInTestHarness()Z

    move-result v4

    if-eqz v4, :cond_4

    instance-of v4, p0, Lcom/android/launcher3/Workspace;

    if-nez v4, :cond_4

    .line 788
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#onLayout() -> if(mScroller.isFinished() && pageScrollChanged) -> getNextPage(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 790
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", getScrollForPage(getNextPage()): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 791
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 788
    const-string v5, "b/246283207"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    .line 795
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onPageScrollsInitialized()V

    .line 796
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 674
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 675
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 676
    return-void

    .line 681
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 682
    .local v0, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 683
    .local v1, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 684
    .local v2, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 686
    .local v3, "heightSize":I
    if-eqz v0, :cond_4

    if-nez v2, :cond_1

    goto :goto_1

    .line 692
    :cond_1
    if-lez v1, :cond_3

    if-gtz v3, :cond_2

    goto :goto_0

    .line 701
    :cond_2
    nop

    .line 702
    invoke-direct {p0, v1}, Lcom/android/launcher3/PagedView;->getPageWidthSize(I)I

    move-result v4

    .line 701
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 703
    .local v4, "myWidthSpec":I
    iget-object v6, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v6, v3, v6

    iget-object v7, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 708
    .local v5, "myHeightSpec":I
    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/PagedView;->measureChildren(II)V

    .line 709
    invoke-virtual {p0, v1, v3}, Lcom/android/launcher3/PagedView;->setMeasuredDimension(II)V

    .line 710
    return-void

    .line 693
    .end local v4    # "myWidthSpec":I
    .end local v5    # "myHeightSpec":I
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 694
    return-void

    .line 687
    :cond_4
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 688
    return-void
.end method

.method protected onNotSnappingToPageInFreeScroll()V
    .locals 0

    .line 1485
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    return-void
.end method

.method protected onPageBeginTransition()V
    .locals 0

    .line 497
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    return-void
.end method

.method protected onPageEndTransition()V
    .locals 3

    .line 504
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPageScrollDiff:I

    .line 505
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "TAPL_SCROLL_FINISHED"

    invoke-static {v0, v1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendTestProtocolEventToTest(Landroid/content/Context;Ljava/lang/String;)V

    .line 507
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOnPageTransitionEndCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 510
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 511
    iput-object v2, p0, Lcom/android/launcher3/PagedView;->mOnPageTransitionEndCallback:Ljava/lang/Runnable;

    .line 513
    :cond_0
    return-void
.end method

.method protected onPageScrollsInitialized()V
    .locals 2

    .line 728
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOnPageScrollsInitializedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 729
    .local v1, "callback":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 730
    .end local v1    # "callback":Ljava/lang/Runnable;
    goto :goto_0

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOnPageScrollsInitializedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 732
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 3
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 942
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 943
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .local v0, "focusablePage":I
    goto :goto_0

    .line 945
    .end local v0    # "focusablePage":I
    :cond_0
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 947
    .restart local v0    # "focusablePage":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 948
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 949
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    return v2

    .line 951
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method protected onScrollChanged(IIII)V
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .line 1795
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1797
    return-void

    .line 1799
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getDestinationPage()I

    move-result v0

    .line 1800
    .local v0, "newDestinationPage":I
    if-ltz v0, :cond_1

    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentScrollOverPage:I

    if-eq v0, v1, :cond_1

    .line 1801
    iput v0, p0, Lcom/android/launcher3/PagedView;->mCurrentScrollOverPage:I

    .line 1802
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onScrollOverPageChanged()V

    .line 1804
    :cond_1
    return-void
.end method

.method protected onScrollOverPageChanged()V
    .locals 0

    .line 1499
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    return-void
.end method

.method protected onScrollerAnimationAborted()V
    .locals 0

    .line 270
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 34
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1261
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    if-gtz v2, :cond_0

    return v3

    .line 1263
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1265
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 1267
    .local v2, "action":I
    and-int/lit16 v4, v2, 0xff

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    sparse-switch v4, :sswitch_data_0

    move/from16 v18, v2

    .end local v2    # "action":I
    .local v18, "action":I
    goto/16 :goto_13

    .line 1294
    .end local v18    # "action":I
    .restart local v2    # "action":I
    :sswitch_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    .line 1295
    iput-boolean v7, v0, Lcom/android/launcher3/PagedView;->mAllowEasyFling:Z

    .line 1296
    move/from16 v18, v2

    goto/16 :goto_13

    .line 1477
    :sswitch_1
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1478
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->releaseVelocityTracker()V

    move/from16 v18, v2

    goto/16 :goto_13

    .line 1468
    :sswitch_2
    iget-boolean v3, v0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-eqz v3, :cond_1

    .line 1469
    new-instance v3, Lcom/android/launcher3/PagedView$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0}, Lcom/android/launcher3/PagedView$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/PagedView;)V

    invoke-virtual {v0, v3}, Lcom/android/launcher3/PagedView;->runOnPageScrollsInitialized(Ljava/lang/Runnable;)V

    .line 1471
    :cond_1
    iget-object v3, v0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/util/EdgeEffectCompat;->onRelease(Landroid/view/MotionEvent;)V

    .line 1472
    iget-object v3, v0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/util/EdgeEffectCompat;->onRelease(Landroid/view/MotionEvent;)V

    .line 1473
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->resetTouchState()V

    .line 1474
    move/from16 v18, v2

    goto/16 :goto_13

    .line 1299
    :sswitch_3
    iget-boolean v3, v0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-eqz v3, :cond_e

    .line 1301
    iget v3, v0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 1303
    .local v3, "pointerIndex":I
    if-ne v3, v5, :cond_2

    return v7

    .line 1304
    :cond_2
    iget-object v4, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v4, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v4

    .line 1305
    .local v4, "oldScroll":I
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    .line 1306
    .local v5, "dx":I
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v8, v8

    .line 1308
    .local v8, "dy":I
    iget-object v9, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v9, v5, v8}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v9

    .line 1309
    .local v9, "direction":I
    iget v10, v0, Lcom/android/launcher3/PagedView;->mLastMotion:I

    sub-int/2addr v10, v9

    .line 1311
    .local v10, "delta":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getWidth()I

    move-result v11

    .line 1312
    .local v11, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getHeight()I

    move-result v12

    .line 1313
    .local v12, "height":I
    iget-object v13, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v13, v11, v12}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v13

    int-to-float v13, v13

    .line 1314
    .local v13, "size":F
    if-eqz v11, :cond_4

    if-nez v12, :cond_3

    goto :goto_0

    .line 1316
    :cond_3
    iget-object v14, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 1315
    invoke-interface {v14, v5, v8}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(II)I

    move-result v14

    int-to-float v14, v14

    iget-object v15, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 1316
    invoke-interface {v15, v11, v12}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(II)I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    goto :goto_1

    .line 1314
    :cond_4
    :goto_0
    move v14, v6

    .line 1316
    :goto_1
    nop

    .line 1317
    .local v14, "displacement":F
    iget v15, v0, Lcom/android/launcher3/PagedView;->mTotalMotion:F

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v15, v7

    iput v15, v0, Lcom/android/launcher3/PagedView;->mTotalMotion:F

    .line 1319
    iget-boolean v7, v0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    if-eqz v7, :cond_7

    .line 1320
    const/4 v7, 0x0

    .line 1321
    .local v7, "consumed":I
    if-gez v10, :cond_5

    iget-object v15, v0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v15}, Lcom/android/launcher3/util/EdgeEffectCompat;->getDistance()F

    move-result v15

    cmpl-float v15, v15, v6

    if-eqz v15, :cond_5

    .line 1322
    iget-object v6, v0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    int-to-float v15, v10

    div-float/2addr v15, v13

    .line 1323
    invoke-virtual {v6, v15, v14, v1}, Lcom/android/launcher3/util/EdgeEffectCompat;->onPullDistance(FFLandroid/view/MotionEvent;)F

    move-result v6

    mul-float/2addr v6, v13

    .line 1322
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v7

    move/from16 v18, v2

    move/from16 v19, v3

    goto :goto_2

    .line 1324
    :cond_5
    if-lez v10, :cond_6

    iget-object v15, v0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v15}, Lcom/android/launcher3/util/EdgeEffectCompat;->getDistance()F

    move-result v15

    cmpl-float v6, v15, v6

    if-eqz v6, :cond_6

    .line 1325
    neg-float v6, v13

    iget-object v15, v0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    move/from16 v18, v2

    .end local v2    # "action":I
    .restart local v18    # "action":I
    neg-int v2, v10

    int-to-float v2, v2

    div-float/2addr v2, v13

    move/from16 v19, v3

    const/high16 v17, 0x3f800000    # 1.0f

    .end local v3    # "pointerIndex":I
    .local v19, "pointerIndex":I
    sub-float v3, v17, v14

    .line 1326
    invoke-virtual {v15, v2, v3, v1}, Lcom/android/launcher3/util/EdgeEffectCompat;->onPullDistance(FFLandroid/view/MotionEvent;)F

    move-result v2

    mul-float/2addr v6, v2

    .line 1325
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v7

    goto :goto_2

    .line 1324
    .end local v18    # "action":I
    .end local v19    # "pointerIndex":I
    .restart local v2    # "action":I
    .restart local v3    # "pointerIndex":I
    :cond_6
    move/from16 v18, v2

    move/from16 v19, v3

    .line 1328
    .end local v2    # "action":I
    .end local v3    # "pointerIndex":I
    .restart local v18    # "action":I
    .restart local v19    # "pointerIndex":I
    :goto_2
    sub-int/2addr v10, v7

    goto :goto_3

    .line 1319
    .end local v7    # "consumed":I
    .end local v18    # "action":I
    .end local v19    # "pointerIndex":I
    .restart local v2    # "action":I
    .restart local v3    # "pointerIndex":I
    :cond_7
    move/from16 v18, v2

    move/from16 v19, v3

    .line 1330
    .end local v2    # "action":I
    .end local v3    # "pointerIndex":I
    .restart local v18    # "action":I
    .restart local v19    # "pointerIndex":I
    :goto_3
    int-to-float v2, v10

    iget-object v3, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v3, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScale(Landroid/view/View;)F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 1335
    .end local v10    # "delta":I
    .local v2, "delta":I
    iput v9, v0, Lcom/android/launcher3/PagedView;->mLastMotion:I

    .line 1337
    if-eqz v2, :cond_c

    .line 1338
    iget-object v3, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    sget-object v6, Lcom/android/launcher3/touch/PagedOrientationHandler;->VIEW_SCROLL_BY:Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;

    invoke-interface {v3, v0, v6, v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;I)V

    .line 1340
    iget-boolean v3, v0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    if-eqz v3, :cond_d

    .line 1341
    add-int v3, v4, v2

    int-to-float v3, v3

    .line 1343
    .local v3, "pulledToX":F
    iget v6, v0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    int-to-float v6, v6

    cmpg-float v6, v3, v6

    if-gez v6, :cond_8

    .line 1344
    iget-object v6, v0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    neg-int v7, v2

    int-to-float v7, v7

    div-float/2addr v7, v13

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v15, v10, v14

    invoke-virtual {v6, v7, v15, v1}, Lcom/android/launcher3/util/EdgeEffectCompat;->onPullDistance(FFLandroid/view/MotionEvent;)F

    .line 1345
    iget-object v6, v0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v6}, Lcom/android/launcher3/util/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_9

    .line 1346
    iget-object v6, v0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v6, v1}, Lcom/android/launcher3/util/EdgeEffectCompat;->onRelease(Landroid/view/MotionEvent;)V

    goto :goto_4

    .line 1348
    :cond_8
    iget v6, v0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    int-to-float v6, v6

    cmpl-float v6, v3, v6

    if-lez v6, :cond_9

    .line 1349
    iget-object v6, v0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    int-to-float v7, v2

    div-float/2addr v7, v13

    invoke-virtual {v6, v7, v14, v1}, Lcom/android/launcher3/util/EdgeEffectCompat;->onPullDistance(FFLandroid/view/MotionEvent;)F

    .line 1350
    iget-object v6, v0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v6}, Lcom/android/launcher3/util/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_9

    .line 1351
    iget-object v6, v0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v6, v1}, Lcom/android/launcher3/util/EdgeEffectCompat;->onRelease(Landroid/view/MotionEvent;)V

    .line 1355
    :cond_9
    :goto_4
    iget-object v6, v0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v6}, Lcom/android/launcher3/util/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, v0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v6}, Lcom/android/launcher3/util/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_b

    .line 1356
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->postInvalidateOnAnimation()V

    .line 1358
    .end local v3    # "pulledToX":F
    :cond_b
    goto :goto_5

    .line 1360
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->awakenScrollBars()Z

    .line 1362
    .end local v2    # "delta":I
    .end local v4    # "oldScroll":I
    .end local v5    # "dx":I
    .end local v8    # "dy":I
    .end local v9    # "direction":I
    .end local v11    # "width":I
    .end local v12    # "height":I
    .end local v13    # "size":F
    .end local v14    # "displacement":F
    .end local v19    # "pointerIndex":I
    :cond_d
    :goto_5
    goto/16 :goto_13

    .line 1363
    .end local v18    # "action":I
    .local v2, "action":I
    :cond_e
    move/from16 v18, v2

    .end local v2    # "action":I
    .restart local v18    # "action":I
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    .line 1365
    goto/16 :goto_13

    .line 1368
    .end local v18    # "action":I
    .restart local v2    # "action":I
    :sswitch_4
    move/from16 v18, v2

    .end local v2    # "action":I
    .restart local v18    # "action":I
    iget-boolean v2, v0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-eqz v2, :cond_27

    .line 1369
    iget v2, v0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 1370
    .local v2, "activePointerId":I
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 1371
    .local v4, "pointerIndex":I
    if-ne v4, v5, :cond_f

    const/4 v3, 0x1

    return v3

    .line 1373
    :cond_f
    iget-object v5, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v5, v1, v4}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryDirection(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 1375
    .local v5, "primaryDirection":F
    iget-object v7, v0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1376
    .local v7, "velocityTracker":Landroid/view/VelocityTracker;
    iget v8, v0, Lcom/android/launcher3/PagedView;->mMaximumVelocity:I

    int-to-float v8, v8

    const/16 v9, 0x3e8

    invoke-virtual {v7, v9, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1378
    iget-object v8, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget v9, v0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    invoke-interface {v8, v7, v9}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryVelocity(Landroid/view/VelocityTracker;I)F

    move-result v8

    float-to-int v8, v8

    .line 1380
    .local v8, "velocity":I
    iget v9, v0, Lcom/android/launcher3/PagedView;->mDownMotionPrimary:F

    sub-float v9, v5, v9

    .line 1382
    .local v9, "delta":F
    iget v10, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v0, v10}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v10

    .line 1383
    .local v10, "current":Landroid/view/View;
    if-nez v10, :cond_10

    .line 1384
    const-string v3, "PagedView"

    const-string v6, "current page was null. this should not happen."

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    const/4 v3, 0x1

    return v3

    .line 1388
    :cond_10
    iget-object v11, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v11, v10}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v11

    int-to-float v11, v11

    iget-object v12, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 1389
    invoke-interface {v12, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScale(Landroid/view/View;)F

    move-result v12

    mul-float/2addr v11, v12

    float-to-int v11, v11

    .line 1390
    .local v11, "pageOrientedSize":I
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v12

    invoke-virtual {v0, v12, v11}, Lcom/android/launcher3/PagedView;->isSignificantMove(FI)Z

    move-result v12

    .line 1392
    .local v12, "isSignificantMove":Z
    iget v13, v0, Lcom/android/launcher3/PagedView;->mTotalMotion:F

    iget v14, v0, Lcom/android/launcher3/PagedView;->mLastMotion:I

    int-to-float v14, v14

    sub-float/2addr v14, v5

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    add-float/2addr v13, v14

    iput v13, v0, Lcom/android/launcher3/PagedView;->mTotalMotion:F

    .line 1393
    iget-boolean v14, v0, Lcom/android/launcher3/PagedView;->mAllowEasyFling:Z

    if-nez v14, :cond_12

    iget v14, v0, Lcom/android/launcher3/PagedView;->mPageSlop:I

    int-to-float v14, v14

    cmpl-float v13, v13, v14

    if-lez v13, :cond_11

    goto :goto_6

    :cond_11
    move v13, v3

    goto :goto_7

    :cond_12
    :goto_6
    const/4 v13, 0x1

    .line 1394
    .local v13, "passedSlop":Z
    :goto_7
    if-eqz v13, :cond_13

    invoke-virtual {v0, v8}, Lcom/android/launcher3/PagedView;->shouldFlingForVelocity(I)Z

    move-result v14

    if-eqz v14, :cond_13

    const/4 v14, 0x1

    goto :goto_8

    :cond_13
    move v14, v3

    .line 1395
    .local v14, "isFling":Z
    :goto_8
    iget-boolean v15, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v15, :cond_14

    cmpl-float v6, v9, v6

    if-lez v6, :cond_15

    goto :goto_9

    :cond_14
    cmpg-float v6, v9, v6

    if-gez v6, :cond_15

    :goto_9
    const/4 v6, 0x1

    goto :goto_a

    :cond_15
    move v6, v3

    .line 1396
    .local v6, "isDeltaLeft":Z
    :goto_a
    if-eqz v15, :cond_16

    if-lez v8, :cond_17

    goto :goto_b

    :cond_16
    if-gez v8, :cond_17

    :goto_b
    const/4 v3, 0x1

    .line 1402
    .local v3, "isVelocityLeft":Z
    :cond_17
    iget-boolean v15, v0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-nez v15, :cond_21

    .line 1406
    const/4 v15, 0x0

    .line 1407
    .local v15, "returnToOriginalPage":Z
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v19, v2

    .end local v2    # "activePointerId":I
    .local v19, "activePointerId":I
    int-to-float v2, v11

    const v20, 0x3ea8f5c3    # 0.33f

    mul-float v2, v2, v20

    cmpl-float v2, v17, v2

    if-lez v2, :cond_18

    int-to-float v2, v8

    .line 1408
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    move-result v17

    cmpl-float v2, v2, v17

    if-eqz v2, :cond_18

    if-eqz v14, :cond_18

    .line 1409
    const/4 v15, 0x1

    .line 1417
    :cond_18
    if-eqz v12, :cond_19

    if-nez v6, :cond_19

    if-eqz v14, :cond_1a

    :cond_19
    if-eqz v14, :cond_1c

    if-nez v3, :cond_1c

    :cond_1a
    iget v2, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-lez v2, :cond_1c

    .line 1419
    if-eqz v15, :cond_1b

    .line 1420
    goto :goto_c

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v17

    sub-int v2, v2, v17

    .line 1421
    .local v2, "finalPage":I
    :goto_c
    move/from16 v17, v4

    .end local v4    # "pointerIndex":I
    .local v17, "pointerIndex":I
    new-instance v4, Lcom/android/launcher3/PagedView$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0, v2, v8}, Lcom/android/launcher3/PagedView$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/PagedView;II)V

    invoke-virtual {v0, v4}, Lcom/android/launcher3/PagedView;->runOnPageScrollsInitialized(Ljava/lang/Runnable;)V

    goto :goto_e

    .line 1417
    .end local v2    # "finalPage":I
    .end local v17    # "pointerIndex":I
    .restart local v4    # "pointerIndex":I
    :cond_1c
    move/from16 v17, v4

    .line 1423
    .end local v4    # "pointerIndex":I
    .restart local v17    # "pointerIndex":I
    if-eqz v12, :cond_1d

    if-eqz v6, :cond_1d

    if-eqz v14, :cond_1e

    :cond_1d
    if-eqz v14, :cond_20

    if-eqz v3, :cond_20

    :cond_1e
    iget v2, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 1425
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v4

    const/16 v16, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_20

    .line 1426
    if-eqz v15, :cond_1f

    .line 1427
    iget v2, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    goto :goto_d

    :cond_1f
    iget v2, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v4

    add-int/2addr v2, v4

    .line 1428
    .restart local v2    # "finalPage":I
    :goto_d
    new-instance v4, Lcom/android/launcher3/PagedView$$ExternalSyntheticLambda4;

    invoke-direct {v4, v0, v2, v8}, Lcom/android/launcher3/PagedView$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/PagedView;II)V

    invoke-virtual {v0, v4}, Lcom/android/launcher3/PagedView;->runOnPageScrollsInitialized(Ljava/lang/Runnable;)V

    goto :goto_e

    .line 1431
    .end local v2    # "finalPage":I
    :cond_20
    new-instance v2, Lcom/android/launcher3/PagedView$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lcom/android/launcher3/PagedView$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/PagedView;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/PagedView;->runOnPageScrollsInitialized(Ljava/lang/Runnable;)V

    .line 1433
    .end local v15    # "returnToOriginalPage":Z
    :goto_e
    move/from16 v31, v3

    move/from16 v32, v5

    move/from16 v33, v6

    goto/16 :goto_12

    .line 1434
    .end local v17    # "pointerIndex":I
    .end local v19    # "activePointerId":I
    .local v2, "activePointerId":I
    .restart local v4    # "pointerIndex":I
    :cond_21
    move/from16 v19, v2

    move/from16 v17, v4

    .end local v2    # "activePointerId":I
    .end local v4    # "pointerIndex":I
    .restart local v17    # "pointerIndex":I
    .restart local v19    # "activePointerId":I
    iget-object v2, v0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_22

    .line 1435
    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    .line 1438
    :cond_22
    iget-object v2, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v2, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v2

    .line 1439
    .local v2, "initialScroll":I
    iget v4, v0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    .line 1440
    .local v4, "maxScroll":I
    iget v15, v0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    .line 1442
    .local v15, "minScroll":I
    if-lt v2, v4, :cond_23

    if-nez v3, :cond_25

    if-eqz v14, :cond_25

    :cond_23
    if-gt v2, v15, :cond_26

    if-eqz v3, :cond_25

    if-nez v14, :cond_24

    goto :goto_f

    :cond_24
    move/from16 v31, v3

    goto :goto_10

    .line 1444
    :cond_25
    :goto_f
    move/from16 v31, v3

    .end local v3    # "isVelocityLeft":Z
    .local v31, "isVelocityLeft":Z
    iget-object v3, v0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v20, v3

    move/from16 v21, v2

    move/from16 v23, v15

    move/from16 v24, v4

    invoke-virtual/range {v20 .. v26}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 1445
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getDestinationPage()I

    move-result v3

    iput v3, v0, Lcom/android/launcher3/PagedView;->mNextPage:I

    move/from16 v32, v5

    move/from16 v33, v6

    goto :goto_11

    .line 1442
    .end local v31    # "isVelocityLeft":Z
    .restart local v3    # "isVelocityLeft":Z
    :cond_26
    move/from16 v31, v3

    .line 1447
    .end local v3    # "isVelocityLeft":Z
    .restart local v31    # "isVelocityLeft":Z
    :goto_10
    neg-int v3, v8

    .line 1449
    .local v3, "velocity1":I
    move/from16 v32, v5

    .end local v5    # "primaryDirection":F
    .local v32, "primaryDirection":F
    iget-object v5, v0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    .line 1450
    move/from16 v33, v6

    .end local v6    # "isDeltaLeft":Z
    .local v33, "isDeltaLeft":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v20, 0x3f000000    # 0.5f

    mul-float v6, v6, v20

    const v20, 0x3d8f5c29    # 0.07f

    mul-float v6, v6, v20

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v29

    const/16 v30, 0x0

    .line 1449
    move-object/from16 v20, v5

    move/from16 v21, v2

    move/from16 v23, v3

    move/from16 v25, v15

    move/from16 v26, v4

    invoke-virtual/range {v20 .. v30}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 1452
    iget-object v5, v0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v5

    .line 1453
    .local v5, "finalPos":I
    invoke-virtual {v0, v5}, Lcom/android/launcher3/PagedView;->getDestinationPage(I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 1454
    new-instance v6, Lcom/android/launcher3/PagedView$$ExternalSyntheticLambda6;

    invoke-direct {v6, v0}, Lcom/android/launcher3/PagedView$$ExternalSyntheticLambda6;-><init>(Lcom/android/launcher3/PagedView;)V

    invoke-virtual {v0, v6}, Lcom/android/launcher3/PagedView;->runOnPageScrollsInitialized(Ljava/lang/Runnable;)V

    .line 1456
    .end local v3    # "velocity1":I
    .end local v5    # "finalPos":I
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 1458
    .end local v2    # "initialScroll":I
    .end local v4    # "maxScroll":I
    .end local v15    # "minScroll":I
    :goto_12
    iget-object v2, v0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v2, v8}, Lcom/android/launcher3/util/EdgeEffectCompat;->onFlingVelocity(I)V

    .line 1459
    iget-object v2, v0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v2, v8}, Lcom/android/launcher3/util/EdgeEffectCompat;->onFlingVelocity(I)V

    .line 1461
    .end local v7    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v8    # "velocity":I
    .end local v9    # "delta":F
    .end local v10    # "current":Landroid/view/View;
    .end local v11    # "pageOrientedSize":I
    .end local v12    # "isSignificantMove":Z
    .end local v13    # "passedSlop":Z
    .end local v14    # "isFling":Z
    .end local v17    # "pointerIndex":I
    .end local v19    # "activePointerId":I
    .end local v31    # "isVelocityLeft":Z
    .end local v32    # "primaryDirection":F
    .end local v33    # "isDeltaLeft":Z
    :cond_27
    iget-object v2, v0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/EdgeEffectCompat;->onRelease(Landroid/view/MotionEvent;)V

    .line 1462
    iget-object v2, v0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/EdgeEffectCompat;->onRelease(Landroid/view/MotionEvent;)V

    .line 1464
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->resetTouchState()V

    .line 1465
    goto :goto_13

    .line 1269
    .end local v18    # "action":I
    .local v2, "action":I
    :sswitch_5
    move/from16 v18, v2

    .end local v2    # "action":I
    .restart local v18    # "action":I
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/PagedView;->updateIsBeingDraggedOnTouchDown(Landroid/view/MotionEvent;)V

    .line 1275
    iget-object v2, v0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_28

    .line 1276
    invoke-direct {v0, v3}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    .line 1280
    :cond_28
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    .line 1281
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, v0, Lcom/android/launcher3/PagedView;->mDownMotionY:F

    .line 1282
    iget-object v2, v0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v2, v1, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryDirection(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, v0, Lcom/android/launcher3/PagedView;->mDownMotionPrimary:F

    .line 1283
    float-to-int v2, v2

    iput v2, v0, Lcom/android/launcher3/PagedView;->mLastMotion:I

    .line 1284
    iput v6, v0, Lcom/android/launcher3/PagedView;->mTotalMotion:F

    .line 1285
    iput-boolean v3, v0, Lcom/android/launcher3/PagedView;->mAllowEasyFling:Z

    .line 1286
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 1287
    iget-boolean v2, v0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-eqz v2, :cond_29

    .line 1288
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->pageBeginTransition()V

    .line 1482
    :cond_29
    :goto_13
    const/4 v2, 0x1

    return v2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x6 -> :sswitch_1
        0xfe -> :sswitch_0
    .end sparse-switch
.end method

.method protected onVelocityValuesUpdated()V
    .locals 0

    .line 645
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .line 900
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 901
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->dispatchPageCountChanged()V

    .line 902
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 906
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 907
    new-instance v0, Lcom/android/launcher3/PagedView$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/launcher3/PagedView$$ExternalSyntheticLambda7;-><init>(Lcom/android/launcher3/PagedView;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->runOnPageScrollsInitialized(Ljava/lang/Runnable;)V

    .line 911
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->dispatchPageCountChanged()V

    .line 912
    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .line 484
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    .line 485
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onVisibilityAggregated(Z)V

    .line 486
    return-void
.end method

.method protected pageBeginTransition()V
    .locals 1

    .line 468
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    if-nez v0, :cond_0

    .line 469
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    .line 470
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onPageBeginTransition()V

    .line 472
    :cond_0
    return-void
.end method

.method protected pageEndTransition()V
    .locals 1

    .line 475
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/util/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/util/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    .line 478
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onPageEndTransition()V

    .line 480
    :cond_1
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 1867
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1868
    return v1

    .line 1870
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageOrderFlipped()Z

    move-result v0

    .line 1871
    .local v0, "pagesFlipped":Z
    sparse-switch p1, :sswitch_data_0

    goto :goto_2

    .line 1883
    :sswitch_0
    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-nez v1, :cond_1

    .line 1884
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollRight()Z

    move-result v1

    return v1

    .line 1886
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollLeft()Z

    move-result v1

    return v1

    .line 1890
    :sswitch_1
    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-nez v1, :cond_2

    .line 1891
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollLeft()Z

    move-result v1

    return v1

    .line 1893
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollRight()Z

    move-result v1

    return v1

    .line 1878
    :sswitch_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollRight()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollLeft()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1879
    :goto_0
    return v1

    .line 1873
    :sswitch_3
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollLeft()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollRight()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1874
    :goto_1
    return v1

    .line 1897
    :cond_5
    :goto_2
    const/4 v1, 0x0

    return v1

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_3
        0x2000 -> :sswitch_2
        0x1020048 -> :sswitch_1
        0x1020049 -> :sswitch_0
    .end sparse-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .line 1589
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1590
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->shouldHandleRequestChildFocus(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1591
    return-void

    .line 1595
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    .line 1596
    .local v0, "nextPage":I
    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-eq v0, v1, :cond_1

    .line 1597
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    .line 1600
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 1601
    .local v1, "page":I
    if-ltz v1, :cond_2

    invoke-direct {p0, v1}, Lcom/android/launcher3/PagedView;->isVisible(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isInTouchMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1602
    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    .line 1604
    :cond_2
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .line 927
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 928
    .local v0, "page":I
    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->isVisible(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 936
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 929
    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 930
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    goto :goto_1

    .line 932
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    .line 934
    :goto_1
    const/4 v1, 0x1

    return v1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .line 1036
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    if-eqz p1, :cond_0

    .line 1039
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->cancelCurrentPageLongPress()V

    .line 1041
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1042
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 655
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsLayoutValid:Z

    .line 656
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 657
    return-void
.end method

.method protected resetTouchState()V
    .locals 1

    .line 1507
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->releaseVelocityTracker()V

    .line 1508
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    .line 1509
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 1510
    return-void
.end method

.method public runOnPageScrollsInitialized(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 721
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOnPageScrollsInitializedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageScrollsInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onPageScrollsInitialized()V

    .line 725
    :cond_0
    return-void
.end method

.method public scrollLeft()Z
    .locals 2

    .line 1778
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    if-lez v0, :cond_0

    .line 1779
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    .line 1780
    const/4 v0, 0x1

    return v0

    .line 1782
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    return v0
.end method

.method public scrollRight()Z
    .locals 3

    .line 1786
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 1787
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    .line 1788
    return v2

    .line 1790
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    return v0
.end method

.method public scrollTo(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 529
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget v1, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    .line 530
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    .line 529
    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result p1

    .line 531
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget v1, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    .line 532
    invoke-interface {v0, v2, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    .line 531
    invoke-static {p2, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result p2

    .line 533
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 534
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .param p1, "eventType"    # I

    .line 1854
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const/16 v0, 0x1000

    if-eq p1, v0, :cond_0

    .line 1855
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 1857
    :cond_0
    return-void
.end method

.method public setCurrentPage(I)V
    .locals 1
    .param p1, "currentPage"    # I

    .line 431
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/PagedView;->setCurrentPage(II)V

    .line 432
    return-void
.end method

.method public setCurrentPage(II)V
    .locals 2
    .param p1, "currentPage"    # I
    .param p2, "overridePrevPage"    # I

    .line 438
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    .line 443
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 444
    return-void

    .line 446
    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    move v0, p2

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 447
    .local v0, "prevPage":I
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 448
    iput v1, p0, Lcom/android/launcher3/PagedView;->mCurrentScrollOverPage:I

    .line 449
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateCurrentPageScroll()V

    .line 450
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->notifyPageSwitchListener(I)V

    .line 451
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 452
    return-void
.end method

.method public setEnableFreeScroll(Z)V
    .locals 3
    .param p1, "freeScroll"    # Z

    .line 1234
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-ne v0, p1, :cond_0

    .line 1235
    return-void

    .line 1238
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    .line 1239
    .local v0, "wasFreeScroll":Z
    iput-boolean p1, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    .line 1241
    if-eqz p1, :cond_1

    .line 1242
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    goto :goto_0

    .line 1243
    :cond_1
    if-eqz v0, :cond_2

    .line 1244
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 1245
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    .line 1248
    :cond_2
    :goto_0
    return-void
.end method

.method protected setEnableOverscroll(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 1251
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iput-boolean p1, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    .line 1252
    return-void
.end method

.method public setOnPageTransitionEndCallback(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 520
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 523
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 521
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/launcher3/PagedView;->mOnPageTransitionEndCallback:Ljava/lang/Runnable;

    .line 525
    :goto_1
    return-void
.end method

.method protected setOrientationHandler(Lcom/android/launcher3/touch/PagedOrientationHandler;)V
    .locals 0
    .param p1, "orientationHandler"    # Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 240
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iput-object p1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 241
    return-void
.end method

.method public setPageSpacing(I)V
    .locals 0
    .param p1, "pageSpacing"    # I

    .line 881
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iput p1, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    .line 882
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->requestLayout()V

    .line 883
    return-void
.end method

.method protected shouldFlingForVelocity(I)Z
    .locals 2
    .param p1, "velocity"    # I

    .line 1502
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mAllowEasyFling:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/PagedView;->mEasyFlingThresholdVelocity:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/PagedView;->mFlingThresholdVelocity:I

    :goto_0
    int-to-float v0, v0

    .line 1503
    .local v0, "threshold":F
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method protected shouldHandleRequestChildFocus(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 1607
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method protected snapToDestination()V
    .locals 2

    .line 1660
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getDestinationPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getSnapAnimationDuration()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(II)Z

    .line 1661
    return-void
.end method

.method public snapToPage(I)Z
    .locals 1
    .param p1, "whichPage"    # I

    .line 1711
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getSnapAnimationDuration()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/PagedView;->snapToPage(II)Z

    move-result v0

    return v0
.end method

.method public snapToPage(II)Z
    .locals 1
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I

    .line 1719
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/PagedView;->snapToPage(IIZ)Z

    move-result v0

    return v0
.end method

.method protected snapToPage(III)Z
    .locals 1
    .param p1, "whichPage"    # I
    .param p2, "delta"    # I
    .param p3, "duration"    # I

    .line 1731
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher3/PagedView;->snapToPage(IIIZ)Z

    move-result v0

    return v0
.end method

.method protected snapToPage(IIIZ)Z
    .locals 8
    .param p1, "whichPage"    # I
    .param p2, "delta"    # I
    .param p3, "duration"    # I
    .param p4, "immediate"    # Z

    .line 1735
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFirstLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1736
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    .line 1737
    return v1

    .line 1745
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result p1

    .line 1747
    iput p1, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 1749
    invoke-virtual {p0, p3}, Lcom/android/launcher3/PagedView;->awakenScrollBars(I)Z

    .line 1750
    if-eqz p4, :cond_1

    .line 1751
    const/4 p3, 0x0

    goto :goto_0

    .line 1752
    :cond_1
    if-nez p3, :cond_2

    .line 1753
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 1756
    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    .line 1757
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageBeginTransition()V

    .line 1760
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1761
    invoke-direct {p0, v1}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    .line 1764
    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v5, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 1765
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->updatePageIndicator()V

    .line 1768
    if-eqz p4, :cond_5

    .line 1769
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->computeScroll()V

    .line 1770
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    .line 1773
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 1774
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lez v0, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method protected snapToPage(IIZ)Z
    .locals 3
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I
    .param p3, "immediate"    # Z

    .line 1723
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result p1

    .line 1725
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    .line 1726
    .local v0, "newLoc":I
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v1

    sub-int v1, v0, v1

    .line 1727
    .local v1, "delta":I
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/launcher3/PagedView;->snapToPage(IIIZ)Z

    move-result v2

    return v2
.end method

.method public snapToPageImmediately(I)Z
    .locals 2
    .param p1, "whichPage"    # I

    .line 1715
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getSnapAnimationDuration()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(IIZ)Z

    move-result v0

    return v0
.end method

.method protected snapToPageWithVelocity(II)Z
    .locals 8
    .param p1, "whichPage"    # I
    .param p2, "velocity"    # I

    .line 1674
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result p1

    .line 1675
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 1677
    .local v0, "halfScreenSize":I
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v1

    .line 1678
    .local v1, "newLoc":I
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v2, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v2

    sub-int v2, v1, v2

    .line 1679
    .local v2, "delta":I
    const/4 v3, 0x0

    .line 1681
    .local v3, "duration":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/android/launcher3/PagedView;->mMinFlingVelocity:I

    if-ge v4, v5, :cond_0

    .line 1684
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getSnapAnimationDuration()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Lcom/android/launcher3/PagedView;->snapToPage(II)Z

    move-result v4

    return v4

    .line 1691
    :cond_0
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    mul-int/lit8 v6, v0, 0x2

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1692
    .local v4, "distanceRatio":F
    int-to-float v5, v0

    int-to-float v6, v0

    .line 1693
    invoke-direct {p0, v4}, Lcom/android/launcher3/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 1695
    .local v5, "distance":F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 1696
    iget v6, p0, Lcom/android/launcher3/PagedView;->mMinSnapVelocity:I

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1701
    int-to-float v6, p2

    div-float v6, v5, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v6, v6, 0x4

    .line 1703
    .end local v3    # "duration":I
    .local v6, "duration":I
    invoke-virtual {p0, p1, v2, v6}, Lcom/android/launcher3/PagedView;->snapToPage(III)Z

    move-result v3

    return v3
.end method

.method protected updateCurrentPageScroll()V
    .locals 5

    .line 250
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    const/4 v0, 0x0

    .line 251
    .local v0, "newPosition":I
    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 252
    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/PagedView;->mCurrentPageScrollDiff:I

    add-int v0, v1, v2

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    sget-object v2, Lcom/android/launcher3/touch/PagedOrientationHandler;->VIEW_SCROLL_TO:Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;

    invoke-interface {v1, p0, v2, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;I)V

    .line 255
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v3

    sub-int v3, v0, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 256
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->forceFinishScroller()V

    .line 257
    return-void
.end method

.method protected updateIsBeingDraggedOnTouchDown(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1122
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1123
    .local v0, "xDist":I
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/launcher3/PagedView;->mPageSlop:I

    div-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 1125
    .local v1, "finishedScrolling":Z
    :goto_1
    if-eqz v1, :cond_5

    .line 1126
    iput-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    .line 1127
    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-nez v4, :cond_2

    .line 1128
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    .line 1129
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    .line 1131
    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v4}, Lcom/android/launcher3/util/EdgeEffectCompat;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v4}, Lcom/android/launcher3/util/EdgeEffectCompat;->isFinished()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    iput-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    goto :goto_2

    .line 1133
    :cond_5
    iput-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    .line 1137
    :goto_2
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(FF)F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 1138
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getHeight()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1139
    .local v2, "displacement":F
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v3}, Lcom/android/launcher3/util/EdgeEffectCompat;->isFinished()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_6

    .line 1140
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/util/EdgeEffectCompat;->onPullDistance(FF)F

    .line 1142
    :cond_6
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v3}, Lcom/android/launcher3/util/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1143
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v3, v4, v2, p1}, Lcom/android/launcher3/util/EdgeEffectCompat;->onPullDistance(FFLandroid/view/MotionEvent;)F

    .line 1145
    :cond_7
    return-void
.end method

.method protected updateMinAndMaxScrollX()V
    .locals 1

    .line 862
    .local p0, "this":Lcom/android/launcher3/PagedView;, "Lcom/android/launcher3/PagedView<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->computeMinScroll()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mMinScroll:I

    .line 863
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->computeMaxScroll()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mMaxScroll:I

    .line 864
    return-void
.end method
