.class public abstract Lcom/android/launcher3/dragndrop/DragController;
.super Ljava/lang/Object;
.source "DragController.java"

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragDriver$EventListener;
.implements Lcom/android/launcher3/util/TouchController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/dragndrop/DragController$DragListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/dragndrop/DragDriver$EventListener;",
        "Lcom/android/launcher3/util/TouchController;"
    }
.end annotation


# static fields
.field private static final DEEP_PRESS_DISTANCE_FACTOR:I = 0x3


# instance fields
.field private final DRAG_VIEW_SCALE_DURATION_MS:I

.field protected final mActivity:Lcom/android/launcher3/views/ActivityContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mCoordinatesTemp:[I

.field protected mDistanceSinceScroll:I

.field protected mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

.field protected mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

.field private final mDropTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/DropTarget;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsInPreDrag:Z

.field protected mLastDropTarget:Lcom/android/launcher3/DropTarget;

.field protected final mLastTouch:Landroid/graphics/Point;

.field private mLastTouchClassification:I

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/dragndrop/DragController$DragListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final mMotionDown:Landroid/graphics/Point;

.field protected mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

.field private final mRectTemp:Landroid/graphics/Rect;

.field protected final mTmpPoint:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/views/ActivityContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 122
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    .local p1, "activity":Lcom/android/launcher3/views/ActivityContext;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mRectTemp:Landroid/graphics/Rect;

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mCoordinatesTemp:[I

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    .line 76
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDown:Landroid/graphics/Point;

    .line 78
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouch:Landroid/graphics/Point;

    .line 80
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mTmpPoint:Landroid/graphics/Point;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mListeners:Ljava/util/ArrayList;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDistanceSinceScroll:I

    .line 99
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/launcher3/dragndrop/DragController;->DRAG_VIEW_SCALE_DURATION_MS:I

    .line 123
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    .line 124
    return-void
.end method

.method private checkTouchMove(II)Lcom/android/launcher3/DropTarget;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 478
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    return-object v0

    .line 481
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/dragndrop/DragController;->findDropTarget(II)Lcom/android/launcher3/DropTarget;

    move-result-object v0

    .line 482
    .local v0, "dropTarget":Lcom/android/launcher3/DropTarget;
    if-eqz v0, :cond_3

    .line 483
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    if-eq v1, v0, :cond_2

    .line 484
    if-eqz v1, :cond_1

    .line 485
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v1, v2}, Lcom/android/launcher3/DropTarget;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 487
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v0, v1}, Lcom/android/launcher3/DropTarget;->onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 489
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v0, v1}, Lcom/android/launcher3/DropTarget;->onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)V

    goto :goto_0

    .line 490
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    if-eqz v1, :cond_4

    .line 491
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v1, v2}, Lcom/android/launcher3/DropTarget;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 493
    :cond_4
    :goto_0
    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    .line 494
    return-object v0
.end method

.method private dispatchDropComplete(Landroid/view/View;Z)V
    .locals 2
    .param p1, "dropTarget"    # Landroid/view/View;
    .param p2, "accepted"    # Z

    .line 277
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    if-nez p2, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/DropTarget$DragObject;->cancelled:Z

    .line 280
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->exitDrag()V

    .line 281
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v0, p1, v1, p2}, Lcom/android/launcher3/DragSource;->onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V

    .line 285
    return-void
.end method

