.class public final Lcom/android/launcher3/responsive/HotseatSpecsProvider;
.super Ljava/lang/Object;
.source "HotseatSpecsProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/responsive/HotseatSpecsProvider$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHotseatSpecsProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HotseatSpecsProvider.kt\ncom/android/launcher3/responsive/HotseatSpecsProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,183:1\n1045#2:184\n288#2,2:186\n288#2,2:188\n288#2,2:190\n1#3:185\n*S KotlinDebug\n*F\n+ 1 HotseatSpecsProvider.kt\ncom/android/launcher3/responsive/HotseatSpecsProvider\n*L\n31#1:184\n37#1:186,2\n47#1:188,2\n48#1:190,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u0003\u00a2\u0006\u0002\u0010\u0006J\u001e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ \u0010\u000f\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0010\u001a\u00020\u000e2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\t\u001a\u00020\nR\u001a\u0010\u0002\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/android/launcher3/responsive/HotseatSpecsProvider;",
        "",
        "groupOfSpecs",
        "",
        "Lcom/android/launcher3/responsive/ResponsiveSpecGroup;",
        "Lcom/android/launcher3/responsive/HotseatSpec;",
        "(Ljava/util/List;)V",
        "getCalculatedSpec",
        "Lcom/android/launcher3/responsive/CalculatedHotseatSpec;",
        "aspectRatio",
        "",
        "dimensionType",
        "Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;",
        "availableSpace",
        "",
        "getSpecIgnoringDimensionType",
        "availableSize",
        "specsGroup",
        "getSpecsByAspectRatio",
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
.field public static final Companion:Lcom/android/launcher3/responsive/HotseatSpecsProvider$Companion;


# instance fields
.field private final groupOfSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/responsive/ResponsiveSpecGroup<",
            "Lcom/android/launcher3/responsive/HotseatSpec;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/responsive/HotseatSpecsProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/responsive/HotseatSpecsProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/responsive/HotseatSpecsProvider;->Companion:Lcom/android/launcher3/responsive/HotseatSpecsProvider$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .param p1, "groupOfSpecs"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/responsive/ResponsiveSpecGroup<",
            "Lcom/android/launcher3/responsive/HotseatSpec;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "groupOfSpecs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    nop

    .line 31
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$sortedBy$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 184
    .local v1, "$i$f$sortedBy":I
    new-instance v2, Lcom/android/launcher3/responsive/HotseatSpecsProvider$special$$inlined$sortedBy$1;

    invoke-direct {v2}, Lcom/android/launcher3/responsive/HotseatSpecsProvider$special$$inlined$sortedBy$1;-><init>()V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 31
    .end local v0    # "$this$sortedBy$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$sortedBy":I
    iput-object v0, p0, Lcom/android/launcher3/responsive/HotseatSpecsProvider;->groupOfSpecs:Ljava/util/List;

    .line 32
    nop

    .line 26
    return-void
.end method

.method public static final create(Lcom/android/launcher3/util/ResourceHelper;)Lcom/android/launcher3/responsive/HotseatSpecsProvider;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/responsive/HotseatSpecsProvider;->Companion:Lcom/android/launcher3/responsive/HotseatSpecsProvider$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/responsive/HotseatSpecsProvider$Companion;->create(Lcom/android/launcher3/util/ResourceHelper;)Lcom/android/launcher3/responsive/HotseatSpecsProvider;

    move-result-object v0

    return-object v0
.end method

