.class public Lcom/android/launcher3/allapps/RecyclerViewAnimationController;
.super Ljava/lang/Object;
.source "RecyclerViewAnimationController.java"


# static fields
.field protected static final BACKGROUND_FADE_PROGRESS_DURATION:F = 0.15f

.field protected static final CONTENT_FADE_PROGRESS_DURATION:F = 0.083f

.field protected static final CONTENT_STAGGER:F = 0.01f

.field private static final LOG_TAG:Ljava/lang/String; = "AnimationCtrl"

.field protected static final PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/allapps/RecyclerViewAnimationController;",
            ">;"
        }
    .end annotation
.end field

.field protected static final TOP_BACKGROUND_FADE_PROGRESS_START:F = 0.633f

.field protected static final TOP_CONTENT_FADE_PROGRESS_START:F = 0.133f


# instance fields
.field protected final mAllAppsContainerView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "*>;"
        }
    .end annotation
.end field

.field protected mAnimator:Landroid/animation/ObjectAnimator;

.field private mAnimatorProgress:F


# direct methods
.method public static synthetic $r8$lambda$ifRsfnsmiN0TvGoDFY_KYnozCiQ(Lcom/android/launcher3/allapps/RecyclerViewAnimationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->lambda$animateToState$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$tLE9OEiIk5X9JwVB-BcUSUdM08E(Lcom/android/launcher3/allapps/RecyclerViewAnimationController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->onChildAttached(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetAnimationProgress(Lcom/android/launcher3/allapps/RecyclerViewAnimationController;)F
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->getAnimationProgress()F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetAnimationProgress(Lcom/android/launcher3/allapps/RecyclerViewAnimationController;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->setAnimationProgress(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Lcom/android/launcher3/allapps/RecyclerViewAnimationController$1;

    const-string v1, "expansionProgress"

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/RecyclerViewAnimationController$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->PROGRESS:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "*>;)V"
        }
    .end annotation

    .line 75
    .local p1, "allAppsContainerView":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 73
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->mAnimatorProgress:F

    .line 76
    iput-object p1, p0, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->mAllAppsContainerView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    .line 77
    return-void
.end method

.method private getAdjustedBackgroundAlpha(I)F
    .locals 4
    .param p1, "itemsAnimated"    # I

    .line 277
    const v0, 0x3c23d70a    # 0.01f

    int-to-float v1, p1

    mul-float/2addr v1, v0

    const v0, 0x3f220c4a    # 0.633f

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 279
    .local v0, "startBackgroundFadeProgress":F
    const v1, 0x3e19999a    # 0.15f

    add-float/2addr v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 281
    .local v1, "endBackgroundFadeProgress":F
    iget v3, p0, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->mAnimatorProgress:F

    invoke-static {v3, v0, v1}, Lcom/android/app/animation/Interpolators;->clampToProgress(FFF)F

    move-result v3

    sub-float/2addr v2, v3

    return v2
.end method

.method private getAdjustedContentAlpha(I)F
    .locals 4
    .param p1, "itemsAnimated"    # I

    .line 268
    const v0, 0x3c23d70a    # 0.01f

    int-to-float v1, p1

    mul-float/2addr v1, v0

    const v0, 0x3e083127    # 0.133f

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 270
    .local v0, "startContentFadeProgress":F
    const v1, 0x3da9fbe7    # 0.083f

    add-float/2addr v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 272
    .local v1, "endContentFadeProgress":F
    iget v3, p0, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->mAnimatorProgress:F

    invoke-static {v3, v0, v1}, Lcom/android/app/animation/Interpolators;->clampToProgress(FFF)F

    move-result v3

    sub-float/2addr v2, v3

    return v2
.end method

.method private getAnimationProgress()F
    .locals 1

    .line 297
    iget v0, p0, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->mAnimatorProgress:F

    return v0
.end method

.method private synthetic lambda$animateToState$0()V
    .locals 1

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->mAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method private onChildAttached(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .line 202
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->forceHasOverlappingRendering(Z)V

    .line 203
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 204
    invoke-direct {p0}, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->getAnimationProgress()F

    move-result v1

    cmpl-float v1, v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-lez v1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->getAnimationProgress()F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->getAnimationProgress()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->onProgressUpdated(F)I

    goto :goto_1

    .line 209
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 210
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 211
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 212
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->getRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 213
    .local v0, "adapterPosition":I
    nop

    .line 214
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->getRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v1

    .line 215
    .local v1, "allAppsAdapters":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;>;"
    const/16 v3, 0xff

    if-ltz v0, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 216
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    invoke-virtual {v4, v3}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->setDecorationFillAlpha(I)V

    .line 218
    :cond_1
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    move-object v4, p1

    check-cast v4, Landroid/view/ViewGroup;

    .line 219
    .local v4, "childGroup":Landroid/view/ViewGroup;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 220
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/View;->setAlpha(F)V

    .line 219
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 223
    .end local v4    # "childGroup":Landroid/view/ViewGroup;
    .end local v5    # "i":I
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 227
    .end local v0    # "adapterPosition":I
    .end local v1    # "allAppsAdapters":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;>;"
    :cond_3
    :goto_1
    return-void
.end method

.method private setAdjustedAdapterItemDecorationBackgroundAlpha(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;I)V
    .locals 2
    .param p1, "adapterItem"    # Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    .param p2, "numberOfItemsAnimated"    # I

    .line 292
    nop

    .line 293
    invoke-direct {p0, p2}, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->getAdjustedBackgroundAlpha(I)F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 292
    invoke-virtual {p1, v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->setDecorationFillAlpha(I)V

    .line 294
    return-void
.end method

.method private setAnimationProgress(F)V
    .locals 0
    .param p1, "expansionProgress"    # F

    .line 301
    iput p1, p0, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->mAnimatorProgress:F

    .line 302
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->onProgressUpdated(F)I

    .line 303
    return-void
.end method

.method private setViewAdjustedContentAlpha(Landroid/view/View;IZ)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "numberOfItemsAnimated"    # I
    .param p3, "shouldAnimate"    # Z

    .line 287
    if-eqz p3, :cond_0

    invoke-direct {p0, p2}, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->getAdjustedContentAlpha(I)F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 288
    return-void
.end method


# virtual methods
.method protected animateToState(ZJLjava/lang/Runnable;)V
    .locals 4
    .param p1, "expand"    # Z
    .param p2, "duration"    # J
    .param p4, "onEndRunnable"    # Ljava/lang/Runnable;

    .line 181
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 182
    .local v0, "targetProgress":F
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    .line 183
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 185
    :cond_1
    sget-object v1, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->PROGRESS:Landroid/util/FloatProperty;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 187
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    .line 188
    .local v1, "timeInterpolator":Landroid/animation/TimeInterpolator;
    sget-object v2, Lcom/android/app/animation/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    if-ne v1, v2, :cond_2

    .line 189
    const-wide/16 p2, 0x0

    .line 192
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/android/launcher3/allapps/RecyclerViewAnimationController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/launcher3/allapps/RecyclerViewAnimationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/allapps/RecyclerViewAnimationController;)V

    invoke-static {v3}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 193
    iget-object v2, p0, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 194
    iget-object v2, p0, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {p4}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 195
    iget-object v2, p0, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 196
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->getRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/allapps/RecyclerViewAnimationController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/launcher3/allapps/RecyclerViewAnimationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/allapps/RecyclerViewAnimationController;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setChildAttachedConsumer(Landroidx/core/util/Consumer;)V

    .line 197
    return-void
.end method

.method protected getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 248
    sget-object v0, Lcom/android/app/animation/Interpolators;->DECELERATE_1_7:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method protected getRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->mAllAppsContainerView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iget-object v0, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    return-object v0
.end method

.method protected getSpanIndex(Lcom/android/launcher3/allapps/AllAppsRecyclerView;I)I
    .locals 3
    .param p1, "appsRecyclerView"    # Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    .param p2, "adapterPosition"    # I

    .line 231
    const/4 v0, -0x1

    const/4 v1, 0x0

    const-string v2, "AnimationCtrl"

    if-ne p2, v0, :cond_0

    .line 232
    const-string v0, "Can\'t determine span index - child not found in adapter"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return v1

    .line 235
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    if-nez v0, :cond_1

    .line 236
    const-string v0, "Search RV doesn\'t have an AllAppsGridAdapter?"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return v1

    .line 243
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    .line 244
    .local v0, "adapter":Lcom/android/launcher3/allapps/AllAppsGridAdapter;, "Lcom/android/launcher3/allapps/AllAppsGridAdapter<*>;"
    invoke-virtual {v0, p2}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->getSpanIndex(I)I

    move-result v1

    return v1
.end method

.method protected isAppIcon(Landroid/view/View;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/View;

    .line 306
    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 306
    :goto_0
    return v0
.end method

.method protected isRunning()Z
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onProgressUpdated(F)I
    .locals 21
    .param p1, "expansionProgress"    # F

    .line 87
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 88
    .local v1, "numItemsAnimated":I
    const/4 v2, 0x0

    .line 89
    .local v2, "totalHeight":I
    const/4 v3, 0x0

    .line 90
    .local v3, "appRowHeight":I
    const/4 v4, 0x0

    .line 91
    .local v4, "appRowComplete":Z
    const/4 v5, 0x0

    .line 92
    .local v5, "top":Ljava/lang/Integer;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->getRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v6

    .line 94
    .local v6, "allAppsRecyclerView":Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v6}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_e

    .line 95
    invoke-virtual {v6, v7}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 96
    .local v8, "currentView":Landroid/view/View;
    if-nez v8, :cond_0

    .line 97
    goto/16 :goto_5

    .line 99
    :cond_0
    if-nez v5, :cond_1

    .line 100
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 102
    :cond_1
    invoke-virtual {v6, v8}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v9

    .line 103
    .local v9, "adapterPosition":I
    invoke-virtual {v6}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v10

    .line 104
    invoke-virtual {v10}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v10

    .line 105
    .local v10, "allAppsAdapters":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;>;"
    if-ltz v9, :cond_d

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lt v9, v11, :cond_2

    .line 106
    goto/16 :goto_5

    .line 108
    :cond_2
    nop

    .line 109
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    .line 110
    .local v11, "adapterItemAtPosition":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    invoke-virtual {v0, v6, v9}, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->getSpanIndex(Lcom/android/launcher3/allapps/AllAppsRecyclerView;I)I

    move-result v12

    .line 111
    .local v12, "spanIndex":I
    const/4 v13, 0x0

    const/4 v14, 0x1

    if-lez v3, :cond_3

    if-nez v12, :cond_3

    move v15, v14

    goto :goto_1

    :cond_3
    move v15, v13

    :goto_1
    or-int/2addr v4, v15

    .line 113
    const/high16 v15, 0x3f800000    # 1.0f

    .line 114
    .local v15, "backgroundAlpha":F
    invoke-virtual {v11}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->getDecorationInfo()Lcom/android/launcher3/allapps/SectionDecorationInfo;

    move-result-object v16

    if-eqz v16, :cond_4

    move v13, v14

    .line 115
    .local v13, "hasDecorationInfo":Z
    :cond_4
    invoke-virtual {v0, v8, v13, v4}, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->shouldAnimate(Landroid/view/View;ZZ)Z

    move-result v14

    .line 117
    .local v14, "shouldAnimate":Z
    if-eqz v14, :cond_6

    .line 118
    if-lez v12, :cond_5

    .line 120
    add-int/lit8 v1, v1, -0x1

    .line 123
    :cond_5
    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->getAdjustedBackgroundAlpha(I)F

    move-result v15

    .line 126
    :cond_6
    move/from16 v16, v4

    .end local v4    # "appRowComplete":Z
    .local v16, "appRowComplete":Z
    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 127
    .local v4, "background":Landroid/graphics/drawable/Drawable;
    move-object/from16 v17, v10

    .end local v10    # "allAppsAdapters":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;>;"
    .local v17, "allAppsAdapters":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;>;"
    const/high16 v18, 0x437f0000    # 255.0f

    if-eqz v4, :cond_8

    instance-of v10, v8, Landroid/view/ViewGroup;

    if-eqz v10, :cond_8

    move-object v10, v8

    check-cast v10, Landroid/view/ViewGroup;

    .line 128
    .local v10, "currentViewGroup":Landroid/view/ViewGroup;
    move-object/from16 v19, v11

    const/high16 v11, 0x3f800000    # 1.0f

    .end local v11    # "adapterItemAtPosition":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    .local v19, "adapterItemAtPosition":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    invoke-virtual {v8, v11}, Landroid/view/View;->setAlpha(F)V

    .line 131
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2
    move/from16 v20, v13

    .end local v13    # "hasDecorationInfo":Z
    .local v20, "hasDecorationInfo":Z
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    if-ge v11, v13, :cond_7

    .line 132
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-direct {v0, v13, v1, v14}, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->setViewAdjustedContentAlpha(Landroid/view/View;IZ)V

    .line 131
    add-int/lit8 v11, v11, 0x1

    move/from16 v13, v20

    goto :goto_2

    .line 137
    .end local v11    # "j":I
    :cond_7
    mul-float v11, v15, v18

    float-to-int v11, v11

    invoke-virtual {v4, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_3

    .line 127
    .end local v10    # "currentViewGroup":Landroid/view/ViewGroup;
    .end local v19    # "adapterItemAtPosition":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    .end local v20    # "hasDecorationInfo":Z
    .local v11, "adapterItemAtPosition":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    .restart local v13    # "hasDecorationInfo":Z
    :cond_8
    move-object/from16 v19, v11

    move/from16 v20, v13

    .line 140
    .end local v11    # "adapterItemAtPosition":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    .end local v13    # "hasDecorationInfo":Z
    .restart local v19    # "adapterItemAtPosition":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    .restart local v20    # "hasDecorationInfo":Z
    invoke-direct {v0, v8, v1, v14}, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->setViewAdjustedContentAlpha(Landroid/view/View;IZ)V

    .line 143
    nop

    .line 144
    invoke-virtual {v6}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    .line 143
    invoke-direct {v0, v10, v1}, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->setAdjustedAdapterItemDecorationBackgroundAlpha(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;I)V

    .line 148
    if-eqz v4, :cond_9

    .line 149
    mul-float v10, v15, v18

    float-to-int v10, v10

    invoke-virtual {v4, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 153
    :cond_9
    :goto_3
    const/high16 v10, 0x3f800000    # 1.0f

    .line 154
    .local v10, "scaleY":F
    if-eqz v14, :cond_a

    .line 155
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->getAnimationProgress()F

    move-result v11

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v10, v13, v11

    .line 157
    add-int/lit8 v1, v1, 0x1

    .line 159
    :cond_a
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v10

    float-to-int v11, v11

    .line 160
    .local v11, "scaledHeight":I
    invoke-virtual {v8, v10}, Landroid/view/View;->setScaleY(F)V

    .line 164
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/2addr v13, v2

    .line 165
    .local v13, "y":I
    if-lez v12, :cond_b

    .line 167
    sub-int/2addr v13, v11

    goto :goto_4

    .line 170
    :cond_b
    add-int/2addr v2, v11

    .line 171
    if-nez v14, :cond_c

    .line 172
    move v3, v11

    .line 175
    :cond_c
    :goto_4
    int-to-float v0, v13

    invoke-virtual {v8, v0}, Landroid/view/View;->setY(F)V

    move/from16 v4, v16

    goto :goto_5

    .line 105
    .end local v11    # "scaledHeight":I
    .end local v12    # "spanIndex":I
    .end local v13    # "y":I
    .end local v14    # "shouldAnimate":Z
    .end local v15    # "backgroundAlpha":F
    .end local v16    # "appRowComplete":Z
    .end local v17    # "allAppsAdapters":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;>;"
    .end local v19    # "adapterItemAtPosition":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    .end local v20    # "hasDecorationInfo":Z
    .local v4, "appRowComplete":Z
    .local v10, "allAppsAdapters":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;>;"
    :cond_d
    move-object/from16 v17, v10

    .line 94
    .end local v8    # "currentView":Landroid/view/View;
    .end local v9    # "adapterPosition":I
    .end local v10    # "allAppsAdapters":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;>;"
    :goto_5
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 177
    .end local v7    # "i":I
    :cond_e
    sub-int v0, v2, v3

    return v0
.end method

.method protected shouldAnimate(Landroid/view/View;ZZ)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasDecorationInfo"    # Z
    .param p3, "firstAppRowComplete"    # Z

    .line 264
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/RecyclerViewAnimationController;->isAppIcon(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
