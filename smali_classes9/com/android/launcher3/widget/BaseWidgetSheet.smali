.class public abstract Lcom/android/launcher3/widget/BaseWidgetSheet;
.super Lcom/android/launcher3/views/AbstractSlideInView;
.source "BaseWidgetSheet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/views/AbstractSlideInView<",
        "Lcom/android/launcher3/BaseActivity;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;",
        "Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;",
        "Lcom/android/launcher3/Insettable;",
        "Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;"
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_HORIZONTAL_SPANS:I = 0x4


# instance fields
.field protected mContentHorizontalMargin:I

.field private mDisableNavBarScrim:Z

.field protected final mInsets:Landroid/graphics/Rect;

.field protected mNavBarScrimHeight:I

.field private final mNavBarScrimPaint:Landroid/graphics/Paint;

.field protected mWidgetCellHorizontalPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/views/AbstractSlideInView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mInsets:Landroid/graphics/Rect;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mDisableNavBarScrim:Z

    .line 78
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getWidgetListHorizontalMargin()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mContentHorizontalMargin:I

    .line 79
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->widget_cell_horizontal_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mWidgetCellHorizontalPadding:I

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mNavBarScrimPaint:Landroid/graphics/Paint;

    .line 82
    iget-object v1, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/BaseActivity;

    invoke-static {v1}, Lcom/android/launcher3/util/Themes;->getNavBarScrimColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    return-void
.end method

.method private getNavBarScrimHeight(Landroid/view/WindowInsets;)I
    .locals 1
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 168
    iget-boolean v0, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mDisableNavBarScrim:Z

    if-eqz v0, :cond_0

    .line 169
    const/4 v0, 0x0

    return v0

    .line 171
    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getTappableElementInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    return v0
.end method

.method private getTabletHorizontalMargin(Lcom/android/launcher3/DeviceProfile;)I
    .locals 2
    .param p1, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 220
    invoke-static {}, Lcom/android/launcher3/Flags;->enableCategorizedWidgetSuggestions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const/4 v0, 0x0

    return v0

    .line 223
    :cond_0
    iget-boolean v0, p1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-nez v0, :cond_1

    .line 224
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->widget_picker_landscape_tablet_left_right_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 227
    :cond_1
    iget-boolean v0, p1, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/launcher3/Flags;->enableUnfoldedTwoPanePicker()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->widget_picker_two_panels_left_right_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 231
    :cond_2
    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightMargin:I

    return v0
.end method


# virtual methods
.method protected clearNavBarColor()V
    .locals 3

    .line 246
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    .line 248
    return-void
.end method

.method public disableNavBarScrim(Z)V
    .locals 0
    .param p1, "disable"    # Z

    .line 164
    iput-boolean p1, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mDisableNavBarScrim:Z

    .line 165
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 183
    invoke-super {p0, p1}, Lcom/android/launcher3/views/AbstractSlideInView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 185
    iget v0, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mNavBarScrimHeight:I

    if-lez v0, :cond_0

    .line 186
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mNavBarScrimHeight:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mNavBarScrimPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 189
    :cond_0
    return-void
.end method

