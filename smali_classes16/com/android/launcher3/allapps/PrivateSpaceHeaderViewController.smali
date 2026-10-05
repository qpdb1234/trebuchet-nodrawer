.class public Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;
.super Ljava/lang/Object;
.source "PrivateSpaceHeaderViewController.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final EXPAND_COLLAPSE_DURATION:I = 0x320

.field private static final EXPAND_SCROLL_DURATION:I = 0x7d0

.field private static final SETTINGS_OPACITY_DURATION:I = 0xa0


# instance fields
.field private final mAllApps:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

.field private final mPrivateProfileManager:Lcom/android/launcher3/allapps/PrivateProfileManager;


# direct methods
.method public static synthetic $r8$lambda$--jXZ3aUhWLxGQP_-JxX9Sgj3RE(Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->lambda$addPrivateSpaceSettingsButton$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5zoRjp9ay-bx8b8qDR7BTZNTJ2A(Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;Landroid/widget/RelativeLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->lambda$addHeaderOnClickListener$2(Landroid/widget/RelativeLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hDuk6oCdaWH5QLc18qXcNL7fcgQ(Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->lambda$unlockAction$3(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hcYRdTQ9TPv_fH452vUa2GZUTw8(Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->lambda$addLockButton$0(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nIpW-EEEvIQ5bI4A328-lgTphog(Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->lambda$addLockButton$1(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmPrivateProfileManager(Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;)Lcom/android/launcher3/allapps/PrivateProfileManager;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->mPrivateProfileManager:Lcom/android/launcher3/allapps/PrivateProfileManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcollapse(Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->collapse()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;Lcom/android/launcher3/allapps/PrivateProfileManager;)V
    .locals 0
    .param p1, "allApps"    # Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .param p2, "privateProfileManager"    # Lcom/android/launcher3/allapps/PrivateProfileManager;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->mAllApps:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    .line 71
    iput-object p2, p0, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->mPrivateProfileManager:Lcom/android/launcher3/allapps/PrivateProfileManager;

    .line 72
    return-void
.end method

.method private addHeaderOnClickListener(Landroid/widget/RelativeLayout;)V
    .locals 2
    .param p1, "header"    # Landroid/widget/RelativeLayout;

    .line 124
    iget-object v0, p0, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->mPrivateProfileManager:Lcom/android/launcher3/allapps/PrivateProfileManager;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/PrivateProfileManager;->getCurrentState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 125
    new-instance v0, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;Landroid/widget/RelativeLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 127
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    :goto_0
    return-void
.end method

.method private addLockButton(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "psHeader"    # Landroid/view/ViewGroup;
    .param p2, "lockButton"    # Landroid/view/ViewGroup;

    .line 107
    sget v0, Lcom/android/launcher3/R$id;->lock_text:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 108
    .local v0, "lockText":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->mPrivateProfileManager:Lcom/android/launcher3/allapps/PrivateProfileManager;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/PrivateProfileManager;->getCurrentState()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 119
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 115
    :pswitch_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 117
    new-instance v1, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;Landroid/view/ViewGroup;)V

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    goto :goto_0

    .line 110
    :pswitch_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 112
    new-instance v1, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;Landroid/view/ViewGroup;)V

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    nop

    .line 121
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private addPrivateSpaceSettingsButton(Landroid/widget/ImageButton;)V
    .locals 2
    .param p1, "settingsButton"    # Landroid/widget/ImageButton;

    .line 146
    iget-object v0, p0, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->mPrivateProfileManager:Lcom/android/launcher3/allapps/PrivateProfileManager;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/PrivateProfileManager;->getCurrentState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->mPrivateProfileManager:Lcom/android/launcher3/allapps/PrivateProfileManager;

    .line 147
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/PrivateProfileManager;->isPrivateSpaceSettingsAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 149
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 150
    new-instance v0, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 156
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 158
    :goto_0
    return-void
.end method

.method private addTransitionImage(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "transitionImage"    # Landroid/widget/ImageView;

    .line 161
    iget-object v0, p0, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->mPrivateProfileManager:Lcom/android/launcher3/allapps/PrivateProfileManager;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/PrivateProfileManager;->getCurrentState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 162
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 164
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    :goto_0
    return-void
.end method

.method private animateCollapseAnimation(Landroid/view/ViewGroup;)Landroid/animation/ValueAnimator;
    .locals 6
    .param p1, "lockButton"    # Landroid/view/ViewGroup;

    .line 223
    const/high16 v0, 0x3f800000    # 1.0f

    .line 224
    .local v0, "from":F
    const/4 v1, 0x0

    .line 225
    .local v1, "to":F
    iget-object v2, p0, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->mAllApps:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v2

    .line 226
    .local v2, "scrollBar":Lcom/android/launcher3/views/RecyclerViewFastScroller;
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 227
    .local v3, "collapseAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v4, 0x320

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 228
    new-instance v4, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController$2;

    invoke-direct {v4, p0, v2, p1}, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController$2;-><init>(Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;Lcom/android/launcher3/views/RecyclerViewFastScroller;Landroid/view/ViewGroup;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 249
    return-object v3
.end method

.method private collapse()V
    .locals 6

    .line 183
    iget-object v0, p0, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->mAllApps:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    .line 184
    .local v0, "allAppsRecyclerView":Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_3

    .line 185
    nop

    .line 186
    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 185
    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    .line 187
    .local v2, "adapterPosition":I
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v3

    .line 188
    invoke-virtual {v3}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v3

    .line 189
    .local v3, "allAppsAdapters":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;>;"
    if-ltz v2, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 190
    goto :goto_1

    .line 193
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    iget v4, v4, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    const/16 v5, 0x40

    if-ne v4, v5, :cond_1

    .line 195
    new-instance v4, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController$1;

    iget-object v5, p0, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->mAllApps:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    .line 196
    invoke-virtual {v5}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController$1;-><init>(Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;Landroid/content/Context;)V

    .line 201
    .local v4, "smoothScroller":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 202
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v5

    .line 203
    .local v5, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    if-eqz v5, :cond_3

    .line 204
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    goto :goto_2

    .line 209
    .end local v4    # "smoothScroller":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    .end local v5    # "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    :cond_1
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    iget-object v4, v4, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->decorationInfo:Lcom/android/launcher3/allapps/SectionDecorationInfo;

    if-eqz v4, :cond_2

    .line 210
    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 184
    .end local v2    # "adapterPosition":I
    .end local v3    # "allAppsAdapters":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;>;"
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 213
    .end local v1    # "i":I
    :cond_3
    :goto_2
    return-void
.end method

.method private synthetic lambda$addHeaderOnClickListener$2(Landroid/widget/RelativeLayout;Landroid/view/View;)V
    .locals 0
    .param p1, "header"    # Landroid/widget/RelativeLayout;
    .param p2, "view"    # Landroid/view/View;

    .line 125
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->unlockAction(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private synthetic lambda$addLockButton$0(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0
    .param p1, "psHeader"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;

    .line 112
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->lockAction(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private synthetic lambda$addLockButton$1(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0
    .param p1, "psHeader"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;

    .line 117
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->unlockAction(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private synthetic lambda$addPrivateSpaceSettingsButton$4(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 152
    iget-object v0, p0, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->mPrivateProfileManager:Lcom/android/launcher3/allapps/PrivateProfileManager;

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_PRIVATE_SPACE_SETTINGS_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/PrivateProfileManager;->logEvents(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 153
    iget-object v0, p0, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->mPrivateProfileManager:Lcom/android/launcher3/allapps/PrivateProfileManager;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/PrivateProfileManager;->openPrivateSpaceSettings()V

    .line 154
    return-void
.end method

.method private synthetic lambda$unlockAction$3(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "psHeader"    # Landroid/view/ViewGroup;

    .line 133
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->onPrivateProfileUnlocked(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private lockAction(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "psHeader"    # Landroid/view/ViewGroup;

    .line 137
    iget-object v0, p0, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->mPrivateProfileManager:Lcom/android/launcher3/allapps/PrivateProfileManager;

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_PRIVATE_SPACE_LOCK_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/PrivateProfileManager;->logEvents(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 138
    invoke-static {}, Lcom/android/launcher3/Flags;->enablePrivateSpace()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/Flags;->privateSpaceAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->updatePrivateStateAnimator(ZLandroid/view/ViewGroup;)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->mPrivateProfileManager:Lcom/android/launcher3/allapps/PrivateProfileManager;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/PrivateProfileManager;->lockPrivateProfile()V

    .line 143
    :goto_0
    return-void
.end method

.method private onPrivateProfileUnlocked(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "header"    # Landroid/view/ViewGroup;

    .line 171
    iget-object v0, p0, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->mAllApps:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iget-object v0, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    .line 172
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    .line 173
    .local v0, "mainAdapterHolder":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<*>.AdapterHolder;"
    invoke-static {}, Lcom/android/launcher3/Flags;->enablePrivateSpace()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher3/Flags;->privateSpaceAnimation()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->mAllApps:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    .line 174
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-ne v1, v2, :cond_0

    .line 176
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->updatePrivateStateAnimator(ZLandroid/view/ViewGroup;)V

    .line 177
    iget-object v1, p0, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->mAllApps:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v1

    const/16 v2, 0x7d0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->scrollToBottomWithMotion(I)V

    .line 179
    :cond_0
    return-void
.end method

.method private unlockAction(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "psHeader"    # Landroid/view/ViewGroup;

    .line 132
    iget-object v0, p0, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->mPrivateProfileManager:Lcom/android/launcher3/allapps/PrivateProfileManager;

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_PRIVATE_SPACE_UNLOCK_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/PrivateProfileManager;->logEvents(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 133
    iget-object v0, p0, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->mPrivateProfileManager:Lcom/android/launcher3/allapps/PrivateProfileManager;

    new-instance v1, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/PrivateProfileManager;->unlockPrivateProfile(Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method

.method private updatePrivateStateAnimator(ZLandroid/view/ViewGroup;)V
    .locals 7
    .param p1, "expand"    # Z
    .param p2, "psHeader"    # Landroid/view/ViewGroup;

    .line 258
    new-instance v0, Lcom/android/launcher3/anim/AnimatedPropertySetter;

    invoke-direct {v0}, Lcom/android/launcher3/anim/AnimatedPropertySetter;-><init>()V

    .line 259
    .local v0, "setter":Lcom/android/launcher3/anim/PropertySetter;
    sget v1, Lcom/android/launcher3/R$id;->ps_lock_unlock_button:I

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 260
    .local v1, "lockButton":Landroid/view/ViewGroup;
    sget v2, Lcom/android/launcher3/R$id;->ps_settings_button:I

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 261
    .local v2, "settingsButton":Landroid/widget/ImageButton;
    invoke-direct {p0, v2, p1, v0}, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->updateSettingsGearAlpha(Landroid/widget/ImageButton;ZLcom/android/launcher3/anim/PropertySetter;)V

    .line 262
    invoke-virtual {v0}, Lcom/android/launcher3/anim/PropertySetter;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v3

    .line 263
    .local v3, "animatorSet":Landroid/animation/AnimatorSet;
    new-instance v4, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController$3;

    invoke-direct {v4, p0, v1, p1}, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController$3;-><init>(Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;Landroid/view/ViewGroup;Z)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 273
    if-nez p1, :cond_0

    .line 274
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->animateCollapseAnimation(Landroid/view/ViewGroup;)Landroid/animation/ValueAnimator;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 276
    :cond_0
    const-wide/16 v4, 0x320

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 277
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 278
    return-void
.end method

.method private updateSettingsGearAlpha(Landroid/widget/ImageButton;ZLcom/android/launcher3/anim/PropertySetter;)V
    .locals 4
    .param p1, "settingsButton"    # Landroid/widget/ImageButton;
    .param p2, "expand"    # Z
    .param p3, "setter"    # Lcom/android/launcher3/anim/PropertySetter;

    .line 283
    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 284
    .local v0, "toAlpha":F
    :goto_0
    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    sget-object v2, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p1, v1, v0, v2}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v1

    .line 285
    const-wide/16 v2, 0xa0

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 286
    return-void
.end method


# virtual methods
.method public addPrivateSpaceHeaderViewElements(Landroid/widget/RelativeLayout;)V
    .locals 6
    .param p1, "parent"    # Landroid/widget/RelativeLayout;

    .line 77
    sget v0, Lcom/android/launcher3/R$id;->settingsAndLockGroup:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 78
    .local v0, "settingsAndLockGroup":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    .line 79
    .local v1, "settingsAndLockTransition":Landroid/animation/LayoutTransition;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 80
    const-wide/16 v2, 0x320

    invoke-virtual {v1, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 83
    sget v2, Lcom/android/launcher3/R$id;->ps_lock_unlock_button:I

    .line 84
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 85
    .local v2, "lockButton":Landroid/view/ViewGroup;
    if-eqz v2, :cond_2

    .line 86
    invoke-direct {p0, p1, v2}, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->addLockButton(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 89
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->addHeaderOnClickListener(Landroid/widget/RelativeLayout;)V

    .line 92
    sget v3, Lcom/android/launcher3/R$id;->ps_settings_button:I

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 93
    .local v3, "settingsButton":Landroid/widget/ImageButton;
    if-eqz v3, :cond_1

    .line 94
    invoke-direct {p0, v3}, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->addPrivateSpaceSettingsButton(Landroid/widget/ImageButton;)V

    .line 97
    sget v4, Lcom/android/launcher3/R$id;->ps_transition_image:I

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 98
    .local v4, "transitionView":Landroid/widget/ImageView;
    if-eqz v4, :cond_0

    .line 99
    invoke-direct {p0, v4}, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->addTransitionImage(Landroid/widget/ImageView;)V

    .line 100
    return-void

    .line 98
    :cond_0
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 93
    .end local v4    # "transitionView":Landroid/widget/ImageView;
    :cond_1
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 85
    .end local v3    # "settingsButton":Landroid/widget/ImageButton;
    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method getPrivateProfileManager()Lcom/android/launcher3/allapps/PrivateProfileManager;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->mPrivateProfileManager:Lcom/android/launcher3/allapps/PrivateProfileManager;

    return-object v0
.end method
