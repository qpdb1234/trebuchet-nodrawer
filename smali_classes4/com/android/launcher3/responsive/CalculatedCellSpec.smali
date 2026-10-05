.class public final Lcom/android/launcher3/responsive/CalculatedCellSpec;
.super Ljava/lang/Object;
.source "ResponsiveCellSpecsProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/responsive/CalculatedCellSpec$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000  2\u00020\u0001:\u0001 B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u001f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0000\u00a2\u0006\u0002\u0010\u0008B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u000cJ\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J;\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00d6\u0001J\u0008\u0010\u001e\u001a\u00020\u001fH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000eR\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006!"
    }
    d2 = {
        "Lcom/android/launcher3/responsive/CalculatedCellSpec;",
        "",
        "availableSpace",
        "",
        "spec",
        "Lcom/android/launcher3/responsive/CellSpec;",
        "(ILcom/android/launcher3/responsive/CellSpec;)V",
        "workspaceCellSpec",
        "(ILcom/android/launcher3/responsive/CellSpec;Lcom/android/launcher3/responsive/CalculatedCellSpec;)V",
        "iconSize",
        "iconTextSize",
        "iconDrawablePadding",
        "(ILcom/android/launcher3/responsive/CellSpec;III)V",
        "getAvailableSpace",
        "()I",
        "getIconDrawablePadding",
        "getIconSize",
        "getIconTextSize",
        "getSpec",
        "()Lcom/android/launcher3/responsive/CellSpec;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/android/launcher3/responsive/CalculatedCellSpec$Companion;


# instance fields
.field private final availableSpace:I

.field private final iconDrawablePadding:I

.field private final iconSize:I

.field private final iconTextSize:I

.field private final spec:Lcom/android/launcher3/responsive/CellSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/responsive/CalculatedCellSpec$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/responsive/CalculatedCellSpec$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/responsive/CalculatedCellSpec;->Companion:Lcom/android/launcher3/responsive/CalculatedCellSpec$Companion;

    return-void
.end method

.method public constructor <init>(ILcom/android/launcher3/responsive/CellSpec;)V
    .locals 10
    .param p1, "availableSpace"    # I
    .param p2, "spec"    # Lcom/android/launcher3/responsive/CellSpec;

    const-string v0, "spec"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    nop

    .line 159
    nop

    .line 160
    nop

    .line 161
    invoke-virtual {p2}, Lcom/android/launcher3/responsive/CellSpec;->getIconSize()Lcom/android/launcher3/responsive/SizeSpec;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/launcher3/responsive/SizeSpec;->getCalculatedValue$default(Lcom/android/launcher3/responsive/SizeSpec;IIILjava/lang/Object;)I

    move-result v7

    .line 162
    invoke-virtual {p2}, Lcom/android/launcher3/responsive/CellSpec;->getIconTextSize()Lcom/android/launcher3/responsive/SizeSpec;

    move-result-object v0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/launcher3/responsive/SizeSpec;->getCalculatedValue$default(Lcom/android/launcher3/responsive/SizeSpec;IIILjava/lang/Object;)I

    move-result v8

    .line 163
    invoke-virtual {p2}, Lcom/android/launcher3/responsive/CellSpec;->getIconDrawablePadding()Lcom/android/launcher3/responsive/SizeSpec;

    move-result-object v0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/launcher3/responsive/SizeSpec;->getCalculatedValue$default(Lcom/android/launcher3/responsive/SizeSpec;IIILjava/lang/Object;)I

    move-result v9

    .line 158
    move-object v4, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/responsive/CalculatedCellSpec;-><init>(ILcom/android/launcher3/responsive/CellSpec;III)V

    .line 164
    return-void
.end method

.method public constructor <init>(ILcom/android/launcher3/responsive/CellSpec;III)V
    .locals 1
    .param p1, "availableSpace"    # I
    .param p2, "spec"    # Lcom/android/launcher3/responsive/CellSpec;
    .param p3, "iconSize"    # I
    .param p4, "iconTextSize"    # I
    .param p5, "iconDrawablePadding"    # I

    const-string v0, "spec"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput p1, p0, Lcom/android/launcher3/responsive/CalculatedCellSpec;->availableSpace:I

    .line 150
    iput-object p2, p0, Lcom/android/launcher3/responsive/CalculatedCellSpec;->spec:Lcom/android/launcher3/responsive/CellSpec;

    .line 151
    iput p3, p0, Lcom/android/launcher3/responsive/CalculatedCellSpec;->iconSize:I

    .line 152
    iput p4, p0, Lcom/android/launcher3/responsive/CalculatedCellSpec;->iconTextSize:I

    .line 153
    iput p5, p0, Lcom/android/launcher3/responsive/CalculatedCellSpec;->iconDrawablePadding:I

    .line 148
    return-void
.end method

.method public constructor <init>(ILcom/android/launcher3/responsive/CellSpec;Lcom/android/launcher3/responsive/CalculatedCellSpec;)V
    .locals 9
    .param p1, "availableSpace"    # I
    .param p2, "spec"    # Lcom/android/launcher3/responsive/CellSpec;
    .param p3, "workspaceCellSpec"    # Lcom/android/launcher3/responsive/CalculatedCellSpec;

    const-string v0, "spec"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workspaceCellSpec"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    nop

    .line 171
    nop

    .line 172
    nop

    .line 173
    sget-object v0, Lcom/android/launcher3/responsive/CalculatedCellSpec;->Companion:Lcom/android/launcher3/responsive/CalculatedCellSpec$Companion;

    invoke-virtual {p2}, Lcom/android/launcher3/responsive/CellSpec;->getIconSize()Lcom/android/launcher3/responsive/SizeSpec;

    move-result-object v1

    iget v2, p3, Lcom/android/launcher3/responsive/CalculatedCellSpec;->iconSize:I

    invoke-static {v0, p1, v1, v2}, Lcom/android/launcher3/responsive/CalculatedCellSpec$Companion;->access$getCalculatedValue(Lcom/android/launcher3/responsive/CalculatedCellSpec$Companion;ILcom/android/launcher3/responsive/SizeSpec;I)I

    move-result v6

    .line 175
    invoke-virtual {p2}, Lcom/android/launcher3/responsive/CellSpec;->getIconTextSize()Lcom/android/launcher3/responsive/SizeSpec;

    move-result-object v1

    iget v2, p3, Lcom/android/launcher3/responsive/CalculatedCellSpec;->iconTextSize:I

    invoke-static {v0, p1, v1, v2}, Lcom/android/launcher3/responsive/CalculatedCellSpec$Companion;->access$getCalculatedValue(Lcom/android/launcher3/responsive/CalculatedCellSpec$Companion;ILcom/android/launcher3/responsive/SizeSpec;I)I

    move-result v7

    .line 177
    nop

    .line 178
    nop

    .line 179
    invoke-virtual {p2}, Lcom/android/launcher3/responsive/CellSpec;->getIconDrawablePadding()Lcom/android/launcher3/responsive/SizeSpec;

    move-result-object v1

    .line 180
    iget v2, p3, Lcom/android/launcher3/responsive/CalculatedCellSpec;->iconDrawablePadding:I

    .line 177
    invoke-static {v0, p1, v1, v2}, Lcom/android/launcher3/responsive/CalculatedCellSpec$Companion;->access$getCalculatedValue(Lcom/android/launcher3/responsive/CalculatedCellSpec$Companion;ILcom/android/launcher3/responsive/SizeSpec;I)I

    move-result v8

    .line 170
    move-object v3, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher3/responsive/CalculatedCellSpec;-><init>(ILcom/android/launcher3/responsive/CellSpec;III)V

    .line 182
    return-void
.end method

.method public static synthetic copy$default(Lcom/android/launcher3/responsive/CalculatedCellSpec;ILcom/android/launcher3/responsive/CellSpec;IIIILjava/lang/Object;)Lcom/android/launcher3/responsive/CalculatedCellSpec;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/android/launcher3/responsive/CalculatedCellSpec;->availableSpace:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/android/launcher3/responsive/CalculatedCellSpec;->spec:Lcom/android/launcher3/responsive/CellSpec;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/android/launcher3/responsive/CalculatedCellSpec;->iconSize:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/android/launcher3/responsive/CalculatedCellSpec;->iconTextSize:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/android/launcher3/responsive/CalculatedCellSpec;->iconDrawablePadding:I

    :cond_4
    move v2, p5

    move-object p2, p0

    move p3, p1

    move-object p4, p7

    move p5, v0

    move p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/android/launcher3/responsive/CalculatedCellSpec;->copy(ILcom/android/launcher3/responsive/CellSpec;III)Lcom/android/launcher3/responsive/CalculatedCellSpec;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/responsive/CalculatedCellSpec;->availableSpace:I

    return v0
.end method

.method public final component2()Lcom/android/launcher3/responsive/CellSpec;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/responsive/CalculatedCellSpec;->spec:Lcom/android/launcher3/responsive/CellSpec;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/responsive/CalculatedCellSpec;->iconSize:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/responsive/CalculatedCellSpec;->iconTextSize:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/responsive/CalculatedCellSpec;->iconDrawablePadding:I

    return v0
.end method

.method public final copy(ILcom/android/launcher3/responsive/CellSpec;III)Lcom/android/launcher3/responsive/CalculatedCellSpec;
    .locals 7

    const-string v0, "spec"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/responsive/CalculatedCellSpec;

    move-object v1, v0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/responsive/CalculatedCellSpec;-><init>(ILcom/android/launcher3/responsive/CellSpec;III)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/launcher3/responsive/CalculatedCellSpec;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/responsive/CalculatedCellSpec;

    iget v3, p0, Lcom/android/launcher3/responsive/CalculatedCellSpec;->availableSpace:I

    iget v4, v1, Lcom/android/launcher3/responsive/CalculatedCellSpec;->availableSpace:I

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/responsive/CalculatedCellSpec;->spec:Lcom/android/launcher3/responsive/CellSpec;

    iget-object v4, v1, Lcom/android/launcher3/responsive/CalculatedCellSpec;->spec:Lcom/android/launcher3/responsive/CellSpec;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lcom/android/launcher3/responsive/CalculatedCellSpec;->iconSize:I

    iget v4, v1, Lcom/android/launcher3/responsive/CalculatedCellSpec;->iconSize:I

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget v3, p0, Lcom/android/launcher3/responsive/CalculatedCellSpec;->iconTextSize:I

    iget v4, v1, Lcom/android/launcher3/responsive/CalculatedCellSpec;->iconTextSize:I

    if-eq v3, v4, :cond_5

    return v2

    :cond_5
    iget v3, p0, Lcom/android/launcher3/responsive/CalculatedCellSpec;->iconDrawablePadding:I

    iget v1, v1, Lcom/android/launcher3/responsive/CalculatedCellSpec;->iconDrawablePadding:I

    if-eq v3, v1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAvailableSpace()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/android/launcher3/responsive/CalculatedCellSpec;->availableSpace:I

    return v0
.end method

.method public final getIconDrawablePadding()I
    .locals 1

    .line 153
    iget v0, p0, Lcom/android/launcher3/responsive/CalculatedCellSpec;->iconDrawablePadding:I

    return v0
.end method

.method public final getIconSize()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/android/launcher3/responsive/CalculatedCellSpec;->iconSize:I

    return v0
.end method

.method public final getIconTextSize()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/android/launcher3/responsive/CalculatedCellSpec;->iconTextSize:I

    return v0
.end method

.method public final getSpec()Lcom/android/launcher3/responsive/CellSpec;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/android/launcher3/responsive/CalculatedCellSpec;->spec:Lcom/android/launcher3/responsive/CellSpec;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/launcher3/responsive/CalculatedCellSpec;->availableSpace:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/launcher3/responsive/CalculatedCellSpec;->spec:Lcom/android/launcher3/responsive/CellSpec;

    invoke-virtual {v2}, Lcom/android/launcher3/responsive/CellSpec;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/android/launcher3/responsive/CalculatedCellSpec;->iconSize:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/launcher3/responsive/CalculatedCellSpec;->iconTextSize:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/android/launcher3/responsive/CalculatedCellSpec;->iconDrawablePadding:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 194
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 195
    iget v1, p0, Lcom/android/launcher3/responsive/CalculatedCellSpec;->availableSpace:I

    iget v2, p0, Lcom/android/launcher3/responsive/CalculatedCellSpec;->iconSize:I

    .line 196
    iget v3, p0, Lcom/android/launcher3/responsive/CalculatedCellSpec;->iconTextSize:I

    iget v4, p0, Lcom/android/launcher3/responsive/CalculatedCellSpec;->iconDrawablePadding:I

    .line 197
    iget-object v5, p0, Lcom/android/launcher3/responsive/CalculatedCellSpec;->spec:Lcom/android/launcher3/responsive/CellSpec;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-interface {v5}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/responsive/CalculatedCellSpec;->spec:Lcom/android/launcher3/responsive/CellSpec;

    invoke-virtual {v6}, Lcom/android/launcher3/responsive/CellSpec;->getMaxAvailableSize()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "(availableSpace="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iconSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iconTextSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iconDrawablePadding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".maxAvailableSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    return-object v0
.end method
