.class public Lcom/android/launcher3/views/FloatingIconView;
.super Landroid/widget/FrameLayout;
.source "FloatingIconView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/android/launcher3/views/FloatingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;
    }
.end annotation


# static fields
.field public static final SHAPE_PROGRESS_DURATION:F = 0.1f

.field private static final TAG:Ljava/lang/String;

.field private static sFetchIconId:J

.field private static sIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

.field private static sRecycledFetchIconId:J

.field private static final sTmpRectF:Landroid/graphics/RectF;


# instance fields
.field private mBadge:Landroid/graphics/drawable/Drawable;

.field private mBtvDrawable:Landroid/view/View;

.field private mClipIconView:Lcom/android/launcher3/views/ClipIconView;

.field private mEndRunnable:Ljava/lang/Runnable;

.field private mFadeOutView:Landroid/view/View;

.field private mFastFinishRunnable:Ljava/lang/Runnable;

.field private final mFinalDrawableBounds:Landroid/graphics/Rect;

.field private mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

.field private mIconOffsetY:F

.field private mIsOpening:Z

.field private final mIsRtl:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mListenerView:Lcom/android/launcher3/views/ListenerView;

.field private mLoadIconSignal:Landroid/os/CancellationSignal;

.field private mMatchVisibilityView:Landroid/view/View;

.field private mOnTargetChangeRunnable:Ljava/lang/Runnable;

.field private mOriginalIcon:Landroid/view/View;

.field private mPositionOut:Landroid/graphics/RectF;


