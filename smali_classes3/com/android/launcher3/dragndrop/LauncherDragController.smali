.class public Lcom/android/launcher3/dragndrop/LauncherDragController;
.super Lcom/android/launcher3/dragndrop/DragController;
.source "LauncherDragController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/dragndrop/DragController<",
        "Lcom/android/launcher3/Launcher;",
        ">;"
    }
.end annotation


# static fields
.field private static final PROFILE_DRAWING_DURING_DRAG:Z


# instance fields
.field private final mFlingToDeleteHelper:Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 50
    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/DragController;-><init>(Lcom/android/launcher3/views/ActivityContext;)V

    .line 51
    new-instance v0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;

    invoke-direct {v0, p1}, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mFlingToDeleteHelper:Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;

    .line 52
    return-void
.end method


# virtual methods
.method protected endDrag()V
    .locals 1

    .line 179
    invoke-super {p0}, Lcom/android/launcher3/dragndrop/DragController;->endDrag()V

    .line 180
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mFlingToDeleteHelper:Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->releaseVelocityTracker()V

    .line 181
    return-void
.end method

.method protected endWithFlingAnimation()Z
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mFlingToDeleteHelper:Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->getFlingAnimation(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)Ljava/lang/Runnable;

    move-result-object v0

    .line 170
    .local v0, "flingAnimation":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mFlingToDeleteHelper:Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->getDropTarget()Lcom/android/launcher3/DropTarget;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/dragndrop/LauncherDragController;->drop(Lcom/android/launcher3/DropTarget;Ljava/lang/Runnable;)V

    .line 172
    const/4 v1, 0x1

    return v1

    .line 174
    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/dragndrop/DragController;->endWithFlingAnimation()Z

    move-result v1

    return v1
.end method

.method protected exitDrag()V
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->EDIT_MODE:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;J)V

    .line 165
    :cond_0
    return-void
.end method

