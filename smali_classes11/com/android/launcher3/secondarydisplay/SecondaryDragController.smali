.class public Lcom/android/launcher3/secondarydisplay/SecondaryDragController;
.super Lcom/android/launcher3/dragndrop/DragController;
.source "SecondaryDragController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/dragndrop/DragController<",
        "Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;",
        ">;"
    }
.end annotation


# static fields
.field private static final PROFILE_DRAWING_DURING_DRAG:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;)V
    .locals 0
    .param p1, "secondaryLauncher"    # Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    .line 49
    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/DragController;-><init>(Lcom/android/launcher3/views/ActivityContext;)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/secondarydisplay/SecondaryDragController;)Lcom/android/launcher3/views/ActivityContext;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/secondarydisplay/SecondaryDragController;

    .line 44
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/secondarydisplay/SecondaryDragController;)Lcom/android/launcher3/views/ActivityContext;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/secondarydisplay/SecondaryDragController;

    .line 44
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/secondarydisplay/SecondaryDragController;)Lcom/android/launcher3/views/ActivityContext;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/secondarydisplay/SecondaryDragController;

    .line 44
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/secondarydisplay/SecondaryDragController;)Lcom/android/launcher3/views/ActivityContext;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/secondarydisplay/SecondaryDragController;

    .line 44
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    return-object v0
.end method

