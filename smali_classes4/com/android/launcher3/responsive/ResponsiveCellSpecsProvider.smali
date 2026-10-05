.class public final Lcom/android/launcher3/responsive/ResponsiveCellSpecsProvider;
.super Ljava/lang/Object;
.source "ResponsiveCellSpecsProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/responsive/ResponsiveCellSpecsProvider$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nResponsiveCellSpecsProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResponsiveCellSpecsProvider.kt\ncom/android/launcher3/responsive/ResponsiveCellSpecsProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,201:1\n2634#2:202\n1045#2:204\n288#2,2:206\n1#3:203\n1#3:205\n*S KotlinDebug\n*F\n+ 1 ResponsiveCellSpecsProvider.kt\ncom/android/launcher3/responsive/ResponsiveCellSpecsProvider\n*L\n32#1:202\n39#1:204\n45#1:206,2\n32#1:203\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u0003\u00a2\u0006\u0002\u0010\u0006J\u0016\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\u001e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0008J\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\t\u001a\u00020\nR\u001a\u0010\u0002\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/android/launcher3/responsive/ResponsiveCellSpecsProvider;",
        "",
        "groupOfSpecs",
        "",
        "Lcom/android/launcher3/responsive/ResponsiveSpecGroup;",
        "Lcom/android/launcher3/responsive/CellSpec;",
        "(Ljava/util/List;)V",
        "getCalculatedSpec",
        "Lcom/android/launcher3/responsive/CalculatedCellSpec;",
        "aspectRatio",
        "",
        "availableHeightSpace",
        "",
        "workspaceCellSpec",
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
.field public static final Companion:Lcom/android/launcher3/responsive/ResponsiveCellSpecsProvider$Companion;


# instance fields
.field private final groupOfSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/responsive/ResponsiveSpecGroup<",
            "Lcom/android/launcher3/responsive/CellSpec;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/responsive/ResponsiveCellSpecsProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/responsive/ResponsiveCellSpecsProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/responsive/ResponsiveCellSpecsProvider;->Companion:Lcom/android/launcher3/responsive/ResponsiveCellSpecsProvider$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 12
    .param p1, "groupOfSpecs"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/responsive/ResponsiveSpecGroup<",
            "Lcom/android/launcher3/responsive/CellSpec;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "groupOfSpecs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    nop

    .line 30
    nop

    .line 31
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .line 32
    nop

    .local v0, "$this$onEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 202
    .local v1, "$i$f$onEach":I
    move-object v2, v0

    .line 203
    .local v2, "$this$onEach_u24lambda_u2416$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 202
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

    .line 33
    .local v7, "$i$a$-onEach-ResponsiveCellSpecsProvider$1":I
    invoke-virtual {v6}, Lcom/android/launcher3/responsive/ResponsiveSpecGroup;->getWidthSpecs()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v6}, Lcom/android/launcher3/responsive/ResponsiveSpecGroup;->getHeightSpecs()Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    const/4 v9, 0x1

    xor-int/2addr v8, v9

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_1

    .line 38
    nop

    .line 202
    .end local v6    # "group":Lcom/android/launcher3/responsive/ResponsiveSpecGroup;
    .end local v7    # "$i$a$-onEach-ResponsiveCellSpecsProvider$1":I
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 33
    .restart local v5    # "element$iv":Ljava/lang/Object;
    .restart local v6    # "group":Lcom/android/launcher3/responsive/ResponsiveSpecGroup;
    .restart local v7    # "$i$a$-onEach-ResponsiveCellSpecsProvider$1":I
    :cond_1
    const/4 v4, 0x0

    .line 34
    .local v4, "$i$a$-check-ResponsiveCellSpecsProvider$1$1":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-interface {v8}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    .line 35
    invoke-virtual {v6}, Lcom/android/launcher3/responsive/ResponsiveSpecGroup;->getWidthSpecs()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    .line 36
    invoke-virtual {v6}, Lcom/android/launcher3/responsive/ResponsiveSpecGroup;->getHeightSpecs()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " is invalid, only heightSpecs are allowed - width list size = "

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

    .line 34
    nop

    .line 33
    .end local v4    # "$i$a$-check-ResponsiveCellSpecsProvider$1$1":I
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 39
    .end local v0    # "$this$onEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$onEach":I
    .end local v2    # "$this$onEach_u24lambda_u2416$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$a$-apply-CollectionsKt___CollectionsKt$onEach$1$iv":I
    .end local v5    # "element$iv":Ljava/lang/Object;
    .end local v6    # "group":Lcom/android/launcher3/responsive/ResponsiveSpecGroup;
    .end local v7    # "$i$a$-onEach-ResponsiveCellSpecsProvider$1":I
    :cond_2
    nop

    .local v0, "$this$sortedBy$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 204
    .local v1, "$i$f$sortedBy":I
    new-instance v2, Lcom/android/launcher3/responsive/ResponsiveCellSpecsProvider$special$$inlined$sortedBy$1;

    invoke-direct {v2}, Lcom/android/launcher3/responsive/ResponsiveCellSpecsProvider$special$$inlined$sortedBy$1;-><init>()V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 30
    .end local v0    # "$this$sortedBy$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$sortedBy":I
    iput-object v0, p0, Lcom/android/launcher3/responsive/ResponsiveCellSpecsProvider;->groupOfSpecs:Ljava/util/List;

    .line 40
    nop

    .line 26
    return-void
.end method