.method private final getSpecIgnoringDimensionType(ILcom/android/launcher3/responsive/ResponsiveSpecGroup;)Lcom/android/launcher3/responsive/HotseatSpec;
    .locals 11
    .param p1, "availableSize"    # I
    .param p2, "specsGroup"    # Lcom/android/launcher3/responsive/ResponsiveSpecGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/launcher3/responsive/ResponsiveSpecGroup<",
            "Lcom/android/launcher3/responsive/HotseatSpec;",
            ">;)",
            "Lcom/android/launcher3/responsive/HotseatSpec;"
        }
    .end annotation

    .line 47
    invoke-virtual {p2}, Lcom/android/launcher3/responsive/ResponsiveSpecGroup;->getWidthSpecs()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 188
    .local v1, "$i$f$firstOrNull":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v7, v3

    check-cast v7, Lcom/android/launcher3/responsive/HotseatSpec;

    .local v7, "it":Lcom/android/launcher3/responsive/HotseatSpec;
    const/4 v8, 0x0

    .line 47
    .local v8, "$i$a$-firstOrNull-HotseatSpecsProvider$getSpecIgnoringDimensionType$specWidth$1":I
    invoke-virtual {v7}, Lcom/android/launcher3/responsive/HotseatSpec;->getMaxAvailableSize()I

    move-result v9

    if-gt p1, v9, :cond_1

    move v7, v4

    goto :goto_0

    :cond_1
    move v7, v5

    .line 188
    .end local v7    # "it":Lcom/android/launcher3/responsive/HotseatSpec;
    .end local v8    # "$i$a$-firstOrNull-HotseatSpecsProvider$getSpecIgnoringDimensionType$specWidth$1":I
    :goto_0
    if-eqz v7, :cond_0

    goto :goto_1

    .line 189
    .end local v3    # "element$iv":Ljava/lang/Object;
    :cond_2
    move-object v3, v6

    .line 47
    .end local v0    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$firstOrNull":I
    :goto_1
    move-object v0, v3

    check-cast v0, Lcom/android/launcher3/responsive/HotseatSpec;

    .line 48
    .local v0, "specWidth":Lcom/android/launcher3/responsive/HotseatSpec;
    invoke-virtual {p2}, Lcom/android/launcher3/responsive/ResponsiveSpecGroup;->getHeightSpecs()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 190
    .local v2, "$i$f$firstOrNull":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lcom/android/launcher3/responsive/HotseatSpec;

    .local v8, "it":Lcom/android/launcher3/responsive/HotseatSpec;
    const/4 v9, 0x0

    .line 48
    .local v9, "$i$a$-firstOrNull-HotseatSpecsProvider$getSpecIgnoringDimensionType$specHeight$1":I
    invoke-virtual {v8}, Lcom/android/launcher3/responsive/HotseatSpec;->getMaxAvailableSize()I

    move-result v10

    if-gt p1, v10, :cond_4

    move v8, v4

    goto :goto_2

    :cond_4
    move v8, v5

    .line 190
    .end local v8    # "it":Lcom/android/launcher3/responsive/HotseatSpec;
    .end local v9    # "$i$a$-firstOrNull-HotseatSpecsProvider$getSpecIgnoringDimensionType$specHeight$1":I
    :goto_2
    if-eqz v8, :cond_3

    move-object v6, v7

    goto :goto_3

    .line 191
    .end local v7    # "element$iv":Ljava/lang/Object;
    :cond_5
    nop

    .line 48
    .end local v1    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$firstOrNull":I
    :goto_3
    move-object v1, v6

    check-cast v1, Lcom/android/launcher3/responsive/HotseatSpec;

    .line 49
    .local v1, "specHeight":Lcom/android/launcher3/responsive/HotseatSpec;
    if-nez v0, :cond_6

    move-object v2, v1

    goto :goto_4

    :cond_6
    move-object v2, v0

    :goto_4
    return-object v2
.end method


