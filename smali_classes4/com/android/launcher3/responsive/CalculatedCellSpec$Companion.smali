.class public final Lcom/android/launcher3/responsive/CalculatedCellSpec$Companion;
.super Ljava/lang/Object;
.source "ResponsiveCellSpecsProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/responsive/CalculatedCellSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0004H\u0002\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/android/launcher3/responsive/CalculatedCellSpec$Companion;",
        "",
        "()V",
        "getCalculatedValue",
        "",
        "availableSpace",
        "spec",
        "Lcom/android/launcher3/responsive/SizeSpec;",
        "workspaceValue",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/responsive/CalculatedCellSpec$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCalculatedValue(Lcom/android/launcher3/responsive/CalculatedCellSpec$Companion;ILcom/android/launcher3/responsive/SizeSpec;I)I
    .locals 1
    .param p0, "$this"    # Lcom/android/launcher3/responsive/CalculatedCellSpec$Companion;
    .param p1, "availableSpace"    # I
    .param p2, "spec"    # Lcom/android/launcher3/responsive/SizeSpec;
    .param p3, "workspaceValue"    # I

    .line 184
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/responsive/CalculatedCellSpec$Companion;->getCalculatedValue(ILcom/android/launcher3/responsive/SizeSpec;I)I

    move-result v0

    return v0
.end method

.method private final getCalculatedValue(ILcom/android/launcher3/responsive/SizeSpec;I)I
    .locals 3
    .param p1, "availableSpace"    # I
    .param p2, "spec"    # Lcom/android/launcher3/responsive/SizeSpec;
    .param p3, "workspaceValue"    # I

    .line 190
    invoke-virtual {p2}, Lcom/android/launcher3/responsive/SizeSpec;->getMatchWorkspace()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p2, p1, v2, v0, v1}, Lcom/android/launcher3/responsive/SizeSpec;->getCalculatedValue$default(Lcom/android/launcher3/responsive/SizeSpec;IIILjava/lang/Object;)I

    move-result v0

    :goto_0
    return v0
.end method
