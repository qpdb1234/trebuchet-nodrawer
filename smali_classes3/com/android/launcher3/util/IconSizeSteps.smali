.class public final Lcom/android/launcher3/util/IconSizeSteps;
.super Ljava/lang/Object;
.source "IconSizeSteps.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/IconSizeSteps$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIconSizeSteps.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IconSizeSteps.kt\ncom/android/launcher3/util/IconSizeSteps\n+ 2 TypedArray.kt\nandroidx/core/content/res/TypedArrayKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,58:1\n233#2:59\n234#2,2:64\n1549#3:60\n1620#3,3:61\n533#3,6:66\n350#3,7:72\n*S KotlinDebug\n*F\n+ 1 IconSizeSteps.kt\ncom/android/launcher3/util/IconSizeSteps\n*L\n30#1:59\n30#1:64,2\n31#1:60\n31#1:61,3\n43#1:66,6\n47#1:72,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0008\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u0006J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0006H\u0002J\u000e\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0006J\u0006\u0010\u0010\u001a\u00020\u0006R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/android/launcher3/util/IconSizeSteps;",
        "",
        "res",
        "Landroid/content/res/Resources;",
        "(Landroid/content/res/Resources;)V",
        "minimumIconLabelSize",
        "",
        "getMinimumIconLabelSize",
        "()I",
        "steps",
        "",
        "getIconSmallerThan",
        "cellSize",
        "getIndexForIconSize",
        "iconSizePx",
        "getNextLowerIconSize",
        "minimumIconSize",
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
.field public static final Companion:Lcom/android/launcher3/util/IconSizeSteps$Companion;

.field public static final ICON_SIZE_STEP_EXTRA:I = 0x2

.field public static final TEXT_STEP:I = 0x1


# instance fields
.field private final minimumIconLabelSize:I

