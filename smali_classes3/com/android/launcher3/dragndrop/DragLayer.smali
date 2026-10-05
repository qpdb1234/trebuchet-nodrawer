.class public Lcom/android/launcher3/dragndrop/DragLayer;
.super Lcom/android/launcher3/views/BaseDragLayer;
.source "DragLayer.java"

# interfaces
.implements Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/views/BaseDragLayer<",
        "Lcom/android/launcher3/Launcher;",
        ">;",
        "Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayCallbacks;"
    }
.end annotation


# static fields
.field private static final ALPHA_CHANNEL_COUNT:I = 0x1

.field public static final ALPHA_INDEX_OVERLAY:I = 0x0

.field public static final ANIMATION_END_DISAPPEAR:I = 0x0

.field public static final ANIMATION_END_REMAIN_VISIBLE:I = 0x2


# instance fields
.field private mChildCountOnLastUpdate:I

.field private mDragController:Lcom/android/launcher3/dragndrop/DragController;

.field private mDropAnim:Landroid/animation/Animator;

.field private mDropView:Lcom/android/launcher3/dragndrop/DragView;

.field private final mFocusIndicatorHelper:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

.field private mHoverPointClosesFolder:Z

.field private final mIsRtl:Z

.field private mTopViewIndex:I

.field private mWorkspaceDragScrim:Lcom/android/launcher3/graphics/Scrim;


