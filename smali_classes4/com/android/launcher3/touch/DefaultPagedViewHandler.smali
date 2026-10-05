.class public Lcom/android/launcher3/touch/DefaultPagedViewHandler;
.super Ljava/lang/Object;
.source "DefaultPagedViewHandler.java"

# interfaces
.implements Lcom/android/launcher3/touch/PagedOrientationHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCenterForPage(Landroid/view/View;Landroid/graphics/Rect;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 101
    return v0
.end method

.method public getChildBounds(Landroid/view/View;IIZ)Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childStart"    # I
    .param p3, "pageCenter"    # I
    .param p4, "layoutChild"    # Z

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 119
    .local v0, "childWidth":I
    add-int v1, p2, v0

    .line 120
    .local v1, "childRight":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 121
    .local v2, "childHeight":I
    div-int/lit8 v3, v2, 0x2

    sub-int v3, p3, v3

    .line 122
    .local v3, "childTop":I
    if-eqz p4, :cond_0

    .line 123
    add-int v4, v3, v2

    invoke-virtual {p1, p2, v3, v1, v4}, Landroid/view/View;->layout(IIII)V

    .line 125
    :cond_0
    new-instance v4, Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;

    invoke-direct {v4, v0, v2, v1, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;-><init>(IIII)V

    return-object v4
.end method

.method public getChildStart(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0
.end method

.method public getMeasuredSize(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getPrimaryDirection(Landroid/view/MotionEvent;I)F
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 61
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    return v0
.end method

.method public getPrimaryScale(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    return v0
.end method

.method public getPrimaryScroll(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    return v0
.end method

.method public getPrimaryValue(FF)F
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 41
    return p1
.end method

.method public getPrimaryValue(II)I
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 31
    return p1
.end method

.method public getPrimaryVelocity(Landroid/view/VelocityTracker;I)F
    .locals 1
    .param p1, "velocityTracker"    # Landroid/view/VelocityTracker;
    .param p2, "pointerId"    # I

    .line 66
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    return v0
.end method

.method public getRecentsRtlSetting(Landroid/content/res/Resources;)Z
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 91
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getScrollOffsetEnd(Landroid/view/View;Landroid/graphics/Rect;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getScrollOffsetStart(Landroid/view/View;Landroid/graphics/Rect;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;

    .line 107
    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getSecondaryValue(FF)F
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 46
    return p2
.end method

.method public getSecondaryValue(II)I
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 36
    return p2
.end method

.method public setMaxScroll(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "maxScroll"    # I

    .line 86
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 87
    return-void
.end method

.method public setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;F)V
    .locals 1
    .param p3, "param"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction<",
            "TT;>;F)V"
        }
    .end annotation

    .line 56
    .local p1, "target":Ljava/lang/Object;, "TT;"
    .local p2, "action":Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;, "Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction<TT;>;"
    const/4 v0, 0x0

    invoke-interface {p2, p1, p3, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;->call(Ljava/lang/Object;FF)V

    .line 57
    return-void
.end method

.method public setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;I)V
    .locals 1
    .param p3, "param"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction<",
            "TT;>;I)V"
        }
    .end annotation

    .line 51
    .local p1, "target":Ljava/lang/Object;, "TT;"
    .local p2, "action":Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;, "Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction<TT;>;"
    const/4 v0, 0x0

    invoke-interface {p2, p1, p3, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;->call(Ljava/lang/Object;II)V

    .line 52
    return-void
.end method
