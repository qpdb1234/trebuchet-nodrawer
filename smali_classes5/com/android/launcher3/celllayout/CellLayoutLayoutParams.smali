.class public Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "CellLayoutLayoutParams.java"


# instance fields
.field public canReorder:Z

.field public cellHSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellVSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public dropped:Z

.field public isLockedToGrid:Z

.field private mCellX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mCellY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mTmpCellX:I

.field private mTmpCellY:I

.field public useTmpCoords:Z

.field public x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "cellHSpan"    # I
    .param p4, "cellVSpan"    # I

    .line 104
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->isLockedToGrid:Z

    .line 69
    iput-boolean v0, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->canReorder:Z

    .line 105
    iput p1, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mCellX:I

    .line 106
    iput p2, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mCellY:I

    .line 107
    iput p3, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    .line 108
    iput p4, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->isLockedToGrid:Z

    .line 69
    iput-boolean v0, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->canReorder:Z

    .line 82
    iput v0, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    .line 83
    iput v0, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .line 87
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->isLockedToGrid:Z

    .line 69
    iput-boolean v0, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->canReorder:Z

    .line 88
    iput v0, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    .line 89
    iput v0, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;)V
    .locals 1
    .param p1, "source"    # Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    .line 93
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->isLockedToGrid:Z

    .line 69
    iput-boolean v0, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->canReorder:Z

    .line 94
    invoke-virtual {p1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mCellX:I

    .line 95
    invoke-virtual {p1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mCellY:I

    .line 96
    iget v0, p1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iput v0, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    .line 97
    iget v0, p1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    iput v0, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    .line 98
    invoke-virtual {p1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getTmpCellX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mTmpCellX:I

    .line 99
    invoke-virtual {p1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getTmpCellY()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mTmpCellY:I

    .line 100
    iget-boolean v0, p1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->useTmpCoords:Z

    iput-boolean v0, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->useTmpCoords:Z

    .line 101
    return-void
.end method


# virtual methods
.method public getCellX()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mCellX:I

    return v0
.end method

.method public getCellY()I
    .locals 1

    .line 191
    iget v0, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mCellY:I

    return v0
.end method

.method public getTmpCellX()I
    .locals 1

    .line 202
    iget v0, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mTmpCellX:I

    return v0
.end method

.method public getTmpCellY()I
    .locals 1

    .line 213
    iget v0, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mTmpCellY:I

    return v0
.end method

.method public setCellX(I)V
    .locals 0
    .param p1, "cellX"    # I

    .line 184
    iput p1, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mCellX:I

    .line 185
    return-void
.end method

.method public setCellXY(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "point"    # Landroid/graphics/Point;

    .line 165
    iget v0, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellX(I)V

    .line 166
    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellY(I)V

    .line 167
    return-void
.end method

.method public setCellY(I)V
    .locals 0
    .param p1, "cellY"    # I

    .line 195
    iput p1, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mCellY:I

    .line 196
    return-void
.end method

.method public setTmpCellX(I)V
    .locals 0
    .param p1, "tmpCellX"    # I

    .line 206
    iput p1, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mTmpCellX:I

    .line 207
    return-void
.end method

.method public setTmpCellY(I)V
    .locals 0
    .param p1, "tmpCellY"    # I

    .line 217
    iput p1, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mTmpCellY:I

    .line 218
    return-void
.end method

.method public setup(IIZIIFFLandroid/graphics/Point;Landroid/graphics/Rect;)V
    .locals 14
    .param p1, "cellWidth"    # I
    .param p2, "cellHeight"    # I
    .param p3, "invertHorizontally"    # Z
    .param p4, "colCount"    # I
    .param p5, "rowCount"    # I
    .param p6, "cellScaleX"    # F
    .param p7, "cellScaleY"    # F
    .param p8, "borderSpace"    # Landroid/graphics/Point;
    .param p9, "inset"    # Landroid/graphics/Rect;

    .line 131
    move-object v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    iget-boolean v3, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->isLockedToGrid:Z

    if-eqz v3, :cond_3

    .line 132
    iget v3, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    .line 133
    .local v3, "myCellHSpan":I
    iget v4, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    .line 134
    .local v4, "myCellVSpan":I
    iget-boolean v5, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->useTmpCoords:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getTmpCellX()I

    move-result v5

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v5

    .line 135
    .local v5, "myCellX":I
    :goto_0
    iget-boolean v6, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->useTmpCoords:Z

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getTmpCellY()I

    move-result v6

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v6

    .line 137
    .local v6, "myCellY":I
    :goto_1
    if-eqz p3, :cond_2

    .line 138
    sub-int v7, p4, v5

    iget v8, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    sub-int v5, v7, v8

    .line 141
    :cond_2
    add-int/lit8 v7, v3, -0x1

    iget v8, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v7, v8

    .line 142
    .local v7, "hBorderSpacing":I
    add-int/lit8 v8, v4, -0x1

    iget v9, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v8, v9

    .line 144
    .local v8, "vBorderSpacing":I
    mul-int v9, v3, p1

    add-int/2addr v9, v7

    int-to-float v9, v9

    div-float v9, v9, p6

    .line 145
    .local v9, "myCellWidth":F
    mul-int v10, v4, p2

    add-int/2addr v10, v8

    int-to-float v10, v10

    div-float v10, v10, p7

    .line 147
    .local v10, "myCellHeight":F
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v11

    iget v12, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->leftMargin:I

    sub-int/2addr v11, v12

    iget v12, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->rightMargin:I

    sub-int/2addr v11, v12

    iput v11, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->width:I

    .line 148
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v11

    iget v12, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->topMargin:I

    sub-int/2addr v11, v12

    iget v12, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->bottomMargin:I

    sub-int/2addr v11, v12

    iput v11, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->height:I

    .line 149
    iget v11, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->leftMargin:I

    mul-int v12, v5, p1

    add-int/2addr v11, v12

    iget v12, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v12, v5

    add-int/2addr v11, v12

    iput v11, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->x:I

    .line 150
    iget v11, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->topMargin:I

    mul-int v12, v6, p2

    add-int/2addr v11, v12

    iget v12, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v12, v6

    add-int/2addr v11, v12

    iput v11, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->y:I

    .line 152
    if-eqz v2, :cond_3

    .line 153
    iget v11, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->x:I

    iget v12, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v12

    iput v11, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->x:I

    .line 154
    iget v11, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->y:I

    iget v12, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v12

    iput v11, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->y:I

    .line 155
    iget v11, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->width:I

    iget v12, v2, Landroid/graphics/Rect;->left:I

    iget v13, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    sub-int/2addr v11, v12

    iput v11, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->width:I

    .line 156
    iget v11, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->height:I

    iget v12, v2, Landroid/graphics/Rect;->top:I

    iget v13, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v13

    sub-int/2addr v11, v12

    iput v11, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->height:I

    .line 159
    .end local v3    # "myCellHSpan":I
    .end local v4    # "myCellVSpan":I
    .end local v5    # "myCellX":I
    .end local v6    # "myCellY":I
    .end local v7    # "hBorderSpacing":I
    .end local v8    # "vBorderSpacing":I
    .end local v9    # "myCellWidth":F
    .end local v10    # "myCellHeight":F
    :cond_3
    return-void
.end method

.method public setup(IIZIILandroid/graphics/Point;)V
    .locals 10
    .param p1, "cellWidth"    # I
    .param p2, "cellHeight"    # I
    .param p3, "invertHorizontally"    # Z
    .param p4, "colCount"    # I
    .param p5, "rowCount"    # I
    .param p6, "borderSpace"    # Landroid/graphics/Point;

    .line 117
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setup(IIZIIFFLandroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 119
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
