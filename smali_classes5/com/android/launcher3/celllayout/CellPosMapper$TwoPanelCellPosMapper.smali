.class public Lcom/android/launcher3/celllayout/CellPosMapper$TwoPanelCellPosMapper;
.super Lcom/android/launcher3/celllayout/CellPosMapper;
.source "CellPosMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/celllayout/CellPosMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TwoPanelCellPosMapper"
.end annotation


# instance fields
.field private final mColumnCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "columnCount"    # I

    .line 66
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/celllayout/CellPosMapper;-><init>(ZI)V

    .line 67
    iput p1, p0, Lcom/android/launcher3/celllayout/CellPosMapper$TwoPanelCellPosMapper;->mColumnCount:I

    .line 68
    return-void
.end method


# virtual methods
.method public mapModelToPresenter(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    .locals 4
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 74
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    new-instance v0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v2, p0, Lcom/android/launcher3/celllayout/CellPosMapper$TwoPanelCellPosMapper;->mColumnCount:I

    add-int/2addr v1, v2

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;-><init>(III)V

    return-object v0

    .line 75
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/launcher3/celllayout/CellPosMapper;->mapModelToPresenter(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    move-result-object v0

    return-object v0
.end method

.method public mapPresenterToModel(IIII)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    .locals 3
    .param p1, "presenterX"    # I
    .param p2, "presenterY"    # I
    .param p3, "presenterScreen"    # I
    .param p4, "container"    # I

    .line 83
    const/16 v0, -0x64

    if-ne p4, v0, :cond_0

    rem-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/celllayout/CellPosMapper$TwoPanelCellPosMapper;->mColumnCount:I

    if-lt p1, v0, :cond_0

    .line 85
    new-instance v0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    iget v1, p0, Lcom/android/launcher3/celllayout/CellPosMapper$TwoPanelCellPosMapper;->mColumnCount:I

    sub-int v1, p1, v1

    add-int/lit8 v2, p3, 0x1

    invoke-direct {v0, v1, p2, v2}, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;-><init>(III)V

    return-object v0

    .line 87
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/celllayout/CellPosMapper;->mapPresenterToModel(IIII)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    move-result-object v0

    return-object v0
.end method
