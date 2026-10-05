.class public Lcom/android/launcher3/allapps/SearchTransitionController;
.super Lcom/android/launcher3/allapps/RecyclerViewAnimationController;
.source "SearchTransitionController.java"


# static fields
.field private static final INTERPOLATOR_TRANSITIONING_TO_ALL_APPS:Landroid/view/animation/Interpolator;

.field private static final INTERPOLATOR_WITHIN_ALL_APPS:Landroid/view/animation/Interpolator;


# instance fields
.field private mSkipNextAnimationWithinAllApps:Z


# direct methods
.method public static synthetic $r8$lambda$41A9ZOzBHtCzwbBDAc8JBGjXyDk(Lcom/android/launcher3/allapps/SearchTransitionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/SearchTransitionController;->lambda$animateToState$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 38
    sget-object v0, Lcom/android/app/animation/Interpolators;->DECELERATE_1_7:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/launcher3/allapps/SearchTransitionController;->INTERPOLATOR_WITHIN_ALL_APPS:Landroid/view/animation/Interpolator;

    .line 41
    sget-object v0, Lcom/android/app/animation/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/launcher3/allapps/SearchTransitionController;->INTERPOLATOR_TRANSITIONING_TO_ALL_APPS:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "*>;)V"
        }
    .end annotation

    .line 46
    .local p1, "allAppsContainerView":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<*>;"
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    .line 47
    return-void
.end method

.method private synthetic lambda$animateToState$0()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mAllAppsContainerView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->setFloatingRowsCollapsed(Z)V

    .line 65
    iget-object v0, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mAllAppsContainerView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->reset(Z)V

    .line 66
    iget-object v0, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mAllAppsContainerView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsRecyclerViewContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 67
    return-void
.end method


# virtual methods
.method protected animateToState(ZJLjava/lang/Runnable;)V
    .locals 2
    .param p1, "goingToSearch"    # Z
    .param p2, "duration"    # J
    .param p4, "onEndRunnable"    # Ljava/lang/Runnable;

    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->animateToState(ZJLjava/lang/Runnable;)V

    .line 62
    if-nez p1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/launcher3/allapps/SearchTransitionController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/SearchTransitionController$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/allapps/SearchTransitionController;)V

    invoke-static {v1}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mAllAppsContainerView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->setFloatingRowsCollapsed(Z)V

    .line 70
    iget-object v0, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mAllAppsContainerView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mAllAppsContainerView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->maybeSetTabVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mAllAppsContainerView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsRecyclerViewContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/SearchTransitionController;->getRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/SearchRecyclerView;->setVisibility(I)V

    .line 74
    return-void
.end method

.method protected getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mAllAppsContainerView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isInAllApps()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Lcom/android/launcher3/allapps/SearchTransitionController;->INTERPOLATOR_WITHIN_ALL_APPS:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/launcher3/allapps/SearchTransitionController;->INTERPOLATOR_TRANSITIONING_TO_ALL_APPS:Landroid/view/animation/Interpolator;

    .line 125
    .local v0, "timeInterpolator":Landroid/animation/TimeInterpolator;
    :goto_0
    iget-boolean v1, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSkipNextAnimationWithinAllApps:Z

    if-eqz v1, :cond_1

    .line 126
    sget-object v0, Lcom/android/app/animation/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    .line 127
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSkipNextAnimationWithinAllApps:Z

    .line 129
    :cond_1
    return-object v0
.end method

.method protected bridge synthetic getRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/SearchTransitionController;->getRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object v0

    return-object v0
.end method

.method protected getRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mAllAppsContainerView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object v0

    return-object v0
.end method

.method protected onProgressUpdated(F)I
    .locals 8
    .param p1, "searchToAzProgress"    # F

    .line 83
    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->onProgressUpdated(F)I

    move-result v0

    .line 85
    .local v0, "searchHeight":I
    iget-object v1, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mAllAppsContainerView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object v1

    .line 90
    .local v1, "headerView":Lcom/android/launcher3/allapps/FloatingHeaderView;
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getFloatingRowsHeight()I

    move-result v2

    add-int/2addr v2, v0

    .line 92
    .local v2, "appsTranslationY":I
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->usingTabs()Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f4ccccd    # 0.8f

    if-eqz v3, :cond_0

    .line 94
    int-to-float v3, v0

    invoke-virtual {v1, v3}, Lcom/android/launcher3/allapps/FloatingHeaderView;->setTranslationY(F)V

    .line 95
    invoke-static {p1, v5, v4}, Lcom/android/app/animation/Interpolators;->clampToProgress(FFF)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/launcher3/allapps/FloatingHeaderView;->setAlpha(F)V

    .line 98
    nop

    .line 99
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getTabsAdditionalPaddingBottom()I

    move-result v3

    iget-object v6, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mAllAppsContainerView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    .line 100
    invoke-virtual {v6}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/launcher3/R$dimen;->all_apps_tabs_margin_top:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    add-int/2addr v3, v6

    .line 102
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getPaddingTop()I

    move-result v6

    sub-int/2addr v3, v6

    add-int/2addr v2, v3

    .line 105
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mAllAppsContainerView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsRecyclerViewContainer()Landroid/view/ViewGroup;

    move-result-object v3

    .line 106
    .local v3, "appsContainer":Landroid/view/View;
    int-to-float v6, v2

    invoke-virtual {v3, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 108
    invoke-static {p1, v5, v4}, Lcom/android/app/animation/Interpolators;->clampToProgress(FFF)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 109
    return v0
.end method

.method public setSkipAnimationWithinAllApps(Z)V
    .locals 0
    .param p1, "skip"    # Z

    .line 137
    iput-boolean p1, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSkipNextAnimationWithinAllApps:Z

    .line 138
    return-void
.end method

.method protected shouldAnimate(Landroid/view/View;ZZ)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasDecorationInfo"    # Z
    .param p3, "appRowComplete"    # Z

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/SearchTransitionController;->isAppIcon(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