# direct methods
.method public static synthetic $r8$lambda$FrzH0l7vvQcHMvx5L2NXsNe1PMg(Lcom/android/launcher3/dragndrop/DragLayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->lambda$playDropAnimation$2()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 102
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/BaseDragLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/Animator;

    .line 84
    iput-object v1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropView:Lcom/android/launcher3/dragndrop/DragView;

    .line 86
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mHoverPointClosesFolder:Z

    .line 89
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mChildCountOnLastUpdate:I

    .line 105
    invoke-virtual {p0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->setMotionEventSplittingEnabled(Z)V

    .line 106
    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->setChildrenDrawingOrderEnabled(Z)V

    .line 108
    new-instance v0, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mFocusIndicatorHelper:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    .line 109
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mIsRtl:Z

    .line 110
    return-void
.end method

.method private isEventOverAccessibleDropTargetBar(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 137
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->isInAccessibleDrag()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDropTargetBar()Lcom/android/launcher3/DropTargetBar;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isInAccessibleDrag()Z
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->isInAccessibleDrag()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$animateView$1(Landroid/view/View;IFLjava/lang/Float;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 3
    .param p0, "anchorView"    # Landroid/view/View;
    .param p1, "startScroll"    # I
    .param p2, "f"    # F
    .param p3, "s"    # Ljava/lang/Float;
    .param p4, "e"    # Ljava/lang/Float;

    .line 364
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    .line 365
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    sub-int v2, p1, v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 364
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$animateViewIntoPosition$0(Landroid/view/View;)V
    .locals 1
    .param p0, "child"    # Landroid/view/View;

    .line 293
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$playDropAnimation$2()V
    .locals 1

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/Animator;

    return-void
.end method

.method private sendTapOutsideFolderAccessibilityEvent(Z)V
    .locals 3
    .param p1, "isEditingName"    # Z

    .line 184
    if-eqz p1, :cond_0

    sget v0, Lcom/android/launcher3/R$string;->folder_tap_to_rename:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/launcher3/R$string;->folder_tap_to_close:I

    .line 185
    .local v0, "stringId":I
    :goto_0
    nop

    .line 186
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 185
    const/16 v2, 0x8

    invoke-static {p0, v2, v1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V

    .line 187
    return-void
.end method

.method private updateChildIndices()V
    .locals 3

    .line 438
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTopViewIndex:I

    .line 439
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->getChildCount()I

    move-result v0

    .line 440
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 441
    invoke-virtual {p0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/dragndrop/DragView;

    if-eqz v2, :cond_0

    .line 442
    iput v1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTopViewIndex:I

    .line 440
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 445
    .end local v1    # "i":I
    :cond_1
    iput v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mChildCountOnLastUpdate:I

    .line 446
    return-void
.end method


# virtual methods
.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 211
    .local p1, "childrenForAccessibility":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    const v1, 0x3bfcb7

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 213
    .local v0, "topView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->addAccessibleChildToList(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 215
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->isInAccessibleDrag()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mActivity:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDropTargetBar()Lcom/android/launcher3/DropTargetBar;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->addAccessibleChildToList(Landroid/view/View;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 219
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    .line 221
    :cond_1
    :goto_0
    return-void
.end method

.method public animateView(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Rect;FFFILandroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
    .locals 15
    .param p1, "view"    # Lcom/android/launcher3/dragndrop/DragView;
    .param p2, "to"    # Landroid/graphics/Rect;
    .param p3, "finalAlpha"    # F
    .param p4, "finalScaleX"    # F
    .param p5, "finalScaleY"    # F
    .param p6, "duration"    # I
    .param p7, "motionInterpolator"    # Landroid/view/animation/Interpolator;
    .param p8, "onCompleteRunnable"    # Ljava/lang/Runnable;
    .param p9, "animationEndStyle"    # I
    .param p10, "anchorView"    # Landroid/view/View;

    .line 331
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p10

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->cancelAnimation()V

    .line 332
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->requestLayout()V

    .line 334
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/dragndrop/DragLayer;->getViewLocationRelativeToSelf(Landroid/view/View;)[I

    move-result-object v3

    .line 337
    .local v3, "from":[I
    iget v4, v1, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x0

    aget v6, v3, v5

    sub-int/2addr v4, v6

    int-to-double v6, v4

    iget v4, v1, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x1

    aget v9, v3, v8

    sub-int/2addr v4, v9

    int-to-double v9, v4

    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v4, v6

    .line 338
    .local v4, "dist":F
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 339
    .local v6, "res":Landroid/content/res/Resources;
    sget v7, Lcom/android/launcher3/R$integer;->config_dropAnimMaxDist:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-float v7, v7

    .line 342
    .local v7, "maxDist":F
    if-gez p6, :cond_1

    .line 343
    sget v9, Lcom/android/launcher3/R$integer;->config_dropAnimMaxDuration:I

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 344
    .end local p6    # "duration":I
    .local v9, "duration":I
    cmpg-float v10, v4, v7

    if-gez v10, :cond_0

    .line 345
    int-to-float v10, v9

    sget-object v11, Lcom/android/app/animation/Interpolators;->DECELERATE_1_5:Landroid/view/animation/Interpolator;

    div-float v12, v4, v7

    invoke-interface {v11, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v11

    mul-float/2addr v10, v11

    float-to-int v9, v10

    .line 347
    :cond_0
    sget v10, Lcom/android/launcher3/R$integer;->config_dropAnimMinDuration:I

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_0

    .line 342
    .end local v9    # "duration":I
    .restart local p6    # "duration":I
    :cond_1
    move/from16 v9, p6

    .line 352
    .end local p6    # "duration":I
    .restart local v9    # "duration":I
    :goto_0
    if-nez p7, :cond_2

    sget-object v10, Lcom/android/app/animation/Interpolators;->DECELERATE_1_5:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_2
    move-object/from16 v10, p7

    .line 355
    .local v10, "interpolator":Landroid/animation/TimeInterpolator;
    :goto_1
    new-instance v11, Lcom/android/launcher3/anim/PendingAnimation;

    int-to-long v12, v9

    invoke-direct {v11, v12, v13}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    .line 356
    .local v11, "anim":Lcom/android/launcher3/anim/PendingAnimation;
    sget-object v12, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v13, v8, [F

    aput p4, v13, v5

    invoke-static {v0, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    sget-object v13, Lcom/android/launcher3/anim/SpringProperty;->DEFAULT:Lcom/android/launcher3/anim/SpringProperty;

    invoke-virtual {v11, v12, v10, v13}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;Lcom/android/launcher3/anim/SpringProperty;)V

    .line 357
    sget-object v12, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v13, v8, [F

    aput p5, v13, v5

    invoke-static {v0, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    sget-object v13, Lcom/android/launcher3/anim/SpringProperty;->DEFAULT:Lcom/android/launcher3/anim/SpringProperty;

    invoke-virtual {v11, v12, v10, v13}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;Lcom/android/launcher3/anim/SpringProperty;)V

    .line 358
    move/from16 v12, p3

    invoke-virtual {v11, v0, v12, v10}, Lcom/android/launcher3/anim/PendingAnimation;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 359
    sget-object v13, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    iget v14, v1, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    invoke-virtual {v11, v0, v13, v14, v10}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 361
    sget-object v13, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_X:Landroid/util/FloatProperty;

    new-array v8, v8, [F

    iget v14, v1, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    aput v14, v8, v5

    invoke-static {v0, v13, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 362
    .local v5, "xMotion":Landroid/animation/ObjectAnimator;
    if-eqz v2, :cond_3

    .line 363
    invoke-virtual/range {p10 .. p10}, Landroid/view/View;->getScrollX()I

    move-result v8

    .line 364
    .local v8, "startScroll":I
    new-instance v13, Lcom/android/launcher3/dragndrop/DragLayer$$ExternalSyntheticLambda0;

    invoke-direct {v13, v2, v8}, Lcom/android/launcher3/dragndrop/DragLayer$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;I)V

    .line 366
    .local v13, "evaluator":Landroid/animation/TypeEvaluator;, "Landroid/animation/TypeEvaluator<Ljava/lang/Float;>;"
    invoke-virtual {v5, v13}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 368
    .end local v8    # "startScroll":I
    .end local v13    # "evaluator":Landroid/animation/TypeEvaluator;, "Landroid/animation/TypeEvaluator<Ljava/lang/Float;>;"
    :cond_3
    sget-object v8, Lcom/android/launcher3/anim/SpringProperty;->DEFAULT:Lcom/android/launcher3/anim/SpringProperty;

    invoke-virtual {v11, v5, v10, v8}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;Lcom/android/launcher3/anim/SpringProperty;)V

    .line 369
    if-eqz p8, :cond_4

    .line 370
    invoke-static/range {p8 .. p8}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v8

    invoke-virtual {v11, v8}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 372
    :cond_4
    invoke-virtual {v11}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v8

    move-object v13, p0

    move/from16 v14, p9

    invoke-virtual {p0, v0, v8, v14}, Lcom/android/launcher3/dragndrop/DragLayer;->playDropAnimation(Lcom/android/launcher3/dragndrop/DragView;Landroid/animation/Animator;I)V

    .line 373
    return-void
.end method

.method public animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;IIFFFLjava/lang/Runnable;IILandroid/view/View;)V
    .locals 13
    .param p1, "view"    # Lcom/android/launcher3/dragndrop/DragView;
    .param p2, "toX"    # I
    .param p3, "toY"    # I
    .param p4, "finalAlpha"    # F
    .param p5, "finalScaleX"    # F
    .param p6, "finalScaleY"    # F
    .param p7, "onCompleteRunnable"    # Ljava/lang/Runnable;
    .param p8, "animationEndStyle"    # I
    .param p9, "duration"    # I
    .param p10, "anchorView"    # Landroid/view/View;

    .line 305
    move v0, p2

    move/from16 v1, p3

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-direct {v4, p2, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 306
    .local v4, "to":Landroid/graphics/Rect;
    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p9

    move-object/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p10

    invoke-virtual/range {v2 .. v12}, Lcom/android/launcher3/dragndrop/DragLayer;->animateView(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Rect;FFFILandroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 308
    return-void
.end method

.method public animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;Landroid/view/View;ILandroid/view/View;)V
    .locals 22
    .param p1, "dragView"    # Lcom/android/launcher3/dragndrop/DragView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "duration"    # I
    .param p4, "anchorView"    # Landroid/view/View;

    .line 247
    move-object/from16 v0, p2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 248
    .local v1, "parentChildren":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    .line 249
    .local v2, "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    invoke-virtual {v1, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    .line 250
    invoke-virtual {v1, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->layoutChild(Landroid/view/View;)V

    .line 252
    const/4 v3, 0x2

    new-array v3, v3, [F

    .line 253
    .local v3, "coord":[F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleX()F

    move-result v4

    .line 255
    .local v4, "childScale":F
    iget v5, v2, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->x:I

    int-to-float v5, v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v8, v7, v4

    mul-float/2addr v6, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    const/4 v6, 0x0

    aput v5, v3, v6

    .line 256
    iget v5, v2, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->y:I

    int-to-float v5, v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    sub-float v10, v7, v4

    mul-float/2addr v9, v10

    div-float/2addr v9, v8

    add-float/2addr v5, v9

    const/4 v9, 0x1

    aput v5, v3, v9

    .line 260
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    move-object/from16 v15, p0

    invoke-virtual {v15, v5, v3}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[F)F

    move-result v5

    .line 264
    .local v5, "scale":F
    mul-float/2addr v5, v4

    .line 265
    aget v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 266
    .local v6, "toX":I
    aget v9, v3, v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 268
    .local v9, "toY":I
    move v10, v5

    .line 270
    .local v10, "toScale":F
    instance-of v11, v0, Lcom/android/launcher3/dragndrop/DraggableView;

    if-eqz v11, :cond_0

    .line 274
    move-object v11, v0

    check-cast v11, Lcom/android/launcher3/dragndrop/DraggableView;

    .line 275
    .local v11, "d":Lcom/android/launcher3/dragndrop/DraggableView;
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 276
    .local v12, "destRect":Landroid/graphics/Rect;
    invoke-interface {v11, v12}, Lcom/android/launcher3/dragndrop/DraggableView;->getWorkspaceVisualDragBounds(Landroid/graphics/Rect;)V

    .line 280
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v7

    .line 281
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getBlurSizeOutline()I

    move-result v16

    sub-int v14, v14, v16

    int-to-float v14, v14

    div-float/2addr v13, v14

    mul-float/2addr v10, v13

    .line 285
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v13

    int-to-float v13, v13

    sub-float v14, v7, v10

    mul-float/2addr v13, v14

    div-float/2addr v13, v8

    .line 286
    .local v13, "scaleShiftX":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v7, v10

    mul-float/2addr v14, v7

    div-float/2addr v14, v8

    .line 288
    .local v14, "scaleShiftY":F
    int-to-float v7, v6

    iget v8, v12, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    mul-float/2addr v8, v5

    move-object/from16 v21, v1

    .end local v1    # "parentChildren":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    .local v21, "parentChildren":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getBlurSizeOutline()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v10

    const/high16 v16, 0x40000000    # 2.0f

    div-float v1, v1, v16

    sub-float/2addr v8, v1

    sub-float/2addr v8, v13

    add-float/2addr v7, v8

    float-to-int v6, v7

    .line 289
    int-to-float v1, v9

    iget v7, v12, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    mul-float/2addr v7, v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getBlurSizeOutline()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v10

    const/high16 v16, 0x40000000    # 2.0f

    div-float v8, v8, v16

    sub-float/2addr v7, v8

    sub-float/2addr v7, v14

    add-float/2addr v1, v7

    float-to-int v9, v1

    move v1, v10

    goto :goto_0

    .line 270
    .end local v11    # "d":Lcom/android/launcher3/dragndrop/DraggableView;
    .end local v12    # "destRect":Landroid/graphics/Rect;
    .end local v13    # "scaleShiftX":F
    .end local v14    # "scaleShiftY":F
    .end local v21    # "parentChildren":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    .restart local v1    # "parentChildren":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    :cond_0
    move-object/from16 v21, v1

    .end local v1    # "parentChildren":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    .restart local v21    # "parentChildren":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    move v1, v10

    .line 292
    .end local v10    # "toScale":F
    .local v1, "toScale":F
    :goto_0
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 293
    new-instance v7, Lcom/android/launcher3/dragndrop/DragLayer$$ExternalSyntheticLambda1;

    invoke-direct {v7, v0}, Lcom/android/launcher3/dragndrop/DragLayer$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;)V

    move-object/from16 v17, v7

    .line 294
    .local v17, "onCompleteRunnable":Ljava/lang/Runnable;
    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move v12, v6

    move v13, v9

    move v15, v1

    move/from16 v16, v1

    move/from16 v19, p3

    move-object/from16 v20, p4

    invoke-virtual/range {v10 .. v20}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;IIFFFLjava/lang/Runnable;IILandroid/view/View;)V

    .line 296
    return-void
.end method

.method public animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "dragView"    # Lcom/android/launcher3/dragndrop/DragView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "anchorView"    # Landroid/view/View;

    .line 241
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;Landroid/view/View;ILandroid/view/View;)V

    .line 242
    return-void
.end method

.method public animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;[IFFFILjava/lang/Runnable;I)V
    .locals 12
    .param p1, "dragView"    # Lcom/android/launcher3/dragndrop/DragView;
    .param p2, "pos"    # [I
    .param p3, "alpha"    # F
    .param p4, "scaleX"    # F
    .param p5, "scaleY"    # F
    .param p6, "animationEndStyle"    # I
    .param p7, "onFinishRunnable"    # Ljava/lang/Runnable;
    .param p8, "duration"    # I

    .line 236
    const/4 v0, 0x0

    aget v3, p2, v0

    const/4 v0, 0x1

    aget v4, p2, v0

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p7

    move/from16 v9, p6

    move/from16 v10, p8

    invoke-virtual/range {v1 .. v11}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;IIFFFLjava/lang/Runnable;IILandroid/view/View;)V

    .line 238
    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .line 433
    invoke-super {p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->bringChildToFront(Landroid/view/View;)V

    .line 434
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->updateChildIndices()V

    .line 435
    return-void
.end method

.method public clearAnimatedView()Lcom/android/launcher3/dragndrop/DragView;
    .locals 3

    .line 400
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 403
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/Animator;

    .line 404
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropView:Lcom/android/launcher3/dragndrop/DragView;

    if-eqz v1, :cond_1

    .line 405
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/dragndrop/DragController;->onDeferredEndDrag(Lcom/android/launcher3/dragndrop/DragView;)V

    .line 407
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropView:Lcom/android/launcher3/dragndrop/DragView;

    .line 408
    .local v1, "ret":Lcom/android/launcher3/dragndrop/DragView;
    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropView:Lcom/android/launcher3/dragndrop/DragView;

    .line 409
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->invalidate()V

    .line 410
    return-object v1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 477
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mWorkspaceDragScrim:Lcom/android/launcher3/graphics/Scrim;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/graphics/Scrim;->draw(Landroid/graphics/Canvas;)V

    .line 478
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mFocusIndicatorHelper:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;->draw(Landroid/graphics/Canvas;)V

    .line 479
    invoke-super {p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 480
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 133
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/DragController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 225
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->getTranslationX()F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 227
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->getTranslationX()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {p1, v2, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 227
    return v0

    .line 229
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->getTranslationX()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {p1, v2, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 230
    throw v0
.end method

.method public getAnimatedView()Landroid/view/View;
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropView:Lcom/android/launcher3/dragndrop/DragView;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .line 450
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mChildCountOnLastUpdate:I

    if-eq v0, p1, :cond_0

    .line 455
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->updateChildIndices()V

    .line 459
    :cond_0
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTopViewIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 461
    return p2

    .line 462
    :cond_1
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_2

    .line 464
    return v0

    .line 465
    :cond_2
    if-ge p2, v0, :cond_3

    .line 466
    return p2

    .line 470
    :cond_3
    add-int/lit8 v0, p2, 0x1

    return v0
.end method

.method public getFocusIndicatorHelper()Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mFocusIndicatorHelper:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    return-object v0
.end method

.method public getWorkspaceDragScrim()Lcom/android/launcher3/graphics/Scrim;
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mWorkspaceDragScrim:Lcom/android/launcher3/graphics/Scrim;

    return-object v0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 142
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mActivity:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 146
    .local v0, "topView":Lcom/android/launcher3/AbstractFloatingView;
    instance-of v2, v0, Lcom/android/launcher3/folder/Folder;

    if-nez v2, :cond_1

    .line 147
    return v1

    .line 149
    :cond_1
    nop

    .line 150
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    .line 151
    .local v2, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 152
    move-object v3, v0

    check-cast v3, Lcom/android/launcher3/folder/Folder;

    .line 153
    .local v3, "currentFolder":Lcom/android/launcher3/folder/Folder;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 155
    .local v4, "action":I
    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_4

    .line 157
    :pswitch_1
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 158
    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->isEventOverAccessibleDropTargetBar(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    move v6, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v6, v5

    .line 159
    .local v6, "isOverFolderOrSearchBar":Z
    :goto_1
    if-nez v6, :cond_4

    .line 160
    invoke-virtual {v3}, Lcom/android/launcher3/folder/Folder;->isEditingName()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->sendTapOutsideFolderAccessibilityEvent(Z)V

    .line 161
    iput-boolean v5, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mHoverPointClosesFolder:Z

    .line 162
    return v5

    .line 164
    :cond_4
    iput-boolean v1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mHoverPointClosesFolder:Z

    .line 165
    goto :goto_4

    .line 167
    .end local v6    # "isOverFolderOrSearchBar":Z
    :pswitch_2
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 168
    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->isEventOverAccessibleDropTargetBar(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    move v6, v1

    goto :goto_3

    :cond_6
    :goto_2
    move v6, v5

    .line 169
    .restart local v6    # "isOverFolderOrSearchBar":Z
    :goto_3
    if-nez v6, :cond_7

    iget-boolean v7, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mHoverPointClosesFolder:Z

    if-nez v7, :cond_7

    .line 170
    invoke-virtual {v3}, Lcom/android/launcher3/folder/Folder;->isEditingName()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->sendTapOutsideFolderAccessibilityEvent(Z)V

    .line 171
    iput-boolean v5, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mHoverPointClosesFolder:Z

    .line 172
    return v5

    .line 173
    :cond_7
    if-nez v6, :cond_8

    .line 174
    return v5

    .line 176
    :cond_8
    iput-boolean v1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mHoverPointClosesFolder:Z

    .line 180
    .end local v2    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v3    # "currentFolder":Lcom/android/launcher3/folder/Folder;
    .end local v4    # "action":I
    .end local v6    # "isOverFolderOrSearchBar":Z
    :cond_9
    :goto_4
    return v1

    .line 143
    .end local v0    # "topView":Lcom/android/launcher3/AbstractFloatingView;
    :cond_a
    :goto_5
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOverlayScrollChanged(F)V
    .locals 3
    .param p1, "progress"    # F

    .line 488
    sget-object v0, Lcom/android/app/animation/Interpolators;->DECELERATE_3:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    .line 489
    .local v1, "alpha":F
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    .line 491
    .local v0, "transX":F
    iget-boolean v2, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mIsRtl:Z

    if-eqz v2, :cond_0

    .line 492
    neg-float v0, v0

    .line 494
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->setTranslationX(F)V

    .line 495
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->getAlphaProperty(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->setValue(F)V

    .line 496
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 203
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->isInAccessibleDrag()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/launcher3/DropTargetBar;

    if-eqz v0, :cond_0

    .line 204
    const/4 v0, 0x1

    return v0

    .line 206
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/views/BaseDragLayer;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 419
    invoke-super {p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->onViewAdded(Landroid/view/View;)V

    .line 420
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->updateChildIndices()V

    .line 421
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->onDragLayerHierarchyChanged()V

    .line 422
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 426
    invoke-super {p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->onViewRemoved(Landroid/view/View;)V

    .line 427
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->updateChildIndices()V

    .line 428
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->onDragLayerHierarchyChanged()V

    .line 429
    return-void
.end method

.method public playDropAnimation(Lcom/android/launcher3/dragndrop/DragView;Landroid/animation/Animator;I)V
    .locals 2
    .param p1, "view"    # Lcom/android/launcher3/dragndrop/DragView;
    .param p2, "animator"    # Landroid/animation/Animator;
    .param p3, "animationEndStyle"    # I

    .line 380
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 383
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropView:Lcom/android/launcher3/dragndrop/DragView;

    .line 385
    iput-object p2, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/Animator;

    .line 386
    new-instance v0, Lcom/android/launcher3/dragndrop/DragLayer$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/dragndrop/DragLayer$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/dragndrop/DragLayer;)V

    invoke-static {v0}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 387
    if-nez p3, :cond_1

    .line 388
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/Animator;

    new-instance v1, Lcom/android/launcher3/dragndrop/DragLayer$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/dragndrop/DragLayer$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/dragndrop/DragLayer;)V

    invoke-static {v1}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 391
    return-void
.end method

.method public recreateControllers()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->createTouchControllers()[Lcom/android/launcher3/util/TouchController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mControllers:[Lcom/android/launcher3/util/TouchController;

    .line 125
    return-void
.end method

.method public setup(Lcom/android/launcher3/dragndrop/DragController;Lcom/android/launcher3/Workspace;)V
    .locals 1
    .param p1, "dragController"    # Lcom/android/launcher3/dragndrop/DragController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/dragndrop/DragController;",
            "Lcom/android/launcher3/Workspace<",
            "*>;)V"
        }
    .end annotation

    .line 116
    .local p2, "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    .line 117
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->recreateControllers()V

    .line 118
    new-instance v0, Lcom/android/launcher3/graphics/Scrim;

    invoke-direct {v0, p0}, Lcom/android/launcher3/graphics/Scrim;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mWorkspaceDragScrim:Lcom/android/launcher3/graphics/Scrim;

    .line 119
    invoke-virtual {p2, p0}, Lcom/android/launcher3/Workspace;->addOverlayCallback(Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayCallbacks;)V

    .line 120
    return-void
.end method
