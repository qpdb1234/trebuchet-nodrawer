.class public Lcom/android/launcher3/views/WidgetsEduView;
.super Lcom/android/launcher3/views/AbstractSlideInView;
.source "WidgetsEduView.java"

# interfaces
.implements Lcom/android/launcher3/Insettable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/views/AbstractSlideInView<",
        "Lcom/android/launcher3/BaseActivity;",
        ">;",
        "Lcom/android/launcher3/Insettable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CLOSE_DURATION:I = 0xc8


# instance fields
.field private mInsets:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$3kA1CyHlrdr073d95T45LuBNMi0(Lcom/android/launcher3/views/WidgetsEduView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/views/WidgetsEduView;->lambda$onFinishInflate$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/WidgetsEduView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/views/AbstractSlideInView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/views/WidgetsEduView;->mInsets:Landroid/graphics/Rect;

    .line 44
    return-void
.end method

.method private animateOpen()V
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/android/launcher3/views/WidgetsEduView;->mIsOpen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/views/WidgetsEduView;->mOpenCloseAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/views/WidgetsEduView;->mIsOpen:Z

    .line 123
    invoke-virtual {p0}, Lcom/android/launcher3/views/WidgetsEduView;->setUpDefaultOpenAnimation()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->start()V

    .line 124
    return-void

    .line 120
    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onFinishInflate$0(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/WidgetsEduView;->close(Z)V

    return-void
.end method

.method private show()V
    .locals 0

    .line 72
    invoke-virtual {p0}, Lcom/android/launcher3/views/WidgetsEduView;->attachToContainer()V

    .line 73
    invoke-direct {p0}, Lcom/android/launcher3/views/WidgetsEduView;->animateOpen()V

    .line 74
    return-void
.end method

.method public static showEducationDialog(Lcom/android/launcher3/BaseActivity;)Lcom/android/launcher3/views/WidgetsEduView;
    .locals 4
    .param p0, "activity"    # Lcom/android/launcher3/BaseActivity;

    .line 128
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 129
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/android/launcher3/R$layout;->widgets_edu:I

    .line 130
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v2

    .line 129
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/views/WidgetsEduView;

    .line 131
    .local v1, "v":Lcom/android/launcher3/views/WidgetsEduView;
    invoke-direct {v1}, Lcom/android/launcher3/views/WidgetsEduView;->show()V

    .line 132
    return-object v1
.end method


# virtual methods
.method protected getScrimColor(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$color;->widgets_picker_scrim:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected handleClose(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .line 48
    const/4 v0, 0x1

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/views/WidgetsEduView;->handleClose(ZJ)V

    .line 49
    return-void
.end method

.method protected isOfType(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 53
    const/high16 v0, 0x10000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 58
    invoke-super {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->onFinishInflate()V

    .line 59
    sget v0, Lcom/android/launcher3/R$id;->edu_view:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/WidgetsEduView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/views/WidgetsEduView;->mContent:Landroid/view/ViewGroup;

    .line 60
    sget v0, Lcom/android/launcher3/R$id;->edu_close_button:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/WidgetsEduView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/views/WidgetsEduView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/views/WidgetsEduView$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/views/WidgetsEduView;)V

    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 83
    sub-int v0, p4, p2

    .line 84
    .local v0, "width":I
    sub-int v1, p5, p3

    .line 87
    .local v1, "height":I
    iget-object v2, p0, Lcom/android/launcher3/views/WidgetsEduView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    .line 88
    .local v2, "contentWidth":I
    sub-int v3, v0, v2

    iget-object v4, p0, Lcom/android/launcher3/views/WidgetsEduView;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/views/WidgetsEduView;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/android/launcher3/views/WidgetsEduView;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    .line 89
    .local v3, "contentLeft":I
    iget-object v4, p0, Lcom/android/launcher3/views/WidgetsEduView;->mContent:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/launcher3/views/WidgetsEduView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    sub-int v5, v1, v5

    add-int v6, v3, v2

    invoke-virtual {v4, v3, v5, v6, v1}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 92
    iget v4, p0, Lcom/android/launcher3/views/WidgetsEduView;->mTranslationShift:F

    invoke-virtual {p0, v4}, Lcom/android/launcher3/views/WidgetsEduView;->setTranslationShift(F)V

    .line 93
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 97
    iget-object v0, p0, Lcom/android/launcher3/views/WidgetsEduView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 99
    .local v0, "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    iget-object v1, p0, Lcom/android/launcher3/views/WidgetsEduView;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-lez v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/android/launcher3/views/WidgetsEduView;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/launcher3/views/WidgetsEduView;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    .local v1, "widthUsed":I
    goto :goto_0

    .line 106
    .end local v1    # "widthUsed":I
    :cond_0
    iget-object v1, v0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    .line 107
    .local v1, "padding":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/views/WidgetsEduView;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/launcher3/views/WidgetsEduView;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v1, v2

    .line 111
    .local v1, "widthUsed":I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/views/WidgetsEduView;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    add-int/2addr v2, v3

    .line 112
    .local v2, "heightUsed":I
    iget-object v4, p0, Lcom/android/launcher3/views/WidgetsEduView;->mContent:Landroid/view/ViewGroup;

    move-object v3, p0

    move v5, p1

    move v6, v1

    move v7, p2

    move v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/views/WidgetsEduView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 114
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 115
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 114
    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/views/WidgetsEduView;->setMeasuredDimension(II)V

    .line 116
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 66
    iget-object v0, p0, Lcom/android/launcher3/views/WidgetsEduView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 67
    iget-object v0, p0, Lcom/android/launcher3/views/WidgetsEduView;->mContent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/launcher3/views/WidgetsEduView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/views/WidgetsEduView;->mContent:Landroid/view/ViewGroup;

    .line 68
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/views/WidgetsEduView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 67
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 69
    return-void
.end method