.field private final steps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/IconSizeSteps$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/IconSizeSteps$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/util/IconSizeSteps;->Companion:Lcom/android/launcher3/util/IconSizeSteps$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 14
    .param p1, "res"    # Landroid/content/res/Resources;

    const-string v0, "res"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    nop

    .line 29
    nop

    .line 30
    sget v0, Lcom/android/launcher3/R$array;->icon_size_steps:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v1, "obtainTypedArray(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .local v0, "$this$use$iv":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 59
    .local v1, "$i$f$use":I
    move-object v2, v0

    .local v2, "it":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    .line 31
    .local v3, "$i$a$-use-IconSizeSteps$1":I
    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 60
    .local v5, "$i$f$map":I
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v4, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination$iv$iv":Ljava/util/Collection;
    move-object v7, v4

    .local v7, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 61
    .local v8, "$i$f$mapTo":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v10, v9

    check-cast v10, Lkotlin/collections/IntIterator;

    invoke-virtual {v10}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v10

    .line 62
    .local v10, "item$iv$iv":I
    move v11, v10

    .local v11, "step":I
    const/4 v12, 0x0

    .line 31
    .local v12, "$i$a$-map-IconSizeSteps$1$1":I
    invoke-static {v2, v11}, Landroidx/core/content/res/TypedArrayKt;->getDimensionOrThrow(Landroid/content/res/TypedArray;I)F

    move-result v13

    float-to-int v11, v13

    .end local v11    # "step":I
    .end local v12    # "$i$a$-map-IconSizeSteps$1$1":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 62
    invoke-interface {v6, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    .end local v10    # "item$iv$iv":I
    :cond_0
    nop

    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$mapTo":I
    check-cast v6, Ljava/util/List;

    .line 60
    nop

    .end local v4    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$map":I
    check-cast v6, Ljava/lang/Iterable;

    .line 31
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 59
    .end local v2    # "it":Landroid/content/res/TypedArray;
    .end local v3    # "$i$a$-use-IconSizeSteps$1":I
    move-object v3, v2

    .local v3, "it$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 64
    .local v4, "$i$a$-also-TypedArrayKt$use$1$iv":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    nop

    .line 59
    .end local v3    # "it$iv":Ljava/lang/Object;
    .end local v4    # "$i$a$-also-TypedArrayKt$use$1$iv":I
    nop

    .line 29
    .end local v0    # "$this$use$iv":Landroid/content/res/TypedArray;
    .end local v1    # "$i$f$use":I
    iput-object v2, p0, Lcom/android/launcher3/util/IconSizeSteps;->steps:Ljava/util/List;

    .line 33
    sget v0, Lcom/android/launcher3/R$dimen;->minimum_icon_label_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/util/IconSizeSteps;->minimumIconLabelSize:I

    .line 34
    nop

    .line 24
    return-void
.end method

.method private final getIndexForIconSize(I)I
    .locals 9
    .param p1, "iconSizePx"    # I

    .line 47
    iget-object v0, p0, Lcom/android/launcher3/util/IconSizeSteps;->steps:Ljava/util/List;

    .local v0, "$this$indexOfFirst$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 72
    .local v1, "$i$f$indexOfFirst":I
    const/4 v2, 0x0

    .line 73
    .local v2, "index$iv":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 74
    .local v4, "item$iv":Ljava/lang/Object;
    move-object v6, v4

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .local v6, "it":I
    const/4 v7, 0x0

    .line 47
    .local v7, "$i$a$-indexOfFirst-IconSizeSteps$getIndexForIconSize$1":I
    if-gt p1, v6, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    move v8, v5

    .line 74
    .end local v6    # "it":I
    .end local v7    # "$i$a$-indexOfFirst-IconSizeSteps$getIndexForIconSize$1":I
    :goto_1
    if-eqz v8, :cond_1

    .line 75
    goto :goto_2

    .line 76
    :cond_1
    nop

    .end local v4    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    :cond_2
    const/4 v3, -0x1

    move v2, v3

    .line 47
    .end local v0    # "$this$indexOfFirst$iv":Ljava/util/List;
    .end local v1    # "$i$f$indexOfFirst":I
    .end local v2    # "index$iv":I
    :goto_2
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final getIconSmallerThan(I)I
    .locals 8
    .param p1, "cellSize"    # I

    .line 43
    iget-object v0, p0, Lcom/android/launcher3/util/IconSizeSteps;->steps:Ljava/util/List;

    .local v0, "$this$lastOrNull$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 66
    .local v1, "$i$f$lastOrNull":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 67
    .local v2, "iterator$iv":Ljava/util/ListIterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 68
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    .line 69
    .local v3, "element$iv":Ljava/lang/Object;
    move-object v5, v3

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .local v5, "it":I
    const/4 v6, 0x0

    .line 43
    .local v6, "$i$a$-lastOrNull-IconSizeSteps$getIconSmallerThan$1":I
    if-gt v5, p1, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    move v7, v4

    .line 69
    .end local v5    # "it":I
    .end local v6    # "$i$a$-lastOrNull-IconSizeSteps$getIconSmallerThan$1":I
    :goto_0
    if-eqz v7, :cond_0

    goto :goto_1

    .line 71
    .end local v3    # "element$iv":Ljava/lang/Object;
    :cond_2
    const/4 v3, 0x0

    .line 43
    .end local v0    # "$this$lastOrNull$iv":Ljava/util/List;
    .end local v1    # "$i$f$lastOrNull":I
    .end local v2    # "iterator$iv":Ljava/util/ListIterator;
    :goto_1
    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/util/IconSizeSteps;->steps:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    :goto_2
    return v0
.end method

.method public final getMinimumIconLabelSize()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/android/launcher3/util/IconSizeSteps;->minimumIconLabelSize:I

    return v0
.end method

.method public final getNextLowerIconSize(I)I
    .locals 3
    .param p1, "iconSizePx"    # I

    .line 39
    iget-object v0, p0, Lcom/android/launcher3/util/IconSizeSteps;->steps:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/IconSizeSteps;->getIndexForIconSize(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final minimumIconSize()I
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/android/launcher3/util/IconSizeSteps;->steps:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method