.method private findDropTarget(II)Lcom/android/launcher3/DropTarget;
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 549
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mCoordinatesTemp:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 550
    const/4 v2, 0x1

    aput p2, v0, v2

    .line 552
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mRectTemp:Landroid/graphics/Rect;

    .line 553
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 554
    .local v3, "dropTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/DropTarget;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 555
    .local v4, "count":I
    add-int/lit8 v5, v4, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_2

    .line 556
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/DropTarget;

    .line 557
    .local v6, "target":Lcom/android/launcher3/DropTarget;
    invoke-interface {v6}, Lcom/android/launcher3/DropTarget;->isDropEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 558
    goto :goto_1

    .line 560
    :cond_0
    invoke-interface {v6, v0}, Lcom/android/launcher3/DropTarget;->getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V

    .line 561
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 562
    iget-object v7, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v7}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v7

    move-object v8, v6

    check-cast v8, Landroid/view/View;

    iget-object v9, p0, Lcom/android/launcher3/dragndrop/DragController;->mCoordinatesTemp:[I

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher3/views/BaseDragLayer;->mapCoordInSelfToDescendant(Landroid/view/View;[I)V

    .line 564
    iget-object v7, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v8, p0, Lcom/android/launcher3/dragndrop/DragController;->mCoordinatesTemp:[I

    aget v1, v8, v1

    iput v1, v7, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    .line 565
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v7, p0, Lcom/android/launcher3/dragndrop/DragController;->mCoordinatesTemp:[I

    aget v2, v7, v2

    iput v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    .line 566
    return-object v6

    .line 555
    .end local v6    # "target":Lcom/android/launcher3/DropTarget;
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 569
    .end local v5    # "i":I
    :cond_2
    iget-object v5, p0, Lcom/android/launcher3/dragndrop/DragController;->mCoordinatesTemp:[I

    invoke-virtual {p0, v5}, Lcom/android/launcher3/dragndrop/DragController;->getDefaultDropTarget([I)Lcom/android/launcher3/DropTarget;

    move-result-object v5

    .line 570
    .local v5, "dropTarget":Lcom/android/launcher3/DropTarget;
    iget-object v6, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v7, p0, Lcom/android/launcher3/dragndrop/DragController;->mCoordinatesTemp:[I

    aget v1, v7, v1

    iput v1, v6, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    .line 571
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v6, p0, Lcom/android/launcher3/dragndrop/DragController;->mCoordinatesTemp:[I

    aget v2, v6, v2

    iput v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    .line 572
    return-object v5
.end method

.method static synthetic lambda$getLogInstanceId$0(Lcom/android/launcher3/DropTarget$DragObject;)Lcom/android/launcher3/logging/InstanceId;
    .locals 1
    .param p0, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 237
    iget-object v0, p0, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    return-object v0
.end method


# virtual methods
.method public addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/launcher3/dragndrop/DragController$DragListener;

    .line 581
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    return-void
.end method

.method public addDropTarget(Lcom/android/launcher3/DropTarget;)V
    .locals 1
    .param p1, "target"    # Lcom/android/launcher3/DropTarget;

    .line 595
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    return-void
.end method

.method public animateDragViewToOriginalPosition(Ljava/lang/Runnable;Landroid/view/View;I)V
    .locals 4
    .param p1, "onComplete"    # Ljava/lang/Runnable;
    .param p2, "originalIcon"    # Landroid/view/View;
    .param p3, "duration"    # I

    .line 322
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    new-instance v0, Lcom/android/launcher3/dragndrop/DragController$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/dragndrop/DragController$1;-><init>(Lcom/android/launcher3/dragndrop/DragController;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 333
    .local v0, "onCompleteRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v1, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDown:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDown:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3, v0, p3}, Lcom/android/launcher3/dragndrop/DragView;->animateTo(IILjava/lang/Runnable;I)V

    .line 334
    return-void
.end method

.method protected callOnDragEnd()V
    .locals 3

    .line 337
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v0, v2, v1}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->onPreDragEnd(Lcom/android/launcher3/DropTarget$DragObject;Z)V

    .line 340
    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/dragndrop/DragController$DragListener;

    .line 343
    .local v1, "listener":Lcom/android/launcher3/dragndrop/DragController$DragListener;
    invoke-interface {v1}, Lcom/android/launcher3/dragndrop/DragController$DragListener;->onDragEnd()V

    .line 344
    .end local v1    # "listener":Lcom/android/launcher3/dragndrop/DragController$DragListener;
    goto :goto_0

    .line 345
    :cond_1
    return-void
.end method

.method protected callOnDragStart()V
    .locals 4

    .line 210
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->onPreDragEnd(Lcom/android/launcher3/DropTarget$DragObject;Z)V

    .line 213
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    .line 214
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget v0, v0, Lcom/android/launcher3/dragndrop/DragOptions;->preDragEndScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    .line 216
    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget v1, v1, Lcom/android/launcher3/dragndrop/DragOptions;->preDragEndScale:F

    .line 217
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget v1, v1, Lcom/android/launcher3/dragndrop/DragOptions;->preDragEndScale:F

    .line 218
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/app/animation/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    .line 219
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 220
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->onDragStart()V

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/dragndrop/DragController$DragListener;

    .line 225
    .local v1, "listener":Lcom/android/launcher3/dragndrop/DragController$DragListener;
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-interface {v1, v2, v3}, Lcom/android/launcher3/dragndrop/DragController$DragListener;->onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 226
    .end local v1    # "listener":Lcom/android/launcher3/dragndrop/DragController$DragListener;
    goto :goto_0

    .line 227
    :cond_2
    return-void
.end method

.method public cancelDrag()V
    .locals 3

    .line 262
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    if-eqz v0, :cond_0

    .line 264
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v0, v1}, Lcom/android/launcher3/DropTarget;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 267
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/launcher3/DropTarget$DragObject;->cancelled:Z

    .line 268
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iput-boolean v2, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    .line 269
    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    if-nez v0, :cond_1

    .line 270
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/dragndrop/DragController;->dispatchDropComplete(Landroid/view/View;Z)V

    .line 273
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->endDrag()V

    .line 274
    return-void
.end method

.method public completeAccessibleDrag([I)V
    .locals 2
    .param p1, "location"    # [I

    .line 503
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/dragndrop/DragController;->checkTouchMove(II)Lcom/android/launcher3/DropTarget;

    move-result-object v0

    .line 505
    .local v0, "dropTarget":Lcom/android/launcher3/DropTarget;
    invoke-interface {v0}, Lcom/android/launcher3/DropTarget;->prepareAccessibilityDrop()V

    .line 507
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/dragndrop/DragController;->drop(Lcom/android/launcher3/DropTarget;Ljava/lang/Runnable;)V

    .line 508
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->endDrag()V

    .line 509
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 251
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected drop(Lcom/android/launcher3/DropTarget;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "dropTarget"    # Lcom/android/launcher3/DropTarget;
    .param p2, "flingAnimation"    # Ljava/lang/Runnable;

    .line 513
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    if-eq p1, v0, :cond_1

    .line 514
    if-eqz v0, :cond_0

    .line 515
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v0, v1}, Lcom/android/launcher3/DropTarget;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 517
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    .line 518
    if-eqz p1, :cond_1

    .line 519
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {p1, v0}, Lcom/android/launcher3/DropTarget;->onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    .line 524
    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    if-eqz v0, :cond_3

    .line 525
    if-eqz p1, :cond_2

    .line 526
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {p1, v0}, Lcom/android/launcher3/DropTarget;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 528
    :cond_2
    return-void

    .line 532
    :cond_3
    const/4 v0, 0x0

    .line 533
    .local v0, "accepted":Z
    if-eqz p1, :cond_5

    .line 534
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {p1, v1}, Lcom/android/launcher3/DropTarget;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 535
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {p1, v1}, Lcom/android/launcher3/DropTarget;->acceptDrop(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 536
    if-eqz p2, :cond_4

    .line 537
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 539
    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-interface {p1, v1, v2}, Lcom/android/launcher3/DropTarget;->onDrop(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 541
    :goto_0
    const/4 v0, 0x1

    .line 544
    :cond_5
    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_6

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    .line 545
    .local v1, "dropTargetAsView":Landroid/view/View;
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/dragndrop/DragController;->dispatchDropComplete(Landroid/view/View;Z)V

    .line 546
    return-void
.end method

.method protected endDrag()V
    .locals 3

    .line 300
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    .line 302
    const/4 v1, 0x0

    .line 303
    .local v1, "isDeferred":Z
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v2, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    if-eqz v2, :cond_2

    .line 304
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-boolean v1, v2, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 305
    if-nez v1, :cond_0

    .line 306
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v2, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragView;->remove()V

    goto :goto_0

    .line 307
    :cond_0
    iget-boolean v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    if-eqz v2, :cond_1

    .line 308
    const/4 v2, -0x1

    invoke-virtual {p0, v0, v0, v2}, Lcom/android/launcher3/dragndrop/DragController;->animateDragViewToOriginalPosition(Ljava/lang/Runnable;Landroid/view/View;I)V

    .line 310
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v2, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragView;->clearAnimation()V

    .line 311
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iput-object v0, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    .line 314
    :cond_2
    if-nez v1, :cond_3

    .line 315
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->callOnDragEnd()V

    .line 318
    .end local v1    # "isDeferred":Z
    :cond_3
    return-void
.end method

.method protected endWithFlingAnimation()Z
    .locals 1

    .line 392
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract exitDrag()V
.end method

.method public forceTouchMove()V
    .locals 2

    .line 473
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouch:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouch:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/dragndrop/DragController;->checkTouchMove(II)Lcom/android/launcher3/DropTarget;

    .line 474
    return-void
.end method

.method protected getClampedDragLayerPos(FF)Landroid/graphics/Point;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 363
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mRectTemp:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/BaseDragLayer;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 364
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mTmpPoint:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mRectTemp:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mRectTemp:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 365
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mTmpPoint:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mRectTemp:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mRectTemp:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 366
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mTmpPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method protected abstract getDefaultDropTarget([I)Lcom/android/launcher3/DropTarget;
.end method

.method public getDistanceDragged()F
    .locals 1

    .line 469
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDistanceSinceScroll:I

    int-to-float v0, v0

    return v0
.end method

.method public getLogInstanceId()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/launcher3/logging/InstanceId;",
            ">;"
        }
    .end annotation

    .line 236
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/dragndrop/DragController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/launcher3/dragndrop/DragController$$ExternalSyntheticLambda0;-><init>()V

    .line 237
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 236
    return-object v0
.end method

.method protected getX(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 426
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    return v0
.end method

.method protected getY(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 430
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    return v0
.end method

.method protected handleMoveEvent(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 449
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/dragndrop/DragView;->move(II)V

    .line 452
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDistanceSinceScroll:I

    int-to-double v0, v0

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouch:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, p1

    int-to-double v2, v2

    iget-object v4, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouch:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, p2

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDistanceSinceScroll:I

    .line 453
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouch:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 455
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDistanceSinceScroll:I

    .line 456
    .local v0, "distanceDragged":I
    iget v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouchClassification:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 457
    div-int/lit8 v0, v0, 0x3

    .line 459
    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v1, v1, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v1, v1, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    int-to-double v2, v0

    .line 460
    invoke-interface {v1, v2, v3}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->shouldStartDrag(D)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 461
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->callOnDragStart()V

    .line 465
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/dragndrop/DragController;->checkTouchMove(II)Lcom/android/launcher3/DropTarget;

    .line 466
    return-void
.end method

.method public isDragging()Z
    .locals 1

    .line 255
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

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

.method protected isItemPinnable()Z
    .locals 2

    .line 230
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    invoke-static {}, Lcom/android/launcher3/Flags;->privateSpaceRestrictItemDrag()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v1, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .local v0, "itemInfoWithIcon":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v1, v1, 0x2000

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .end local v0    # "itemInfoWithIcon":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 230
    :goto_1
    return v1
.end method

.method public onAppsRemoved(Ljava/util/function/Predicate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 291
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    .local p1, "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 293
    .local v0, "dragInfo":Lcom/android/launcher3/model/data/ItemInfo;
    instance-of v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->cancelDrag()V

    .line 297
    .end local v0    # "dragInfo":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_0
    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 405
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-eqz v0, :cond_0

    .line 406
    return v1

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/views/BaseDragLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isWorkspaceEditAllowed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 410
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->cancelDrag()V

    .line 411
    return v1

    .line 414
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragController;->getX(Landroid/view/MotionEvent;)F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragController;->getY(Landroid/view/MotionEvent;)F

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/dragndrop/DragController;->getClampedDragLayerPos(FF)Landroid/graphics/Point;

    move-result-object v0

    .line 415
    .local v0, "dragLayerPos":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouch:Landroid/graphics/Point;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 416
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 418
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDown:Landroid/graphics/Point;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 421
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouchClassification:I

    .line 422
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Lcom/android/launcher3/dragndrop/DragDriver;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 438
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/DragDriver;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method onDeferredEndDrag(Lcom/android/launcher3/dragndrop/DragView;)V
    .locals 1
    .param p1, "dragView"    # Lcom/android/launcher3/dragndrop/DragView;

    .line 351
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragView;->remove()V

    .line 353
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-boolean v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->callOnDragEnd()V

    .line 357
    :cond_0
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/DragEvent;

    .line 445
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/DragDriver;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDriverDragCancel()V
    .locals 0

    .line 397
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->cancelDrag()V

    .line 398
    return-void
.end method

.method public onDriverDragEnd(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 385
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->endWithFlingAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    float-to-int v0, p1

    float-to-int v1, p2

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/dragndrop/DragController;->findDropTarget(II)Lcom/android/launcher3/DropTarget;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/dragndrop/DragController;->drop(Lcom/android/launcher3/DropTarget;Ljava/lang/Runnable;)V

    .line 388
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->endDrag()V

    .line 389
    return-void
.end method

.method public onDriverDragExitWindow()V
    .locals 2

    .line 377
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    if-eqz v0, :cond_0

    .line 378
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v0, v1}, Lcom/android/launcher3/DropTarget;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    .line 381
    :cond_0
    return-void
.end method

.method public onDriverDragMove(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 371
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/dragndrop/DragController;->getClampedDragLayerPos(FF)Landroid/graphics/Point;

    move-result-object v0

    .line 372
    .local v0, "dragLayerPos":Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/dragndrop/DragController;->handleMoveEvent(II)V

    .line 373
    return-void
.end method

.method public removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/launcher3/dragndrop/DragController$DragListener;

    .line 588
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 589
    return-void
.end method

.method public removeDropTarget(Lcom/android/launcher3/DropTarget;)V
    .locals 1
    .param p1, "target"    # Lcom/android/launcher3/DropTarget;

    .line 602
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 603
    return-void
.end method

.method protected abstract startDrag(Landroid/graphics/drawable/Drawable;Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;
.end method

.method public startDrag(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;
    .locals 12
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "originalView"    # Lcom/android/launcher3/dragndrop/DraggableView;
    .param p3, "dragLayerX"    # I
    .param p4, "dragLayerY"    # I
    .param p5, "source"    # Lcom/android/launcher3/DragSource;
    .param p6, "dragInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p7, "dragRegion"    # Landroid/graphics/Rect;
    .param p8, "initialDragViewScale"    # F
    .param p9, "dragViewScaleOnDrop"    # F
    .param p10, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 157
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Lcom/android/launcher3/dragndrop/DragController;->startDrag(Landroid/graphics/drawable/Drawable;Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    move-result-object v0

    return-object v0
.end method

.method public startDrag(Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "originalView"    # Lcom/android/launcher3/dragndrop/DraggableView;
    .param p3, "dragLayerX"    # I
    .param p4, "dragLayerY"    # I
    .param p5, "source"    # Lcom/android/launcher3/DragSource;
    .param p6, "dragInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p7, "dragRegion"    # Landroid/graphics/Rect;
    .param p8, "initialDragViewScale"    # F
    .param p9, "dragViewScaleOnDrop"    # F
    .param p10, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 192
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Lcom/android/launcher3/dragndrop/DragController;->startDrag(Landroid/graphics/drawable/Drawable;Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    move-result-object v0

    return-object v0
.end method