.method public static final create(Lcom/android/launcher3/util/ResourceHelper;)Lcom/android/launcher3/responsive/ResponsiveCellSpecsProvider;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/responsive/ResponsiveCellSpecsProvider;->Companion:Lcom/android/launcher3/responsive/ResponsiveCellSpecsProvider$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/responsive/ResponsiveCellSpecsProvider$Companion;->create(Lcom/android/launcher3/util/ResourceHelper;)Lcom/android/launcher3/responsive/ResponsiveCellSpecsProvider;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getCalculatedSpec(FI)Lcom/android/launcher3/responsive/CalculatedCellSpec;
    .locals 3
    .param p1, "aspectRatio"    # F
    .param p2, "availableHeightSpace"    # I

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/launcher3/responsive/ResponsiveCellSpecsProvider;->getSpecsByAspectRatio(F)Lcom/android/launcher3/responsive/ResponsiveSpecGroup;

    move-result-object v0

    .line 53
    .local v0, "specsGroup":Lcom/android/launcher3/responsive/ResponsiveSpecGroup;
    sget-object v1, Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;->HEIGHT:Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;

    invoke-virtual {v0, v1, p2}, Lcom/android/launcher3/responsive/ResponsiveSpecGroup;->getSpec(Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;I)Lcom/android/launcher3/responsive/IResponsiveSpec;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/responsive/CellSpec;

    .line 54
    .local v1, "spec":Lcom/android/launcher3/responsive/CellSpec;
    new-instance v2, Lcom/android/launcher3/responsive/CalculatedCellSpec;

    invoke-direct {v2, p2, v1}, Lcom/android/launcher3/responsive/CalculatedCellSpec;-><init>(ILcom/android/launcher3/responsive/CellSpec;)V

    return-object v2
.end method

.method public final getCalculatedSpec(FILcom/android/launcher3/responsive/CalculatedCellSpec;)Lcom/android/launcher3/responsive/CalculatedCellSpec;
    .locals 3
    .param p1, "aspectRatio"    # F
    .param p2, "availableHeightSpace"    # I
    .param p3, "workspaceCellSpec"    # Lcom/android/launcher3/responsive/CalculatedCellSpec;

    const-string v0, "workspaceCellSpec"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/launcher3/responsive/ResponsiveCellSpecsProvider;->getSpecsByAspectRatio(F)Lcom/android/launcher3/responsive/ResponsiveSpecGroup;

    move-result-object v0

    .line 63
    .local v0, "specsGroup":Lcom/android/launcher3/responsive/ResponsiveSpecGroup;
    sget-object v1, Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;->HEIGHT:Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;

    invoke-virtual {v0, v1, p2}, Lcom/android/launcher3/responsive/ResponsiveSpecGroup;->getSpec(Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;I)Lcom/android/launcher3/responsive/IResponsiveSpec;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/responsive/CellSpec;

    .line 64
    .local v1, "spec":Lcom/android/launcher3/responsive/CellSpec;
    new-instance v2, Lcom/android/launcher3/responsive/CalculatedCellSpec;

    invoke-direct {v2, p2, v1, p3}, Lcom/android/launcher3/responsive/CalculatedCellSpec;-><init>(ILcom/android/launcher3/responsive/CellSpec;Lcom/android/launcher3/responsive/CalculatedCellSpec;)V

    return-object v2
.end method

.method public final getSpecsByAspectRatio(F)Lcom/android/launcher3/responsive/ResponsiveSpecGroup;
    .locals 9
    .param p1, "aspectRatio"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/android/launcher3/responsive/ResponsiveSpecGroup<",
            "Lcom/android/launcher3/responsive/CellSpec;",
            ">;"
        }
    .end annotation

    .line 43
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

    .line 45
    iget-object v0, p0, Lcom/android/launcher3/responsive/ResponsiveCellSpecsProvider;->groupOfSpecs:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 206
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

    .line 45
    .local v7, "$i$a$-firstOrNull-ResponsiveCellSpecsProvider$getSpecsByAspectRatio$specsGroup$1":I
    invoke-virtual {v6}, Lcom/android/launcher3/responsive/ResponsiveSpecGroup;->getAspectRatio()F

    move-result v8

    cmpg-float v8, p1, v8

    if-gtz v8, :cond_2

    move v6, v1

    goto :goto_1

    :cond_2
    move v6, v2

    .line 206
    .end local v6    # "it":Lcom/android/launcher3/responsive/ResponsiveSpecGroup;
    .end local v7    # "$i$a$-firstOrNull-ResponsiveCellSpecsProvider$getSpecsByAspectRatio$specsGroup$1":I
    :goto_1
    if-eqz v6, :cond_1

    goto :goto_2

    .line 207
    .end local v5    # "element$iv":Ljava/lang/Object;
    :cond_3
    const/4 v5, 0x0

    .line 45
    .end local v0    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$firstOrNull":I
    :goto_2
    move-object v0, v5

    check-cast v0, Lcom/android/launcher3/responsive/ResponsiveSpecGroup;

    .line 46
    .local v0, "specsGroup":Lcom/android/launcher3/responsive/ResponsiveSpecGroup;
    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    if-eqz v1, :cond_5

    .line 48
    return-object v0

    .line 205
    :cond_5
    const/4 v1, 0x0

    .line 46
    .local v1, "$i$a$-check-ResponsiveCellSpecsProvider$getSpecsByAspectRatio$2":I
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

    .end local v1    # "$i$a$-check-ResponsiveCellSpecsProvider$getSpecsByAspectRatio$2":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 205
    .end local v0    # "specsGroup":Lcom/android/launcher3/responsive/ResponsiveSpecGroup;
    :cond_6
    const/4 v0, 0x0

    .line 43
    .local v0, "$i$a$-check-ResponsiveCellSpecsProvider$getSpecsByAspectRatio$1":I
    nop

    .end local v0    # "$i$a$-check-ResponsiveCellSpecsProvider$getSpecsByAspectRatio$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid aspect ratio! The value should be bigger than 0."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
