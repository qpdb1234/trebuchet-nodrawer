.class public Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;
.super Lcom/android/launcher3/celllayout/ReorderAlgorithm;
.source "MulticellReorderAlgorithm.java"


# instance fields
.field private final mSeam:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$IUD-l98OY9dBEmOEpGa--UuQWn0(Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;Lcom/android/launcher3/celllayout/ReorderParameters;)Lcom/android/launcher3/celllayout/ItemConfiguration;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->lambda$closestEmptySpaceReorder$1(Lcom/android/launcher3/celllayout/ReorderParameters;)Lcom/android/launcher3/celllayout/ItemConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Rs_OckMJT5HA7YaEQEcWNsBGjic(Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;Landroid/view/View;Lcom/android/launcher3/util/CellAndSpan;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->lambda$removeSeamFromSolution$0(Landroid/view/View;Lcom/android/launcher3/util/CellAndSpan;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zINtKWwcJ3teo6WyV9a43AXfyxQ(Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;Lcom/android/launcher3/celllayout/ReorderParameters;)Lcom/android/launcher3/celllayout/ItemConfiguration;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->lambda$dropInPlaceSolution$3(Lcom/android/launcher3/celllayout/ReorderParameters;)Lcom/android/launcher3/celllayout/ItemConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zIiOUTIb6mWxd-Wfc_sVCS3MA7I(Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;Lcom/android/launcher3/celllayout/ReorderParameters;Z)Lcom/android/launcher3/celllayout/ItemConfiguration;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->lambda$findReorderSolution$2(Lcom/android/launcher3/celllayout/ReorderParameters;Z)Lcom/android/launcher3/celllayout/ItemConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/launcher3/CellLayout;)V
    .locals 2
    .param p1, "cellLayout"    # Lcom/android/launcher3/CellLayout;

    .line 37
    invoke-direct {p0, p1}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;-><init>(Lcom/android/launcher3/CellLayout;)V

    .line 38
    new-instance v0, Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->mSeam:Landroid/view/View;

    .line 39
    return-void
.end method

.method private synthetic lambda$closestEmptySpaceReorder$1(Lcom/android/launcher3/celllayout/ReorderParameters;)Lcom/android/launcher3/celllayout/ItemConfiguration;
    .locals 1
    .param p1, "reorderParameters"    # Lcom/android/launcher3/celllayout/ReorderParameters;

    .line 53
    invoke-super {p0, p1}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->closestEmptySpaceReorder(Lcom/android/launcher3/celllayout/ReorderParameters;)Lcom/android/launcher3/celllayout/ItemConfiguration;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$dropInPlaceSolution$3(Lcom/android/launcher3/celllayout/ReorderParameters;)Lcom/android/launcher3/celllayout/ItemConfiguration;
    .locals 1
    .param p1, "reorderParameters"    # Lcom/android/launcher3/celllayout/ReorderParameters;

    .line 67
    invoke-super {p0, p1}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->dropInPlaceSolution(Lcom/android/launcher3/celllayout/ReorderParameters;)Lcom/android/launcher3/celllayout/ItemConfiguration;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$findReorderSolution$2(Lcom/android/launcher3/celllayout/ReorderParameters;Z)Lcom/android/launcher3/celllayout/ItemConfiguration;
    .locals 1
    .param p1, "reorderParameters"    # Lcom/android/launcher3/celllayout/ReorderParameters;
    .param p2, "decX"    # Z

    .line 61
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->findReorderSolution(Lcom/android/launcher3/celllayout/ReorderParameters;Z)Lcom/android/launcher3/celllayout/ItemConfiguration;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$removeSeamFromSolution$0(Landroid/view/View;Lcom/android/launcher3/util/CellAndSpan;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cell"    # Lcom/android/launcher3/util/CellAndSpan;

    .line 43
    nop

    .line 44
    iget v0, p2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget-object v1, p0, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    iget v0, p2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    :goto_0
    iput v0, p2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    .line 43
    return-void
.end method


# virtual methods
.method addSeam()V
    .locals 6

    .line 72
    iget-object v0, p0, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    check-cast v0, Lcom/android/launcher3/MultipageCellLayout;

    .line 73
    .local v0, "mcl":Lcom/android/launcher3/MultipageCellLayout;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/MultipageCellLayout;->setSeamWasAdded(Z)V

    .line 74
    new-instance v2, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    invoke-virtual {v0}, Lcom/android/launcher3/MultipageCellLayout;->getCountX()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 75
    invoke-virtual {v0}, Lcom/android/launcher3/MultipageCellLayout;->getCountY()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v1, v4}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;-><init>(IIII)V

    .line 76
    .local v2, "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    iput-boolean v5, v2, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->canReorder:Z

    .line 77
    invoke-virtual {v0}, Lcom/android/launcher3/MultipageCellLayout;->getCountX()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0, v3}, Lcom/android/launcher3/MultipageCellLayout;->setCountX(I)V

    .line 78
    invoke-virtual {v0}, Lcom/android/launcher3/MultipageCellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->mSeam:Landroid/view/View;

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->addViewInLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Z

    .line 79
    invoke-virtual {p0}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->createGridOccupancyWithSeam()Lcom/android/launcher3/util/GridOccupancy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/MultipageCellLayout;->setOccupied(Lcom/android/launcher3/util/GridOccupancy;)V

    .line 80
    new-instance v1, Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0}, Lcom/android/launcher3/MultipageCellLayout;->getCountX()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/launcher3/MultipageCellLayout;->getCountY()I

    move-result v4

    invoke-direct {v1, v3, v4}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iput-object v1, v0, Lcom/android/launcher3/MultipageCellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 81
    return-void
