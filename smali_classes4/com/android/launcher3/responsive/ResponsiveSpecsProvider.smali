.class public final Lcom/android/launcher3/responsive/ResponsiveSpecsProvider;
.super Ljava/lang/Object;
.source "ResponsiveSpecsProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/responsive/ResponsiveSpecsProvider$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nResponsiveSpecsProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResponsiveSpecsProvider.kt\ncom/android/launcher3/responsive/ResponsiveSpecsProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,138:1\n2634#2:139\n1045#2:141\n288#2,2:143\n1#3:140\n1#3:142\n*S KotlinDebug\n*F\n+ 1 ResponsiveSpecsProvider.kt\ncom/android/launcher3/responsive/ResponsiveSpecsProvider\n*L\n41#1:139\n48#1:141\n54#1:143,2\n41#1:140\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u0005\u00a2\u0006\u0002\u0010\u0008J&\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012J.\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u000cJ\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\r\u001a\u00020\u000eR\u001a\u0010\u0004\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/android/launcher3/responsive/ResponsiveSpecsProvider;",
        "",
        "type",
        "Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;",
        "groupOfSpecs",
        "",
        "Lcom/android/launcher3/responsive/ResponsiveSpecGroup;",
        "Lcom/android/launcher3/responsive/ResponsiveSpec;",
        "(Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;Ljava/util/List;)V",
        "getType",
        "()Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;",
        "getCalculatedSpec",
        "Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;",
        "aspectRatio",
        "",
        "dimensionType",
        "Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;",
        "numCells",
        "",
        "availableSpace",
        "calculatedWorkspaceSpec",
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
.field public static final Companion:Lcom/android/launcher3/responsive/ResponsiveSpecsProvider$Companion;


# instance fields
.field private final groupOfSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/responsive/ResponsiveSpecGroup<",
            "Lcom/android/launcher3/responsive/ResponsiveSpec;",
            ">;>;"
        }
    .end annotation
.end field

.field private final type:Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/responsive/ResponsiveSpecsProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/responsive/ResponsiveSpecsProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/responsive/ResponsiveSpecsProvider;->Companion:Lcom/android/launcher3/responsive/ResponsiveSpecsProvider$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;Ljava/util/List;)V
    .locals 12
    .param p1, "type"    # Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;
    .param p2, "groupOfSpecs"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/responsive/ResponsiveSpecGroup<",
            "Lcom/android/launcher3/responsive/ResponsiveSpec;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupOfSpecs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/launcher3/responsive/ResponsiveSpecsProvider;->type:Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;

    .line 38
    nop

    .line 39
    nop

    .line 40
    move-object v0, p2

    check-cast v0, Ljava/lang/Iterable;

    .line 41
    nop

    .local v0, "$this$onEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 139
    .local v1, "$i$f$onEach":I
    move-object v2, v0

    .line 140
    .local v2, "$this$onEach_u24lambda_u2416$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 139
    .local v3, "$i$a$-apply-CollectionsKt___CollectionsKt$onEach$1$iv":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lcom/android/launcher3/responsive/ResponsiveSpecGroup;

    .local v6, "group":Lcom/android/launcher3/responsive/ResponsiveSpecGroup;
    const/4 v7, 0x0

    .line 42
    .local v7, "$i$a$-onEach-ResponsiveSpecsProvider$1":I
    invoke-virtual {v6}, Lcom/android/launcher3/responsive/ResponsiveSpecGroup;->getWidthSpecs()Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    const/4 v9, 0x1

    xor-int/2addr v8, v9

    if-eqz v8, :cond_0

    invoke-virtual {v6}, Lcom/android/launcher3/responsive/ResponsiveSpecGroup;->getHeightSpecs()Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    xor-int/2addr v8, v9

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_1

    .line 47
    nop

    .line 139
    .end local v6    # "group":Lcom/android/launcher3/responsive/ResponsiveSpecGroup;
    .end local v7    # "$i$a$-onEach-ResponsiveSpecsProvider$1":I
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 42
    .restart local v5    # "element$iv":Ljava/lang/Object;
    .restart local v6    # "group":Lcom/android/launcher3/responsive/ResponsiveSpecGroup;
    .restart local v7    # "$i$a$-onEach-ResponsiveSpecsProvider$1":I
    :cond_1
    const/4 v4, 0x0

    .line 43
    .local v4, "$i$a$-check-ResponsiveSpecsProvider$1$1":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-interface {v8}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    .line 44
    invoke-virtual {v6}, Lcom/android/launcher3/responsive/ResponsiveSpecGroup;->getWidthSpecs()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    .line 45
    invoke-virtual {v6}, Lcom/android/launcher3/responsive/ResponsiveSpecGroup;->getHeightSpecs()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " is incomplete - width list size = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; height list size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 43
    nop

    .line 42
    .end local v4    # "$i$a$-check-ResponsiveSpecsProvider$1$1":I
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 48
    .end local v0    # "$this$onEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$onEach":I
    .end local v2    # "$this$onEach_u24lambda_u2416$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$a$-apply-CollectionsKt___CollectionsKt$onEach$1$iv":I
    .end local v5    # "element$iv":Ljava/lang/Object;
    .end local v6    # "group":Lcom/android/launcher3/responsive/ResponsiveSpecGroup;
    .end local v7    # "$i$a$-onEach-ResponsiveSpecsProvider$1":I
    :cond_2
    nop

    .local v0, "$this$sortedBy$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 141
    .local v1, "$i$f$sortedBy":I
    new-instance v2, Lcom/android/launcher3/responsive/ResponsiveSpecsProvider$special$$inlined$sortedBy$1;

    invoke-direct {v2}, Lcom/android/launcher3/responsive/ResponsiveSpecsProvider$special$$inlined$sortedBy$1;-><init>()V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 39
    .end local v0    # "$this$sortedBy$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$sortedBy":I
    iput-object v0, p0, Lcom/android/launcher3/responsive/ResponsiveSpecsProvider;->groupOfSpecs:Ljava/util/List;

    .line 49
    nop

    .line 32
    return-void
