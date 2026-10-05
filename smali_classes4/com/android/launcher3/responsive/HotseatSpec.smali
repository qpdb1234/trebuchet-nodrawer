.class public final Lcom/android/launcher3/responsive/HotseatSpec;
.super Ljava/lang/Object;
.source "HotseatSpecsProvider.kt"

# interfaces
.implements Lcom/android/launcher3/responsive/IResponsiveSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/responsive/HotseatSpec$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHotseatSpecsProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HotseatSpecsProvider.kt\ncom/android/launcher3/responsive/HotseatSpec\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,183:1\n1#2:184\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u0000 .2\u00020\u0001:\u0001.B+\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007\u00a2\u0006\u0002\u0010\nB-\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\t\u0012\u0006\u0010\u0011\u001a\u00020\t\u00a2\u0006\u0002\u0010\u0012J\u0008\u0010\u001c\u001a\u00020\u001dH\u0002J\t\u0010\u001e\u001a\u00020\u000cH\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u000eH\u00c6\u0003J\t\u0010 \u001a\u00020\u0003H\u00c6\u0003J\t\u0010!\u001a\u00020\tH\u00c6\u0003J\t\u0010\"\u001a\u00020\tH\u00c6\u0003J;\u0010#\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0010\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\tH\u00c6\u0001J\u0013\u0010$\u001a\u00020\u001d2\u0008\u0010%\u001a\u0004\u0018\u00010&H\u00d6\u0003J\t\u0010\'\u001a\u00020\u000cH\u00d6\u0001J\u0006\u0010(\u001a\u00020\u001dJ\u0008\u0010)\u001a\u00020\u001dH\u0002J\u0010\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u0008H\u0002J\t\u0010-\u001a\u00020\u0008H\u00d6\u0001R\u0014\u0010\r\u001a\u00020\u000eX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0011\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0010\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0016R\u0014\u0010\u000b\u001a\u00020\u000cX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u000f\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006/"
    }
    d2 = {
        "Lcom/android/launcher3/responsive/HotseatSpec;",
        "Lcom/android/launcher3/responsive/IResponsiveSpec;",
        "responsiveSpecType",
        "Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;",
        "attrs",
        "Landroid/content/res/TypedArray;",
        "specs",
        "",
        "",
        "Lcom/android/launcher3/responsive/SizeSpec;",
        "(Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;Landroid/content/res/TypedArray;Ljava/util/Map;)V",
        "maxAvailableSize",
        "",
        "dimensionType",
        "Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;",
        "specType",
        "hotseatQsbSpace",
        "edgePadding",
        "(ILcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;Lcom/android/launcher3/responsive/SizeSpec;Lcom/android/launcher3/responsive/SizeSpec;)V",
        "getDimensionType",
        "()Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;",
        "getEdgePadding",
        "()Lcom/android/launcher3/responsive/SizeSpec;",
        "getHotseatQsbSpace",
        "getMaxAvailableSize",
        "()I",
        "getSpecType",
        "()Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;",
        "allSpecsAreValid",
        "",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "isValid",
        "isValidFixedSize",
        "logError",
        "",
        "message",
        "toString",
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
.field public static final Companion:Lcom/android/launcher3/responsive/HotseatSpec$Companion;

.field private static final LOG_TAG:Ljava/lang/String; = "HotseatSpec"


# instance fields
.field private final dimensionType:Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;

.field private final edgePadding:Lcom/android/launcher3/responsive/SizeSpec;

.field private final hotseatQsbSpace:Lcom/android/launcher3/responsive/SizeSpec;

.field private final maxAvailableSize:I

.field private final specType:Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/responsive/HotseatSpec$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/responsive/HotseatSpec$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/responsive/HotseatSpec;->Companion:Lcom/android/launcher3/responsive/HotseatSpec$Companion;

    return-void
.end method

.method public constructor <init>(ILcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;Lcom/android/launcher3/responsive/SizeSpec;Lcom/android/launcher3/responsive/SizeSpec;)V
    .locals 2
    .param p1, "maxAvailableSize"    # I
    .param p2, "dimensionType"    # Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;
    .param p3, "specType"    # Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;
    .param p4, "hotseatQsbSpace"    # Lcom/android/launcher3/responsive/SizeSpec;
    .param p5, "edgePadding"    # Lcom/android/launcher3/responsive/SizeSpec;

    const-string v0, "dimensionType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "specType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hotseatQsbSpace"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "edgePadding"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Lcom/android/launcher3/responsive/HotseatSpec;->maxAvailableSize:I

    .line 80
    iput-object p2, p0, Lcom/android/launcher3/responsive/HotseatSpec;->dimensionType:Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;

    .line 81
    iput-object p3, p0, Lcom/android/launcher3/responsive/HotseatSpec;->specType:Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;

    .line 82
    iput-object p4, p0, Lcom/android/launcher3/responsive/HotseatSpec;->hotseatQsbSpace:Lcom/android/launcher3/responsive/SizeSpec;

    .line 83
    iput-object p5, p0, Lcom/android/launcher3/responsive/HotseatSpec;->edgePadding:Lcom/android/launcher3/responsive/SizeSpec;

    .line 85
    nop

    .line 86
    invoke-virtual {p0}, Lcom/android/launcher3/responsive/HotseatSpec;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    nop

    .line 78
    return-void

    .line 184
    :cond_0
    const/4 v0, 0x0

    .line 86
    .local v0, "$i$a$-check-HotseatSpec$1":I
    nop

    .end local v0    # "$i$a$-check-HotseatSpec$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid HotseatSpec found."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;Landroid/content/res/TypedArray;Ljava/util/Map;)V
    .locals 8
    .param p1, "responsiveSpecType"    # Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;
    .param p2, "attrs"    # Landroid/content/res/TypedArray;
    .param p3, "specs"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;",
            "Landroid/content/res/TypedArray;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/responsive/SizeSpec;",
            ">;)V"
        }
    .end annotation

    const-string v0, "responsiveSpecType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "specs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    nop

    .line 95
    sget v0, Lcom/android/launcher3/R$styleable;->ResponsiveSpec_maxAvailableSize:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 97
    invoke-static {}, Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    .line 98
    nop

    .line 99
    sget v1, Lcom/android/launcher3/R$styleable;->ResponsiveSpec_dimensionType:I

    .line 100
    sget-object v2, Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;->HEIGHT:Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;

    invoke-virtual {v2}, Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;->ordinal()I

    move-result v2

    .line 98
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 97
    invoke-interface {v0, v1}, Lkotlin/enums/EnumEntries;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;

    .line 102
    nop

    .line 103
    const-string v0, "hotseatQsbSpace"

    invoke-static {p3, v0}, Lcom/android/launcher3/responsive/ResponsiveSpecsParserKt;->getOrError(Ljava/util/Map;Ljava/lang/String;)Lcom/android/launcher3/responsive/SizeSpec;

    move-result-object v6

    .line 104
    const-string v0, "edgePadding"

    invoke-static {p3, v0}, Lcom/android/launcher3/responsive/ResponsiveSpecsParserKt;->getOrError(Ljava/util/Map;Ljava/lang/String;)Lcom/android/launcher3/responsive/SizeSpec;

    move-result-object v7

    .line 93
    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/responsive/HotseatSpec;-><init>(ILcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;Lcom/android/launcher3/responsive/SizeSpec;Lcom/android/launcher3/responsive/SizeSpec;)V

    .line 105
    return-void