.end method

.method public closestEmptySpaceReorder(Lcom/android/launcher3/celllayout/ReorderParameters;)Lcom/android/launcher3/celllayout/ItemConfiguration;
    .locals 1
    .param p1, "reorderParameters"    # Lcom/android/launcher3/celllayout/ReorderParameters;

    .line 52
    new-instance v0, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;Lcom/android/launcher3/celllayout/ReorderParameters;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->simulateSeam(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/celllayout/ItemConfiguration;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->removeSeamFromSolution(Lcom/android/launcher3/celllayout/ItemConfiguration;)Lcom/android/launcher3/celllayout/ItemConfiguration;

    move-result-object v0

    return-object v0
.end method

.method createGridOccupancyWithSeam()Lcom/android/launcher3/util/GridOccupancy;
    .locals 12

    .line 112
    iget-object v0, p0, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    .line 113
    .local v0, "shortcutAndWidgets":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    new-instance v1, Lcom/android/launcher3/util/GridOccupancy;

    iget-object v2, p0, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    .line 114
    .local v1, "grid":Lcom/android/launcher3/util/GridOccupancy;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    .line 115
    invoke-virtual {v0, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 116
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    .line 117
    .local v10, "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    invoke-virtual {v10}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v6}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    if-lt v5, v6, :cond_0

    iget-boolean v5, v10, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->canReorder:Z

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    move v11, v4

    .line 118
    .local v11, "seamOffset":I
    invoke-virtual {v10}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v4

    add-int v5, v4, v11

    invoke-virtual {v10}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v6

    iget v7, v10, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iget v8, v10, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    const/4 v9, 0x1

    move-object v4, v1

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 114
    .end local v3    # "view":Landroid/view/View;
    .end local v10    # "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    .end local v11    # "seamOffset":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    .end local v2    # "i":I
    :cond_1
    iget-object v2, v1, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    iget-object v3, p0, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([ZZ)V

    .line 122
    return-object v1
.end method

.method public dropInPlaceSolution(Lcom/android/launcher3/celllayout/ReorderParameters;)Lcom/android/launcher3/celllayout/ItemConfiguration;
    .locals 1
    .param p1, "reorderParameters"    # Lcom/android/launcher3/celllayout/ReorderParameters;

    .line 66
    new-instance v0, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;Lcom/android/launcher3/celllayout/ReorderParameters;)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->simulateSeam(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/celllayout/ItemConfiguration;

    .line 66
    invoke-virtual {p0, v0}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->removeSeamFromSolution(Lcom/android/launcher3/celllayout/ItemConfiguration;)Lcom/android/launcher3/celllayout/ItemConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public findReorderSolution(Lcom/android/launcher3/celllayout/ReorderParameters;Z)Lcom/android/launcher3/celllayout/ItemConfiguration;
    .locals 1
    .param p1, "reorderParameters"    # Lcom/android/launcher3/celllayout/ReorderParameters;
    .param p2, "decX"    # Z

    .line 60
    new-instance v0, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;Lcom/android/launcher3/celllayout/ReorderParameters;Z)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->simulateSeam(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/celllayout/ItemConfiguration;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->removeSeamFromSolution(Lcom/android/launcher3/celllayout/ItemConfiguration;)Lcom/android/launcher3/celllayout/ItemConfiguration;

    move-result-object v0

    return-object v0
.end method

.method removeSeam()V
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    check-cast v0, Lcom/android/launcher3/MultipageCellLayout;

    .line 85
    .local v0, "mcl":Lcom/android/launcher3/MultipageCellLayout;
    invoke-virtual {v0}, Lcom/android/launcher3/MultipageCellLayout;->getCountX()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/MultipageCellLayout;->setCountX(I)V

    .line 86
    invoke-virtual {v0}, Lcom/android/launcher3/MultipageCellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->mSeam:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeViewInLayout(Landroid/view/View;)V

    .line 87
    new-instance v1, Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0}, Lcom/android/launcher3/MultipageCellLayout;->getCountX()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/launcher3/MultipageCellLayout;->getCountY()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iput-object v1, v0, Lcom/android/launcher3/MultipageCellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 88
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/MultipageCellLayout;->setSeamWasAdded(Z)V

    .line 89
    return-void
.end method

.method public removeSeamFromSolution(Lcom/android/launcher3/celllayout/ItemConfiguration;)Lcom/android/launcher3/celllayout/ItemConfiguration;
    .locals 2
    .param p1, "solution"    # Lcom/android/launcher3/celllayout/ItemConfiguration;

    .line 42
    iget-object v0, p1, Lcom/android/launcher3/celllayout/ItemConfiguration;->map:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->mSeam:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p1, Lcom/android/launcher3/celllayout/ItemConfiguration;->map:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 45
    nop

    .line 46
    iget v0, p1, Lcom/android/launcher3/celllayout/ItemConfiguration;->cellX:I

    iget-object v1, p0, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    iget v0, p1, Lcom/android/launcher3/celllayout/ItemConfiguration;->cellX:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/launcher3/celllayout/ItemConfiguration;->cellX:I

    :goto_0
    iput v0, p1, Lcom/android/launcher3/celllayout/ItemConfiguration;->cellX:I

    .line 47
    return-object p1
.end method

.method public simulateSeam(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 99
    .local p1, "f":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    check-cast v0, Lcom/android/launcher3/MultipageCellLayout;

    .line 100
    .local v0, "mcl":Lcom/android/launcher3/MultipageCellLayout;
    invoke-virtual {v0}, Lcom/android/launcher3/MultipageCellLayout;->isSeamWasAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 103
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/MultipageCellLayout;->getOccupied()Lcom/android/launcher3/util/GridOccupancy;

    move-result-object v1

    .line 104
    .local v1, "auxGrid":Lcom/android/launcher3/util/GridOccupancy;
    invoke-virtual {p0}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->addSeam()V

    .line 105
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    .line 106
    .local v2, "res":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->removeSeam()V

    .line 107
    invoke-virtual {v0, v1}, Lcom/android/launcher3/MultipageCellLayout;->setOccupied(Lcom/android/launcher3/util/GridOccupancy;)V

    .line 108
    return-object v2
.end method