.method static synthetic lambda$startDrag$0(Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "ev"    # Landroid/view/MotionEvent;

    .line 112
    return-void
.end method


# virtual methods
.method protected exitDrag()V
    .locals 0

    .line 149
    return-void
.end method

.method protected getDefaultDropTarget([I)Lcom/android/launcher3/DropTarget;
    .locals 1
    .param p1, "dropCoordinates"    # [I

    .line 153
    new-instance v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDragController$1;-><init>(Lcom/android/launcher3/secondarydisplay/SecondaryDragController;)V

    .line 192
    .local v0, "target":Lcom/android/launcher3/DropTarget;
    return-object v0
.end method

.method protected startDrag(Landroid/graphics/drawable/Drawable;Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;
    .locals 27
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "originalView"    # Lcom/android/launcher3/dragndrop/DraggableView;
    .param p4, "dragLayerX"    # I
    .param p5, "dragLayerY"    # I
    .param p6, "source"    # Lcom/android/launcher3/DragSource;
    .param p7, "dragInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p8, "dragRegion"    # Landroid/graphics/Rect;
    .param p9, "initialDragViewScale"    # F
    .param p10, "dragViewScaleOnDrop"    # F
    .param p11, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 60
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    iget-object v3, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v3, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-virtual {v3}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->hideKeyboard()V

    .line 62
    move-object/from16 v3, p11

    iput-object v3, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    .line 63
    iget-object v4, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v4, v4, Lcom/android/launcher3/dragndrop/DragOptions;->simulatedDndStartPoint:Landroid/graphics/Point;

    if-eqz v4, :cond_0

    .line 64
    iget-object v4, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mLastTouch:Landroid/graphics/Point;

    iget-object v5, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mMotionDown:Landroid/graphics/Point;

    iget-object v6, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v6, v6, Lcom/android/launcher3/dragndrop/DragOptions;->simulatedDndStartPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iput v6, v5, Landroid/graphics/Point;->x:I

    iput v6, v4, Landroid/graphics/Point;->x:I

    .line 65
    iget-object v4, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mLastTouch:Landroid/graphics/Point;

    iget-object v5, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mMotionDown:Landroid/graphics/Point;

    iget-object v6, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v6, v6, Lcom/android/launcher3/dragndrop/DragOptions;->simulatedDndStartPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iput v6, v5, Landroid/graphics/Point;->y:I

    iput v6, v4, Landroid/graphics/Point;->y:I

    .line 68
    :cond_0
    iget-object v4, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mMotionDown:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int v4, v4, p4

    .line 69
    .local v4, "registrationX":I
    iget-object v5, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mMotionDown:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int v23, v5, p5

    .line 71
    .local v23, "registrationY":I
    const/4 v15, 0x0

    if-nez v2, :cond_1

    move v5, v15

    goto :goto_0

    :cond_1
    iget v5, v2, Landroid/graphics/Rect;->left:I

    :goto_0
    move/from16 v24, v5

    .line 72
    .local v24, "dragRegionLeft":I
    if-nez v2, :cond_2

    move v5, v15

    goto :goto_1

    :cond_2
    iget v5, v2, Landroid/graphics/Rect;->top:I

    :goto_1
    move/from16 v25, v5

    .line 74
    .local v25, "dragRegionTop":I
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    .line 76
    new-instance v5, Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v6, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v6, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-virtual {v6}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/launcher3/DropTarget$DragObject;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    .line 77
    iget-object v5, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    move-object/from16 v14, p3

    iput-object v14, v5, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    .line 79
    iget-object v5, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v5, v5, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    const/16 v26, 0x1

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v5, v5, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    .line 80
    const-wide/16 v6, 0x0

    invoke-interface {v5, v6, v7}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->shouldStartDrag(D)Z

    move-result v5

    if-nez v5, :cond_3

    move/from16 v5, v26

    goto :goto_2

    :cond_3
    move v5, v15

    :goto_2
    iput-boolean v5, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mIsInPreDrag:Z

    .line 82
    iget-object v5, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v5, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-virtual {v5}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 83
    .local v13, "res":Landroid/content/res/Resources;
    iget-boolean v5, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mIsInPreDrag:Z

    if-eqz v5, :cond_4

    .line 84
    sget v5, Lcom/android/launcher3/R$dimen;->pre_drag_view_scale:I

    invoke-virtual {v13, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    move v12, v5

    .line 86
    .local v12, "scaleDps":F
    iget-object v11, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    if-eqz p1, :cond_5

    .line 87
    new-instance v16, Lcom/android/launcher3/secondarydisplay/SecondaryDragView;

    iget-object v5, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    move-object v6, v5

    check-cast v6, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    move-object/from16 v5, v16

    move-object/from16 v7, p1

    move v8, v4

    move/from16 v9, v23

    move/from16 v10, p9

    move-object v3, v11

    move/from16 v11, p10

    invoke-direct/range {v5 .. v12}, Lcom/android/launcher3/secondarydisplay/SecondaryDragView;-><init>(Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;Landroid/graphics/drawable/Drawable;IIFFF)V

    move-object v7, v13

    move v6, v15

    goto :goto_4

    .line 95
    :cond_5
    move-object v3, v11

    new-instance v5, Lcom/android/launcher3/secondarydisplay/SecondaryDragView;

    iget-object v6, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v6, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    move-object v7, v13

    .end local v13    # "res":Landroid/content/res/Resources;
    .local v7, "res":Landroid/content/res/Resources;
    move-object v13, v5

    move-object v14, v6

    move v6, v15

    move-object/from16 v15, p2

    move/from16 v18, v4

    move/from16 v19, v23

    move/from16 v20, p9

    move/from16 v21, p10

    move/from16 v22, v12

    invoke-direct/range {v13 .. v22}, Lcom/android/launcher3/secondarydisplay/SecondaryDragView;-><init>(Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;Landroid/view/View;IIIIFFF)V

    :goto_4
    iput-object v5, v3, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    move-object v3, v5

    .line 105
    .local v3, "dragView":Lcom/android/launcher3/dragndrop/DragView;
    invoke-virtual {v3, v1}, Lcom/android/launcher3/dragndrop/DragView;->setItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 106
    iget-object v5, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iput-boolean v6, v5, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    .line 108
    iget-object v5, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v8, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mMotionDown:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    add-int v9, p4, v24

    sub-int/2addr v8, v9

    iput v8, v5, Lcom/android/launcher3/DropTarget$DragObject;->xOffset:I

    .line 109
    iget-object v5, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v8, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mMotionDown:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    add-int v9, p5, v25

    sub-int/2addr v8, v9

    iput v8, v5, Lcom/android/launcher3/DropTarget$DragObject;->yOffset:I

    .line 111
    iget-object v5, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    new-instance v8, Lcom/android/launcher3/secondarydisplay/SecondaryDragController$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lcom/android/launcher3/secondarydisplay/SecondaryDragController$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v5, v8}, Lcom/android/launcher3/dragndrop/DragDriver;->create(Lcom/android/launcher3/dragndrop/DragController;Lcom/android/launcher3/dragndrop/DragOptions;Ljava/util/function/Consumer;)Lcom/android/launcher3/dragndrop/DragDriver;

    move-result-object v5

    iput-object v5, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    .line 113
    iget-object v5, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-boolean v5, v5, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-nez v5, :cond_6

    .line 114
    iget-object v5, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-static {v3}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->createFor(Landroid/view/View;)Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    move-result-object v8

    iput-object v8, v5, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    .line 117
    :cond_6
    iget-object v5, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    move-object/from16 v8, p6

    iput-object v8, v5, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    .line 118
    iget-object v5, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iput-object v1, v5, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 119
    iget-object v5, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v9, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v9, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v9}, Lcom/android/launcher3/model/data/ItemInfo;->makeShallowCopy()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v9

    iput-object v9, v5, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 121
    iget-object v5, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v5, v5, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    if-eqz v5, :cond_9

    .line 122
    iget-object v5, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v5, v5, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    invoke-interface {v5}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->getDragOffset()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    if-nez v5, :cond_8

    iget-object v5, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v5, v5, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    .line 123
    invoke-interface {v5}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->getDragOffset()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-eqz v5, :cond_7

    goto :goto_5

    :cond_7
    move v15, v6

    goto :goto_6

    :cond_8
    :goto_5
    move/from16 v15, v26

    .line 122
    :goto_6
    invoke-virtual {v3, v15}, Lcom/android/launcher3/dragndrop/DragView;->setHasDragOffset(Z)V

    .line 126
    :cond_9
    if-eqz v2, :cond_a

    .line 127
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v5}, Lcom/android/launcher3/dragndrop/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    .line 130
    :cond_a
    iget-object v5, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v5, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-virtual {v5}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/launcher3/views/BaseDragLayer;->performHapticFeedback(I)Z

    .line 131
    iget-object v5, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mLastTouch:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v9, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mLastTouch:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v5, v9}, Lcom/android/launcher3/dragndrop/DragView;->show(II)V

    .line 132
    iput v6, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mDistanceSinceScroll:I

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->isItemPinnable()Z

    move-result v5

    if-nez v5, :cond_b

    .line 135
    sget-object v5, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v6, Lcom/android/launcher3/secondarydisplay/SecondaryDragController$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0}, Lcom/android/launcher3/secondarydisplay/SecondaryDragController$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/secondarydisplay/SecondaryDragController;)V

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    .line 138
    :cond_b
    iget-boolean v5, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mIsInPreDrag:Z

    if-nez v5, :cond_c

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->callOnDragStart()V

    goto :goto_7

    .line 140
    :cond_c
    iget-object v5, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v5, v5, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    if-eqz v5, :cond_d

    .line 141
    iget-object v5, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v5, v5, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    iget-object v6, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v5, v6}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->onPreDragStart(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 144
    :cond_d
    :goto_7
    iget-object v5, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mLastTouch:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->mLastTouch:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v5, v6}, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->handleMoveEvent(II)V

    .line 145
    return-object v3
.end method