.method protected doMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 199
    iget-object v0, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 201
    .local v0, "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    iget-boolean v1, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v1, :cond_0

    .line 202
    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getTabletHorizontalMargin(Lcom/android/launcher3/DeviceProfile;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .local v1, "widthUsed":I
    goto :goto_0

    .line 204
    .end local v1    # "widthUsed":I
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-lez v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    .restart local v1    # "widthUsed":I
    goto :goto_0

    .line 207
    .end local v1    # "widthUsed":I
    :cond_1
    iget-object v1, v0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    .line 208
    .local v1, "padding":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v1, v2

    .line 212
    .local v1, "widthUsed":I
    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mContent:Landroid/view/ViewGroup;

    iget v8, v0, Lcom/android/launcher3/DeviceProfile;->bottomSheetTopPadding:I

    move-object v3, p0

    move v5, p1

    move v6, v1

    move v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/widget/BaseWidgetSheet;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 214
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 215
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 214
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/widget/BaseWidgetSheet;->setMeasuredDimension(II)V

    .line 216
    return-void
.end method

.method protected getIdleInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_0

    .line 237
    sget-object v0, Lcom/android/app/animation/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getIdleInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 236
    :goto_0
    return-object v0
.end method

.method protected getScrimColor(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$color;->widgets_picker_scrim:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getSystemUiController()Lcom/android/launcher3/util/SystemUiController;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v0

    return-object v0
.end method

.method protected getWidgetListHorizontalMargin()I
    .locals 2

    .line 89
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->widget_list_horizontal_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected hasSeenEducationTip()Z
    .locals 2

    .line 290
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherPrefs;->WIDGETS_EDUCATION_TIP_SEEN:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 291
    invoke-static {}, Lcom/android/launcher3/Utilities;->isRunningInTestHarness()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 290
    :goto_1
    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 177
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getNavBarScrimHeight(Landroid/view/WindowInsets;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mNavBarScrimHeight:I

    .line 178
    invoke-super {p0, p1}, Lcom/android/launcher3/views/AbstractSlideInView;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 99
    invoke-super {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->onAttachedToWindow()V

    .line 100
    sget-object v0, Lcom/android/launcher3/util/window/WindowManagerProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/window/WindowManagerProxy;

    .line 101
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/util/window/WindowManagerProxy;->normalizeWindowInsets(Landroid/content/Context;Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object v0

    .line 102
    .local v0, "windowInsets":Landroid/view/WindowInsets;
    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getNavBarScrimHeight(Landroid/view/WindowInsets;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mNavBarScrimHeight:I

    .line 103
    iget-object v1, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/popup/PopupDataProvider;->setChangeListener(Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;)V

    .line 104
    iget-object v1, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/BaseActivity;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    .line 105
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 126
    instance-of v0, p1, Lcom/android/launcher3/widget/WidgetCell;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getItemOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/widget/WidgetCell;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/launcher3/widget/WidgetCell;

    .line 129
    .local v0, "wc":Lcom/android/launcher3/widget/WidgetCell;
    iget-object v1, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getItemOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 131
    .end local v0    # "wc":Lcom/android/launcher3/widget/WidgetCell;
    :cond_1
    :goto_0
    return-void
.end method

.method protected onCloseComplete()V
    .locals 0

    .line 241
    invoke-super {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->onCloseComplete()V

    .line 242
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->clearNavBarColor()V

    .line 243
    return-void
.end method

.method protected abstract onContentHorizontalMarginChanged(I)V
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 109
    invoke-super {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->onDetachedFromWindow()V

    .line 110
    iget-object v0, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/PopupDataProvider;->setChangeListener(Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;)V

    .line 111
    iget-object v0, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/BaseActivity;->removeOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    .line 112
    return-void
.end method

.method public onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 2
    .param p1, "dp"    # Lcom/android/launcher3/DeviceProfile;

    .line 116
    iget-object v0, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/BaseActivity;

    invoke-static {v0}, Lcom/android/launcher3/util/Themes;->getNavBarScrimColor(Landroid/content/Context;)I

    move-result v0

    .line 117
    .local v0, "navBarScrimColor":I
    iget-object v1, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mNavBarScrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mNavBarScrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->invalidate()V

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->setupNavBarColor()V

    .line 122
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 135
    const-string v0, "Main"

    const-string v1, "Widgets.onLongClick"

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    .line 139
    instance-of v0, p1, Lcom/android/launcher3/widget/WidgetCell;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getAllAppsItemLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0

    .line 141
    .end local v0    # "result":Z
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Lcom/android/launcher3/widget/WidgetCell;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/android/launcher3/widget/WidgetCell;

    .line 142
    .local v0, "wc":Lcom/android/launcher3/widget/WidgetCell;
    iget-object v2, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mActivityContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getAllAppsItemLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v2

    move v0, v2

    .line 146
    .local v0, "result":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/BaseWidgetSheet;->close(Z)V

    .line 149
    :cond_1
    return v0

    .line 144
    .end local v0    # "result":Z
    :cond_2
    return v1
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 154
    iget-object v0, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getWidgetListHorizontalMargin()I

    move-result v0

    .line 156
    .local v0, "contentHorizontalMargin":I
    iget v1, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mContentHorizontalMargin:I

    if-eq v0, v1, :cond_0

    .line 157
    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->onContentHorizontalMarginChanged(I)V

    .line 158
    iput v0, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mContentHorizontalMargin:I

    .line 160
    :cond_0
    return-void
.end method

.method protected setTranslationShift(F)V
    .locals 2
    .param p1, "translationShift"    # F

    .line 296
    invoke-super {p0, p1}, Lcom/android/launcher3/views/AbstractSlideInView;->setTranslationShift(F)V

    .line 297
    iget-object v0, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mActivityContext:Landroid/content/Context;

    instance-of v1, v0, Lcom/android/launcher3/Launcher;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 298
    .local v0, "ls":Lcom/android/launcher3/Launcher;
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->onWidgetsTransition(F)V

    .line 300
    .end local v0    # "ls":Lcom/android/launcher3/Launcher;
    :cond_0
    return-void
.end method

.method protected setupNavBarColor()V
    .locals 5

    .line 251
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$attr;->isMainColorDark:I

    invoke-static {v0, v1}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result v0

    .line 254
    .local v0, "isNavBarDark":Z
    iget-object v1, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/BaseActivity;

    .line 255
    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 256
    .local v1, "isPhoneLandscape":Z
    :goto_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 257
    const/4 v0, 0x1

    .line 260
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v3

    .line 261
    const/4 v4, 0x2

    if-eqz v0, :cond_2

    move v2, v4

    goto :goto_1

    .line 262
    :cond_2
    nop

    .line 260
    :goto_1
    invoke-virtual {v3, v4, v2}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    .line 263
    return-void
.end method

.method protected showEducationTipOnViewIfPossible(Landroid/view/View;)Lcom/android/launcher3/views/ArrowTipView;
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .line 272
    if-eqz p1, :cond_2

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 275
    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 276
    .local v1, "coords":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 277
    new-instance v2, Lcom/android/launcher3/views/ArrowTipView;

    iget-object v3, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mActivityContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/views/ArrowTipView;-><init>(Landroid/content/Context;Z)V

    .line 279
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v5, Lcom/android/launcher3/R$string;->long_press_widget_to_add:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aget v4, v1, v4

    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/2addr v5, v0

    add-int/2addr v4, v5

    const/4 v0, 0x1

    aget v5, v1, v0

    .line 278
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/launcher3/views/ArrowTipView;->showAtLocation(Ljava/lang/String;II)Lcom/android/launcher3/views/ArrowTipView;

    move-result-object v2

    .line 282
    .local v2, "arrowTipView":Lcom/android/launcher3/views/ArrowTipView;
    if-eqz v2, :cond_1

    .line 283
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/LauncherPrefs;->WIDGETS_EDUCATION_TIP_SEEN:Lcom/android/launcher3/ConstantItem;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/android/launcher3/LauncherPrefs;->put(Lcom/android/launcher3/Item;Ljava/lang/Object;)V

    .line 285
    :cond_1
    return-object v2

    .line 273
    .end local v1    # "coords":[I
    .end local v2    # "arrowTipView":Lcom/android/launcher3/views/ArrowTipView;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
