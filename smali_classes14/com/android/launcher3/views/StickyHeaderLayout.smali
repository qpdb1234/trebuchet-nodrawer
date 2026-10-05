.class public Lcom/android/launcher3/views/StickyHeaderLayout;
.super Landroid/widget/LinearLayout;
.source "StickyHeaderLayout.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;,
        Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;,
        Lcom/android/launcher3/views/StickyHeaderLayout$MotionEventProxyMethod;
    }
.end annotation


# static fields
.field private static final INTERCEPT_PROXY:Lcom/android/launcher3/views/StickyHeaderLayout$MotionEventProxyMethod;

.field private static final SCROLL_OFFSET:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/views/StickyHeaderLayout;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOUCH_PROXY:Lcom/android/launcher3/views/StickyHeaderLayout$MotionEventProxyMethod;


# instance fields
.field private mCurrentEmptySpaceView:Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;

.field private mCurrentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mHeaderHeight:I

.field private mLastScroll:F

.field private mOffsetAnimator:Landroid/animation/Animator;

.field private mScrollOffset:F

.field private mShouldForwardToRecyclerView:Z


# direct methods
.method public static synthetic $r8$lambda$6AZ9OkWQlT_kDiSZcZ0qpXqvyOw(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Ba4vAi2hZJWoeEFMCdbw5EXlMU4(Lcom/android/launcher3/views/StickyHeaderLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/views/StickyHeaderLayout;->lambda$reset$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$GcbLEzcZakkrQA7CXtdKimhMslg(Lcom/android/launcher3/views/StickyHeaderLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/views/StickyHeaderLayout;->updateHeaderScroll()V

    return-void
.end method

.method public static synthetic $r8$lambda$HDUaOMBbSr3gXcHHDaXzvqo-4wg(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScrollOffset(Lcom/android/launcher3/views/StickyHeaderLayout;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mScrollOffset:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmScrollOffset(Lcom/android/launcher3/views/StickyHeaderLayout;F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mScrollOffset:F

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateHeaderScroll(Lcom/android/launcher3/views/StickyHeaderLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/views/StickyHeaderLayout;->updateHeaderScroll()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Lcom/android/launcher3/views/StickyHeaderLayout$1;

    const-string v1, "scrollAnimOffset"

    invoke-direct {v0, v1}, Lcom/android/launcher3/views/StickyHeaderLayout$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/views/StickyHeaderLayout;->SCROLL_OFFSET:Landroid/util/FloatProperty;

    .line 61
    new-instance v0, Lcom/android/launcher3/views/StickyHeaderLayout$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/launcher3/views/StickyHeaderLayout$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/android/launcher3/views/StickyHeaderLayout;->INTERCEPT_PROXY:Lcom/android/launcher3/views/StickyHeaderLayout$MotionEventProxyMethod;

    .line 62
    new-instance v0, Lcom/android/launcher3/views/StickyHeaderLayout$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/launcher3/views/StickyHeaderLayout$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcom/android/launcher3/views/StickyHeaderLayout;->TOUCH_PROXY:Lcom/android/launcher3/views/StickyHeaderLayout$MotionEventProxyMethod;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/views/StickyHeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/StickyHeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/views/StickyHeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mLastScroll:F

    .line 68
    iput v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mScrollOffset:F

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mShouldForwardToRecyclerView:Z

    .line 89
    return-void
.end method

.method private findCurrentEmptyView()V
    .locals 5

    .line 189
    iget-object v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentEmptySpaceView:Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;

    if-eqz v0, :cond_0

    .line 190
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;->setOnYChangeCallback(Ljava/lang/Runnable;)V

    .line 191
    iput-object v1, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentEmptySpaceView:Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    .line 194
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 195
    iget-object v2, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 196
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;

    if-eqz v3, :cond_1

    .line 197
    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;

    iput-object v3, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentEmptySpaceView:Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;

    .line 198
    invoke-virtual {p0}, Lcom/android/launcher3/views/StickyHeaderLayout;->getHeaderHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;->setFixedHeight(I)Z

    .line 199
    iget-object v3, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentEmptySpaceView:Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;

    new-instance v4, Lcom/android/launcher3/views/StickyHeaderLayout$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/launcher3/views/StickyHeaderLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/views/StickyHeaderLayout;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;->setOnYChangeCallback(Ljava/lang/Runnable;)V

    .line 200
    return-void

    .line 194
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private getCurrentScroll()F
    .locals 2

    .line 120
    iget v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mScrollOffset:F

    iget-object v1, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentEmptySpaceView:Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;->getY()F

    move-result v1

    :goto_0
    add-float/2addr v0, v1

    return v0
.end method

.method private synthetic lambda$reset$0()V
    .locals 1

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mOffsetAnimator:Landroid/animation/Animator;

    return-void
.end method

.method private proxyMotionEvent(Landroid/view/MotionEvent;Lcom/android/launcher3/views/StickyHeaderLayout$MotionEventProxyMethod;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "method"    # Lcom/android/launcher3/views/StickyHeaderLayout$MotionEventProxyMethod;

    .line 164
    iget-object v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/views/StickyHeaderLayout;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 165
    .local v0, "dx":F
    iget-object v1, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/views/StickyHeaderLayout;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 166
    .local v1, "dy":F
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 168
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-interface {p2, v2, p1}, Lcom/android/launcher3/views/StickyHeaderLayout$MotionEventProxyMethod;->proxyEvent(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    neg-float v3, v0

    neg-float v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 168
    return v2

    .line 170
    :catchall_0
    move-exception v2

    neg-float v3, v0

    neg-float v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 171
    throw v2
.end method

.method private updateHeaderScroll()V
    .locals 6

    .line 110
    invoke-direct {p0}, Lcom/android/launcher3/views/StickyHeaderLayout;->getCurrentScroll()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mLastScroll:F

    .line 111
    invoke-virtual {p0}, Lcom/android/launcher3/views/StickyHeaderLayout;->getChildCount()I

    move-result v0

    .line 112
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 113
    invoke-virtual {p0, v1}, Lcom/android/launcher3/views/StickyHeaderLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 114
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;

    .line 115
    .local v3, "lp":Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;
    iget v4, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mLastScroll:F

    iget v5, v3, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;->scrollLimit:I

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 112
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 242
    instance-of v0, p1, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/android/launcher3/views/StickyHeaderLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 227
    new-instance v0, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/StickyHeaderLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/StickyHeaderLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 237
    new-instance v0, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/views/StickyHeaderLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 232
    new-instance v0, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getHeaderHeight()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mHeaderHeight:I

    return v0
.end method

.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 176
    instance-of v0, p1, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;

    if-eqz v0, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/android/launcher3/views/StickyHeaderLayout;->findCurrentEmptyView()V

    .line 179
    :cond_0
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 183
    iget-object v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentEmptySpaceView:Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;

    if-ne p1, v0, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/android/launcher3/views/StickyHeaderLayout;->findCurrentEmptyView()V

    .line 186
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 153
    sget-object v0, Lcom/android/launcher3/views/StickyHeaderLayout;->INTERCEPT_PROXY:Lcom/android/launcher3/views/StickyHeaderLayout$MotionEventProxyMethod;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/views/StickyHeaderLayout;->proxyMotionEvent(Landroid/view/MotionEvent;Lcom/android/launcher3/views/StickyHeaderLayout$MotionEventProxyMethod;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mShouldForwardToRecyclerView:Z

    if-nez v0, :cond_1

    .line 154
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 153
    :goto_1
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 207
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 210
    invoke-virtual {p0}, Lcom/android/launcher3/views/StickyHeaderLayout;->getChildCount()I

    move-result v0

    .line 211
    .local v0, "count":I
    const/4 v1, 0x0

    .line 212
    .local v1, "stickyHeaderHeight":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 213
    invoke-virtual {p0, v2}, Lcom/android/launcher3/views/StickyHeaderLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 214
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;

    .line 215
    .local v4, "lp":Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;
    iget-boolean v5, v4, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;->sticky:Z

    if-eqz v5, :cond_0

    .line 216
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    neg-int v5, v5

    add-int/2addr v5, v1

    iput v5, v4, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;->scrollLimit:I

    .line 217
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_1

    .line 219
    :cond_0
    const/high16 v5, -0x80000000

    iput v5, v4, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;->scrollLimit:I

    .line 212
    .end local v3    # "v":Landroid/view/View;
    .end local v4    # "lp":Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    .end local v2    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/views/StickyHeaderLayout;->updateHeaderScroll()V

    .line 223
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 125
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 127
    invoke-virtual {p0}, Lcom/android/launcher3/views/StickyHeaderLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mHeaderHeight:I

    .line 128
    iget-object v1, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentEmptySpaceView:Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {v1, v0}, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;->setFixedHeight(I)Z

    .line 131
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 159
    iget-boolean v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mShouldForwardToRecyclerView:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/views/StickyHeaderLayout;->TOUCH_PROXY:Lcom/android/launcher3/views/StickyHeaderLayout$MotionEventProxyMethod;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/views/StickyHeaderLayout;->proxyMotionEvent(Landroid/view/MotionEvent;Lcom/android/launcher3/views/StickyHeaderLayout$MotionEventProxyMethod;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 159
    :goto_0
    return v0
.end method

.method public reset(Z)V
    .locals 5
    .param p1, "animate"    # Z

    .line 135
    iget-object v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mOffsetAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mOffsetAnimator:Landroid/animation/Animator;

    .line 140
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mScrollOffset:F

    .line 141
    if-nez p1, :cond_1

    .line 142
    invoke-direct {p0}, Lcom/android/launcher3/views/StickyHeaderLayout;->updateHeaderScroll()V

    goto :goto_0

    .line 144
    :cond_1
    iget v1, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mLastScroll:F

    invoke-direct {p0}, Lcom/android/launcher3/views/StickyHeaderLayout;->getCurrentScroll()F

    move-result v2

    sub-float/2addr v1, v2

    .line 145
    .local v1, "startValue":F
    sget-object v2, Lcom/android/launcher3/views/StickyHeaderLayout;->SCROLL_OFFSET:Landroid/util/FloatProperty;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mOffsetAnimator:Landroid/animation/Animator;

    .line 146
    new-instance v2, Lcom/android/launcher3/views/StickyHeaderLayout$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/views/StickyHeaderLayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/views/StickyHeaderLayout;)V

    invoke-static {v2}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 147
    iget-object v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mOffsetAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 149
    .end local v1    # "startValue":F
    :goto_0
    return-void
.end method

.method public setCurrentRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2
    .param p1, "currentRecyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 95
    iget-object v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 96
    .local v1, "animateReset":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 99
    :cond_1
    iput-object p1, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 100
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 101
    invoke-direct {p0}, Lcom/android/launcher3/views/StickyHeaderLayout;->findCurrentEmptyView()V

    .line 102
    invoke-virtual {p0, v1}, Lcom/android/launcher3/views/StickyHeaderLayout;->reset(Z)V

    .line 103
    return-void
.end method
