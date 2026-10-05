.class public final Lcom/android/launcher3/celllayout/ItemConfiguration;
.super Lcom/android/launcher3/util/CellAndSpan;
.source "ItemConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nItemConfiguration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ItemConfiguration.kt\ncom/android/launcher3/celllayout/ItemConfiguration\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,62:1\n215#2,2:63\n215#2,2:65\n1603#3,9:67\n1855#3:76\n1856#3:78\n1612#3:79\n1864#3,3:80\n1#4:77\n*S KotlinDebug\n*F\n+ 1 ItemConfiguration.kt\ncom/android/launcher3/celllayout/ItemConfiguration\n*L\n35#1:63,2\n40#1:65,2\n55#1:67,9\n55#1:76\n55#1:78\n55#1:79\n56#1:80,3\n55#1:77\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0001J\u0006\u0010\u0011\u001a\u00020\u0012J&\u0010\u0013\u001a\u00020\u000e2\u0016\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u00062\u0006\u0010\u0015\u001a\u00020\u0016J\u0006\u0010\u0017\u001a\u00020\u000eJ\u0006\u0010\u0018\u001a\u00020\u000eR\"\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/android/launcher3/celllayout/ItemConfiguration;",
        "Lcom/android/launcher3/util/CellAndSpan;",
        "()V",
        "intersectingViews",
        "Ljava/util/ArrayList;",
        "Landroid/view/View;",
        "Lkotlin/collections/ArrayList;",
        "isSolution",
        "",
        "map",
        "Landroid/util/ArrayMap;",
        "savedMap",
        "sortedViews",
        "add",
        "",
        "v",
        "cs",
        "area",
        "",
        "getBoundingRectForViews",
        "views",
        "outRect",
        "Landroid/graphics/Rect;",
        "restore",
        "save",
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
.field public intersectingViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public isSolution:Z

.field public final map:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Lcom/android/launcher3/util/CellAndSpan;",
            ">;"
        }
    .end annotation
.end field

.field private final savedMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Lcom/android/launcher3/util/CellAndSpan;",
            ">;"
        }
    .end annotation
.end field

.field public final sortedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/android/launcher3/util/CellAndSpan;-><init>()V

    .line 25
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/celllayout/ItemConfiguration;->map:Landroid/util/ArrayMap;

    .line 26
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/celllayout/ItemConfiguration;->savedMap:Landroid/util/ArrayMap;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/celllayout/ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/celllayout/ItemConfiguration;->intersectingViews:Ljava/util/ArrayList;

    .line 24
    return-void
.end method


