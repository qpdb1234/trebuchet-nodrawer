.class public Lcom/android/launcher3/MultipageCellLayout;
.super Lcom/android/launcher3/CellLayout;
.source "MultipageCellLayout.java"


# instance fields
.field private final mLeftBackground:Landroid/graphics/drawable/Drawable;

.field private final mRightBackground:Landroid/graphics/drawable/Drawable;

.field private mSeamWasAdded:Z


# direct methods
.method public static synthetic $r8$lambda$U0NNA4kETq5vklRmceMv4E1ITXs(Lcom/android/launcher3/MultipageCellLayout;IIIIIIZ[I[I)[I
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/launcher3/MultipageCellLayout;->lambda$findNearestArea$0(IIIIIIZ[I[I)[I

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WiVO4eqzws2nnLhL1MVBIbNmiv4(Lcom/android/launcher3/MultipageCellLayout;IIIILandroid/view/View;[IZ)Ljava/lang/Boolean;
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/launcher3/MultipageCellLayout;->lambda$createAreaForResize$2(IIIILandroid/view/View;[IZ)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$aNC8BlPNEZ725z11efJcEQjfwjM(Lcom/android/launcher3/MultipageCellLayout;IIIILandroid/view/View;[I)Ljava/lang/Boolean;
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/launcher3/MultipageCellLayout;->lambda$isNearestDropLocationOccupied$1(IIIILandroid/view/View;[I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/MultipageCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/MultipageCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/MultipageCellLayout;->mSeamWasAdded:Z

    .line 68
    invoke-virtual {p0}, Lcom/android/launcher3/MultipageCellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$drawable;->bg_celllayout:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/MultipageCellLayout;->mLeftBackground:Landroid/graphics/drawable/Drawable;

    .line 69
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 70
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 72
    invoke-virtual {p0}, Lcom/android/launcher3/MultipageCellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$drawable;->bg_celllayout:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/MultipageCellLayout;->mRightBackground:Landroid/graphics/drawable/Drawable;

    .line 73
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 74
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 76
    iget-object v0, p0, Lcom/android/launcher3/MultipageCellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 78
    .local v0, "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    iget-object v1, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/launcher3/MultipageCellLayout;->mCountX:I

    .line 79
    iget-object v1, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iput v1, p0, Lcom/android/launcher3/MultipageCellLayout;->mCountY:I

    .line 80
    iget v1, p0, Lcom/android/launcher3/MultipageCellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher3/MultipageCellLayout;->mCountY:I

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/MultipageCellLayout;->setGridSize(II)V

    .line 81
    return-void
.end method

.method private synthetic lambda$createAreaForResize$2(IIIILandroid/view/View;[IZ)Ljava/lang/Boolean;
    .locals 1
    .param p1, "finalCellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "dragView"    # Landroid/view/View;
    .param p6, "direction"    # [I
    .param p7, "commit"    # Z

    .line 92
    invoke-super/range {p0 .. p7}, Lcom/android/launcher3/CellLayout;->createAreaForResize(IIIILandroid/view/View;[IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$findNearestArea$0(IIIIIIZ[I[I)[I
    .locals 1
    .param p1, "relativeXPos"    # I
    .param p2, "relativeYPos"    # I
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "ignoreOccupied"    # Z
    .param p8, "result"    # [I
    .param p9, "resultSpan"    # [I

    .line 54
    invoke-super/range {p0 .. p9}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIIIIIZ[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$isNearestDropLocationOccupied$1(IIIILandroid/view/View;[I)Ljava/lang/Boolean;
    .locals 1
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "dragView"    # Landroid/view/View;
    .param p6, "result"    # [I

    .line 62
    invoke-super/range {p0 .. p6}, Lcom/android/launcher3/CellLayout;->isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private updateMarginBetweenCellLayouts()V
    .locals 7

    .line 152
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/MultipageCellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/android/launcher3/MultipageCellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 154
    .local v1, "workspaceItem":Landroid/view/View;
    instance-of v2, v1, Lcom/android/launcher3/Reorderable;

    if-nez v2, :cond_0

    .line 155
    goto :goto_1

    .line 157
    :cond_0
    nop

    .line 158
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    .line 159
    .local v2, "params":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    move-object v3, v1

    check-cast v3, Lcom/android/launcher3/Reorderable;

    invoke-interface {v3}, Lcom/android/launcher3/Reorderable;->getTranslateDelegate()Lcom/android/launcher3/util/MultiTranslateDelegate;

    move-result-object v3

    .line 161
    invoke-virtual {p0, v2}, Lcom/android/launcher3/MultipageCellLayout;->getMarginForGivenCellParams(Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;)F

    move-result v4

    .line 159
    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v4, v6}, Lcom/android/launcher3/util/MultiTranslateDelegate;->setTranslation(IFF)V

    .line 152
    .end local v1    # "workspaceItem":Landroid/view/View;
    .end local v2    # "params":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public copyCurrentStateToSolution(Lcom/android/launcher3/celllayout/ItemConfiguration;)V
    .locals 10
    .param p1, "solution"    # Lcom/android/launcher3/celllayout/ItemConfiguration;

    .line 113
    iget-object v0, p0, Lcom/android/launcher3/MultipageCellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 114
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 115
    iget-object v2, p0, Lcom/android/launcher3/MultipageCellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 116
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    .line 117
    .local v3, "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    invoke-virtual {v3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v4

    iget v5, p0, Lcom/android/launcher3/MultipageCellLayout;->mCountX:I

    div-int/lit8 v5, v5, 0x2

    if-lt v4, v5, :cond_0

    iget-boolean v4, v3, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->canReorder:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 118
    .local v4, "seamOffset":I
    :goto_1
    new-instance v5, Lcom/android/launcher3/util/CellAndSpan;

    invoke-virtual {v3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v7

    iget v8, v3, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iget v9, v3, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/android/launcher3/util/CellAndSpan;-><init>(IIII)V

    .line 120
    .local v5, "c":Lcom/android/launcher3/util/CellAndSpan;
    invoke-virtual {p1, v2, v5}, Lcom/android/launcher3/celllayout/ItemConfiguration;->add(Landroid/view/View;Lcom/android/launcher3/util/CellAndSpan;)V

    .line 114
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    .end local v4    # "seamOffset":I
    .end local v5    # "c":Lcom/android/launcher3/util/CellAndSpan;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method createAreaForResize(IIIILandroid/view/View;[IZ)Z
    .locals 13
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "dragView"    # Landroid/view/View;
    .param p6, "direction"    # [I
    .param p7, "commit"    # Z

    .line 87
    move v0, p1

    move-object v9, p0

    iget v1, v9, Lcom/android/launcher3/MultipageCellLayout;->mCountX:I

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    .line 88
    add-int/lit8 v0, v0, 0x1

    move v10, v0

    .end local p1    # "cellX":I
    .local v0, "cellX":I
    goto :goto_0

    .line 87
    .end local v0    # "cellX":I
    .restart local p1    # "cellX":I
    :cond_0
    move v10, v0

    .line 90
    .end local p1    # "cellX":I
    .local v10, "cellX":I
    :goto_0
    move v2, v10

    .line 91
    .local v2, "finalCellX":I
    invoke-virtual {p0}, Lcom/android/launcher3/MultipageCellLayout;->createReorderAlgorithm()Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;

    move-result-object v11

    new-instance v12, Lcom/android/launcher3/MultipageCellLayout$$ExternalSyntheticLambda0;

    move-object v0, v12

    move-object v1, p0

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/MultipageCellLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/MultipageCellLayout;IIIILandroid/view/View;[IZ)V

    invoke-virtual {v11, v12}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->simulateSeam(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public createReorderAlgorithm()Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;
    .locals 1

    .line 108
    new-instance v0, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;

    invoke-direct {v0, p0}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;-><init>(Lcom/android/launcher3/CellLayout;)V

    return-object v0
.end method

.method public bridge synthetic createReorderAlgorithm()Lcom/android/launcher3/celllayout/ReorderAlgorithm;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/android/launcher3/MultipageCellLayout;->createReorderAlgorithm()Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method protected findNearestArea(IIIIIIZ[I[I)[I
    .locals 13
    .param p1, "relativeXPos"    # I
    .param p2, "relativeYPos"    # I
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "ignoreOccupied"    # Z
    .param p8, "result"    # [I
    .param p9, "resultSpan"    # [I

    .line 53
    invoke-virtual {p0}, Lcom/android/launcher3/MultipageCellLayout;->createReorderAlgorithm()Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;

    move-result-object v0

    new-instance v12, Lcom/android/launcher3/MultipageCellLayout$$ExternalSyntheticLambda2;

    move-object v1, v12

    move-object v2, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lcom/android/launcher3/MultipageCellLayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/MultipageCellLayout;IIIIIIZ[I[I)V

    invoke-virtual {v0, v12}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->simulateSeam(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method protected getMarginForGivenCellParams(Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;)F
    .locals 3
    .param p1, "params"    # Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    .line 170
    iget v0, p0, Lcom/android/launcher3/MultipageCellLayout;->mSpaceBetweenCellLayoutsPx:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/MultipageCellLayout;->mSpringLoadedProgress:F

    mul-float/2addr v0, v1

    .line 171
    .local v0, "margin":F
    invoke-virtual {p1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/MultipageCellLayout;->mCountX:I

    div-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    neg-float v1, v0

    :goto_0
    return v1
.end method

.method public getUnusedHorizontalSpace()I
    .locals 3

    .line 126
    nop

    .line 127
    invoke-virtual {p0}, Lcom/android/launcher3/MultipageCellLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/MultipageCellLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/MultipageCellLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/MultipageCellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher3/MultipageCellLayout;->mCellWidth:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/MultipageCellLayout;->mCountX:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/android/launcher3/MultipageCellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 126
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z
    .locals 10
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "dragView"    # Landroid/view/View;
    .param p6, "result"    # [I

    .line 61
    invoke-virtual {p0}, Lcom/android/launcher3/MultipageCellLayout;->createReorderAlgorithm()Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;

    move-result-object v0

    new-instance v9, Lcom/android/launcher3/MultipageCellLayout$$ExternalSyntheticLambda1;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/MultipageCellLayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/MultipageCellLayout;IIIILandroid/view/View;[I)V

    invoke-virtual {v0, v9}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->simulateSeam(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSeamWasAdded()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lcom/android/launcher3/MultipageCellLayout;->mSeamWasAdded:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 133
    iget v0, p0, Lcom/android/launcher3/MultipageCellLayout;->mSpaceBetweenCellLayoutsPx:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/MultipageCellLayout;->mSpringLoadedProgress:F

    mul-float/2addr v0, v1

    .line 134
    .local v0, "animatedWorkspaceMargin":F
    iget-object v1, p0, Lcom/android/launcher3/MultipageCellLayout;->mLeftBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 135
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 136
    neg-float v1, v0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 137
    iget-object v1, p0, Lcom/android/launcher3/MultipageCellLayout;->mLeftBackground:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/launcher3/MultipageCellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 138
    iget-object v1, p0, Lcom/android/launcher3/MultipageCellLayout;->mLeftBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 139
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/MultipageCellLayout;->mRightBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    if-lez v1, :cond_1

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 143
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 144
    iget-object v1, p0, Lcom/android/launcher3/MultipageCellLayout;->mRightBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/launcher3/MultipageCellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 145
    iget-object v1, p0, Lcom/android/launcher3/MultipageCellLayout;->mRightBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 146
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 148
    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher3/CellLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 149
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 194
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->onLayout(ZIIII)V

    .line 195
    iget-object v0, p0, Lcom/android/launcher3/MultipageCellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 196
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .line 197
    .local v1, "middlePointInPixels":I
    iget-object v2, p0, Lcom/android/launcher3/MultipageCellLayout;->mLeftBackground:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 198
    iget-object v2, p0, Lcom/android/launcher3/MultipageCellLayout;->mRightBackground:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 199
    return-void
.end method

.method performReorder(IIIIIILandroid/view/View;[I[II)[I
    .locals 12
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "dragView"    # Landroid/view/View;
    .param p8, "result"    # [I
    .param p9, "resultSpan"    # [I
    .param p10, "mode"    # I

    .line 99
    move v0, p1

    invoke-virtual {p0}, Lcom/android/launcher3/MultipageCellLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/android/launcher3/MultipageCellLayout;->getCellWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 102
    .end local p1    # "pixelX":I
    .local v0, "pixelX":I
    :cond_0
    move-object v1, p0

    move v2, v0

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-super/range {v1 .. v11}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v1

    return-object v1
.end method

.method public setCountX(I)V
    .locals 0
    .param p1, "countX"    # I

    .line 202
    iput p1, p0, Lcom/android/launcher3/MultipageCellLayout;->mCountX:I

    .line 203
    return-void
.end method

.method public setCountY(I)V
    .locals 0
    .param p1, "countY"    # I

    .line 206
    iput p1, p0, Lcom/android/launcher3/MultipageCellLayout;->mCountY:I

    .line 207
    return-void
.end method

.method public setOccupied(Lcom/android/launcher3/util/GridOccupancy;)V
    .locals 0
    .param p1, "occupied"    # Lcom/android/launcher3/util/GridOccupancy;

    .line 210
    iput-object p1, p0, Lcom/android/launcher3/MultipageCellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 211
    return-void
.end method

.method public setSeamWasAdded(Z)V
    .locals 0
    .param p1, "seamWasAdded"    # Z

    .line 218
    iput-boolean p1, p0, Lcom/android/launcher3/MultipageCellLayout;->mSeamWasAdded:Z

    .line 219
    return-void
.end method

.method public setSpaceBetweenCellLayoutsPx(I)V
    .locals 0
    .param p1, "spaceBetweenCellLayoutsPx"    # I

    .line 182
    invoke-super {p0, p1}, Lcom/android/launcher3/CellLayout;->setSpaceBetweenCellLayoutsPx(I)V

    .line 183
    invoke-direct {p0}, Lcom/android/launcher3/MultipageCellLayout;->updateMarginBetweenCellLayouts()V

    .line 184
    return-void
.end method

.method public setSpringLoadedProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .line 176
    invoke-super {p0, p1}, Lcom/android/launcher3/CellLayout;->setSpringLoadedProgress(F)V

    .line 177
    invoke-direct {p0}, Lcom/android/launcher3/MultipageCellLayout;->updateMarginBetweenCellLayouts()V

    .line 178
    return-void
.end method

.method protected updateBgAlpha()V
    .locals 0

    return-void
.end method