# direct methods
.method public static synthetic $r8$lambda$61DDa8B4SH1gkdH6Zqp7uYWRPvI(Lcom/android/launcher3/views/FloatingIconView;Landroid/os/CancellationSignal;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/views/FloatingIconView;->lambda$checkIconResult$1(Landroid/os/CancellationSignal;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 71
    const-class v0, Lcom/android/launcher3/views/FloatingIconView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/views/FloatingIconView;->TAG:Ljava/lang/String;

    .line 75
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/launcher3/views/FloatingIconView;->sFetchIconId:J

    .line 76
    sput-wide v0, Lcom/android/launcher3/views/FloatingIconView;->sRecycledFetchIconId:J

    .line 79
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/android/launcher3/views/FloatingIconView;->sTmpRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/views/FloatingIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/FloatingIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 122
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    .line 123
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 124
    invoke-virtual {p0}, Lcom/android/launcher3/views/FloatingIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsRtl:Z

    .line 125
    new-instance v0, Lcom/android/launcher3/views/ListenerView;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/views/ListenerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mListenerView:Lcom/android/launcher3/views/ListenerView;

    .line 126
    new-instance v0, Lcom/android/launcher3/views/ClipIconView;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/views/ClipIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    .line 127
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mBtvDrawable:Landroid/view/View;

    .line 128
    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/FloatingIconView;->addView(Landroid/view/View;)V

    .line 129
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/FloatingIconView;->addView(Landroid/view/View;)V

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/FloatingIconView;->setWillNotDraw(Z)V

    .line 131
    return-void
.end method

.method private checkIconResult()V
    .locals 6

    .line 393
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    .line 395
    .local v0, "cancellationSignal":Landroid/os/CancellationSignal;
    iget-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    if-nez v1, :cond_0

    .line 396
    sget-object v1, Lcom/android/launcher3/views/FloatingIconView;->TAG:Ljava/lang/String;

    const-string v2, "No icon load result found in checkIconResult"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return-void

    .line 400
    :cond_0
    monitor-enter v1

    .line 401
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-boolean v2, v2, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconLoaded:Z

    if-eqz v2, :cond_1

    .line 402
    iget-object v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-object v2, v2, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-object v3, v3, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->badge:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-object v4, v4, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->btvDrawable:Ljava/util/function/Supplier;

    iget-object v5, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget v5, v5, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->iconOffset:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/launcher3/views/FloatingIconView;->setIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/util/function/Supplier;I)V

    .line 404
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/views/FloatingIconView;->setVisibility(I)V

    .line 405
    invoke-direct {p0, v2}, Lcom/android/launcher3/views/FloatingIconView;->updateViewsVisibility(Z)V

    goto :goto_0

    .line 407
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    new-instance v3, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, v0}, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda6;-><init>(Lcom/android/launcher3/views/FloatingIconView;Landroid/os/CancellationSignal;)V

    iput-object v3, v2, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->onIconLoaded:Ljava/lang/Runnable;

    .line 418
    iput-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLoadIconSignal:Landroid/os/CancellationSignal;

    .line 420
    :goto_0
    monitor-exit v1

    .line 421
    return-void

    .line 420
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static fetchIcon(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;
    .locals 17
    .param p0, "l"    # Lcom/android/launcher3/Launcher;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "isOpening"    # Z

    .line 528
    move-object/from16 v9, p1

    move-object/from16 v10, p2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    move-object v11, v0

    .line 529
    .local v11, "position":Landroid/graphics/RectF;
    move-object/from16 v12, p0

    move/from16 v13, p3

    invoke-static {v12, v9, v13, v11}, Lcom/android/launcher3/views/FloatingIconView;->getLocationBoundsForView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;)V

    .line 533
    instance-of v0, v9, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_1

    .line 534
    move-object v0, v9

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .line 535
    .local v0, "btv":Lcom/android/launcher3/BubbleTextView;
    instance-of v1, v10, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v1, :cond_0

    move-object v1, v10

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v1, v1, 0xc00

    if-eqz v1, :cond_0

    .line 538
    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->makePreloadIcon()Lcom/android/launcher3/graphics/PreloadIconDrawable;

    move-result-object v1

    .line 539
    .local v1, "btvIcon":Lcom/android/launcher3/icons/FastBitmapDrawable;
    new-instance v2, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/icons/FastBitmapDrawable;)V

    .local v2, "btvDrawableSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/graphics/drawable/Drawable;>;"
    goto :goto_0

    .line 541
    .end local v1    # "btvIcon":Lcom/android/launcher3/icons/FastBitmapDrawable;
    .end local v2    # "btvDrawableSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/graphics/drawable/Drawable;>;"
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v1

    .line 543
    .restart local v1    # "btvIcon":Lcom/android/launcher3/icons/FastBitmapDrawable;
    new-instance v2, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/icons/FastBitmapDrawable;)V

    .line 545
    .end local v0    # "btv":Lcom/android/launcher3/BubbleTextView;
    .restart local v2    # "btvDrawableSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/graphics/drawable/Drawable;>;"
    :goto_0
    move-object v14, v1

    move-object v15, v2

    goto :goto_1

    .line 546
    .end local v1    # "btvIcon":Lcom/android/launcher3/icons/FastBitmapDrawable;
    .end local v2    # "btvDrawableSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/graphics/drawable/Drawable;>;"
    :cond_1
    const/4 v1, 0x0

    .line 547
    .restart local v1    # "btvIcon":Lcom/android/launcher3/icons/FastBitmapDrawable;
    const/4 v2, 0x0

    move-object v14, v1

    move-object v15, v2

    .line 550
    .end local v1    # "btvIcon":Lcom/android/launcher3/icons/FastBitmapDrawable;
    .local v14, "btvIcon":Lcom/android/launcher3/icons/FastBitmapDrawable;
    .local v15, "btvDrawableSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/graphics/drawable/Drawable;>;"
    :goto_1
    new-instance v0, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    if-eqz v14, :cond_2

    invoke-virtual {v14}, Lcom/android/launcher3/icons/FastBitmapDrawable;->isThemed()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-direct {v0, v10, v1}, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;-><init>(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    move-object v8, v0

    .line 551
    .local v8, "result":Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;
    iput-object v15, v8, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->btvDrawable:Ljava/util/function/Supplier;

    .line 553
    sget-wide v1, Lcom/android/launcher3/views/FloatingIconView;->sFetchIconId:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    sput-wide v3, Lcom/android/launcher3/views/FloatingIconView;->sFetchIconId:J

    .line 554
    .local v1, "fetchIconId":J
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v6, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda5;

    move-object v0, v6

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object v9, v6

    move-object v6, v11

    move-object v10, v7

    move-object v7, v14

    move-object/from16 v16, v8

    .end local v8    # "result":Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;
    .local v16, "result":Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;
    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda5;-><init>(JLcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/RectF;Lcom/android/launcher3/icons/FastBitmapDrawable;Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;)V

    invoke-virtual {v10, v9}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 561
    sput-object v16, Lcom/android/launcher3/views/FloatingIconView;->sIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    .line 562
    return-object v16
.end method

.method private finish(Lcom/android/launcher3/dragndrop/DragLayer;)V
    .locals 2
    .param p1, "dragLayer"    # Lcom/android/launcher3/dragndrop/DragLayer;

    .line 656
    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragLayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 657
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mListenerView:Lcom/android/launcher3/views/ListenerView;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->removeView(Landroid/view/View;)V

    .line 658
    invoke-direct {p0}, Lcom/android/launcher3/views/FloatingIconView;->recycle()V

    .line 659
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getViewCache()Lcom/android/launcher3/util/ViewCache;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$layout;->floating_icon_view:I

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/util/ViewCache;->recycleView(ILandroid/view/View;)V

    .line 660
    return-void
.end method

.method public static getFloatingIconView(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLandroid/graphics/RectF;Z)Lcom/android/launcher3/views/FloatingIconView;
    .locals 6
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "visibilitySyncView"    # Landroid/view/View;
    .param p3, "fadeOutView"    # Landroid/view/View;
    .param p4, "hideOriginal"    # Z
    .param p5, "positionOut"    # Landroid/graphics/RectF;
    .param p6, "isOpening"    # Z

    .line 585
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    .line 586
    .local v0, "dragLayer":Lcom/android/launcher3/dragndrop/DragLayer;
    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 587
    .local v1, "parent":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getViewCache()Lcom/android/launcher3/util/ViewCache;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$layout;->floating_icon_view:I

    invoke-virtual {v2, v3, p0, v1}, Lcom/android/launcher3/util/ViewCache;->getView(ILandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/views/FloatingIconView;

    .line 589
    .local v2, "view":Lcom/android/launcher3/views/FloatingIconView;
    invoke-direct {v2}, Lcom/android/launcher3/views/FloatingIconView;->recycle()V

    .line 592
    iput-boolean p6, v2, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    .line 593
    iput-object p1, v2, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    .line 594
    iput-object p2, v2, Lcom/android/launcher3/views/FloatingIconView;->mMatchVisibilityView:Landroid/view/View;

    .line 595
    iput-object p3, v2, Lcom/android/launcher3/views/FloatingIconView;->mFadeOutView:Landroid/view/View;

    .line 596
    iput-object p5, v2, Lcom/android/launcher3/views/FloatingIconView;->mPositionOut:Landroid/graphics/RectF;

    .line 599
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v3, :cond_0

    if-eqz p4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 600
    .local v3, "shouldLoadIcon":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 601
    sget-object v4, Lcom/android/launcher3/views/FloatingIconView;->sIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    if-eqz v4, :cond_1

    iget-object v4, v4, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 602
    sget-object v4, Lcom/android/launcher3/views/FloatingIconView;->sIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iput-object v4, v2, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    goto :goto_1

    .line 604
    :cond_1
    nop

    .line 605
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    .line 604
    invoke-static {p0, p1, v4, p6}, Lcom/android/launcher3/views/FloatingIconView;->fetchIcon(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    move-result-object v4

    iput-object v4, v2, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    .line 607
    :goto_1
    iget-object v4, v2, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-object v4, v4, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->btvDrawable:Ljava/util/function/Supplier;

    invoke-direct {v2, v4}, Lcom/android/launcher3/views/FloatingIconView;->setOriginalDrawableBackground(Ljava/util/function/Supplier;)V

    .line 609
    :cond_2
    invoke-static {}, Lcom/android/launcher3/views/FloatingIconView;->resetIconLoadResult()V

    .line 612
    invoke-direct {v2, p0, p1, p6, p5}, Lcom/android/launcher3/views/FloatingIconView;->matchPositionOf(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;)V

    .line 615
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/android/launcher3/views/FloatingIconView;->setVisibility(I)V

    .line 617
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 618
    iget-object v4, v2, Lcom/android/launcher3/views/FloatingIconView;->mListenerView:Lcom/android/launcher3/views/ListenerView;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/dragndrop/DragLayer;->addView(Landroid/view/View;)V

    .line 619
    iget-object v4, v2, Lcom/android/launcher3/views/FloatingIconView;->mListenerView:Lcom/android/launcher3/views/ListenerView;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda1;

    invoke-direct {v5, v2}, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/views/FloatingIconView;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/views/ListenerView;->setListener(Ljava/lang/Runnable;)V

    .line 621
    new-instance v4, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2, p4, v0}, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/views/FloatingIconView;ZLcom/android/launcher3/dragndrop/DragLayer;)V

    iput-object v4, v2, Lcom/android/launcher3/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    .line 639
    if-eqz v3, :cond_3

    .line 640
    invoke-direct {v2}, Lcom/android/launcher3/views/FloatingIconView;->checkIconResult()V

    .line 643
    :cond_3
    return-object v2
.end method

.method private static getIconResult(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/RectF;Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;)V
    .locals 9
    .param p0, "l"    # Lcom/android/launcher3/Launcher;
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "pos"    # Landroid/graphics/RectF;
    .param p4, "btvIcon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "outIconLoadResult"    # Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    .line 271
    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->isDisabled()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 273
    .local v0, "supportsAdaptiveIcons":Z
    const/4 v2, 0x0

    .line 274
    .local v2, "badge":Landroid/graphics/drawable/Drawable;
    instance-of v3, p2, Lcom/android/launcher3/popup/SystemShortcut;

    if-eqz v3, :cond_2

    .line 275
    instance-of v3, p1, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 276
    move-object v3, p1

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 277
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    instance-of v3, p1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz v3, :cond_1

    .line 278
    move-object v3, p1

    check-cast v3, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    invoke-virtual {v3}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .restart local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 280
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .restart local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 282
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    instance-of v3, p4, Lcom/android/launcher3/graphics/PreloadIconDrawable;

    if-eqz v3, :cond_3

    .line 284
    move-object v3, p4

    .restart local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 286
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    .line 287
    .local v3, "width":I
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    .line 288
    .local v4, "height":I
    const/4 v5, 0x0

    .line 289
    .local v5, "fullIcon":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/drawable/AdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;>;"
    if-eqz v0, :cond_5

    .line 291
    instance-of v6, p4, Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v6, :cond_4

    .line 290
    move-object v6, p4

    check-cast v6, Lcom/android/launcher3/icons/FastBitmapDrawable;

    .line 291
    .local v6, "fbd":Lcom/android/launcher3/icons/FastBitmapDrawable;
    invoke-virtual {v6}, Lcom/android/launcher3/icons/FastBitmapDrawable;->isCreatedForTheme()Z

    move-result v7

    if-eqz v7, :cond_4

    move v6, v1

    goto :goto_0

    .end local v6    # "fbd":Lcom/android/launcher3/icons/FastBitmapDrawable;
    :cond_4
    const/4 v6, 0x0

    .line 292
    .local v6, "shouldThemeIcon":Z
    :goto_0
    invoke-static {p0, p2, v3, v4, v6}, Lcom/android/launcher3/Utilities;->getFullDrawable(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;IIZ)Landroid/util/Pair;

    move-result-object v5

    .end local v6    # "shouldThemeIcon":Z
    goto :goto_1

    .line 293
    :cond_5
    instance-of v6, p1, Lcom/android/launcher3/BubbleTextView;

    if-nez v6, :cond_6

    .line 294
    invoke-static {p0, p2, v3, v4, v1}, Lcom/android/launcher3/Utilities;->getFullDrawable(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;IIZ)Landroid/util/Pair;

    move-result-object v5

    goto :goto_2

    .line 293
    :cond_6
    :goto_1
    nop

    .line 297
    :goto_2
    if-eqz v5, :cond_7

    .line 298
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/drawable/Drawable;

    .line 299
    .local v6, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v2, v7

    check-cast v2, Landroid/graphics/drawable/Drawable;

    move-object v3, v6

    goto :goto_3

    .line 301
    .end local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_7
    move-object v6, p4

    move-object v3, v6

    .line 305
    .end local v4    # "height":I
    .end local v5    # "fullIcon":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/drawable/AdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;>;"
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_3
    const/4 v4, 0x0

    if-nez v3, :cond_8

    move-object v5, v4

    goto :goto_4

    :cond_8
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_4
    move-object v3, v5

    .line 306
    invoke-static {p0, v3, p3}, Lcom/android/launcher3/views/FloatingIconView;->getOffsetForIconBounds(Lcom/android/launcher3/Launcher;Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)I

    move-result v5

    .line 309
    .local v5, "iconOffset":I
    if-nez p4, :cond_9

    move-object v6, v4

    goto :goto_5

    :cond_9
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 310
    .local v6, "btvClone":Landroid/graphics/drawable/Drawable;
    :goto_5
    monitor-enter p5

    .line 311
    :try_start_0
    new-instance v7, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda0;

    invoke-direct {v7, v6}, Lcom/android/launcher3/views/FloatingIconView$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v7, p5, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->btvDrawable:Ljava/util/function/Supplier;

    .line 312
    iput-object v3, p5, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->drawable:Landroid/graphics/drawable/Drawable;

    .line 313
    iput-object v2, p5, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->badge:Landroid/graphics/drawable/Drawable;

    .line 314
    iput v5, p5, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->iconOffset:I

    .line 315
    iget-object v7, p5, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->onIconLoaded:Ljava/lang/Runnable;

    if-eqz v7, :cond_a

    .line 316
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v7

    iget-object v8, p5, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->onIconLoaded:Ljava/lang/Runnable;

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 317
    iput-object v4, p5, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->onIconLoaded:Ljava/lang/Runnable;

    .line 319
    :cond_a
    iput-boolean v1, p5, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconLoaded:Z

    .line 320
    monitor-exit p5

    .line 321
    return-void

    .line 320
    :catchall_0
    move-exception v1

    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getLocationBoundsForView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;)V
    .locals 1
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "isOpening"    # Z
    .param p3, "outRect"    # Landroid/graphics/RectF;

    .line 220
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/launcher3/views/FloatingIconView;->getLocationBoundsForView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 221
    return-void