# virtual methods
.method public final add(Landroid/view/View;Lcom/android/launcher3/util/CellAndSpan;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "cs"    # Lcom/android/launcher3/util/CellAndSpan;

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/android/launcher3/celllayout/ItemConfiguration;->map:Landroid/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/android/launcher3/celllayout/ItemConfiguration;->savedMap:Landroid/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    new-instance v1, Lcom/android/launcher3/util/CellAndSpan;

    invoke-direct {v1}, Lcom/android/launcher3/util/CellAndSpan;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/android/launcher3/celllayout/ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method public final area()I
    .locals 2

    .line 50
    iget v0, p0, Lcom/android/launcher3/celllayout/ItemConfiguration;->spanX:I

    iget v1, p0, Lcom/android/launcher3/celllayout/ItemConfiguration;->spanY:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public final getBoundingRectForViews(Ljava/util/ArrayList;Landroid/graphics/Rect;)V
    .locals 16
    .param p1, "views"    # Ljava/util/ArrayList;
    .param p2, "outRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "views"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "outRect"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    .line 55
    nop

    .local v2, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 67
    .local v3, "$i$f$mapNotNull":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 75
    .local v6, "$i$f$mapNotNullTo":I
    move-object v7, v5

    .local v7, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 76
    .local v8, "$i$f$forEach":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "element$iv$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 75
    .local v12, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object v13, v11

    check-cast v13, Landroid/view/View;

    .local v13, "v":Landroid/view/View;
    const/4 v14, 0x0

    .line 55
    .local v14, "$i$a$-mapNotNull-ItemConfiguration$getBoundingRectForViews$1":I
    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/android/launcher3/celllayout/ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/CellAndSpan;

    .line 75
    .end local v13    # "v":Landroid/view/View;
    .end local v14    # "$i$a$-mapNotNull-ItemConfiguration$getBoundingRectForViews$1":I
    if-eqz v0, :cond_0

    .line 77
    .local v0, "it$iv$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 75
    .local v13, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 76
    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .end local v11    # "element$iv$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    .end local v13    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    :cond_0
    move-object/from16 v0, p1

    .end local v10    # "element$iv$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 78
    :cond_1
    move-object/from16 v15, p0

    .line 79
    .end local v7    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$forEach":I
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapNotNullTo":I
    move-object v0, v4

    check-cast v0, Ljava/util/List;

    .line 67
    nop

    .end local v2    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$mapNotNull":I
    check-cast v0, Ljava/lang/Iterable;

    .line 56
    nop

    .local v0, "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 80
    .local v2, "$i$f$forEachIndexed":I
    const/4 v3, 0x0

    .line 81
    .local v3, "index$iv":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "item$iv":Ljava/lang/Object;
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "index$iv":I
    .local v6, "index$iv":I
    if-gez v3, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_2
    move-object v7, v5

    check-cast v7, Lcom/android/launcher3/util/CellAndSpan;

    .local v3, "i":I
    .local v7, "c":Lcom/android/launcher3/util/CellAndSpan;
    const/4 v8, 0x0

    .line 57
    .local v8, "$i$a$-forEachIndexed-ItemConfiguration$getBoundingRectForViews$2":I
    if-nez v3, :cond_3

    iget v9, v7, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v10, v7, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v11, v7, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v12, v7, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v11, v12

    iget v12, v7, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v13, v7, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v12, v13

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    .line 58
    :cond_3
    iget v9, v7, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v10, v7, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v11, v7, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v12, v7, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v11, v12

    iget v12, v7, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v13, v7, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v12, v13

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/graphics/Rect;->union(IIII)V

    .line 59
    :goto_2
    nop

    .line 81
    .end local v3    # "i":I
    .end local v7    # "c":Lcom/android/launcher3/util/CellAndSpan;
    .end local v8    # "$i$a$-forEachIndexed-ItemConfiguration$getBoundingRectForViews$2":I
    move v3, v6

    .end local v5    # "item$iv":Ljava/lang/Object;
    goto :goto_1

    .line 82
    .end local v6    # "index$iv":I
    .local v3, "index$iv":I
    :cond_4
    nop

    .line 60
    .end local v0    # "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEachIndexed":I
    .end local v3    # "index$iv":I
    return-void
.end method

.method public final restore()V
    .locals 8

    .line 40
    iget-object v0, p0, Lcom/android/launcher3/celllayout/ItemConfiguration;->savedMap:Landroid/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    .local v0, "$this$forEach$iv":Ljava/util/Map;
    const/4 v1, 0x0

    .line 65
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .local v3, "element$iv":Ljava/util/Map$Entry;
    const/4 v4, 0x0

    .line 40
    .local v4, "$i$a$-forEach-ItemConfiguration$restore$1":I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .local v5, "k":Landroid/view/View;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/util/CellAndSpan;

    .local v6, "v":Lcom/android/launcher3/util/CellAndSpan;
    iget-object v7, p0, Lcom/android/launcher3/celllayout/ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/util/CellAndSpan;

    if-eqz v7, :cond_0

    invoke-virtual {v7, v6}, Lcom/android/launcher3/util/CellAndSpan;->copyFrom(Lcom/android/launcher3/util/CellAndSpan;)V

    .line 65
    .end local v4    # "$i$a$-forEach-ItemConfiguration$restore$1":I
    .end local v5    # "k":Landroid/view/View;
    .end local v6    # "v":Lcom/android/launcher3/util/CellAndSpan;
    :cond_0
    nop

    .end local v3    # "element$iv":Ljava/util/Map$Entry;
    goto :goto_0

    .line 66
    :cond_1
    nop

    .line 41
    .end local v0    # "$this$forEach$iv":Ljava/util/Map;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public final save()V
    .locals 8

    .line 35
    iget-object v0, p0, Lcom/android/launcher3/celllayout/ItemConfiguration;->map:Landroid/util/ArrayMap;

    check-cast v0, Ljava/util/Map;

    .local v0, "$this$forEach$iv":Ljava/util/Map;
    const/4 v1, 0x0

    .line 63
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .local v3, "element$iv":Ljava/util/Map$Entry;
    const/4 v4, 0x0

    .line 35
    .local v4, "$i$a$-forEach-ItemConfiguration$save$1":I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .local v5, "k":Landroid/view/View;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/util/CellAndSpan;

    .local v6, "v":Lcom/android/launcher3/util/CellAndSpan;
    iget-object v7, p0, Lcom/android/launcher3/celllayout/ItemConfiguration;->savedMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/util/CellAndSpan;

    if-eqz v7, :cond_0

    invoke-virtual {v7, v6}, Lcom/android/launcher3/util/CellAndSpan;->copyFrom(Lcom/android/launcher3/util/CellAndSpan;)V

    .line 63
    .end local v4    # "$i$a$-forEach-ItemConfiguration$save$1":I
    .end local v5    # "k":Landroid/view/View;
    .end local v6    # "v":Lcom/android/launcher3/util/CellAndSpan;
    :cond_0
    nop

    .end local v3    # "element$iv":Ljava/util/Map$Entry;
    goto :goto_0

    .line 64
    :cond_1
    nop

    .line 36
    .end local v0    # "$this$forEach$iv":Ljava/util/Map;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method
