.class public final Lcom/android/launcher3/celllayout/CellInfo;
.super Lcom/android/launcher3/util/CellAndSpan;
.source "CellInfo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\r\u001a\u00020\u000eH\u0016R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/android/launcher3/celllayout/CellInfo;",
        "Lcom/android/launcher3/util/CellAndSpan;",
        "v",
        "Landroid/view/View;",
        "info",
        "Lcom/android/launcher3/model/data/ItemInfo;",
        "cellPos",
        "Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;",
        "(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;)V",
        "cell",
        "container",
        "",
        "screenId",
        "toString",
        "",
        "Trebuchet_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final cell:Landroid/view/View;

.field public final container:I

.field public final screenId:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "cellPos"    # Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cellPos"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget v0, p3, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellX:I

    iget v1, p3, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellY:I

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/launcher3/util/CellAndSpan;-><init>(IIII)V

    .line 35
    nop

    .line 36
    iput-object p1, p0, Lcom/android/launcher3/celllayout/CellInfo;->cell:Landroid/view/View;

    .line 37
    iget v0, p3, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    iput v0, p0, Lcom/android/launcher3/celllayout/CellInfo;->screenId:I

    .line 38
    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iput v0, p0, Lcom/android/launcher3/celllayout/CellInfo;->container:I

    .line 39
    nop

    .line 29
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 42
    iget-object v0, p0, Lcom/android/launcher3/celllayout/CellInfo;->cell:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher3/celllayout/CellInfo;->screenId:I

    iget v2, p0, Lcom/android/launcher3/celllayout/CellInfo;->container:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CellInfo(cell="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", screenId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
