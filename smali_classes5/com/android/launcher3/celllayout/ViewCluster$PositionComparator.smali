.class public final Lcom/android/launcher3/celllayout/ViewCluster$PositionComparator;
.super Ljava/lang/Object;
.source "ViewCluster.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/celllayout/ViewCluster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PositionComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0086\u0004\u0018\u00002\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001j\n\u0012\u0006\u0012\u0004\u0018\u00010\u0002`\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u001c\u0010\u000b\u001a\u00020\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u00022\u0008\u0010\r\u001a\u0004\u0018\u00010\u0002H\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/android/launcher3/celllayout/ViewCluster$PositionComparator;",
        "Ljava/util/Comparator;",
        "Landroid/view/View;",
        "Lkotlin/Comparator;",
        "(Lcom/android/launcher3/celllayout/ViewCluster;)V",
        "whichEdge",
        "",
        "getWhichEdge",
        "()I",
        "setWhichEdge",
        "(I)V",
        "compare",
        "left",
        "right",
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
.field final synthetic this$0:Lcom/android/launcher3/celllayout/ViewCluster;

.field private whichEdge:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/celllayout/ViewCluster;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/celllayout/ViewCluster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/android/launcher3/celllayout/ViewCluster$PositionComparator;->this$0:Lcom/android/launcher3/celllayout/ViewCluster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 5
    .param p1, "left"    # Landroid/view/View;
    .param p2, "right"    # Landroid/view/View;

    .line 161
    iget-object v0, p0, Lcom/android/launcher3/celllayout/ViewCluster$PositionComparator;->this$0:Lcom/android/launcher3/celllayout/ViewCluster;

    invoke-virtual {v0}, Lcom/android/launcher3/celllayout/ViewCluster;->getConfig()Lcom/android/launcher3/celllayout/ItemConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/celllayout/ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/CellAndSpan;

    .line 162
    .local v0, "l":Lcom/android/launcher3/util/CellAndSpan;
    iget-object v1, p0, Lcom/android/launcher3/celllayout/ViewCluster$PositionComparator;->this$0:Lcom/android/launcher3/celllayout/ViewCluster;

    invoke-virtual {v1}, Lcom/android/launcher3/celllayout/ViewCluster;->getConfig()Lcom/android/launcher3/celllayout/ItemConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/celllayout/ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/CellAndSpan;

    .line 163
    .local v1, "r":Lcom/android/launcher3/util/CellAndSpan;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 164
    iget v2, p0, Lcom/android/launcher3/celllayout/ViewCluster$PositionComparator;->whichEdge:I

    sparse-switch v2, :sswitch_data_0

    .line 169
    iget v2, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v3, v1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 168
    :sswitch_0
    iget v2, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v3, v1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 166
    :sswitch_1
    iget v2, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v3, v1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 167
    :sswitch_2
    iget v2, v1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v3, v1, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v4, v0, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    goto :goto_0

    .line 165
    :sswitch_3
    iget v2, v1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v3, v1, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v4, v0, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 164
    :goto_0
    return v2

    .line 163
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "p0"    # Ljava/lang/Object;
    .param p2, "p1"    # Ljava/lang/Object;

    .line 158
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    move-object v1, p2

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/celllayout/ViewCluster$PositionComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final getWhichEdge()I
    .locals 1

    .line 159
    iget v0, p0, Lcom/android/launcher3/celllayout/ViewCluster$PositionComparator;->whichEdge:I

    return v0
.end method

.method public final setWhichEdge(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 159
    iput p1, p0, Lcom/android/launcher3/celllayout/ViewCluster$PositionComparator;->whichEdge:I

    return-void
.end method