.end method

.method public static getLocationBoundsForView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 7
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "isOpening"    # Z
    .param p3, "outRect"    # Landroid/graphics/RectF;
    .param p4, "outViewBounds"    # Landroid/graphics/Rect;

    .line 230
    xor-int/lit8 v0, p2, 0x1

    .line 231
    .local v0, "ignoreTransform":Z
    instance-of v1, p1, Lcom/android/launcher3/views/BubbleTextHolder;

    if-eqz v1, :cond_0

    .line 232
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/views/BubbleTextHolder;

    invoke-interface {v1}, Lcom/android/launcher3/views/BubbleTextHolder;->getBubbleText()Lcom/android/launcher3/BubbleTextView;

    move-result-object p1

    .line 233
    const/4 v0, 0x0

    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz v1, :cond_1

    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    invoke-virtual {v1}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object p1

    .line 236
    const/4 v0, 0x0

    .line 238
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 239
    return-void

    .line 242
    :cond_2
    instance-of v1, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v1, :cond_3

    .line 243
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1, p4}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 244
    :cond_3
    instance-of v1, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v1, :cond_4

    .line 245
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1, p4}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 247
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p4, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 250
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p4

    move v4, v0

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/Utilities;->getBoundsForViewInDragLayer(Lcom/android/launcher3/views/BaseDragLayer;Landroid/view/View;Landroid/graphics/Rect;Z[FLandroid/graphics/RectF;)V

    .line 252
    return-void
.end method

.method private static getOffsetForIconBounds(Lcom/android/launcher3/Launcher;Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)I
    .locals 5
    .param p0, "l"    # Lcom/android/launcher3/Launcher;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "position"    # Landroid/graphics/RectF;

    .line 426
    instance-of v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 427
    return v1

    .line 429
    :cond_0
    nop

    .line 430
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/launcher3/R$dimen;->blur_size_medium_outline:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 432
    .local v0, "blurSizeOutline":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v3, v0

    .line 433
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v4, v0

    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, v2

    .line 434
    .local v1, "bounds":Landroid/graphics/Rect;
    div-int/lit8 v2, v0, 0x2

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 436
    invoke-static {p0}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object v2

    .line 437
    .local v2, "li":Lcom/android/launcher3/icons/LauncherIcons;
    :try_start_0
    invoke-virtual {v2}, Lcom/android/launcher3/icons/LauncherIcons;->getNormalizer()Lcom/android/launcher3/icons/IconNormalizer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, v4, v4}, Lcom/android/launcher3/icons/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v3

    invoke-static {v1, v3}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher3/icons/LauncherIcons;->close()V

    .line 441
    .end local v2    # "li":Lcom/android/launcher3/icons/LauncherIcons;
    :cond_1
    nop

    .line 442
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 443
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 441
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 446
    iget v2, v1, Landroid/graphics/Rect;->left:I

    return v2

    .line 436
    .restart local v2    # "li":Lcom/android/launcher3/icons/LauncherIcons;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {v2}, Lcom/android/launcher3/icons/LauncherIcons;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v3