.end method

.method public static final create(Lcom/android/launcher3/util/ResourceHelper;Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;)Lcom/android/launcher3/responsive/ResponsiveSpecsProvider;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/responsive/ResponsiveSpecsProvider;->Companion:Lcom/android/launcher3/responsive/ResponsiveSpecsProvider$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/responsive/ResponsiveSpecsProvider$Companion;->create(Lcom/android/launcher3/util/ResourceHelper;Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;)Lcom/android/launcher3/responsive/ResponsiveSpecsProvider;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getCalculatedSpec(FLcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;II)Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;
    .locals 3
    .param p1, "aspectRatio"    # F
    .param p2, "dimensionType"    # Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;
    .param p3, "numCells"    # I
    .param p4, "availableSpace"    # I

    const-string v0, "dimensionType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/launcher3/responsive/ResponsiveSpecsProvider;->getSpecsByAspectRatio(F)Lcom/android/launcher3/responsive/ResponsiveSpecGroup;

    move-result-object v0

    .line 78
    .local v0, "specsGroup":Lcom/android/launcher3/responsive/ResponsiveSpecGroup;
    invoke-virtual {v0, p2, p4}, Lcom/android/launcher3/responsive/ResponsiveSpecGroup;->getSpec(Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;I)Lcom/android/launcher3/responsive/IResponsiveSpec;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/responsive/ResponsiveSpec;

    .line 79
    .local v1, "spec":Lcom/android/launcher3/responsive/ResponsiveSpec;
    new-instance v2, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    invoke-direct {v2, p1, p4, p3, v1}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;-><init>(FIILcom/android/launcher3/responsive/ResponsiveSpec;)V

    return-object v2
.end method

