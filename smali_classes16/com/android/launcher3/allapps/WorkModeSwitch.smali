.class public Lcom/android/launcher3/allapps/WorkModeSwitch;
.super Landroid/widget/LinearLayout;
.source "WorkModeSwitch.java"

# interfaces
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardInsetListener;


# static fields
.field private static final FLAG_FADE_ONGOING:I = 0x2

.field private static final FLAG_PROFILE_TOGGLE_ONGOING:I = 0x8

.field private static final FLAG_TRANSLATION_ONGOING:I = 0x4

.field private static final SCROLL_THRESHOLD_DP:I = 0xa


# instance fields
.field private final mActivityContext:Lcom/android/launcher3/views/ActivityContext;

.field private mFlags:I

.field private mIcon:Landroid/widget/ImageView;

.field private final mImeInsets:Landroid/graphics/Rect;

.field private final mInsets:Landroid/graphics/Rect;

.field private final mScrollThreshold:I

.field private final mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$1tn8uPV8i_V8-15HdBuCcRxdYBY(Lcom/android/launcher3/allapps/WorkModeSwitch;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->lambda$animateVisibility$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$gn9QoYRCaLb6je97wj6DX89gJB4(Lcom/android/launcher3/allapps/WorkModeSwitch;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->lambda$animateVisibility$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/allapps/WorkModeSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mInsets:Landroid/graphics/Rect;

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mImeInsets:Landroid/graphics/Rect;

    .line 74
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->dpToPx(F)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mScrollThreshold:I

    .line 75
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    iput-object v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    .line 76
    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    .line 77
    return-void
.end method

.method private synthetic lambda$animateVisibility$0()V
    .locals 1

    .line 138
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->removeFlag(I)V

    return-void
.end method

.method private synthetic lambda$animateVisibility$1()V
    .locals 1

    .line 142
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->removeFlag(I)V

    .line 143
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->setVisibility(I)V

    .line 144
    return-void
.end method

.method private removeFlag(I)V
    .locals 2
    .param p1, "flag"    # I

    .line 194
    iget v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mFlags:I

    .line 195
    return-void
.end method

.method private setFlag(I)V
    .locals 1
    .param p1, "flag"    # I

    .line 190
    iget v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mFlags:I

    .line 191
    return-void
.end method

.method private setInsets(Landroid/graphics/Rect;Landroidx/core/graphics/Insets;)V
    .locals 4
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "insets"    # Landroidx/core/graphics/Insets;

    .line 172
    iget v0, p2, Landroidx/core/graphics/Insets;->left:I

    iget v1, p2, Landroidx/core/graphics/Insets;->top:I

    iget v2, p2, Landroidx/core/graphics/Insets;->right:I

    iget v3, p2, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 173
    return-void
.end method


# virtual methods
.method public animateVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .line 133
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->clearAnimation()V

    .line 134
    const/4 v0, 0x2

    if-eqz p1, :cond_0

    .line 135
    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->setFlag(I)V

    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->setVisibility(I)V

    .line 137
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->extend()V

    .line 138
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/allapps/WorkModeSwitch$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/WorkModeSwitch$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/allapps/WorkModeSwitch;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 140
    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->setFlag(I)V

    .line 141
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/allapps/WorkModeSwitch$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/WorkModeSwitch$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/allapps/WorkModeSwitch;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 146
    :cond_1
    :goto_0
    return-void
.end method

.method public extend()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    return-void
.end method

.method public getImeInsets()Landroid/graphics/Rect;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mImeInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getScrollThreshold()I
    .locals 1

    .line 206
    iget v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mScrollThreshold:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 129
    invoke-super {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mFlags:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 150
    nop

    .line 151
    invoke-static {p1, p0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 152
    .local v0, "windowInsetsCompat":Landroidx/core/view/WindowInsetsCompat;
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mImeInsets:Landroid/graphics/Rect;

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/allapps/WorkModeSwitch;->setInsets(Landroid/graphics/Rect;Landroidx/core/graphics/Insets;)V

    goto :goto_0

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mImeInsets:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 157
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->updateTranslationY()V

    .line 158
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    return-object v1
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 81
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 83
    sget v0, Lcom/android/launcher3/R$id;->work_icon:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mIcon:Landroid/widget/ImageView;

    .line 84
    sget v0, Lcom/android/launcher3/R$id;->pause_text:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mTextView:Landroid/widget/TextView;

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->setSelected(Z)V

    .line 86
    new-instance v0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;

    invoke-direct {v0, p0}, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;-><init>(Landroid/view/View;)V

    .line 88
    .local v0, "keyboardInsetAnimationCallback":Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 90
    iget-object v1, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/WorkModeSwitch;->setInsets(Landroid/graphics/Rect;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->updateStringFromCache()V

    .line 92
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 116
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 117
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 118
    .local v0, "parent":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    .line 119
    .local v1, "isRtl":Z
    iget-object v2, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/DeviceProfile;->allAppsPadding:Landroid/graphics/Rect;

    .line 120
    .local v2, "allAppsPadding":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 122
    .local v3, "size":I
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->getTabWidth(Landroid/content/Context;I)I

    move-result v4

    .line 123
    .local v4, "tabWidth":I
    sub-int v5, v3, v4

    div-int/lit8 v5, v5, 0x2

    if-eqz v1, :cond_0

    iget v6, v2, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    iget v6, v2, Landroid/graphics/Rect;->right:I

    :goto_0
    add-int/2addr v5, v6

    .line 124
    .local v5, "shift":I
    if-eqz v1, :cond_1

    int-to-float v6, v5

    goto :goto_1

    :cond_1
    neg-int v6, v5

    int-to-float v6, v6

    :goto_1
    invoke-virtual {p0, v6}, Lcom/android/launcher3/allapps/WorkModeSwitch;->setTranslationX(F)V

    .line 125
    return-void
.end method

.method public onTranslationEnd()V
    .locals 1

    .line 186
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->removeFlag(I)V

    .line 187
    return-void
.end method

.method public onTranslationStart()V
    .locals 1

    .line 181
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->setFlag(I)V

    .line 182
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 96
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->updateTranslationY()V

    .line 98
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 99
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v0, :cond_2

    .line 100
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$dimen;->work_fab_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 101
    .local v1, "bottomMargin":I
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    .line 102
    .local v2, "dp":Lcom/android/launcher3/DeviceProfile;
    iget-object v3, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v3}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearchBarFloating()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    iget v3, v2, Lcom/android/launcher3/DeviceProfile;->hotseatQsbHeight:I

    add-int/2addr v1, v3

    .line 106
    :cond_0
    iget-boolean v3, v2, Lcom/android/launcher3/DeviceProfile;->isGestureMode:Z

    if-nez v3, :cond_1

    iget-boolean v3, v2, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v3, :cond_1

    .line 107
    iget v3, v2, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    add-int/2addr v1, v3

    .line 110
    :cond_1
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 112
    .end local v1    # "bottomMargin":I
    .end local v2    # "dp":Lcom/android/launcher3/DeviceProfile;
    :cond_2
    return-void
.end method

.method public setTranslationY(F)V
    .locals 1
    .param p1, "translationY"    # F

    .line 168
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 169
    return-void
.end method

.method public shrink()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    return-void
.end method

.method public updateStringFromCache()V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v0

    .line 211
    .local v0, "cache":Lcom/android/launcher3/model/StringCache;
    if-eqz v0, :cond_0

    .line 212
    iget-object v1, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mTextView:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/launcher3/model/StringCache;->workProfilePauseButton:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    :cond_0
    return-void
.end method

.method updateTranslationY()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mImeInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->setTranslationY(F)V

    .line 163
    return-void
.end method