.end method

.method private synthetic lambda$checkIconResult$1(Landroid/os/CancellationSignal;)V
    .locals 4
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 408
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-object v0, v0, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-object v1, v1, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->badge:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget-object v2, v2, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->btvDrawable:Ljava/util/function/Supplier;

    iget-object v3, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    iget v3, v3, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->iconOffset:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/launcher3/views/FloatingIconView;->setIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/util/function/Supplier;I)V

    .line 415
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/FloatingIconView;->setVisibility(I)V

    .line 416
    invoke-direct {p0, v0}, Lcom/android/launcher3/views/FloatingIconView;->updateViewsVisibility(Z)V

    .line 417
    return-void
.end method

.method static synthetic lambda$fetchIcon$2(Lcom/android/launcher3/icons/FastBitmapDrawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "btvIcon"    # Lcom/android/launcher3/icons/FastBitmapDrawable;

    .line 539
    return-object p0
.end method

.method static synthetic lambda$fetchIcon$3(Lcom/android/launcher3/icons/FastBitmapDrawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "btvIcon"    # Lcom/android/launcher3/icons/FastBitmapDrawable;

    .line 543
    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$fetchIcon$4(JLcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/RectF;Lcom/android/launcher3/icons/FastBitmapDrawable;Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;)V
    .locals 2
    .param p0, "fetchIconId"    # J
    .param p2, "l"    # Lcom/android/launcher3/Launcher;
    .param p3, "v"    # Landroid/view/View;
    .param p4, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p5, "position"    # Landroid/graphics/RectF;
    .param p6, "btvIcon"    # Lcom/android/launcher3/icons/FastBitmapDrawable;
    .param p7, "result"    # Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    .line 555
    sget-wide v0, Lcom/android/launcher3/views/FloatingIconView;->sRecycledFetchIconId:J

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 556
    return-void

    .line 558
    :cond_0
    invoke-static/range {p2 .. p7}, Lcom/android/launcher3/views/FloatingIconView;->getIconResult(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/RectF;Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;)V

    .line 559
    return-void
.end method

.method static synthetic lambda$getFloatingIconView$5(Lcom/android/launcher3/views/FloatingIconView;ZLcom/android/launcher3/dragndrop/DragLayer;)V
    .locals 2
    .param p0, "view"    # Lcom/android/launcher3/views/FloatingIconView;
    .param p1, "hideOriginal"    # Z
    .param p2, "dragLayer"    # Lcom/android/launcher3/dragndrop/DragLayer;

    .line 622
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    .line 624
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mFadeOutView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 625
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 628
    :cond_0
    if-eqz p1, :cond_1

    .line 629
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/views/FloatingIconView;->updateViewsVisibility(Z)V

    .line 630
    invoke-direct {p0, p2}, Lcom/android/launcher3/views/FloatingIconView;->finish(Lcom/android/launcher3/dragndrop/DragLayer;)V

    goto :goto_0

    .line 632
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/launcher3/views/FloatingIconView;->finish(Lcom/android/launcher3/dragndrop/DragLayer;)V

    .line 634
    :goto_0
    return-void
.end method

.method static synthetic lambda$getIconResult$0(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "btvClone"    # Landroid/graphics/drawable/Drawable;

    .line 311
    return-object p0
.end method

.method private matchPositionOf(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;)V
    .locals 6
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "isOpening"    # Z
    .param p4, "positionOut"    # Landroid/graphics/RectF;

    .line 187
    invoke-static {p1, p2, p3, p4}, Lcom/android/launcher3/views/FloatingIconView;->getLocationBoundsForView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;)V

    .line 188
    new-instance v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    .line 189
    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 190
    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;-><init>(II)V

    .line 191
    .local v0, "lp":Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
    invoke-direct {p0, p4, v0}, Lcom/android/launcher3/views/FloatingIconView;->updatePosition(Landroid/graphics/RectF;Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;)V

    .line 192
    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/FloatingIconView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    iget-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->width:I

    iget v4, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->height:I

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/views/ClipIconView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    iget-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mBtvDrawable:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->width:I

    iget v4, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->height:I

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    return-void
.end method

.method private recycle()V
    .locals 4

    .line 663
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/FloatingIconView;->setTranslationX(F)V

    .line 664
    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/FloatingIconView;->setTranslationY(F)V

    .line 665
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lcom/android/launcher3/views/FloatingIconView;->setScaleX(F)V

    .line 666
    invoke-virtual {p0, v1}, Lcom/android/launcher3/views/FloatingIconView;->setScaleY(F)V

    .line 667
    invoke-virtual {p0, v1}, Lcom/android/launcher3/views/FloatingIconView;->setAlpha(F)V

    .line 668
    iget-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mLoadIconSignal:Landroid/os/CancellationSignal;

    if-eqz v1, :cond_0

    .line 669
    invoke-virtual {v1}, Landroid/os/CancellationSignal;->cancel()V

    .line 671
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mLoadIconSignal:Landroid/os/CancellationSignal;

    .line 672
    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    .line 673
    iget-object v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 674
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    .line 675
    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mPositionOut:Landroid/graphics/RectF;

    .line 676
    iget-object v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mListenerView:Lcom/android/launcher3/views/ListenerView;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/views/ListenerView;->setListener(Ljava/lang/Runnable;)V

    .line 677
    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    .line 678
    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mOnTargetChangeRunnable:Ljava/lang/Runnable;

    .line 679
    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 680
    sget-wide v2, Lcom/android/launcher3/views/FloatingIconView;->sFetchIconId:J

    sput-wide v2, Lcom/android/launcher3/views/FloatingIconView;->sRecycledFetchIconId:J

    .line 681
    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    .line 682
    iget-object v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    invoke-virtual {v2}, Lcom/android/launcher3/views/ClipIconView;->recycle()V

    .line 683
    iget-object v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mBtvDrawable:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 684
    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mFastFinishRunnable:Ljava/lang/Runnable;

    .line 685
    iput v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconOffsetY:F

    .line 686
    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mMatchVisibilityView:Landroid/view/View;

    .line 687
    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mFadeOutView:Landroid/view/View;

    .line 688
    return-void
.end method

.method public static resetIconLoadResult()V
    .locals 1

    .line 569
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/views/FloatingIconView;->sIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    .line 570
    return-void
.end method

.method private setIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/util/function/Supplier;I)V
    .locals 10
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "badge"    # Landroid/graphics/drawable/Drawable;
    .param p4, "iconOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/drawable/Drawable;",
            ">;I)V"
        }
    .end annotation

    .line 333
    .local p3, "btvIcon":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/graphics/drawable/Drawable;>;"
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 334
    .local v0, "dp":Lcom/android/launcher3/DeviceProfile;
    nop

    .line 335
    invoke-virtual {p0}, Lcom/android/launcher3/views/FloatingIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    .line 336
    .local v7, "lp":Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
    iput-object p2, p0, Lcom/android/launcher3/views/FloatingIconView;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 337
    iget-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    iget-boolean v5, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    move-object v2, p1

    move v3, p4

    move-object v4, v7

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/views/ClipIconView;->setIcon(Landroid/graphics/drawable/Drawable;ILandroid/view/ViewGroup$MarginLayoutParams;ZLcom/android/launcher3/DeviceProfile;)V

    .line 338
    instance-of v1, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v1, :cond_2

    .line 339
    iget v1, v7, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->height:I

    .line 340
    .local v1, "originalHeight":I
    iget v2, v7, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->width:I

    .line 342
    .local v2, "originalWidth":I
    iget-object v3, p0, Lcom/android/launcher3/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 344
    iget-object v3, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->aspectRatio:F

    .line 345
    .local v3, "aspectRatio":F
    iget-boolean v5, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v5, :cond_0

    .line 346
    iget v5, v7, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->width:I

    int-to-float v5, v5

    iget v6, v7, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->height:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-int v5, v5

    iput v5, v7, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->width:I

    goto :goto_0

    .line 348
    :cond_0
    iget v5, v7, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->height:I

    int-to-float v5, v5

    iget v6, v7, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->width:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-int v5, v5

    iput v5, v7, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->height:I

    .line 350
    :goto_0
    invoke-virtual {p0, v7}, Lcom/android/launcher3/views/FloatingIconView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    iget-object v5, p0, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    invoke-virtual {v5}, Lcom/android/launcher3/views/ClipIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 353
    .local v5, "clipViewLp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/android/launcher3/views/FloatingIconView;->mBadge:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    .line 354
    new-instance v6, Landroid/graphics/Rect;

    iget v8, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v9, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-direct {v6, v4, v4, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v4, v6

    .line 355
    .local v4, "badgeBounds":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/launcher3/views/FloatingIconView;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-static {v6, v4}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setBadgeBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 357
    .end local v4    # "badgeBounds":Landroid/graphics/Rect;
    :cond_1
    iget v4, v7, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->width:I

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 358
    iget v4, v7, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->height:I

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 359
    iget-object v4, p0, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/views/ClipIconView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    .end local v1    # "originalHeight":I
    .end local v2    # "originalWidth":I
    .end local v3    # "aspectRatio":F
    .end local v5    # "clipViewLp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    invoke-direct {p0, p3}, Lcom/android/launcher3/views/FloatingIconView;->setOriginalDrawableBackground(Ljava/util/function/Supplier;)V

    .line 363
    invoke-virtual {p0}, Lcom/android/launcher3/views/FloatingIconView;->invalidate()V

    .line 364
    return-void
.end method

.method private setOriginalDrawableBackground(Ljava/util/function/Supplier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 376
    .local p1, "btvIcon":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/graphics/drawable/Drawable;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    if-nez v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mBtvDrawable:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 379
    :cond_1
    return-void
.end method

.method private updatePosition(Landroid/graphics/RectF;Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;)V
    .locals 5
    .param p1, "pos"    # Landroid/graphics/RectF;
    .param p2, "lp"    # Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    .line 201
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mPositionOut:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    .line 204
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p2, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->topMargin:I

    .line 205
    iget-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_0

    .line 208
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->setMarginStart(I)V

    .line 212
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsRtl:Z

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    invoke-virtual {p2}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->getMarginStart()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p2, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->width:I

    sub-int/2addr v0, v1

    goto :goto_1

    .line 214
    :cond_1
    iget v0, p2, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->leftMargin:I

    :goto_1
    nop

    .line 215
    .local v0, "left":I
    iget v1, p2, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->topMargin:I

    iget v2, p2, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->width:I

    add-int/2addr v2, v0

    iget v3, p2, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->topMargin:I

    iget v4, p2, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->height:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/launcher3/views/FloatingIconView;->layout(IIII)V

    .line 216
    return-void
.end method

.method private updateViewsVisibility(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .line 647
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 648
    invoke-static {v0, p1}, Lcom/android/launcher3/views/IconLabelDotView;->setIconAndDotVisible(Landroid/view/View;Z)V

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mMatchVisibilityView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 651
    invoke-static {v0, p1}, Lcom/android/launcher3/views/IconLabelDotView;->setIconAndDotVisible(Landroid/view/View;Z)V

    .line 653
    :cond_1
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 451
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 452
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mBadge:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 455
    :cond_0
    return-void
.end method

.method public fastFinish()V
    .locals 2

    .line 466
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mFastFinishRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 467
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 468
    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mFastFinishRunnable:Ljava/lang/Runnable;

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLoadIconSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_1

    .line 471
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 472
    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mLoadIconSignal:Landroid/os/CancellationSignal;

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 475
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 476
    iput-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    .line 478
    :cond_2
    return-void
.end method

.method public isDifferentFromAppIcon()Z
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v0, v0, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isThemed:Z

    :goto_0
    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 494
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 169
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLoadIconSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 173
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    invoke-virtual {v0}, Lcom/android/launcher3/views/ClipIconView;->endReveal()V

    .line 178
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 497
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 482
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconLoaded:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mBtvDrawable:Landroid/view/View;

    .line 483
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 485
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher3/views/FloatingIconView;->setVisibility(I)V

    .line 487
    :cond_2
    iget-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    if-nez v0, :cond_3

    .line 489
    invoke-direct {p0, v1}, Lcom/android/launcher3/views/FloatingIconView;->updateViewsVisibility(Z)V

    .line 491
    :cond_3
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 135
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 136
    iget-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/android/launcher3/views/FloatingIconView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 139
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 143
    invoke-virtual {p0}, Lcom/android/launcher3/views/FloatingIconView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 144
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 145
    return-void
.end method

.method public onGlobalLayout()V
    .locals 4

    .line 507
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mPositionOut:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    sget-object v3, Lcom/android/launcher3/views/FloatingIconView;->sTmpRectF:Landroid/graphics/RectF;

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher3/views/FloatingIconView;->getLocationBoundsForView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;)V

    .line 509
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconOffsetY:F

    invoke-virtual {v3, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 510
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mPositionOut:Landroid/graphics/RectF;

    invoke-virtual {v3, v0}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/android/launcher3/views/FloatingIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    invoke-direct {p0, v3, v0}, Lcom/android/launcher3/views/FloatingIconView;->updatePosition(Landroid/graphics/RectF;Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;)V

    .line 512
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mOnTargetChangeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 513
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 517
    :cond_0
    return-void
.end method

.method public setFastFinishRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 461
    iput-object p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mFastFinishRunnable:Ljava/lang/Runnable;

    .line 462
    return-void
.end method

.method public setOnTargetChangeListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "onTargetChangeListener"    # Ljava/lang/Runnable;

    .line 520
    iput-object p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mOnTargetChangeRunnable:Ljava/lang/Runnable;

    .line 521
    return-void
.end method

.method public setPositionOffsetY(F)V
    .locals 0
    .param p1, "y"    # F

    .line 501
    iput p1, p0, Lcom/android/launcher3/views/FloatingIconView;->mIconOffsetY:F

    .line 502
    invoke-virtual {p0}, Lcom/android/launcher3/views/FloatingIconView;->onGlobalLayout()V

    .line 503
    return-void
.end method

.method public update(FLandroid/graphics/RectF;FFFZ)V
    .locals 8
    .param p1, "alpha"    # F
    .param p2, "rect"    # Landroid/graphics/RectF;
    .param p3, "progress"    # F
    .param p4, "shapeProgressStart"    # F
    .param p5, "cornerRadius"    # F
    .param p6, "isOpening"    # Z

    .line 157
    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/FloatingIconView;->setAlpha(F)V

    .line 158
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    iget-object v1, p0, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 159
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v7

    .line 158
    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/views/ClipIconView;->update(Landroid/graphics/RectF;FFFZLandroid/view/View;Lcom/android/launcher3/DeviceProfile;)V

    .line 161
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconView;->mFadeOutView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 163
    const/4 v2, 0x0

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    sget-object v6, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move v1, p3

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 165
    :cond_0
    return-void
.end method
