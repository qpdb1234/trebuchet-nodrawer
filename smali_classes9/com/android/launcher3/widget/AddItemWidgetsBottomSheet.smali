.class public Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;
.super Lcom/android/launcher3/views/AbstractSlideInView;
.source "AddItemWidgetsBottomSheet.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/views/AbstractSlideInView<",
        "Lcom/android/launcher3/dragndrop/AddItemActivity;",
        ">;",
        "Landroid/view/View$OnApplyWindowInsetsListener;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CLOSE_DURATION:I = 0xc8


# instance fields
.field private mContentHorizontalMarginInPx:I

.field private final mInsets:Landroid/graphics/Rect;

.field private mWidgetPreviewScrollView:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/views/AbstractSlideInView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    .line 56
    invoke-virtual {p0}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->widget_list_horizontal_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mContentHorizontalMarginInPx:I

    .line 58
    return-void
.end method

.method private animateOpen()V
    .locals 1

    .line 129
    iget-boolean v0, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mIsOpen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mOpenCloseAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mIsOpen:Z

    .line 133
    invoke-virtual {p0}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->setUpDefaultOpenAnimation()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->start()V

    .line 134
    return-void

    .line 130
    :cond_1
    :goto_0
    return-void
.end method

.method private static setContentHorizontalMargin(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "contentHorizontalMargin"    # I

    .line 175
    nop

    .line 176
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 177
    .local v0, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 178
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 179
    return-void
.end method


# virtual methods
.method protected getScrimColor(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$color;->widgets_picker_scrim:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected handleClose(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 138
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->handleClose(ZJ)V

    .line 139
    return-void
.end method

.method protected isOfType(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 143
    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "windowInsets"    # Landroid/view/WindowInsets;

    .line 154
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 155
    .local v0, "insets":Landroid/graphics/Insets;
    iget-object v1, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Insets;->left:I

    iget v3, v0, Landroid/graphics/Insets;->top:I

    iget v4, v0, Landroid/graphics/Insets;->right:I

    iget v5, v0, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 156
    iget-object v1, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mContent:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mContent:Landroid/view/ViewGroup;

    .line 157
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 156
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 159
    invoke-virtual {p0}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$dimen;->widget_list_horizontal_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 161
    .local v1, "contentHorizontalMarginInPx":I
    iget v2, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mContentHorizontalMarginInPx:I

    if-eq v1, v2, :cond_0

    .line 162
    sget v2, Lcom/android/launcher3/R$id;->widget_appName:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->setContentHorizontalMargin(Landroid/view/View;I)V

    .line 164
    sget v2, Lcom/android/launcher3/R$id;->widget_drag_instruction:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->setContentHorizontalMargin(Landroid/view/View;I)V

    .line 166
    sget v2, Lcom/android/launcher3/R$id;->widget_cell:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->setContentHorizontalMargin(Landroid/view/View;I)V

    .line 167
    sget v2, Lcom/android/launcher3/R$id;->actions_container:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->setContentHorizontalMargin(Landroid/view/View;I)V

    .line 169
    iput v1, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mContentHorizontalMarginInPx:I

    .line 171
    :cond_0
    return-object p2
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mNoIntercept:Z

    .line 78
    invoke-virtual {p0}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mWidgetPreviewScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mWidgetPreviewScrollView:Landroid/widget/ScrollView;

    .line 79
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-lez v0, :cond_0

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mNoIntercept:Z

    .line 83
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/views/AbstractSlideInView;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 123
    invoke-super {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->onFinishInflate()V

    .line 124
    sget v0, Lcom/android/launcher3/R$id;->add_item_bottom_sheet_content:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mContent:Landroid/view/ViewGroup;

    .line 125
    sget v0, Lcom/android/launcher3/R$id;->widget_preview_scroll_view:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mWidgetPreviewScrollView:Landroid/widget/ScrollView;

    .line 126
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 88
    sub-int v0, p4, p2

    .line 89
    .local v0, "width":I
    sub-int v1, p5, p3

    .line 92
    .local v1, "height":I
    iget-object v2, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    .line 93
    .local v2, "contentWidth":I
    sub-int v3, v0, v2

    iget-object v4, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    .line 94
    .local v3, "contentLeft":I
    iget-object v4, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mContent:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    sub-int v5, v1, v5

    add-int v6, v3, v2

    invoke-virtual {v4, v3, v5, v6, v1}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 97
    iget v4, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mTranslationShift:F

    invoke-virtual {p0, v4}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->setTranslationShift(F)V

    .line 98
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 102
    iget-object v0, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/dragndrop/AddItemActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 104
    .local v0, "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    iget-boolean v1, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v1, :cond_0

    .line 105
    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightMargin:I

    .line 106
    .local v1, "margin":I
    mul-int/lit8 v2, v1, 0x2

    iget-object v3, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 107
    .local v1, "widthUsed":I
    goto :goto_0

    .end local v1    # "widthUsed":I
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-lez v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    .restart local v1    # "widthUsed":I
    goto :goto_0

    .line 110
    .end local v1    # "widthUsed":I
    :cond_1
    iget-object v1, v0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    .line 111
    .local v1, "padding":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v1, v2

    .line 115
    .local v1, "widthUsed":I
    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->mContent:Landroid/view/ViewGroup;

    iget v8, v0, Lcom/android/launcher3/DeviceProfile;->bottomSheetTopPadding:I

    move-object v3, p0

    move v5, p1

    move v6, v1

    move v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 117
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 118
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 117
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->setMeasuredDimension(II)V

    .line 119
    return-void
.end method

.method public show()V
    .locals 2

    .line 64
    invoke-virtual {p0}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 65
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 66
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->attachToContainer()V

    .line 69
    invoke-virtual {p0, p0}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 70
    invoke-direct {p0}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->animateOpen()V

    .line 71
    return-void
.end method