# virtual methods
.method public final getCalculatedSpec(FLcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;I)Lcom/android/launcher3/responsive/CalculatedHotseatSpec;
    .locals 5
    .param p1, "aspectRatio"    # F
    .param p2, "dimensionType"    # Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;
    .param p3, "availableSpace"    # I

    const-string v0, "dimensionType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/launcher3/responsive/HotseatSpecsProvider;->getSpecsByAspectRatio(F)Lcom/android/launcher3/responsive/ResponsiveSpecGroup;

    move-result-object v0

    .line 62
    .local v0, "specsGroup":Lcom/android/launcher3/responsive/ResponsiveSpecGroup;
    invoke-direct {p0, p3, v0}, Lcom/android/launcher3/responsive/HotseatSpecsProvider;->getSpecIgnoringDimensionType(ILcom/android/launcher3/responsive/ResponsiveSpecGroup;)Lcom/android/launcher3/responsive/HotseatSpec;

    move-result-object v1

    .line 63
    .local v1, "spec":Lcom/android/launcher3/responsive/HotseatSpec;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 65
    new-instance v2, Lcom/android/launcher3/responsive/CalculatedHotseatSpec;

    invoke-direct {v2, p3, v1}, Lcom/android/launcher3/responsive/CalculatedHotseatSpec;-><init>(ILcom/android/launcher3/responsive/HotseatSpec;)V

    return-object v2

    .line 185
    :cond_1
    const/4 v2, 0x0

    .line 63
    .local v2, "$i$a$-check-HotseatSpecsProvider$getCalculatedSpec$1":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No available spec found within "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "$i$a$-check-HotseatSpecsProvider$getCalculatedSpec$1":I
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final getSpecsByAspectRatio(F)Lcom/android/launcher3/responsive/ResponsiveSpecGroup;
    .locals 9
    .param p1, "aspectRatio"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/android/launcher3/responsive/ResponsiveSpecGroup<",
            "Lcom/android/launcher3/responsive/HotseatSpec;",
            ">;"
        }
    .end annotation

    .line 35
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_6

    .line 37
    iget-object v0, p0, Lcom/android/launcher3/responsive/HotseatSpecsProvider;->groupOfSpecs:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 186
    .local v3, "$i$f$firstOrNull":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lcom/android/launcher3/responsive/ResponsiveSpecGroup;

    .local v6, "it":Lcom/android/launcher3/responsive/ResponsiveSpecGroup;
    const/4 v7, 0x0

    .line 37
    .local v7, "$i$a$-firstOrNull-HotseatSpecsProvider$getSpecsByAspectRatio$specsGroup$1":I
    invoke-virtual {v6}, Lcom/android/launcher3/responsive/ResponsiveSpecGroup;->getAspectRatio()F

    move-result v8

    cmpg-float v8, p1, v8

    if-gtz v8, :cond_2

    move v6, v1

    goto :goto_1

    :cond_2
    move v6, v2

    .line 186
    .end local v6    # "it":Lcom/android/launcher3/responsive/ResponsiveSpecGroup;
    .end local v7    # "$i$a$-firstOrNull-HotseatSpecsProvider$getSpecsByAspectRatio$specsGroup$1":I
    :goto_1
    if-eqz v6, :cond_1

    goto :goto_2

    .line 187
    .end local v5    # "element$iv":Ljava/lang/Object;
    :cond_3
    const/4 v5, 0x0

    .line 37
    .end local v0    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$firstOrNull":I
    :goto_2
    move-object v0, v5

    check-cast v0, Lcom/android/launcher3/responsive/ResponsiveSpecGroup;

    .line 38
    .local v0, "specsGroup":Lcom/android/launcher3/responsive/ResponsiveSpecGroup;
    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    if-eqz v1, :cond_5

    .line 40
    return-object v0

    .line 185
    :cond_5
    const/4 v1, 0x0

    .line 38
    .local v1, "$i$a$-check-HotseatSpecsProvider$getSpecsByAspectRatio$2":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No available spec with aspectRatio within "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-check-HotseatSpecsProvider$getSpecsByAspectRatio$2":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 185
    .end local v0    # "specsGroup":Lcom/android/launcher3/responsive/ResponsiveSpecGroup;
    :cond_6
    const/4 v0, 0x0

    .line 35
    .local v0, "$i$a$-check-HotseatSpecsProvider$getSpecsByAspectRatio$1":I
    nop

    .end local v0    # "$i$a$-check-HotseatSpecsProvider$getSpecsByAspectRatio$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid aspect ratio! The value should be bigger than 0."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
