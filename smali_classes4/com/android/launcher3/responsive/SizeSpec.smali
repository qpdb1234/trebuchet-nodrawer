.class public final Lcom/android/launcher3/responsive/SizeSpec;
.super Ljava/lang/Object;
.source "SizeSpec.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/responsive/SizeSpec$Companion;,
        Lcom/android/launcher3/responsive/SizeSpec$XmlTags;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u001c\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 \'2\u00020\u0001:\u0002\'(B7\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\tH\u00c6\u0003J;\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u00072\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\u0018\u0010\u001b\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\t2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\tJ \u0010\u001e\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020\t2\u0006\u0010 \u001a\u00020\t2\u0008\u0008\u0002\u0010!\u001a\u00020\tJ\t\u0010\"\u001a\u00020\tH\u00d6\u0001J\u0006\u0010#\u001a\u00020\u0007J\u0006\u0010$\u001a\u00020\u0007J\t\u0010%\u001a\u00020&H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000cR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000c\u00a8\u0006)"
    }
    d2 = {
        "Lcom/android/launcher3/responsive/SizeSpec;",
        "",
        "fixedSize",
        "",
        "ofAvailableSpace",
        "ofRemainderSpace",
        "matchWorkspace",
        "",
        "maxSize",
        "",
        "(FFFZI)V",
        "getFixedSize",
        "()F",
        "getMatchWorkspace",
        "()Z",
        "getMaxSize",
        "()I",
        "getOfAvailableSpace",
        "getOfRemainderSpace",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "other",
        "getCalculatedValue",
        "availableSpace",
        "workspaceValue",
        "getRemainderSpaceValue",
        "remainderSpace",
        "defaultValue",
        "factor",
        "hashCode",
        "isValid",
        "onlyFixedSize",
        "toString",
        "",
        "Companion",
        "XmlTags",
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
.field public static final Companion:Lcom/android/launcher3/responsive/SizeSpec$Companion;

.field private static final TAG:Ljava/lang/String; = "SizeSpec"


# instance fields
.field private final fixedSize:F

.field private final matchWorkspace:Z

.field private final maxSize:I

.field private final ofAvailableSpace:F

.field private final ofRemainderSpace:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/responsive/SizeSpec$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/responsive/SizeSpec$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/responsive/SizeSpec;->Companion:Lcom/android/launcher3/responsive/SizeSpec$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/responsive/SizeSpec;-><init>(FFFZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FFFZI)V
    .locals 0
    .param p1, "fixedSize"    # F
    .param p2, "ofAvailableSpace"    # F
    .param p3, "ofRemainderSpace"    # F
    .param p4, "matchWorkspace"    # Z
    .param p5, "maxSize"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/android/launcher3/responsive/SizeSpec;->fixedSize:F

    .line 38
    iput p2, p0, Lcom/android/launcher3/responsive/SizeSpec;->ofAvailableSpace:F

    .line 39
    iput p3, p0, Lcom/android/launcher3/responsive/SizeSpec;->ofRemainderSpace:F

    .line 40
    iput-boolean p4, p0, Lcom/android/launcher3/responsive/SizeSpec;->matchWorkspace:Z

    .line 41
    iput p5, p0, Lcom/android/launcher3/responsive/SizeSpec;->maxSize:I

    .line 36
    return-void
.end method

.method public synthetic constructor <init>(FFFZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    .line 36
    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    .line 37
    move p7, v0

    goto :goto_0

    .line 36
    :cond_0
    move p7, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    .line 38
    move v1, v0

    goto :goto_1

    .line 36
    :cond_1
    move v1, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    .line 39
    goto :goto_2

    .line 36
    :cond_2
    move v0, p3

    :goto_2
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    .line 40
    const/4 p4, 0x0

    move v2, p4

    goto :goto_3

    .line 36
    :cond_3
    move v2, p4

    :goto_3
    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    .line 41
    const p5, 0x7fffffff

    move p6, p5

    goto :goto_4

    .line 36
    :cond_4
    move p6, p5

    :goto_4
    move-object p1, p0

    move p2, p7

    move p3, v1

    move p4, v0

    move p5, v2

    invoke-direct/range {p1 .. p6}, Lcom/android/launcher3/responsive/SizeSpec;-><init>(FFFZI)V

    .line 161
    return-void
.end method

.method public static synthetic copy$default(Lcom/android/launcher3/responsive/SizeSpec;FFFZIILjava/lang/Object;)Lcom/android/launcher3/responsive/SizeSpec;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/android/launcher3/responsive/SizeSpec;->fixedSize:F

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lcom/android/launcher3/responsive/SizeSpec;->ofAvailableSpace:F

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/android/launcher3/responsive/SizeSpec;->ofRemainderSpace:F

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-boolean p4, p0, Lcom/android/launcher3/responsive/SizeSpec;->matchWorkspace:Z

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/android/launcher3/responsive/SizeSpec;->maxSize:I

    :cond_4
    move v2, p5

    move-object p2, p0

    move p3, p1

    move p4, p7

    move p5, v0

    move p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/android/launcher3/responsive/SizeSpec;->copy(FFFZI)Lcom/android/launcher3/responsive/SizeSpec;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getCalculatedValue$default(Lcom/android/launcher3/responsive/SizeSpec;IIILjava/lang/Object;)I
    .locals 0

    .line 45
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/responsive/SizeSpec;->getCalculatedValue(II)I

    move-result p0

    return p0
.end method

.method public static synthetic getRemainderSpaceValue$default(Lcom/android/launcher3/responsive/SizeSpec;IIIILjava/lang/Object;)I
    .locals 0

    .line 66
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/responsive/SizeSpec;->getRemainderSpaceValue(III)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final component1()F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/responsive/SizeSpec;->fixedSize:F

    return v0
.end method

.method public final component2()F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/responsive/SizeSpec;->ofAvailableSpace:F

    return v0
.end method

.method public final component3()F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/responsive/SizeSpec;->ofRemainderSpace:F

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/responsive/SizeSpec;->matchWorkspace:Z

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/responsive/SizeSpec;->maxSize:I

    return v0
.end method

.method public final copy(FFFZI)Lcom/android/launcher3/responsive/SizeSpec;
    .locals 7

    new-instance v6, Lcom/android/launcher3/responsive/SizeSpec;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/responsive/SizeSpec;-><init>(FFFZI)V

    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/launcher3/responsive/SizeSpec;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/responsive/SizeSpec;

    iget v3, p0, Lcom/android/launcher3/responsive/SizeSpec;->fixedSize:F

    iget v4, v1, Lcom/android/launcher3/responsive/SizeSpec;->fixedSize:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lcom/android/launcher3/responsive/SizeSpec;->ofAvailableSpace:F

    iget v4, v1, Lcom/android/launcher3/responsive/SizeSpec;->ofAvailableSpace:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lcom/android/launcher3/responsive/SizeSpec;->ofRemainderSpace:F

    iget v4, v1, Lcom/android/launcher3/responsive/SizeSpec;->ofRemainderSpace:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_4

    return v2

    :cond_4
    iget-boolean v3, p0, Lcom/android/launcher3/responsive/SizeSpec;->matchWorkspace:Z

    iget-boolean v4, v1, Lcom/android/launcher3/responsive/SizeSpec;->matchWorkspace:Z

    if-eq v3, v4, :cond_5

    return v2

    :cond_5
    iget v3, p0, Lcom/android/launcher3/responsive/SizeSpec;->maxSize:I

    iget v1, v1, Lcom/android/launcher3/responsive/SizeSpec;->maxSize:I

    if-eq v3, v1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getCalculatedValue(II)I
    .locals 3
    .param p1, "availableSpace"    # I
    .param p2, "workspaceValue"    # I

    .line 47
    nop

    .line 48
    iget v0, p0, Lcom/android/launcher3/responsive/SizeSpec;->fixedSize:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    goto :goto_0

    .line 49
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/responsive/SizeSpec;->matchWorkspace:Z

    if-eqz v0, :cond_1

    move v0, p2

    goto :goto_0

    .line 50
    :cond_1
    iget v0, p0, Lcom/android/launcher3/responsive/SizeSpec;->ofAvailableSpace:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    goto :goto_0

    .line 51
    :cond_2
    const/4 v0, 0x0

    .line 47
    :goto_0
    nop

    .line 46
    nop

    .line 54
    .local v0, "calculatedValue":I
    iget v1, p0, Lcom/android/launcher3/responsive/SizeSpec;->maxSize:I

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v1

    return v1
.end method

.method public final getFixedSize()F
    .locals 1

    .line 37
    iget v0, p0, Lcom/android/launcher3/responsive/SizeSpec;->fixedSize:F

    return v0
.end method

.method public final getMatchWorkspace()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/android/launcher3/responsive/SizeSpec;->matchWorkspace:Z

    return v0
.end method

.method public final getMaxSize()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/android/launcher3/responsive/SizeSpec;->maxSize:I

    return v0
.end method

.method public final getOfAvailableSpace()F
    .locals 1

    .line 38
    iget v0, p0, Lcom/android/launcher3/responsive/SizeSpec;->ofAvailableSpace:F

    return v0
.end method

.method public final getOfRemainderSpace()F
    .locals 1

    .line 39
    iget v0, p0, Lcom/android/launcher3/responsive/SizeSpec;->ofRemainderSpace:F

    return v0
.end method

.method public final getRemainderSpaceValue(III)I
    .locals 2
    .param p1, "remainderSpace"    # I
    .param p2, "defaultValue"    # I
    .param p3, "factor"    # I

    .line 68
    iget v0, p0, Lcom/android/launcher3/responsive/SizeSpec;->ofRemainderSpace:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 69
    int-to-float v1, p1

    mul-float/2addr v0, v1

    int-to-float v1, p3

    div-float/2addr v0, v1

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    goto :goto_0

    .line 71
    :cond_0
    move v0, p2

    .line 68
    :goto_0
    nop

    .line 67
    nop

    .line 74
    .local v0, "remainderSpaceValue":I
    iget v1, p0, Lcom/android/launcher3/responsive/SizeSpec;->maxSize:I

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/launcher3/responsive/SizeSpec;->fixedSize:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/launcher3/responsive/SizeSpec;->ofAvailableSpace:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/android/launcher3/responsive/SizeSpec;->ofRemainderSpace:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/android/launcher3/responsive/SizeSpec;->matchWorkspace:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/android/launcher3/responsive/SizeSpec;->maxSize:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public final isValid()Z
    .locals 10

    .line 79
    iget v0, p0, Lcom/android/launcher3/responsive/SizeSpec;->fixedSize:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    const-string v3, "SizeSpec"

    const/4 v4, 0x0

    if-gez v2, :cond_0

    iget v2, p0, Lcom/android/launcher3/responsive/SizeSpec;->ofAvailableSpace:F

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/android/launcher3/responsive/SizeSpec;->ofRemainderSpace:F

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher3/responsive/SizeSpec;->matchWorkspace:Z

    if-nez v2, :cond_0

    .line 80
    const-string v0, "SizeSpec#isValid - all attributes are empty"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return v4

    .line 86
    :cond_0
    cmpl-float v2, v0, v1

    const/4 v5, 0x1

    if-lez v2, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v4

    .line 87
    :goto_0
    iget v6, p0, Lcom/android/launcher3/responsive/SizeSpec;->ofAvailableSpace:F

    cmpl-float v7, v6, v1

    if-lez v7, :cond_2

    move v7, v5

    goto :goto_1

    :cond_2
    move v7, v4

    .line 86
    :goto_1
    add-int/2addr v2, v7

    .line 88
    iget v7, p0, Lcom/android/launcher3/responsive/SizeSpec;->ofRemainderSpace:F

    cmpl-float v8, v7, v1

    if-lez v8, :cond_3

    move v8, v5

    goto :goto_2

    :cond_3
    move v8, v4

    .line 86
    :goto_2
    add-int/2addr v2, v8

    .line 89
    iget-boolean v8, p0, Lcom/android/launcher3/responsive/SizeSpec;->matchWorkspace:Z

    .line 86
    add-int/2addr v2, v8

    .line 85
    nop

    .line 90
    .local v2, "attrCount":I
    if-le v2, v5, :cond_4

    .line 91
    const-string v0, "SizeSpec#isValid - more than one attribute is filled"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return v4

    .line 96
    :cond_4
    cmpg-float v8, v1, v6

    const/high16 v9, 0x3f800000    # 1.0f

    if-gtz v8, :cond_5

    cmpg-float v6, v6, v9

    if-gtz v6, :cond_5

    move v6, v5

    goto :goto_3

    :cond_5
    move v6, v4

    :goto_3
    if-eqz v6, :cond_b

    cmpg-float v6, v1, v7

    if-gtz v6, :cond_6

    cmpg-float v6, v7, v9

    if-gtz v6, :cond_6

    move v6, v5

    goto :goto_4

    :cond_6
    move v6, v4

    :goto_4
    if-nez v6, :cond_7

    goto :goto_6

    .line 102
    :cond_7
    cmpg-float v6, v0, v1

    if-ltz v6, :cond_a

    iget v6, p0, Lcom/android/launcher3/responsive/SizeSpec;->maxSize:I

    int-to-float v7, v6

    cmpg-float v7, v7, v1

    if-gez v7, :cond_8

    goto :goto_5

    .line 107
    :cond_8
    cmpl-float v1, v0, v1

    if-lez v1, :cond_9

    int-to-float v1, v6

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    .line 108
    const-string v0, "SizeSpec#isValid - fixed size should be smaller than the max size."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return v4

    .line 112
    :cond_9
    return v5

    .line 103
    :cond_a
    :goto_5
    const-string v0, "SizeSpec#isValid - values should be bigger or equal to zero."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return v4

    .line 97
    :cond_b
    :goto_6
    const-string v0, "SizeSpec#isValid - values should be between 0 and 1"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return v4
.end method

.method public final onlyFixedSize()Z
    .locals 2

    .line 116
    iget v0, p0, Lcom/android/launcher3/responsive/SizeSpec;->ofAvailableSpace:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/responsive/SizeSpec;->ofRemainderSpace:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/responsive/SizeSpec;->matchWorkspace:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 117
    :cond_1
    :goto_0
    const-string v0, "SizeSpec"

    const-string v1, "SizeSpec#onlyFixedSize - only fixed size allowed for this tag"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/android/launcher3/responsive/SizeSpec;->fixedSize:F

    iget v1, p0, Lcom/android/launcher3/responsive/SizeSpec;->ofAvailableSpace:F

    iget v2, p0, Lcom/android/launcher3/responsive/SizeSpec;->ofRemainderSpace:F

    iget-boolean v3, p0, Lcom/android/launcher3/responsive/SizeSpec;->matchWorkspace:Z

    iget v4, p0, Lcom/android/launcher3/responsive/SizeSpec;->maxSize:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SizeSpec(fixedSize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", ofAvailableSpace="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ofRemainderSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", matchWorkspace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
