.class public Lcom/android/launcher3/celllayout/ReorderAlgorithm;
.super Ljava/lang/Object;
.source "ReorderAlgorithm.java"


# instance fields
.field mCellLayout:Lcom/android/launcher3/CellLayout;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/CellLayout;)V
    .locals 0
    .param p1, "cellLayout"    # Lcom/android/launcher3/CellLayout;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    .line 42
    return-void
.end method

.method private addViewToTempLocation(Landroid/view/View;Landroid/graphics/Rect;[ILcom/android/launcher3/celllayout/ItemConfiguration;)Z
    .locals 17
    .param p1, "v"    # Landroid/view/View;
    .param p2, "rectOccupiedByPotentialDrop"    # Landroid/graphics/Rect;
    .param p3, "direction"    # [I
    .param p4, "currentState"    # Lcom/android/launcher3/celllayout/ItemConfiguration;

    .line 192
    move-object/from16 v9, p0

    move-object/from16 v10, p4

    iget-object v0, v10, Lcom/android/launcher3/celllayout/ItemConfiguration;->map:Landroid/util/ArrayMap;

    move-object/from16 v11, p1

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/launcher3/util/CellAndSpan;

    .line 193
    .local v12, "c":Lcom/android/launcher3/util/CellAndSpan;
    const/4 v13, 0x0

    .line 194
    .local v13, "success":Z
    iget-object v0, v9, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v14, 0x0

    invoke-virtual {v0, v12, v14}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    .line 195
    iget-object v0, v9, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v15, 0x1

    move-object/from16 v8, p2

    invoke-virtual {v0, v8, v15}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Landroid/graphics/Rect;Z)V

    .line 197
    iget v1, v12, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v2, v12, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v3, v12, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget v4, v12, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    iget-object v0, v9, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v6, v0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    const/4 v7, 0x0

    const/4 v0, 0x2

    new-array v5, v0, [I

    move-object/from16 v0, p0

    move-object/from16 v16, v5

    move-object/from16 v5, p3

    move-object/from16 v8, v16

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->findNearestArea(IIII[I[[Z[[Z[I)[I

    move-result-object v0

    .line 200
    .local v0, "tmpLocation":[I
    aget v1, v0, v14

    if-ltz v1, :cond_0

    aget v1, v0, v15

    if-ltz v1, :cond_0

    .line 201
    aget v1, v0, v14

    iput v1, v12, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    .line 202
    aget v1, v0, v15

    iput v1, v12, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    .line 203
    const/4 v13, 0x1

    .line 205
    :cond_0
    iget-object v1, v9, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v1, v12, v15}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    .line 206
    return v13
.end method

.method private addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/celllayout/ItemConfiguration;)Z
    .locals 21
    .param p2, "rectOccupiedByPotentialDrop"    # Landroid/graphics/Rect;
    .param p3, "direction"    # [I
    .param p4, "dragView"    # Landroid/view/View;
    .param p5, "currentState"    # Lcom/android/launcher3/celllayout/ItemConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/android/launcher3/celllayout/ItemConfiguration;",
            ")Z"
        }
    .end annotation

    .line 353
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v9, p0

    move-object/from16 v10, p5

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v11, 0x1

    if-eqz v0, :cond_0

    return v11

    .line 355
    :cond_0
    const/4 v12, 0x0

    .line 356
    .local v12, "success":Z
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v13, v0

    .line 358
    .local v13, "boundingRect":Landroid/graphics/Rect;
    move-object/from16 v14, p1

    invoke-virtual {v10, v14, v13}, Lcom/android/launcher3/celllayout/ItemConfiguration;->getBoundingRectForViews(Ljava/util/ArrayList;Landroid/graphics/Rect;)V

    .line 361
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v15, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 362
    .local v1, "v":Landroid/view/View;
    iget-object v2, v10, Lcom/android/launcher3/celllayout/ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/CellAndSpan;

    .line 363
    .local v2, "c":Lcom/android/launcher3/util/CellAndSpan;
    iget-object v3, v9, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget-object v3, v3, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v3, v2, v15}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    .line 364
    .end local v1    # "v":Landroid/view/View;
    .end local v2    # "c":Lcom/android/launcher3/util/CellAndSpan;
    goto :goto_0

    .line 366
    :cond_1
    new-instance v0, Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 367
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    move-object v2, v0

    .line 368
    .local v2, "blockOccupied":Lcom/android/launcher3/util/GridOccupancy;
    iget v1, v13, Landroid/graphics/Rect;->top:I

    .line 369
    .local v1, "top":I
    iget v0, v13, Landroid/graphics/Rect;->left:I

    .line 372
    .local v0, "left":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/view/View;

    .line 373
    .local v8, "v":Landroid/view/View;
    iget-object v3, v10, Lcom/android/launcher3/celllayout/ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/android/launcher3/util/CellAndSpan;

    .line 374
    .local v7, "c":Lcom/android/launcher3/util/CellAndSpan;
    iget v3, v7, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    sub-int v4, v3, v0

    iget v3, v7, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    sub-int v5, v3, v1

    iget v6, v7, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget v3, v7, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    const/16 v17, 0x1

    move/from16 v18, v3

    move-object v3, v2

    move-object/from16 v19, v7

    .end local v7    # "c":Lcom/android/launcher3/util/CellAndSpan;
    .local v19, "c":Lcom/android/launcher3/util/CellAndSpan;
    move/from16 v7, v18

    move-object/from16 v18, v8

    .end local v8    # "v":Landroid/view/View;
    .local v18, "v":Landroid/view/View;
    move/from16 v8, v17

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 375
    .end local v18    # "v":Landroid/view/View;
    .end local v19    # "c":Lcom/android/launcher3/util/CellAndSpan;
    goto :goto_1

    .line 377
    :cond_2
    iget-object v3, v9, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget-object v3, v3, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    move-object/from16 v8, p2

    invoke-virtual {v3, v8, v11}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Landroid/graphics/Rect;Z)V

    .line 379
    iget v3, v13, Landroid/graphics/Rect;->left:I

    iget v4, v13, Landroid/graphics/Rect;->top:I

    .line 380
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v7, v9, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget-object v7, v7, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v7, v7, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    iget-object v11, v2, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    const/4 v15, 0x2

    new-array v15, v15, [I

    .line 379
    move/from16 v18, v0

    .end local v0    # "left":I
    .local v18, "left":I
    move-object/from16 v0, p0

    move/from16 v19, v1

    .end local v1    # "top":I
    .local v19, "top":I
    move v1, v3

    move-object/from16 v20, v2

    .end local v2    # "blockOccupied":Lcom/android/launcher3/util/GridOccupancy;
    .local v20, "blockOccupied":Lcom/android/launcher3/util/GridOccupancy;
    move v2, v4

    move v3, v5

    move v4, v6

    move-object/from16 v5, p3

    move-object v6, v7

    move-object v7, v11

    move-object v8, v15

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->findNearestArea(IIII[I[[Z[[Z[I)[I

    move-result-object v0

    .line 384
    .local v0, "tmpLocation":[I
    const/4 v1, 0x0

    aget v2, v0, v1

    if-ltz v2, :cond_4

    const/4 v2, 0x1

    aget v3, v0, v2

    if-ltz v3, :cond_4

    .line 385
    aget v1, v0, v1

    iget v3, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    .line 386
    .local v1, "deltaX":I
    aget v3, v0, v2

    iget v2, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v2

    .line 387
    .local v3, "deltaY":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 388
    .local v4, "v":Landroid/view/View;
    iget-object v5, v10, Lcom/android/launcher3/celllayout/ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/util/CellAndSpan;

    .line 389
    .local v5, "c":Lcom/android/launcher3/util/CellAndSpan;
    iget v6, v5, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    add-int/2addr v6, v1

    iput v6, v5, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    .line 390
    iget v6, v5, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    add-int/2addr v6, v3

    iput v6, v5, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    .line 391
    .end local v4    # "v":Landroid/view/View;
    .end local v5    # "c":Lcom/android/launcher3/util/CellAndSpan;
    goto :goto_2

    .line 392
    :cond_3
    const/4 v12, 0x1

    .line 396
    .end local v1    # "deltaX":I
    .end local v3    # "deltaY":I
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 397
    .local v2, "v":Landroid/view/View;
    iget-object v3, v10, Lcom/android/launcher3/celllayout/ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/CellAndSpan;

    .line 398
    .local v3, "c":Lcom/android/launcher3/util/CellAndSpan;
    iget-object v4, v9, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget-object v4, v4, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    .line 399
    .end local v2    # "v":Landroid/view/View;
    .end local v3    # "c":Lcom/android/launcher3/util/CellAndSpan;
    goto :goto_3

    .line 400
    :cond_5
    return v12
.end method

.method private attemptPushInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/celllayout/ItemConfiguration;)Z
    .locals 7
    .param p2, "occupied"    # Landroid/graphics/Rect;
    .param p3, "direction"    # [I
    .param p4, "ignoreView"    # Landroid/view/View;
    .param p5, "solution"    # Lcom/android/launcher3/celllayout/ItemConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/android/launcher3/celllayout/ItemConfiguration;",
            ")Z"
        }
    .end annotation

    .line 314
    .local p1, "intersectingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    aget v1, p3, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x1

    aget v3, p3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v1, v3

    const/4 v3, 0x2

    if-le v1, v2, :cond_3

    .line 318
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 319
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_1

    .line 320
    aget v5, p3, v4

    .line 321
    .local v5, "temp":I
    aput v0, p3, v4

    .line 322
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/celllayout/ItemConfiguration;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 324
    return v2

    .line 326
    :cond_0
    aput v5, p3, v4

    .line 319
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 328
    .end local v4    # "i":I
    .end local v5    # "temp":I
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->revertDir([I)V

    .line 318
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "j":I
    :cond_2
    goto :goto_4

    .line 334
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_2
    if-ge v1, v3, :cond_6

    .line 335
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v3, :cond_5

    .line 336
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/celllayout/ItemConfiguration;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 338
    return v2

    .line 340
    :cond_4
    invoke-direct {p0, p3}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->revertDir([I)V

    .line 335
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 343
    .end local v4    # "i":I
    :cond_5
    aget v4, p3, v2

    .line 344
    .local v4, "temp":I
    aget v5, p3, v0

    aput v5, p3, v2

    .line 345
    aput v4, p3, v0

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 348
    .end local v1    # "j":I
    .end local v4    # "temp":I
    :cond_6
    :goto_4
    return v0
.end method

.method private computeDirectionVector(FF[I)V
    .locals 8
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F
    .param p3, "result"    # [I

    .line 508
    div-float v0, p2, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    .line 510
    .local v0, "angle":D
    const/4 v2, 0x0

    aput v2, p3, v2

    .line 511
    const/4 v3, 0x1

    aput v2, p3, v3

    .line 512
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 513
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v4

    float-to-int v4, v4

    aput v4, p3, v2

    .line 515
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v2, v4, v6

    if-lez v2, :cond_1

    .line 516
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, p3, v3

    .line 518
    :cond_1
    return-void
.end method

.method private findReorderSolutionRecursive(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/celllayout/ItemConfiguration;)Lcom/android/launcher3/celllayout/ItemConfiguration;
    .locals 18
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "direction"    # [I
    .param p8, "dragView"    # Landroid/view/View;
    .param p9, "decX"    # Z
    .param p10, "solution"    # Lcom/android/launcher3/celllayout/ItemConfiguration;

    .line 87
    move-object/from16 v11, p0

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move-object/from16 v15, p10

    iget-object v0, v11, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v15}, Lcom/android/launcher3/CellLayout;->copyCurrentStateToSolution(Lcom/android/launcher3/celllayout/ItemConfiguration;)V

    .line 90
    iget-object v0, v11, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getOccupied()Lcom/android/launcher3/util/GridOccupancy;

    move-result-object v0

    iget-object v1, v11, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/GridOccupancy;->copyTo(Lcom/android/launcher3/util/GridOccupancy;)V

    .line 94
    const/4 v0, 0x2

    new-array v6, v0, [I

    .line 95
    .local v6, "result":[I
    iget-object v0, v11, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->findNearestAreaIgnoreOccupied(IIII[I)[I

    move-result-object v16

    .line 100
    .end local v6    # "result":[I
    .local v16, "result":[I
    const/4 v8, 0x0

    aget v1, v16, v8

    const/4 v9, 0x1

    aget v2, v16, v9

    move-object/from16 v0, p0

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->rearrangementExists(IIII[ILandroid/view/View;Lcom/android/launcher3/celllayout/ItemConfiguration;)Z

    move-result v17

    .line 103
    .local v17, "success":Z
    if-nez v17, :cond_3

    .line 106
    move/from16 v10, p3

    if-le v13, v10, :cond_1

    if-eq v12, v14, :cond_0

    if-eqz p9, :cond_1

    .line 107
    :cond_0
    add-int/lit8 v5, v13, -0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->findReorderSolutionRecursive(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/celllayout/ItemConfiguration;)Lcom/android/launcher3/celllayout/ItemConfiguration;

    move-result-object v0

    return-object v0

    .line 109
    :cond_1
    if-le v14, v12, :cond_2

    .line 110
    add-int/lit8 v6, v14, -0x1

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->findReorderSolutionRecursive(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/celllayout/ItemConfiguration;)Lcom/android/launcher3/celllayout/ItemConfiguration;

    move-result-object v0

    return-object v0

    .line 113
    :cond_2
    iput-boolean v8, v15, Lcom/android/launcher3/celllayout/ItemConfiguration;->isSolution:Z

    goto :goto_0

    .line 115
    :cond_3
    iput-boolean v9, v15, Lcom/android/launcher3/celllayout/ItemConfiguration;->isSolution:Z

    .line 116
    aget v0, v16, v8

    iput v0, v15, Lcom/android/launcher3/celllayout/ItemConfiguration;->cellX:I

    .line 117
    aget v0, v16, v9

    iput v0, v15, Lcom/android/launcher3/celllayout/ItemConfiguration;->cellY:I

    .line 118
    iput v13, v15, Lcom/android/launcher3/celllayout/ItemConfiguration;->spanX:I

    .line 119
    iput v14, v15, Lcom/android/launcher3/celllayout/ItemConfiguration;->spanY:I

    .line 121
    :goto_0
    return-object v15
.end method

.method private isConfigurationRegionOccupied(Landroid/graphics/Rect;Lcom/android/launcher3/celllayout/ItemConfiguration;Landroid/view/View;)Z
    .locals 2
    .param p1, "region"    # Landroid/graphics/Rect;
    .param p2, "configuration"    # Lcom/android/launcher3/celllayout/ItemConfiguration;
    .param p3, "ignoreView"    # Landroid/view/View;

    .line 431
    iget-object v0, p2, Lcom/android/launcher3/celllayout/ItemConfiguration;->map:Landroid/util/ArrayMap;

    .line 432
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 433
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/celllayout/ReorderAlgorithm$$ExternalSyntheticLambda0;

    invoke-direct {v1, p3}, Lcom/android/launcher3/celllayout/ReorderAlgorithm$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    .line 434
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/celllayout/ReorderAlgorithm$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/launcher3/celllayout/ReorderAlgorithm$$ExternalSyntheticLambda1;-><init>()V

    .line 435
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/celllayout/ReorderAlgorithm$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/launcher3/celllayout/ReorderAlgorithm$$ExternalSyntheticLambda2;-><init>(Landroid/graphics/Rect;)V

    .line 436
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 431
    return v0
.end method

.method static synthetic lambda$isConfigurationRegionOccupied$2(Landroid/view/View;Ljava/util/Map$Entry;)Z
    .locals 1
    .param p0, "ignoreView"    # Landroid/view/View;
    .param p1, "entry"    # Ljava/util/Map$Entry;

    .line 434
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$isConfigurationRegionOccupied$3(Landroid/graphics/Rect;Lcom/android/launcher3/util/CellAndSpan;)Z
    .locals 5
    .param p0, "region"    # Landroid/graphics/Rect;
    .param p1, "cellAndSpan"    # Lcom/android/launcher3/util/CellAndSpan;

    .line 436
    iget v0, p1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v1, p1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v2, p1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v3, p1, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v2, v3

    iget v3, p1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v4, p1, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$rearrangementExists$0(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1
    .param p0, "view"    # Ljava/lang/Object;

    .line 147
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    invoke-virtual {v0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$rearrangementExists$1(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1
    .param p0, "view"    # Ljava/lang/Object;

    .line 149
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    invoke-virtual {v0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/celllayout/ItemConfiguration;)Z
    .locals 16
    .param p2, "rectOccupiedByPotentialDrop"    # Landroid/graphics/Rect;
    .param p3, "direction"    # [I
    .param p4, "dragView"    # Landroid/view/View;
    .param p5, "currentState"    # Lcom/android/launcher3/celllayout/ItemConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/android/launcher3/celllayout/ItemConfiguration;",
            ")Z"
        }
    .end annotation

    .line 212
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    new-instance v3, Lcom/android/launcher3/celllayout/ViewCluster;

    iget-object v4, v0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    move-object/from16 v5, p1

    invoke-direct {v3, v4, v5, v2}, Lcom/android/launcher3/celllayout/ViewCluster;-><init>(Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher3/celllayout/ItemConfiguration;)V

    .line 213
    .local v3, "cluster":Lcom/android/launcher3/celllayout/ViewCluster;
    invoke-virtual {v3}, Lcom/android/launcher3/celllayout/ViewCluster;->getBoundingRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 216
    .local v4, "clusterRect":Landroid/graphics/Rect;
    const/4 v6, 0x0

    .line 220
    .local v6, "fail":Z
    const/4 v7, 0x0

    aget v8, p3, v7

    const/4 v9, 0x1

    if-gez v8, :cond_0

    .line 221
    const/4 v8, 0x1

    .line 222
    .local v8, "whichEdge":I
    iget v10, v4, Landroid/graphics/Rect;->right:I

    iget v11, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    .local v10, "pushDistance":I
    goto :goto_0

    .line 223
    .end local v8    # "whichEdge":I
    .end local v10    # "pushDistance":I
    :cond_0
    aget v8, p3, v7

    if-lez v8, :cond_1

    .line 224
    const/4 v8, 0x4

    .line 225
    .restart local v8    # "whichEdge":I
    iget v10, v1, Landroid/graphics/Rect;->right:I

    iget v11, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    .restart local v10    # "pushDistance":I
    goto :goto_0

    .line 226
    .end local v8    # "whichEdge":I
    .end local v10    # "pushDistance":I
    :cond_1
    aget v8, p3, v9

    if-gez v8, :cond_2

    .line 227
    const/4 v8, 0x2

    .line 228
    .restart local v8    # "whichEdge":I
    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    iget v11, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    .restart local v10    # "pushDistance":I
    goto :goto_0

    .line 230
    .end local v8    # "whichEdge":I
    .end local v10    # "pushDistance":I
    :cond_2
    const/16 v8, 0x8

    .line 231
    .restart local v8    # "whichEdge":I
    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    iget v11, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    .line 235
    .restart local v10    # "pushDistance":I
    :goto_0
    if-gtz v10, :cond_3

    .line 236
    return v7

    .line 240
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 241
    .local v12, "v":Landroid/view/View;
    iget-object v13, v2, Lcom/android/launcher3/celllayout/ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/util/CellAndSpan;

    .line 242
    .local v13, "c":Lcom/android/launcher3/util/CellAndSpan;
    iget-object v14, v0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget-object v14, v14, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v14, v13, v7}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    .line 243
    .end local v12    # "v":Landroid/view/View;
    .end local v13    # "c":Lcom/android/launcher3/util/CellAndSpan;
    goto :goto_1

    .line 248
    :cond_4
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/celllayout/ItemConfiguration;->save()V

    .line 253
    invoke-virtual {v3, v8}, Lcom/android/launcher3/celllayout/ViewCluster;->sortConfigurationForEdgePush(I)V

    .line 255
    :goto_2
    if-lez v10, :cond_9

    if-nez v6, :cond_9

    .line 256
    iget-object v11, v2, Lcom/android/launcher3/celllayout/ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 260
    .restart local v12    # "v":Landroid/view/View;
    iget-object v13, v3, Lcom/android/launcher3/celllayout/ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    move-object/from16 v13, p4

    if-eq v12, v13, :cond_7

    .line 261
    invoke-virtual {v3, v12, v8}, Lcom/android/launcher3/celllayout/ViewCluster;->isViewTouchingEdge(Landroid/view/View;I)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 262
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    .line 263
    .local v14, "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    iget-boolean v15, v14, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->canReorder:Z

    if-nez v15, :cond_5

    .line 265
    const/4 v6, 0x1

    .line 266
    goto :goto_5

    .line 268
    :cond_5
    invoke-virtual {v3, v12}, Lcom/android/launcher3/celllayout/ViewCluster;->addView(Landroid/view/View;)V

    .line 269
    iget-object v15, v2, Lcom/android/launcher3/celllayout/ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v15, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/util/CellAndSpan;

    .line 272
    .local v15, "c":Lcom/android/launcher3/util/CellAndSpan;
    iget-object v9, v0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget-object v9, v9, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v9, v15, v7}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    goto :goto_4

    .line 260
    .end local v14    # "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    .end local v15    # "c":Lcom/android/launcher3/util/CellAndSpan;
    :cond_6
    move-object/from16 v13, p4

    .line 275
    .end local v12    # "v":Landroid/view/View;
    :cond_7
    :goto_4
    const/4 v9, 0x1

    goto :goto_3

    .line 256
    :cond_8
    move-object/from16 v13, p4

    .line 276
    :goto_5
    add-int/lit8 v10, v10, -0x1

    .line 280
    const/4 v9, 0x1

    invoke-virtual {v3, v8, v9}, Lcom/android/launcher3/celllayout/ViewCluster;->shift(II)V

    goto :goto_2

    .line 255
    :cond_9
    move-object/from16 v13, p4

    .line 283
    const/4 v7, 0x0

    .line 284
    .local v7, "foundSolution":Z
    invoke-virtual {v3}, Lcom/android/launcher3/celllayout/ViewCluster;->getBoundingRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 288
    if-nez v6, :cond_a

    iget v9, v4, Landroid/graphics/Rect;->left:I

    if-ltz v9, :cond_a

    iget v9, v4, Landroid/graphics/Rect;->right:I

    iget-object v11, v0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v11}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v11

    if-gt v9, v11, :cond_a

    iget v9, v4, Landroid/graphics/Rect;->top:I

    if-ltz v9, :cond_a

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v11, v0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    .line 289
    invoke-virtual {v11}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v11

    if-gt v9, v11, :cond_a

    .line 290
    const/4 v7, 0x1

    goto :goto_6

    .line 292
    :cond_a
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/celllayout/ItemConfiguration;->restore()V

    .line 296
    :goto_6
    iget-object v9, v3, Lcom/android/launcher3/celllayout/ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 297
    .local v11, "v":Landroid/view/View;
    iget-object v12, v2, Lcom/android/launcher3/celllayout/ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/util/CellAndSpan;

    .line 298
    .local v12, "c":Lcom/android/launcher3/util/CellAndSpan;
    iget-object v14, v0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget-object v14, v14, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v15, 0x1

    invoke-virtual {v14, v12, v15}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    .line 299
    .end local v11    # "v":Landroid/view/View;
    .end local v12    # "c":Lcom/android/launcher3/util/CellAndSpan;
    goto :goto_7

    .line 301
    :cond_b
    return v7
.end method

.method private rearrangementExists(IIII[ILandroid/view/View;Lcom/android/launcher3/celllayout/ItemConfiguration;)Z
    .locals 17
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "direction"    # [I
    .param p6, "ignoreView"    # Landroid/view/View;
    .param p7, "solution"    # Lcom/android/launcher3/celllayout/ItemConfiguration;

    .line 127
    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    if-ltz v0, :cond_a

    if-gez v1, :cond_0

    move-object/from16 v3, p0

    move-object/from16 v4, p5

    const/4 v5, 0x0

    goto/16 :goto_2

    .line 129
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v2

    .line 130
    .local v11, "intersectingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v2, Landroid/graphics/Rect;

    add-int v3, v0, p3

    add-int v4, v1, p4

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v12, v2

    .line 133
    .local v12, "occupiedRect":Landroid/graphics/Rect;
    if-eqz v8, :cond_1

    .line 134
    iget-object v2, v9, Lcom/android/launcher3/celllayout/ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/CellAndSpan;

    .line 135
    .local v2, "c":Lcom/android/launcher3/util/CellAndSpan;
    if-eqz v2, :cond_1

    .line 136
    iput v0, v2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    .line 137
    iput v1, v2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    .line 140
    .end local v2    # "c":Lcom/android/launcher3/util/CellAndSpan;
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    add-int v3, v0, p3

    add-int v4, v1, p4

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v13, v2

    .line 141
    .local v13, "r0":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object v14, v2

    .line 146
    .local v14, "r1":Landroid/graphics/Rect;
    new-instance v2, Lcom/android/launcher3/celllayout/ReorderAlgorithm$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/launcher3/celllayout/ReorderAlgorithm$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/celllayout/ReorderAlgorithm$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lcom/android/launcher3/celllayout/ReorderAlgorithm$$ExternalSyntheticLambda4;-><init>()V

    .line 148
    invoke-interface {v2, v3}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v15

    .line 151
    .local v15, "comparator":Ljava/util/Comparator;
    iget-object v2, v9, Lcom/android/launcher3/celllayout/ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2, v15}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v16

    .line 152
    .local v16, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 153
    .local v3, "child":Landroid/view/View;
    if-ne v3, v8, :cond_2

    goto :goto_0

    .line 154
    :cond_2
    iget-object v4, v9, Lcom/android/launcher3/celllayout/ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/util/CellAndSpan;

    .line 155
    .local v4, "c":Lcom/android/launcher3/util/CellAndSpan;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    .line 156
    .local v5, "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    iget v6, v4, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v7, v4, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v10, v4, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v0, v4, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v10, v0

    iget v0, v4, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v1, v4, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v0, v1

    invoke-virtual {v14, v6, v7, v10, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 157
    invoke-static {v13, v14}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 158
    iget-boolean v0, v5, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->canReorder:Z

    if-nez v0, :cond_3

    .line 159
    const/4 v0, 0x0

    return v0

    .line 161
    :cond_3
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "c":Lcom/android/launcher3/util/CellAndSpan;
    .end local v5    # "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    :cond_4
    move/from16 v0, p1

    move/from16 v1, p2

    goto :goto_0

    .line 165
    :cond_5
    iput-object v11, v9, Lcom/android/launcher3/celllayout/ItemConfiguration;->intersectingViews:Ljava/util/ArrayList;

    .line 170
    move-object/from16 v2, p0

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->attemptPushInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/celllayout/ItemConfiguration;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 172
    return v1

    .line 176
    :cond_6
    move-object/from16 v2, p0

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/celllayout/ItemConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 178
    return v1

    .line 182
    :cond_7
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 183
    .local v2, "v":Landroid/view/View;
    move-object/from16 v3, p0

    move-object/from16 v4, p5

    invoke-direct {v3, v2, v12, v4, v9}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->addViewToTempLocation(Landroid/view/View;Landroid/graphics/Rect;[ILcom/android/launcher3/celllayout/ItemConfiguration;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 184
    const/4 v5, 0x0

    return v5

    .line 183
    :cond_8
    const/4 v5, 0x0

    .line 186
    .end local v2    # "v":Landroid/view/View;
    goto :goto_1

    .line 187
    :cond_9
    move-object/from16 v3, p0

    move-object/from16 v4, p5

    return v1

    .line 127
    .end local v11    # "intersectingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v12    # "occupiedRect":Landroid/graphics/Rect;
    .end local v13    # "r0":Landroid/graphics/Rect;
    .end local v14    # "r1":Landroid/graphics/Rect;
    .end local v15    # "comparator":Ljava/util/Comparator;
    .end local v16    # "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_a
    move-object/from16 v3, p0

    move-object/from16 v4, p5

    const/4 v5, 0x0

    :goto_2
    return v5
.end method

.method private revertDir([I)V
    .locals 2
    .param p1, "direction"    # [I

    .line 305
    const/4 v0, 0x0

    aget v1, p1, v0

    mul-int/lit8 v1, v1, -0x1

    aput v1, p1, v0

    .line 306
    const/4 v0, 0x1

    aget v1, p1, v0

    mul-int/lit8 v1, v1, -0x1

    aput v1, p1, v0

    .line 307
    return-void
.end method


# virtual methods
.method public calculateReorder(Lcom/android/launcher3/celllayout/ReorderParameters;)Lcom/android/launcher3/celllayout/ItemConfiguration;
    .locals 5
    .param p1, "reorderParameters"    # Lcom/android/launcher3/celllayout/ReorderParameters;

    .line 481
    iget-object v0, p0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->getDirectionVectorForDrop(Lcom/android/launcher3/celllayout/ReorderParameters;[I)V

    .line 483
    invoke-virtual {p0, p1}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->dropInPlaceSolution(Lcom/android/launcher3/celllayout/ReorderParameters;)Lcom/android/launcher3/celllayout/ItemConfiguration;

    move-result-object v0

    .line 486
    .local v0, "dropInPlaceSolution":Lcom/android/launcher3/celllayout/ItemConfiguration;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->findReorderSolution(Lcom/android/launcher3/celllayout/ReorderParameters;Z)Lcom/android/launcher3/celllayout/ItemConfiguration;

    move-result-object v1

    .line 489
    .local v1, "swapSolution":Lcom/android/launcher3/celllayout/ItemConfiguration;
    invoke-virtual {p0, p1}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->closestEmptySpaceReorder(Lcom/android/launcher3/celllayout/ReorderParameters;)Lcom/android/launcher3/celllayout/ItemConfiguration;

    move-result-object v2

    .line 493
    .local v2, "closestSpaceSolution":Lcom/android/launcher3/celllayout/ItemConfiguration;
    iget-boolean v3, v1, Lcom/android/launcher3/celllayout/ItemConfiguration;->isSolution:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher3/celllayout/ItemConfiguration;->area()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/launcher3/celllayout/ItemConfiguration;->area()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 494
    return-object v1

    .line 495
    :cond_0
    iget-boolean v3, v2, Lcom/android/launcher3/celllayout/ItemConfiguration;->isSolution:Z

    if-eqz v3, :cond_1

    .line 496
    return-object v2

    .line 497
    :cond_1
    iget-boolean v3, v0, Lcom/android/launcher3/celllayout/ItemConfiguration;->isSolution:Z

    if-eqz v3, :cond_2

    .line 498
    return-object v0

    .line 500
    :cond_2
    const/4 v3, 0x0

    return-object v3
.end method

.method public closestEmptySpaceReorder(Lcom/android/launcher3/celllayout/ReorderParameters;)Lcom/android/launcher3/celllayout/ItemConfiguration;
    .locals 12
    .param p1, "reorderParameters"    # Lcom/android/launcher3/celllayout/ReorderParameters;

    .line 452
    new-instance v0, Lcom/android/launcher3/celllayout/ItemConfiguration;

    invoke-direct {v0}, Lcom/android/launcher3/celllayout/ItemConfiguration;-><init>()V

    .line 453
    .local v0, "solution":Lcom/android/launcher3/celllayout/ItemConfiguration;
    const/4 v1, 0x2

    new-array v11, v1, [I

    .line 454
    .local v11, "result":[I
    new-array v1, v1, [I

    .line 455
    .local v1, "resultSpan":[I
    iget-object v2, p0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {p1}, Lcom/android/launcher3/celllayout/ReorderParameters;->getPixelX()I

    move-result v3

    .line 456
    invoke-virtual {p1}, Lcom/android/launcher3/celllayout/ReorderParameters;->getPixelY()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/launcher3/celllayout/ReorderParameters;->getMinSpanX()I

    move-result v5

    .line 457
    invoke-virtual {p1}, Lcom/android/launcher3/celllayout/ReorderParameters;->getMinSpanY()I

    move-result v6

    invoke-virtual {p1}, Lcom/android/launcher3/celllayout/ReorderParameters;->getSpanX()I

    move-result v7

    .line 458
    invoke-virtual {p1}, Lcom/android/launcher3/celllayout/ReorderParameters;->getSpanY()I

    move-result v8

    .line 455
    move-object v9, v11

    move-object v10, v1

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher3/CellLayout;->findNearestVacantArea(IIIIII[I[I)[I

    .line 459
    const/4 v2, 0x0

    aget v3, v11, v2

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    aget v4, v11, v3

    if-ltz v4, :cond_0

    .line 460
    iget-object v4, p0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v4, v0}, Lcom/android/launcher3/CellLayout;->copyCurrentStateToSolution(Lcom/android/launcher3/celllayout/ItemConfiguration;)V

    .line 461
    aget v4, v11, v2

    iput v4, v0, Lcom/android/launcher3/celllayout/ItemConfiguration;->cellX:I

    .line 462
    aget v4, v11, v3

    iput v4, v0, Lcom/android/launcher3/celllayout/ItemConfiguration;->cellY:I

    .line 463
    aget v2, v1, v2

    iput v2, v0, Lcom/android/launcher3/celllayout/ItemConfiguration;->spanX:I

    .line 464
    aget v2, v1, v3

    iput v2, v0, Lcom/android/launcher3/celllayout/ItemConfiguration;->spanY:I

    .line 465
    iput-boolean v3, v0, Lcom/android/launcher3/celllayout/ItemConfiguration;->isSolution:Z

    goto :goto_0

    .line 467
    :cond_0
    iput-boolean v2, v0, Lcom/android/launcher3/celllayout/ItemConfiguration;->isSolution:Z

    .line 469
    :goto_0
    return-object v0
.end method

.method public dropInPlaceSolution(Lcom/android/launcher3/celllayout/ReorderParameters;)Lcom/android/launcher3/celllayout/ItemConfiguration;
    .locals 10
    .param p1, "reorderParameters"    # Lcom/android/launcher3/celllayout/ReorderParameters;

    .line 409
    iget-object v0, p0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {p1}, Lcom/android/launcher3/celllayout/ReorderParameters;->getPixelX()I

    move-result v1

    .line 410
    invoke-virtual {p1}, Lcom/android/launcher3/celllayout/ReorderParameters;->getPixelY()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/launcher3/celllayout/ReorderParameters;->getSpanX()I

    move-result v3

    .line 411
    invoke-virtual {p1}, Lcom/android/launcher3/celllayout/ReorderParameters;->getSpanY()I

    move-result v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 409
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->findNearestAreaIgnoreOccupied(IIII[I)[I

    move-result-object v0

    .line 412
    .local v0, "result":[I
    new-instance v1, Lcom/android/launcher3/celllayout/ItemConfiguration;

    invoke-direct {v1}, Lcom/android/launcher3/celllayout/ItemConfiguration;-><init>()V

    .line 413
    .local v1, "solution":Lcom/android/launcher3/celllayout/ItemConfiguration;
    iget-object v2, p0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/CellLayout;->copyCurrentStateToSolution(Lcom/android/launcher3/celllayout/ItemConfiguration;)V

    .line 415
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    aget v4, v0, v3

    const/4 v5, 0x1

    aget v6, v0, v5

    aget v7, v0, v3

    .line 416
    invoke-virtual {p1}, Lcom/android/launcher3/celllayout/ReorderParameters;->getSpanX()I

    move-result v8

    add-int/2addr v7, v8

    aget v8, v0, v5

    .line 417
    invoke-virtual {p1}, Lcom/android/launcher3/celllayout/ReorderParameters;->getSpanY()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v2, v4, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 418
    invoke-virtual {p1}, Lcom/android/launcher3/celllayout/ReorderParameters;->getDragView()Landroid/view/View;

    move-result-object v4

    .line 415
    invoke-direct {p0, v2, v1, v4}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->isConfigurationRegionOccupied(Landroid/graphics/Rect;Lcom/android/launcher3/celllayout/ItemConfiguration;Landroid/view/View;)Z

    move-result v2

    xor-int/2addr v2, v5

    iput-boolean v2, v1, Lcom/android/launcher3/celllayout/ItemConfiguration;->isSolution:Z

    .line 419
    iget-boolean v2, v1, Lcom/android/launcher3/celllayout/ItemConfiguration;->isSolution:Z

    if-nez v2, :cond_0

    .line 420
    return-object v1

    .line 422
    :cond_0
    aget v2, v0, v3

    iput v2, v1, Lcom/android/launcher3/celllayout/ItemConfiguration;->cellX:I

    .line 423
    aget v2, v0, v5

    iput v2, v1, Lcom/android/launcher3/celllayout/ItemConfiguration;->cellY:I

    .line 424
    invoke-virtual {p1}, Lcom/android/launcher3/celllayout/ReorderParameters;->getSpanX()I

    move-result v2

    iput v2, v1, Lcom/android/launcher3/celllayout/ItemConfiguration;->spanX:I

    .line 425
    invoke-virtual {p1}, Lcom/android/launcher3/celllayout/ReorderParameters;->getSpanY()I

    move-result v2

    iput v2, v1, Lcom/android/launcher3/celllayout/ItemConfiguration;->spanY:I

    .line 426
    return-object v1
.end method

.method public findNearestArea(IIII[I[[Z[[Z[I)[I
    .locals 18
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "direction"    # [I
    .param p6, "occupied"    # [[Z
    .param p7, "blockOccupied"    # [[Z
    .param p8, "result"    # [I

    .line 604
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    const/4 v3, 0x2

    if-eqz p8, :cond_0

    move-object/from16 v4, p8

    goto :goto_0

    :cond_0
    new-array v4, v3, [I

    .line 605
    .local v4, "bestXY":[I
    :goto_0
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    .line 606
    .local v5, "bestDistance":F
    const/high16 v6, -0x80000000

    .line 608
    .local v6, "bestDirectionScore":I
    iget-object v7, v0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v7}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v7

    .line 609
    .local v7, "countX":I
    iget-object v8, v0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v8}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v8

    .line 611
    .local v8, "countY":I
    const/4 v9, 0x0

    .local v9, "y":I
    :goto_1
    add-int/lit8 v10, v2, -0x1

    sub-int v10, v8, v10

    if-ge v9, v10, :cond_7

    .line 613
    const/4 v10, 0x0

    .local v10, "x":I
    :goto_2
    add-int/lit8 v13, v1, -0x1

    sub-int v13, v7, v13

    if-ge v10, v13, :cond_6

    .line 615
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    if-ge v13, v1, :cond_3

    .line 616
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_4
    if-ge v14, v2, :cond_2

    .line 617
    add-int v15, v10, v13

    aget-object v15, p6, v15

    add-int v16, v9, v14

    aget-boolean v15, v15, v16

    if-eqz v15, :cond_1

    if-eqz p7, :cond_5

    aget-object v15, p7, v13

    aget-boolean v15, v15, v14

    if-eqz v15, :cond_1

    .line 619
    goto :goto_5

    .line 616
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 615
    .end local v14    # "j":I
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 624
    .end local v13    # "i":I
    :cond_3
    sub-int v13, v10, p1

    int-to-double v13, v13

    sub-int v15, v9, p2

    int-to-double v11, v15

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v11

    double-to-float v11, v11

    .line 625
    .local v11, "distance":F
    new-array v12, v3, [I

    .line 626
    .local v12, "curDirection":[I
    sub-int v13, v10, p1

    int-to-float v13, v13

    sub-int v14, v9, p2

    int-to-float v14, v14

    invoke-direct {v0, v13, v14, v12}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->computeDirectionVector(FF[I)V

    .line 629
    const/4 v13, 0x0

    aget v14, p5, v13

    aget v15, v12, v13

    mul-int/2addr v14, v15

    const/4 v13, 0x1

    aget v15, p5, v13

    aget v17, v12, v13

    mul-int v15, v15, v17

    add-int/2addr v14, v15

    .line 631
    .local v14, "curDirectionScore":I
    invoke-static {v11, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v13

    if-ltz v13, :cond_4

    invoke-static {v11, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v13

    if-nez v13, :cond_5

    if-le v14, v6, :cond_5

    .line 633
    :cond_4
    move v5, v11

    .line 634
    move v6, v14

    .line 635
    const/4 v13, 0x0

    aput v10, v4, v13

    .line 636
    const/4 v13, 0x1

    aput v9, v4, v13

    .line 613
    .end local v11    # "distance":F
    .end local v12    # "curDirection":[I
    .end local v14    # "curDirectionScore":I
    :cond_5
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 611
    .end local v10    # "x":I
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 642
    .end local v9    # "y":I
    :cond_7
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v3, v5, v3

    if-nez v3, :cond_8

    .line 643
    const/4 v3, -0x1

    const/4 v9, 0x0

    aput v3, v4, v9

    .line 644
    const/4 v9, 0x1

    aput v3, v4, v9

    .line 646
    :cond_8
    return-object v4
.end method

.method public findReorderSolution(Lcom/android/launcher3/celllayout/ReorderParameters;Z)Lcom/android/launcher3/celllayout/ItemConfiguration;
    .locals 1
    .param p1, "reorderParameters"    # Lcom/android/launcher3/celllayout/ReorderParameters;
    .param p2, "decX"    # Z

    .line 58
    iget-object v0, p0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->findReorderSolution(Lcom/android/launcher3/celllayout/ReorderParameters;[IZ)Lcom/android/launcher3/celllayout/ItemConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public findReorderSolution(Lcom/android/launcher3/celllayout/ReorderParameters;[IZ)Lcom/android/launcher3/celllayout/ItemConfiguration;
    .locals 11
    .param p1, "reorderParameters"    # Lcom/android/launcher3/celllayout/ReorderParameters;
    .param p2, "direction"    # [I
    .param p3, "decX"    # Z

    .line 76
    invoke-virtual {p1}, Lcom/android/launcher3/celllayout/ReorderParameters;->getPixelX()I

    move-result v1

    .line 77
    invoke-virtual {p1}, Lcom/android/launcher3/celllayout/ReorderParameters;->getPixelY()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/launcher3/celllayout/ReorderParameters;->getMinSpanX()I

    move-result v3

    .line 78
    invoke-virtual {p1}, Lcom/android/launcher3/celllayout/ReorderParameters;->getMinSpanY()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/launcher3/celllayout/ReorderParameters;->getSpanX()I

    move-result v5

    .line 79
    invoke-virtual {p1}, Lcom/android/launcher3/celllayout/ReorderParameters;->getSpanY()I

    move-result v6

    .line 80
    invoke-virtual {p1}, Lcom/android/launcher3/celllayout/ReorderParameters;->getDragView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/launcher3/celllayout/ReorderParameters;->getSolution()Lcom/android/launcher3/celllayout/ItemConfiguration;

    move-result-object v10

    .line 76
    move-object v0, p0

    move-object v7, p2

    move v9, p3

    invoke-direct/range {v0 .. v10}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->findReorderSolutionRecursive(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/celllayout/ItemConfiguration;)Lcom/android/launcher3/celllayout/ItemConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getDirectionVectorForDrop(Lcom/android/launcher3/celllayout/ReorderParameters;[I)V
    .locals 18
    .param p1, "reorderParameters"    # Lcom/android/launcher3/celllayout/ReorderParameters;
    .param p2, "resultDirection"    # [I

    .line 533
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 535
    .local v2, "targetDestination":[I
    iget-object v3, v0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/celllayout/ReorderParameters;->getPixelX()I

    move-result v4

    .line 536
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/celllayout/ReorderParameters;->getPixelY()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/celllayout/ReorderParameters;->getSpanX()I

    move-result v6

    .line 537
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/celllayout/ReorderParameters;->getSpanY()I

    move-result v7

    .line 535
    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/CellLayout;->findNearestAreaIgnoreOccupied(IIII[I)[I

    .line 538
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 539
    .local v3, "dragRect":Landroid/graphics/Rect;
    iget-object v4, v0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    const/4 v10, 0x0

    aget v5, v2, v10

    const/4 v11, 0x1

    aget v6, v2, v11

    .line 540
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/celllayout/ReorderParameters;->getSpanX()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/celllayout/ReorderParameters;->getSpanY()I

    move-result v8

    .line 539
    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 541
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/celllayout/ReorderParameters;->getPixelX()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    sub-int/2addr v4, v5

    .line 542
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/celllayout/ReorderParameters;->getPixelY()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    sub-int/2addr v5, v6

    .line 541
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 544
    new-instance v4, Landroid/graphics/Rect;

    aget v5, v2, v10

    aget v6, v2, v11

    aget v7, v2, v10

    .line 545
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/celllayout/ReorderParameters;->getSpanX()I

    move-result v8

    add-int/2addr v7, v8

    aget v8, v2, v11

    .line 546
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/celllayout/ReorderParameters;->getSpanY()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 547
    .local v4, "region":Landroid/graphics/Rect;
    iget-object v5, v0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    .line 548
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/celllayout/ReorderParameters;->getDragView()Landroid/view/View;

    move-result-object v6

    .line 547
    invoke-virtual {v5, v4, v6}, Lcom/android/launcher3/CellLayout;->getIntersectingRectanglesInRegion(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    .line 549
    .local v5, "dropRegionRect":Landroid/graphics/Rect;
    if-nez v5, :cond_0

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v5, v6

    .line 551
    :cond_0
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 552
    .local v6, "dropRegionSpanX":I
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 554
    .local v7, "dropRegionSpanY":I
    iget-object v12, v0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget v13, v5, Landroid/graphics/Rect;->left:I

    iget v14, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v15

    .line 555
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v16

    .line 554
    move-object/from16 v17, v5

    invoke-virtual/range {v12 .. v17}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 557
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/celllayout/ReorderParameters;->getPixelX()I

    move-result v9

    sub-int/2addr v8, v9

    .line 558
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/celllayout/ReorderParameters;->getSpanX()I

    move-result v9

    div-int/2addr v8, v9

    .line 559
    .local v8, "deltaX":I
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/celllayout/ReorderParameters;->getPixelY()I

    move-result v12

    sub-int/2addr v9, v12

    .line 560
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/celllayout/ReorderParameters;->getSpanY()I

    move-result v12

    div-int/2addr v9, v12

    .line 562
    .local v9, "deltaY":I
    iget-object v12, v0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v12}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v12

    if-eq v6, v12, :cond_1

    .line 563
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/celllayout/ReorderParameters;->getSpanX()I

    move-result v12

    iget-object v13, v0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v13}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v13

    if-ne v12, v13, :cond_2

    .line 564
    :cond_1
    const/4 v8, 0x0

    .line 566
    :cond_2
    iget-object v12, v0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v12}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v12

    if-eq v7, v12, :cond_3

    .line 567
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/celllayout/ReorderParameters;->getSpanY()I

    move-result v12

    iget-object v13, v0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v13}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v13

    if-ne v12, v13, :cond_4

    .line 568
    :cond_3
    const/4 v9, 0x0

    .line 571
    :cond_4
    if-nez v8, :cond_5

    if-nez v9, :cond_5

    .line 573
    aput v11, v1, v10

    .line 574
    aput v10, v1, v11

    goto :goto_0

    .line 576
    :cond_5
    int-to-float v10, v8

    int-to-float v11, v9

    invoke-direct {v0, v10, v11, v1}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->computeDirectionVector(FF[I)V

    .line 578
    :goto_0
    return-void
.end method