.method public final getCalculatedSpec(FLcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;IILcom/android/launcher3/responsive/CalculatedResponsiveSpec;)Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;
    .locals 9
    .param p1, "aspectRatio"    # F
    .param p2, "dimensionType"    # Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;
    .param p3, "numCells"    # I
    .param p4, "availableSpace"    # I
    .param p5, "calculatedWorkspaceSpec"    # Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    const-string v0, "dimensionType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "calculatedWorkspaceSpec"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p5}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->getSpec()Lcom/android/launcher3/responsive/ResponsiveSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/responsive/ResponsiveSpec;->getDimensionType()Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;

    move-result-object v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "}"

    const-string v2, " - Found: "

    const-string v3, "Invalid specType for CalculatedWorkspaceSpec. Expected: "

    if-eqz v0, :cond_2

    .line 109
    sget-object v0, Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;->Workspace:Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;

    invoke-virtual {p5, v0}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->isResponsiveSpecType(Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/launcher3/responsive/ResponsiveSpecsProvider;->getSpecsByAspectRatio(F)Lcom/android/launcher3/responsive/ResponsiveSpecGroup;

    move-result-object v0

    .line 116
    .local v0, "specsGroup":Lcom/android/launcher3/responsive/ResponsiveSpecGroup;
    invoke-virtual {v0, p2, p4}, Lcom/android/launcher3/responsive/ResponsiveSpecGroup;->getSpec(Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;I)Lcom/android/launcher3/responsive/IResponsiveSpec;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/responsive/ResponsiveSpec;

    .line 117
    .local v1, "spec":Lcom/android/launcher3/responsive/ResponsiveSpec;
    new-instance v8, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    .line 118
    nop

    .line 119
    nop

    .line 120
    nop

    .line 121
    nop

    .line 122
    nop

    .line 117
    move-object v2, v8

    move v3, p1

    move v4, p4

    move v5, p3

    move-object v6, v1

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;-><init>(FIILcom/android/launcher3/responsive/ResponsiveSpec;Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;)V

    return-object v8

    .line 109
    .end local v0    # "specsGroup":Lcom/android/launcher3/responsive/ResponsiveSpecGroup;
    .end local v1    # "spec":Lcom/android/launcher3/responsive/ResponsiveSpec;
    :cond_1
    const/4 v0, 0x0

    .line 111
    .local v0, "$i$a$-check-ResponsiveSpecsProvider$getCalculatedSpec$2":I
    sget-object v4, Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;->Workspace:Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;

    .line 112
    invoke-virtual {p5}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->getSpec()Lcom/android/launcher3/responsive/ResponsiveSpec;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/responsive/ResponsiveSpec;->getSpecType()Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    nop

    .line 109
    .end local v0    # "$i$a$-check-ResponsiveSpecsProvider$getCalculatedSpec$2":I
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_2
    const/4 v0, 0x0

    .line 105
    .local v0, "$i$a$-check-ResponsiveSpecsProvider$getCalculatedSpec$1":I
    nop

    .line 106
    invoke-virtual {p5}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->getSpec()Lcom/android/launcher3/responsive/ResponsiveSpec;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/responsive/ResponsiveSpec;->getDimensionType()Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    nop

    .line 103
    .end local v0    # "$i$a$-check-ResponsiveSpecsProvider$getCalculatedSpec$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getSpecsByAspectRatio(F)Lcom/android/launcher3/responsive/ResponsiveSpecGroup;
    .locals 9
    .param p1, "aspectRatio"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/android/launcher3/responsive/ResponsiveSpecGroup<",
            "Lcom/android/launcher3/responsive/ResponsiveSpec;",
            ">;"
        }
    .end annotation

    .line 52
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
    if-eqz v0, :cond_5

    .line 54
    iget-object v0, p0, Lcom/android/launcher3/responsive/ResponsiveSpecsProvider;->groupOfSpecs:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 143
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

    .line 54
    .local v7, "$i$a$-firstOrNull-ResponsiveSpecsProvider$getSpecsByAspectRatio$specsGroup$1":I
    invoke-virtual {v6}, Lcom/android/launcher3/responsive/ResponsiveSpecGroup;->getAspectRatio()F

    move-result v8

    cmpg-float v8, p1, v8

    if-gtz v8, :cond_2

    move v6, v1

    goto :goto_1

    :cond_2
    move v6, v2

    .line 143
    .end local v6    # "it":Lcom/android/launcher3/responsive/ResponsiveSpecGroup;
    .end local v7    # "$i$a$-firstOrNull-ResponsiveSpecsProvider$getSpecsByAspectRatio$specsGroup$1":I
    :goto_1
    if-eqz v6, :cond_1

    goto :goto_2

    .line 144
    .end local v5    # "element$iv":Ljava/lang/Object;
    :cond_3
    const/4 v5, 0x0

    .line 54
    .end local v0    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$firstOrNull":I
    :goto_2
    move-object v0, v5

    check-cast v0, Lcom/android/launcher3/responsive/ResponsiveSpecGroup;

    .line 55
    .local v0, "specsGroup":Lcom/android/launcher3/responsive/ResponsiveSpecGroup;
    if-eqz v0, :cond_4

    .line 57
    return-object v0

    .line 142
    :cond_4
    const/4 v1, 0x0

    .line 55
    .local v1, "$i$a$-checkNotNull-ResponsiveSpecsProvider$getSpecsByAspectRatio$2":I
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

    .end local v1    # "$i$a$-checkNotNull-ResponsiveSpecsProvider$getSpecsByAspectRatio$2":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 142
    .end local v0    # "specsGroup":Lcom/android/launcher3/responsive/ResponsiveSpecGroup;
    :cond_5
    const/4 v0, 0x0

    .line 52
    .local v0, "$i$a$-check-ResponsiveSpecsProvider$getSpecsByAspectRatio$1":I
    nop

    .end local v0    # "$i$a$-check-ResponsiveSpecsProvider$getSpecsByAspectRatio$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid aspect ratio! The value should be bigger than 0."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getType()Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/android/launcher3/responsive/ResponsiveSpecsProvider;->type:Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;

    return-object v0
.end method
