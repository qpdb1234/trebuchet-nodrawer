.class public Lcom/android/launcher3/celllayout/CellPosMapper;
.super Ljava/lang/Object;
.source "CellPosMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;,
        Lcom/android/launcher3/celllayout/CellPosMapper$TwoPanelCellPosMapper;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/android/launcher3/celllayout/CellPosMapper;


# instance fields
.field private final mHasVerticalHotseat:Z

.field private final mNumOfHotseat:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Lcom/android/launcher3/celllayout/CellPosMapper;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/celllayout/CellPosMapper;-><init>(ZI)V

    sput-object v0, Lcom/android/launcher3/celllayout/CellPosMapper;->DEFAULT:Lcom/android/launcher3/celllayout/CellPosMapper;

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0
    .param p1, "hasVerticalHotseat"    # Z
    .param p2, "numOfHotseat"    # I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean p1, p0, Lcom/android/launcher3/celllayout/CellPosMapper;->mHasVerticalHotseat:Z

    .line 36
    iput p2, p0, Lcom/android/launcher3/celllayout/CellPosMapper;->mNumOfHotseat:I

    .line 37
    return-void
.end method


# virtual methods
.method public mapModelToPresenter(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    .locals 4
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 43
    new-instance v0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;-><init>(III)V

    return-object v0
.end method

.method public mapPresenterToModel(IIII)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    .locals 1
    .param p1, "presenterX"    # I
    .param p2, "presenterY"    # I
    .param p3, "presenterScreen"    # I
    .param p4, "container"    # I

    .line 51
    const/16 v0, -0x65

    if-ne p4, v0, :cond_1

    .line 52
    iget-boolean v0, p0, Lcom/android/launcher3/celllayout/CellPosMapper;->mHasVerticalHotseat:Z

    if-eqz v0, :cond_0

    .line 53
    iget v0, p0, Lcom/android/launcher3/celllayout/CellPosMapper;->mNumOfHotseat:I

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    move p3, v0

    .line 55
    :cond_1
    new-instance v0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;-><init>(III)V

    return-object v0
.end method