.end method

.method private final allSpecsAreValid()Z
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/launcher3/responsive/HotseatSpec;->hotseatQsbSpace:Lcom/android/launcher3/responsive/SizeSpec;

    invoke-virtual {v0}, Lcom/android/launcher3/responsive/SizeSpec;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/launcher3/responsive/HotseatSpec;->hotseatQsbSpace:Lcom/android/launcher3/responsive/SizeSpec;

    invoke-virtual {v0}, Lcom/android/launcher3/responsive/SizeSpec;->onlyFixedSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/launcher3/responsive/HotseatSpec;->edgePadding:Lcom/android/launcher3/responsive/SizeSpec;

    invoke-virtual {v0}, Lcom/android/launcher3/responsive/SizeSpec;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/launcher3/responsive/HotseatSpec;->edgePadding:Lcom/android/launcher3/responsive/SizeSpec;

    invoke-virtual {v0}, Lcom/android/launcher3/responsive/SizeSpec;->onlyFixedSize()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 128
    :goto_0
    return v0
.end method

.method public static synthetic copy$default(Lcom/android/launcher3/responsive/HotseatSpec;ILcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;Lcom/android/launcher3/responsive/SizeSpec;Lcom/android/launcher3/responsive/SizeSpec;ILjava/lang/Object;)Lcom/android/launcher3/responsive/HotseatSpec;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/android/launcher3/responsive/HotseatSpec;->maxAvailableSize:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/android/launcher3/responsive/HotseatSpec;->dimensionType:Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/android/launcher3/responsive/HotseatSpec;->specType:Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/android/launcher3/responsive/HotseatSpec;->hotseatQsbSpace:Lcom/android/launcher3/responsive/SizeSpec;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/android/launcher3/responsive/HotseatSpec;->edgePadding:Lcom/android/launcher3/responsive/SizeSpec;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/android/launcher3/responsive/HotseatSpec;->copy(ILcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;Lcom/android/launcher3/responsive/SizeSpec;Lcom/android/launcher3/responsive/SizeSpec;)Lcom/android/launcher3/responsive/HotseatSpec;

    move-result-object p0

    return-object p0
