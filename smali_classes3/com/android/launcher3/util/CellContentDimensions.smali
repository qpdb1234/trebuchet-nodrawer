.class public final Lcom/android/launcher3/util/CellContentDimensions;
.super Ljava/lang/Object;
.source "CellContentDimensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u000f\u001a\u00020\u0003J\u0016\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0013R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0008\"\u0004\u0008\u000c\u0010\nR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0008\"\u0004\u0008\u000e\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/android/launcher3/util/CellContentDimensions;",
        "",
        "iconSizePx",
        "",
        "iconDrawablePaddingPx",
        "iconTextSizePx",
        "(III)V",
        "getIconDrawablePaddingPx",
        "()I",
        "setIconDrawablePaddingPx",
        "(I)V",
        "getIconSizePx",
        "setIconSizePx",
        "getIconTextSizePx",
        "setIconTextSizePx",
        "getCellContentHeight",
        "resizeToFitCellHeight",
        "cellHeightPx",
        "iconSizeSteps",
        "Lcom/android/launcher3/util/IconSizeSteps;",
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
.field private iconDrawablePaddingPx:I

.field private iconSizePx:I

.field private iconTextSizePx:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "iconSizePx"    # I
    .param p2, "iconDrawablePaddingPx"    # I
    .param p3, "iconTextSizePx"    # I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/android/launcher3/util/CellContentDimensions;->iconSizePx:I

    .line 23
    iput p2, p0, Lcom/android/launcher3/util/CellContentDimensions;->iconDrawablePaddingPx:I

    .line 24
    iput p3, p0, Lcom/android/launcher3/util/CellContentDimensions;->iconTextSizePx:I

    .line 21
    return-void
.end method


# virtual methods
.method public final getCellContentHeight()I
    .locals 3

    .line 80
    iget v0, p0, Lcom/android/launcher3/util/CellContentDimensions;->iconTextSizePx:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->calculateTextHeight(F)I

    move-result v0

    .line 81
    .local v0, "iconTextHeight":I
    iget v1, p0, Lcom/android/launcher3/util/CellContentDimensions;->iconSizePx:I

    iget v2, p0, Lcom/android/launcher3/util/CellContentDimensions;->iconDrawablePaddingPx:I

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public final getIconDrawablePaddingPx()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/android/launcher3/util/CellContentDimensions;->iconDrawablePaddingPx:I

    return v0
.end method

.method public final getIconSizePx()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/android/launcher3/util/CellContentDimensions;->iconSizePx:I

    return v0
.end method

.method public final getIconTextSizePx()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/android/launcher3/util/CellContentDimensions;->iconTextSizePx:I

    return v0
.end method

.method public final resizeToFitCellHeight(ILcom/android/launcher3/util/IconSizeSteps;)I
    .locals 4
    .param p1, "cellHeightPx"    # I
    .param p2, "iconSizeSteps"    # Lcom/android/launcher3/util/IconSizeSteps;

    const-string v0, "iconSizeSteps"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/android/launcher3/util/CellContentDimensions;->getCellContentHeight()I

    move-result v0

    .line 36
    .local v0, "cellContentHeight":I
    if-le v0, p1, :cond_0

    .line 37
    sub-int v1, v0, p1

    .line 38
    .local v1, "diff":I
    iget v2, p0, Lcom/android/launcher3/util/CellContentDimensions;->iconDrawablePaddingPx:I

    sub-int/2addr v2, v1

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/util/CellContentDimensions;->iconDrawablePaddingPx:I

    .line 39
    invoke-virtual {p0}, Lcom/android/launcher3/util/CellContentDimensions;->getCellContentHeight()I

    move-result v0

    .line 43
    .end local v1    # "diff":I
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/launcher3/util/CellContentDimensions;->iconTextSizePx:I

    invoke-virtual {p2}, Lcom/android/launcher3/util/IconSizeSteps;->getMinimumIconLabelSize()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 44
    iget v1, p0, Lcom/android/launcher3/util/CellContentDimensions;->iconSizePx:I

    invoke-virtual {p2}, Lcom/android/launcher3/util/IconSizeSteps;->minimumIconSize()I

    move-result v2

    if-le v1, v2, :cond_2

    :cond_1
    if-le v0, p1, :cond_2

    .line 47
    iget v1, p0, Lcom/android/launcher3/util/CellContentDimensions;->iconSizePx:I

    invoke-virtual {p2, v1}, Lcom/android/launcher3/util/IconSizeSteps;->getNextLowerIconSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/util/CellContentDimensions;->iconSizePx:I

    .line 48
    invoke-virtual {p0}, Lcom/android/launcher3/util/CellContentDimensions;->getCellContentHeight()I

    move-result v0

    .line 51
    nop

    .line 52
    if-le v0, p1, :cond_0

    .line 53
    iget v1, p0, Lcom/android/launcher3/util/CellContentDimensions;->iconTextSizePx:I

    invoke-virtual {p2}, Lcom/android/launcher3/util/IconSizeSteps;->getMinimumIconLabelSize()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 55
    nop

    .line 56
    nop

    .line 57
    invoke-virtual {p2}, Lcom/android/launcher3/util/IconSizeSteps;->getMinimumIconLabelSize()I

    move-result v1

    .line 58
    iget v2, p0, Lcom/android/launcher3/util/CellContentDimensions;->iconTextSizePx:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 55
    iput v1, p0, Lcom/android/launcher3/util/CellContentDimensions;->iconTextSizePx:I

    .line 60
    invoke-virtual {p0}, Lcom/android/launcher3/util/CellContentDimensions;->getCellContentHeight()I

    move-result v0

    goto :goto_0

    .line 69
    :cond_2
    :goto_1
    if-le v0, p1, :cond_3

    iget v1, p0, Lcom/android/launcher3/util/CellContentDimensions;->iconSizePx:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_3

    .line 71
    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/android/launcher3/util/CellContentDimensions;->iconSizePx:I

    .line 72
    invoke-virtual {p0}, Lcom/android/launcher3/util/CellContentDimensions;->getCellContentHeight()I

    move-result v0

    goto :goto_1

    .line 75
    :cond_3
    return v0
.end method

.method public final setIconDrawablePaddingPx(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 23
    iput p1, p0, Lcom/android/launcher3/util/CellContentDimensions;->iconDrawablePaddingPx:I

    return-void
.end method

.method public final setIconSizePx(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 22
    iput p1, p0, Lcom/android/launcher3/util/CellContentDimensions;->iconSizePx:I

    return-void
.end method

.method public final setIconTextSizePx(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 24
    iput p1, p0, Lcom/android/launcher3/util/CellContentDimensions;->iconTextSizePx:I

    return-void
.end method
