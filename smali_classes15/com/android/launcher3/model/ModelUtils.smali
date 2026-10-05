.class public Lcom/android/launcher3/model/ModelUtils;
.super Ljava/lang/Object;
.source "ModelUtils.java"


# direct methods
.method public static synthetic $r8$lambda$mAhh12hDBSVR_m3mqIPeWau-RCM(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filterCurrentWorkspaceItems(Lcom/android/launcher3/util/IntSet;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .param p0, "currentScreenIds"    # Lcom/android/launcher3/util/IntSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">(",
            "Lcom/android/launcher3/util/IntSet;",
            "Ljava/util/List<",
            "+TT;>;",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 43
    .local p1, "allWorkspaceItems":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    .local p2, "currentScreenItems":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p3, "otherScreenItems":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Lcom/android/launcher3/model/ModelUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/model/ModelUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 47
    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    .line 48
    .local v0, "itemsOnScreen":Lcom/android/launcher3/util/IntSet;
    new-instance v1, Lcom/android/launcher3/model/ModelUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/launcher3/model/ModelUtils$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 50
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    .line 51
    .local v2, "info":Lcom/android/launcher3/model/data/ItemInfo;, "TT;"
    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v4, -0x64

    if-ne v3, v4, :cond_1

    .line 52
    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/IntSet;->add(I)V

    goto :goto_1

    .line 56
    :cond_0
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 58
    :cond_1
    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v4, -0x65

    if-ne v3, v4, :cond_2

    .line 59
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/IntSet;->add(I)V

    goto :goto_1

    .line 62
    :cond_2
    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 63
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/IntSet;->add(I)V

    goto :goto_1

    .line 66
    :cond_3
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    .end local v2    # "info":Lcom/android/launcher3/model/data/ItemInfo;, "TT;"
    :goto_1
    goto :goto_0

    .line 70
    :cond_4
    return-void
.end method

.method public static getMissingHotseatRanks(Ljava/util/List;I)Lcom/android/launcher3/util/IntArray;
    .locals 4
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;I)",
            "Lcom/android/launcher3/util/IntArray;"
        }
    .end annotation

    .line 76
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    .line 77
    .local v0, "seen":Lcom/android/launcher3/util/IntSet;
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/model/ModelUtils$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/launcher3/model/ModelUtils$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/model/ModelUtils$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/android/launcher3/model/ModelUtils$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/util/IntSet;)V

    .line 79
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 80
    new-instance v1, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v1, p1}, Lcom/android/launcher3/util/IntArray;-><init>(I)V

    .line 81
    .local v1, "result":Lcom/android/launcher3/util/IntArray;
    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/model/ModelUtils$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0}, Lcom/android/launcher3/model/ModelUtils$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/util/IntSet;)V

    invoke-interface {v2, v3}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/launcher3/model/ModelUtils$$ExternalSyntheticLambda5;

    invoke-direct {v3, v1}, Lcom/android/launcher3/model/ModelUtils$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/util/IntArray;)V

    invoke-interface {v2, v3}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 82
    return-object v1
.end method

.method static synthetic lambda$filterCurrentWorkspaceItems$0(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/ItemInfo;)I
    .locals 2
    .param p0, "lhs"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p1, "rhs"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 49
    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$getMissingHotseatRanks$1(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 2
    .param p0, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 78
    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v1, -0x65

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getMissingHotseatRanks$2(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 1
    .param p0, "seen"    # Lcom/android/launcher3/util/IntSet;
    .param p1, "i"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 79
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/IntSet;->add(I)V

    return-void
.end method

.method static synthetic lambda$getMissingHotseatRanks$3(Lcom/android/launcher3/util/IntSet;I)Z
    .locals 1
    .param p0, "seen"    # Lcom/android/launcher3/util/IntSet;
    .param p1, "i"    # I

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