.method protected getDefaultDropTarget([I)Lcom/android/launcher3/DropTarget;
    .locals 2
    .param p1, "dropCoordinates"    # [I

    .line 185
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->mapCoordInSelfToDescendant(Landroid/view/View;[I)V

    .line 187
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    return-object v0
.end method

.method protected startDrag(Landroid/graphics/drawable/Drawable;Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;
    .locals 29
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

    .line 71
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move-object/from16 v3, p11

    iget-object v4, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v4, Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->hideKeyboard()V

    .line 72
    iget-object v4, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    const/16 v5, 0x40

    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    .line 74
    iput-object v3, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    .line 75
    iget-object v4, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v4, v4, Lcom/android/launcher3/dragndrop/DragOptions;->simulatedDndStartPoint:Landroid/graphics/Point;

    if-eqz v4, :cond_0

    .line 76
    iget-object v4, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mLastTouch:Landroid/graphics/Point;

    iget-object v5, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mMotionDown:Landroid/graphics/Point;

    iget-object v7, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v7, v7, Lcom/android/launcher3/dragndrop/DragOptions;->simulatedDndStartPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iput v7, v5, Landroid/graphics/Point;->x:I

    iput v7, v4, Landroid/graphics/Point;->x:I

    .line 77
    iget-object v4, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mLastTouch:Landroid/graphics/Point;

    iget-object v5, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mMotionDown:Landroid/graphics/Point;

    iget-object v7, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v7, v7, Lcom/android/launcher3/dragndrop/DragOptions;->simulatedDndStartPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    iput v7, v5, Landroid/graphics/Point;->y:I

    iput v7, v4, Landroid/graphics/Point;->y:I

    .line 80
    :cond_0
    iget-object v4, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mMotionDown:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int v4, v4, p4

    .line 81
    .local v4, "registrationX":I
    iget-object v5, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mMotionDown:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int v5, v5, p5

    .line 83
    .local v5, "registrationY":I
    if-nez v2, :cond_1

    move v7, v6

    goto :goto_0

    :cond_1
    iget v7, v2, Landroid/graphics/Rect;->left:I

    :goto_0
    move/from16 v25, v7

    .line 84
    .local v25, "dragRegionLeft":I
    if-nez v2, :cond_2

    move v7, v6

    goto :goto_1

    :cond_2
    iget v7, v2, Landroid/graphics/Rect;->top:I

    :goto_1
    move/from16 v26, v7

    .line 86
    .local v26, "dragRegionTop":I
    const/4 v7, 0x0

    iput-object v7, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    .line 88
    new-instance v7, Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v8, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v8, Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/launcher3/DropTarget$DragObject;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    .line 89
    iget-object v7, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    move-object/from16 v15, p3

    iput-object v15, v7, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    .line 91
    iget-object v7, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v7, v7, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    const/16 v27, 0x1

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v7, v7, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    .line 92
    const-wide/16 v8, 0x0

    invoke-interface {v7, v8, v9}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->shouldStartDrag(D)Z

    move-result v7

    if-nez v7, :cond_3

    move/from16 v7, v27

    goto :goto_2

    :cond_3
    move v7, v6

    :goto_2
    iput-boolean v7, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mIsInPreDrag:Z

    .line 94
    iget-object v7, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v7, Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 95
    .local v13, "res":Landroid/content/res/Resources;
    iget-boolean v7, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mIsInPreDrag:Z

    if-eqz v7, :cond_4

    .line 96
    sget v7, Lcom/android/launcher3/R$dimen;->pre_drag_view_scale:I

    invoke-virtual {v13, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    move v14, v7

    .line 97
    .local v14, "scaleDps":F
    iget-object v12, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    if-eqz p1, :cond_5

    .line 98
    new-instance v16, Lcom/android/launcher3/dragndrop/LauncherDragView;

    iget-object v7, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    move-object v8, v7

    check-cast v8, Lcom/android/launcher3/Launcher;

    move-object/from16 v7, v16

    move-object/from16 v9, p1

    move v10, v4

    move v11, v5

    move-object v6, v12

    move/from16 v12, p9

    move-object/from16 v28, v13

    .end local v13    # "res":Landroid/content/res/Resources;
    .local v28, "res":Landroid/content/res/Resources;
    move/from16 v13, p10

    invoke-direct/range {v7 .. v14}, Lcom/android/launcher3/dragndrop/LauncherDragView;-><init>(Lcom/android/launcher3/Launcher;Landroid/graphics/drawable/Drawable;IIFFF)V

    goto :goto_4

    .line 106
    .end local v28    # "res":Landroid/content/res/Resources;
    .restart local v13    # "res":Landroid/content/res/Resources;
    :cond_5
    move-object v6, v12

    move-object/from16 v28, v13

    .end local v13    # "res":Landroid/content/res/Resources;
    .restart local v28    # "res":Landroid/content/res/Resources;
    new-instance v7, Lcom/android/launcher3/dragndrop/LauncherDragView;

    iget-object v8, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    move-object/from16 v16, v8

    check-cast v16, Lcom/android/launcher3/Launcher;

    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    move-object v15, v7

    move-object/from16 v17, p2

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, p9

    move/from16 v23, p10

    move/from16 v24, v14

    invoke-direct/range {v15 .. v24}, Lcom/android/launcher3/dragndrop/LauncherDragView;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;IIIIFFF)V

    :goto_4
    iput-object v7, v6, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    move-object v6, v7

    .line 116
    .local v6, "dragView":Lcom/android/launcher3/dragndrop/DragView;
    invoke-virtual {v6, v1}, Lcom/android/launcher3/dragndrop/DragView;->setItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 117
    iget-object v7, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    .line 119
    iget-object v7, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v8, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mMotionDown:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    add-int v9, p4, v25

    sub-int/2addr v8, v9

    iput v8, v7, Lcom/android/launcher3/DropTarget$DragObject;->xOffset:I

    .line 120
    iget-object v7, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v8, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mMotionDown:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    add-int v9, p5, v26

    sub-int/2addr v8, v9

    iput v8, v7, Lcom/android/launcher3/DropTarget$DragObject;->yOffset:I

    .line 122
    iget-object v7, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v8, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mFlingToDeleteHelper:Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lcom/android/launcher3/dragndrop/LauncherDragController$$ExternalSyntheticLambda0;

    invoke-direct {v9, v8}, Lcom/android/launcher3/dragndrop/LauncherDragController$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;)V

    invoke-static {v0, v7, v9}, Lcom/android/launcher3/dragndrop/DragDriver;->create(Lcom/android/launcher3/dragndrop/DragController;Lcom/android/launcher3/dragndrop/DragOptions;Ljava/util/function/Consumer;)Lcom/android/launcher3/dragndrop/DragDriver;

    move-result-object v7

    iput-object v7, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    .line 123
    iget-object v7, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-boolean v7, v7, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-nez v7, :cond_6

    .line 124
    iget-object v7, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-static {v6}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->createFor(Landroid/view/View;)Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    move-result-object v8

    iput-object v8, v7, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    .line 127
    :cond_6
    iget-object v7, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    move-object/from16 v8, p6

    iput-object v8, v7, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    .line 128
    iget-object v7, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iput-object v1, v7, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 129
    iget-object v7, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v9, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v9, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v9}, Lcom/android/launcher3/model/data/ItemInfo;->makeShallowCopy()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v9

    iput-object v9, v7, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 131
    iget-object v7, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v7, v7, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    if-eqz v7, :cond_9

    .line 132
    iget-object v7, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v7, v7, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    invoke-interface {v7}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->getDragOffset()Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    if-nez v7, :cond_8

    iget-object v7, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v7, v7, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    .line 133
    invoke-interface {v7}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->getDragOffset()Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    if-eqz v7, :cond_7

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    move/from16 v7, v27

    .line 132
    :goto_6
    invoke-virtual {v6, v7}, Lcom/android/launcher3/dragndrop/DragView;->setHasDragOffset(Z)V

    .line 136
    :cond_9
    if-eqz v2, :cond_a

    .line 137
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v6, v7}, Lcom/android/launcher3/dragndrop/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    .line 140
    :cond_a
    iget-object v7, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v7, Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/android/launcher3/dragndrop/DragLayer;->performHapticFeedback(I)Z

    .line 141
    iget-object v7, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mLastTouch:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget-object v10, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mLastTouch:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v7, v10}, Lcom/android/launcher3/dragndrop/DragView;->show(II)V

    .line 142
    iput v9, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mDistanceSinceScroll:I

    .line 144
    iget-boolean v7, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mIsInPreDrag:Z

    if-nez v7, :cond_b

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/dragndrop/LauncherDragController;->callOnDragStart()V

    goto :goto_7

    .line 146
    :cond_b
    iget-object v7, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v7, v7, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    if-eqz v7, :cond_c

    .line 147
    iget-object v7, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v7, v7, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    iget-object v9, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v7, v9}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->onPreDragStart(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 150
    :cond_c
    :goto_7
    iget-object v7, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mLastTouch:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget-object v9, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mLastTouch:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v7, v9}, Lcom/android/launcher3/dragndrop/LauncherDragController;->handleMoveEvent(II)V

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/dragndrop/LauncherDragController;->isItemPinnable()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v7, Lcom/android/launcher3/Launcher;

    .line 153
    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->isTouchInProgress()Z

    move-result v7

    if-nez v7, :cond_e

    iget-object v7, v3, Lcom/android/launcher3/dragndrop/DragOptions;->simulatedDndStartPoint:Landroid/graphics/Point;

    if-nez v7, :cond_e

    .line 155
    :cond_d
    sget-object v7, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v9, Lcom/android/launcher3/dragndrop/LauncherDragController$$ExternalSyntheticLambda1;

    invoke-direct {v9, v0}, Lcom/android/launcher3/dragndrop/LauncherDragController$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/dragndrop/LauncherDragController;)V

    invoke-virtual {v7, v9}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    .line 157
    :cond_e
    return-object v6
.end method