.end method

.method private final isValidFixedSize()Z
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/android/launcher3/responsive/HotseatSpec;->hotseatQsbSpace:Lcom/android/launcher3/responsive/SizeSpec;

    invoke-virtual {v0}, Lcom/android/launcher3/responsive/SizeSpec;->getFixedSize()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/responsive/HotseatSpec;->edgePadding:Lcom/android/launcher3/responsive/SizeSpec;

    invoke-virtual {v1}, Lcom/android/launcher3/responsive/SizeSpec;->getFixedSize()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/responsive/HotseatSpec;->getMaxAvailableSize()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final logError(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#isValid - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HotseatSpec"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/responsive/HotseatSpec;->maxAvailableSize:I

    return v0
.end method

.method public final component2()Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/responsive/HotseatSpec;->dimensionType:Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;

    return-object v0
.end method

.method public final component3()Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/responsive/HotseatSpec;->specType:Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;

    return-object v0
.end method

.method public final component4()Lcom/android/launcher3/responsive/SizeSpec;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/responsive/HotseatSpec;->hotseatQsbSpace:Lcom/android/launcher3/responsive/SizeSpec;

    return-object v0
.end method

.method public final component5()Lcom/android/launcher3/responsive/SizeSpec;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/responsive/HotseatSpec;->edgePadding:Lcom/android/launcher3/responsive/SizeSpec;

    return-object v0
.end method

.method public final copy(ILcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;Lcom/android/launcher3/responsive/SizeSpec;Lcom/android/launcher3/responsive/SizeSpec;)Lcom/android/launcher3/responsive/HotseatSpec;
    .locals 7

    const-string v0, "dimensionType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "specType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hotseatQsbSpace"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "edgePadding"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/responsive/HotseatSpec;

    move-object v1, v0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/responsive/HotseatSpec;-><init>(ILcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;Lcom/android/launcher3/responsive/SizeSpec;Lcom/android/launcher3/responsive/SizeSpec;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/launcher3/responsive/HotseatSpec;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/responsive/HotseatSpec;

    iget v3, p0, Lcom/android/launcher3/responsive/HotseatSpec;->maxAvailableSize:I

    iget v4, v1, Lcom/android/launcher3/responsive/HotseatSpec;->maxAvailableSize:I

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/responsive/HotseatSpec;->dimensionType:Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;

    iget-object v4, v1, Lcom/android/launcher3/responsive/HotseatSpec;->dimensionType:Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/responsive/HotseatSpec;->specType:Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;

    iget-object v4, v1, Lcom/android/launcher3/responsive/HotseatSpec;->specType:Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/responsive/HotseatSpec;->hotseatQsbSpace:Lcom/android/launcher3/responsive/SizeSpec;

    iget-object v4, v1, Lcom/android/launcher3/responsive/HotseatSpec;->hotseatQsbSpace:Lcom/android/launcher3/responsive/SizeSpec;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lcom/android/launcher3/responsive/HotseatSpec;->edgePadding:Lcom/android/launcher3/responsive/SizeSpec;

    iget-object v1, v1, Lcom/android/launcher3/responsive/HotseatSpec;->edgePadding:Lcom/android/launcher3/responsive/SizeSpec;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public getDimensionType()Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/launcher3/responsive/HotseatSpec;->dimensionType:Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;

    return-object v0
.end method

.method public final getEdgePadding()Lcom/android/launcher3/responsive/SizeSpec;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/launcher3/responsive/HotseatSpec;->edgePadding:Lcom/android/launcher3/responsive/SizeSpec;

    return-object v0
.end method

.method public final getHotseatQsbSpace()Lcom/android/launcher3/responsive/SizeSpec;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/launcher3/responsive/HotseatSpec;->hotseatQsbSpace:Lcom/android/launcher3/responsive/SizeSpec;

    return-object v0
.end method

.method public getMaxAvailableSize()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/android/launcher3/responsive/HotseatSpec;->maxAvailableSize:I

    return v0
.end method

.method public getSpecType()Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/launcher3/responsive/HotseatSpec;->specType:Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/launcher3/responsive/HotseatSpec;->maxAvailableSize:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/launcher3/responsive/HotseatSpec;->dimensionType:Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;

    invoke-virtual {v2}, Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/android/launcher3/responsive/HotseatSpec;->specType:Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;

    invoke-virtual {v2}, Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/launcher3/responsive/HotseatSpec;->hotseatQsbSpace:Lcom/android/launcher3/responsive/SizeSpec;

    invoke-virtual {v2}, Lcom/android/launcher3/responsive/SizeSpec;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/android/launcher3/responsive/HotseatSpec;->edgePadding:Lcom/android/launcher3/responsive/SizeSpec;

    invoke-virtual {v2}, Lcom/android/launcher3/responsive/SizeSpec;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public final isValid()Z
    .locals 4

    .line 108
    invoke-virtual {p0}, Lcom/android/launcher3/responsive/HotseatSpec;->getMaxAvailableSize()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 109
    const-string v0, "The property maxAvailableSize must be higher than 0."

    invoke-direct {p0, v0}, Lcom/android/launcher3/responsive/HotseatSpec;->logError(Ljava/lang/String;)V

    .line 110
    return v1

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/responsive/HotseatSpec;->allSpecsAreValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    const-string v0, "One or more specs are invalid!"

    invoke-direct {p0, v0}, Lcom/android/launcher3/responsive/HotseatSpec;->logError(Ljava/lang/String;)V

    .line 116
    return v1

    .line 119
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/responsive/HotseatSpec;->isValidFixedSize()Z

    move-result v0

    if-nez v0, :cond_2

    .line 120
    invoke-virtual {p0}, Lcom/android/launcher3/responsive/HotseatSpec;->getMaxAvailableSize()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The total Fixed Size used must be lower or equal to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/responsive/HotseatSpec;->logError(Ljava/lang/String;)V

    .line 121
    return v1

    .line 124
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/android/launcher3/responsive/HotseatSpec;->maxAvailableSize:I

    iget-object v1, p0, Lcom/android/launcher3/responsive/HotseatSpec;->dimensionType:Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;

    iget-object v2, p0, Lcom/android/launcher3/responsive/HotseatSpec;->specType:Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;

    iget-object v3, p0, Lcom/android/launcher3/responsive/HotseatSpec;->hotseatQsbSpace:Lcom/android/launcher3/responsive/SizeSpec;

    iget-object v4, p0, Lcom/android/launcher3/responsive/HotseatSpec;->edgePadding:Lcom/android/launcher3/responsive/SizeSpec;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HotseatSpec(maxAvailableSize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", dimensionType="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", specType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hotseatQsbSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", edgePadding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
