.class public final Lcom/android/launcher3/celllayout/ViewCluster;
.super Ljava/lang/Object;
.source "ViewCluster.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/celllayout/ViewCluster$Companion;,
        Lcom/android/launcher3/celllayout/ViewCluster$PositionComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewCluster.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewCluster.kt\ncom/android/launcher3/celllayout/ViewCluster\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,186:1\n1603#2,9:187\n1855#2:196\n1856#2:198\n1612#2:199\n1855#2,2:200\n1603#2,9:202\n1855#2:211\n1856#2:213\n1612#2:214\n1855#2,2:215\n1#3:197\n1#3:212\n*S KotlinDebug\n*F\n+ 1 ViewCluster.kt\ncom/android/launcher3/celllayout/ViewCluster\n*L\n66#1:187,9\n66#1:196\n66#1:198\n66#1:199\n67#1:200,2\n133#1:202,9\n133#1:211\n133#1:213\n133#1:214\n134#1:215,2\n66#1:197\n133#1:212\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0012\u0018\u0000 -2\u00020\u0001:\u0002-.B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\u0008\u0012\u0004\u0012\u00020\u0006`\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u000e\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0006J\u0010\u0010\u001f\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u0018H\u0002J(\u0010!\u001a\u00020\u00102\u0006\u0010\"\u001a\u00020\u00182\u0006\u0010#\u001a\u00020\u00182\u0006\u0010$\u001a\u00020\u000c2\u0006\u0010%\u001a\u00020\u0018H\u0002J\u0006\u0010&\u001a\u00020\u000eJ\u0018\u0010\'\u001a\u00020\u00102\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00062\u0006\u0010(\u001a\u00020\u0018J\u0008\u0010)\u001a\u00020\u001dH\u0002J\u0016\u0010*\u001a\u00020\u001d2\u0006\u0010(\u001a\u00020\u00182\u0006\u0010+\u001a\u00020\u0018J\u000e\u0010,\u001a\u00020\u001d2\u0006\u0010$\u001a\u00020\u0018R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0015\u0010\u0011\u001a\u00060\u0012R\u00020\u0000\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\u0008\u0012\u0004\u0012\u00020\u0006`\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "Lcom/android/launcher3/celllayout/ViewCluster;",
        "",
        "mCellLayout",
        "Lcom/android/launcher3/CellLayout;",
        "views",
        "Ljava/util/ArrayList;",
        "Landroid/view/View;",
        "Lkotlin/collections/ArrayList;",
        "config",
        "Lcom/android/launcher3/celllayout/ItemConfiguration;",
        "(Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher3/celllayout/ItemConfiguration;)V",
        "bottomEdge",
        "",
        "boundingRect",
        "Landroid/graphics/Rect;",
        "boundingRectDirty",
        "",
        "comparator",
        "Lcom/android/launcher3/celllayout/ViewCluster$PositionComparator;",
        "getComparator",
        "()Lcom/android/launcher3/celllayout/ViewCluster$PositionComparator;",
        "getConfig",
        "()Lcom/android/launcher3/celllayout/ItemConfiguration;",
        "dirtyEdges",
        "",
        "leftEdge",
        "rightEdge",
        "topEdge",
        "addView",
        "",
        "v",
        "computeEdge",
        "which",
        "edgeContainsValue",
        "start",
        "end",
        "edge",
        "value",
        "getBoundingRect",
        "isViewTouchingEdge",
        "whichEdge",
        "resetEdges",
        "shift",
        "delta",
        "sortConfigurationForEdgePush",
        "Companion",
        "PositionComparator",
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
.field public static final BOTTOM:I = 0x8

.field public static final Companion:Lcom/android/launcher3/celllayout/ViewCluster$Companion;

.field public static final LEFT:I = 0x1

.field public static final RIGHT:I = 0x4

.field public static final TOP:I = 0x2


# instance fields
.field private final bottomEdge:[I

.field private final boundingRect:Landroid/graphics/Rect;

.field private boundingRectDirty:Z

.field private final comparator:Lcom/android/launcher3/celllayout/ViewCluster$PositionComparator;

.field private final config:Lcom/android/launcher3/celllayout/ItemConfiguration;

.field private dirtyEdges:I

.field private final leftEdge:[I

.field private final mCellLayout:Lcom/android/launcher3/CellLayout;

.field private final rightEdge:[I

.field private final topEdge:[I

.field public final views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/celllayout/ViewCluster$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/celllayout/ViewCluster$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/celllayout/ViewCluster;->Companion:Lcom/android/launcher3/celllayout/ViewCluster$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher3/celllayout/ItemConfiguration;)V
    .locals 2
    .param p1, "mCellLayout"    # Lcom/android/launcher3/CellLayout;
    .param p2, "views"    # Ljava/util/ArrayList;
    .param p3, "config"    # Lcom/android/launcher3/celllayout/ItemConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/CellLayout;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Lcom/android/launcher3/celllayout/ItemConfiguration;",
            ")V"
        }
    .end annotation

    const-string v0, "mCellLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "views"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/launcher3/celllayout/ViewCluster;->mCellLayout:Lcom/android/launcher3/CellLayout;

    .line 32
    iput-object p3, p0, Lcom/android/launcher3/celllayout/ViewCluster;->config:Lcom/android/launcher3/celllayout/ItemConfiguration;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    move-object v1, p2

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/launcher3/celllayout/ViewCluster;->views:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/celllayout/ViewCluster;->boundingRect:Landroid/graphics/Rect;

    .line 38
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/celllayout/ViewCluster;->leftEdge:[I

    .line 39
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/celllayout/ViewCluster;->rightEdge:[I

    .line 40
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/celllayout/ViewCluster;->topEdge:[I

    .line 41
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/celllayout/ViewCluster;->bottomEdge:[I

    .line 46
    new-instance v0, Lcom/android/launcher3/celllayout/ViewCluster$PositionComparator;

    invoke-direct {v0, p0}, Lcom/android/launcher3/celllayout/ViewCluster$PositionComparator;-><init>(Lcom/android/launcher3/celllayout/ViewCluster;)V

    iput-object v0, p0, Lcom/android/launcher3/celllayout/ViewCluster;->comparator:Lcom/android/launcher3/celllayout/ViewCluster$PositionComparator;

    .line 48
    nop

    .line 49
    invoke-direct {p0}, Lcom/android/launcher3/celllayout/ViewCluster;->resetEdges()V

    .line 50
    nop

    .line 29
    return-void
.end method

.method private final computeEdge(I)V
    .locals 14
    .param p1, "which"    # I

    .line 65
    iget-object v0, p0, Lcom/android/launcher3/celllayout/ViewCluster;->views:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 66
    nop

    .local v0, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 187
    .local v1, "$i$f$mapNotNull":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 195
    .local v4, "$i$f$mapNotNullTo":I
    move-object v5, v3

    .local v5, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 196
    .local v6, "$i$f$forEach":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "element$iv$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 195
    .local v10, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object v11, v9

    check-cast v11, Landroid/view/View;

    .local v11, "v":Landroid/view/View;
    const/4 v12, 0x0

    .line 66
    .local v12, "$i$a$-mapNotNull-ViewCluster$computeEdge$1":I
    iget-object v13, p0, Lcom/android/launcher3/celllayout/ViewCluster;->config:Lcom/android/launcher3/celllayout/ItemConfiguration;

    iget-object v13, v13, Lcom/android/launcher3/celllayout/ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/util/CellAndSpan;

    .line 195
    .end local v11    # "v":Landroid/view/View;
    .end local v12    # "$i$a$-mapNotNull-ViewCluster$computeEdge$1":I
    if-eqz v13, :cond_0

    move-object v11, v13

    .line 197
    .local v11, "it$iv$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 195
    .local v12, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v2, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 196
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    .end local v11    # "it$iv$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    :cond_0
    nop

    .end local v8    # "element$iv$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 198
    :cond_1
    nop

    .line 199
    .end local v5    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$forEach":I
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapNotNullTo":I
    check-cast v2, Ljava/util/List;

    .line 187
    nop

    .end local v0    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$mapNotNull":I
    check-cast v2, Ljava/lang/Iterable;

    .line 67
    move-object v0, v2

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 200
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lcom/android/launcher3/util/CellAndSpan;

    .local v4, "cs":Lcom/android/launcher3/util/CellAndSpan;
    const/4 v5, 0x0

    .line 68
    .local v5, "$i$a$-forEach-ViewCluster$computeEdge$2":I
    iget v6, v4, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    .line 69
    .local v6, "left":I
    iget v7, v4, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v8, v4, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v7, v8

    .line 70
    .local v7, "right":I
    iget v8, v4, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    .line 71
    .local v8, "top":I
    iget v9, v4, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v10, v4, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v9, v10

    .line 72
    .local v9, "bottom":I
    sparse-switch p1, :sswitch_data_0

    goto :goto_6

    .line 92
    :sswitch_0
    move v10, v6

    .local v10, "j":I
    :goto_2
    if-ge v10, v7, :cond_8

    .line 93
    iget-object v11, p0, Lcom/android/launcher3/celllayout/ViewCluster;->bottomEdge:[I

    aget v12, v11, v10

    if-le v9, v12, :cond_2

    .line 94
    aput v9, v11, v10

    .line 92
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 80
    .end local v10    # "j":I
    :sswitch_1
    move v10, v8

    .restart local v10    # "j":I
    :goto_3
    if-ge v10, v9, :cond_8

    .line 81
    iget-object v11, p0, Lcom/android/launcher3/celllayout/ViewCluster;->rightEdge:[I

    aget v12, v11, v10

    if-le v7, v12, :cond_3

    .line 82
    aput v7, v11, v10

    .line 80
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 86
    .end local v10    # "j":I
    :sswitch_2
    move v10, v6

    .restart local v10    # "j":I
    :goto_4
    if-ge v10, v7, :cond_8

    .line 87
    iget-object v11, p0, Lcom/android/launcher3/celllayout/ViewCluster;->topEdge:[I

    aget v12, v11, v10

    if-lt v8, v12, :cond_4

    if-gez v12, :cond_5

    .line 88
    :cond_4
    aput v8, v11, v10

    .line 86
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 74
    .end local v10    # "j":I
    :sswitch_3
    move v10, v8

    .restart local v10    # "j":I
    :goto_5
    if-ge v10, v9, :cond_8

    .line 75
    iget-object v11, p0, Lcom/android/launcher3/celllayout/ViewCluster;->leftEdge:[I

    aget v12, v11, v10

    if-lt v6, v12, :cond_6

    if-gez v12, :cond_7

    .line 76
    :cond_6
    aput v6, v11, v10

    .line 74
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 98
    .end local v10    # "j":I
    :cond_8
    :goto_6
    nop

    .line 200
    .end local v4    # "cs":Lcom/android/launcher3/util/CellAndSpan;
    .end local v5    # "$i$a$-forEach-ViewCluster$computeEdge$2":I
    .end local v6    # "left":I
    .end local v7    # "right":I
    .end local v8    # "top":I
    .end local v9    # "bottom":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 201
    :cond_9
    nop

    .line 98
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private final edgeContainsValue(II[II)Z
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "edge"    # [I
    .param p4, "value"    # I

    .line 123
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 124
    aget v1, p3, v0

    if-ne v1, p4, :cond_0

    .line 125
    const/4 v1, 0x1

    return v1

    .line 123
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final resetEdges()V
    .locals 4

    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/launcher3/celllayout/ViewCluster;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v1

    :goto_0
    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    .line 53
    iget-object v3, p0, Lcom/android/launcher3/celllayout/ViewCluster;->topEdge:[I

    aput v2, v3, v0

    .line 54
    iget-object v3, p0, Lcom/android/launcher3/celllayout/ViewCluster;->bottomEdge:[I

    aput v2, v3, v0

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    iget-object v1, p0, Lcom/android/launcher3/celllayout/ViewCluster;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_1

    .line 57
    iget-object v3, p0, Lcom/android/launcher3/celllayout/ViewCluster;->leftEdge:[I

    aput v2, v3, v0

    .line 58
    iget-object v3, p0, Lcom/android/launcher3/celllayout/ViewCluster;->rightEdge:[I

    aput v2, v3, v0

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 60
    .end local v0    # "i":I
    :cond_1
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/launcher3/celllayout/ViewCluster;->dirtyEdges:I

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/celllayout/ViewCluster;->boundingRectDirty:Z

    .line 62
    return-void
.end method


# virtual methods
.method public final addView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/launcher3/celllayout/ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-direct {p0}, Lcom/android/launcher3/celllayout/ViewCluster;->resetEdges()V

    .line 149
    return-void
.end method

.method public final getBoundingRect()Landroid/graphics/Rect;
    .locals 3

    .line 152
    iget-boolean v0, p0, Lcom/android/launcher3/celllayout/ViewCluster;->boundingRectDirty:Z

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/launcher3/celllayout/ViewCluster;->config:Lcom/android/launcher3/celllayout/ItemConfiguration;

    iget-object v1, p0, Lcom/android/launcher3/celllayout/ViewCluster;->views:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/celllayout/ViewCluster;->boundingRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/celllayout/ItemConfiguration;->getBoundingRectForViews(Ljava/util/ArrayList;Landroid/graphics/Rect;)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/celllayout/ViewCluster;->boundingRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final getComparator()Lcom/android/launcher3/celllayout/ViewCluster$PositionComparator;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/launcher3/celllayout/ViewCluster;->comparator:Lcom/android/launcher3/celllayout/ViewCluster$PositionComparator;

    return-object v0
.end method

.method public final getConfig()Lcom/android/launcher3/celllayout/ItemConfiguration;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/android/launcher3/celllayout/ViewCluster;->config:Lcom/android/launcher3/celllayout/ItemConfiguration;

    return-object v0
.end method

.method public final isViewTouchingEdge(Landroid/view/View;I)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "whichEdge"    # I

    .line 101
    iget-object v0, p0, Lcom/android/launcher3/celllayout/ViewCluster;->config:Lcom/android/launcher3/celllayout/ItemConfiguration;

    iget-object v0, v0, Lcom/android/launcher3/celllayout/ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/CellAndSpan;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 102
    .local v0, "cs":Lcom/android/launcher3/util/CellAndSpan;
    :cond_0
    iget v2, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    .line 103
    .local v2, "left":I
    iget v3, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v4, v0, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v3, v4

    .line 104
    .local v3, "right":I
    iget v4, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    .line 105
    .local v4, "top":I
    iget v5, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v6, v0, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v5, v6

    .line 106
    .local v5, "bottom":I
    iget v6, p0, Lcom/android/launcher3/celllayout/ViewCluster;->dirtyEdges:I

    and-int/2addr v6, p2

    if-ne v6, p2, :cond_1

    .line 107
    invoke-direct {p0, p2}, Lcom/android/launcher3/celllayout/ViewCluster;->computeEdge(I)V

    .line 108
    iget v6, p0, Lcom/android/launcher3/celllayout/ViewCluster;->dirtyEdges:I

    not-int v7, p2

    and-int/2addr v6, v7

    iput v6, p0, Lcom/android/launcher3/celllayout/ViewCluster;->dirtyEdges:I

    .line 110
    :cond_1
    sparse-switch p2, :sswitch_data_0

    .line 118
    goto :goto_0

    .line 117
    :sswitch_0
    iget-object v1, p0, Lcom/android/launcher3/celllayout/ViewCluster;->bottomEdge:[I

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/launcher3/celllayout/ViewCluster;->edgeContainsValue(II[II)Z

    move-result v1

    goto :goto_0

    .line 115
    :sswitch_1
    iget-object v1, p0, Lcom/android/launcher3/celllayout/ViewCluster;->rightEdge:[I

    invoke-direct {p0, v4, v5, v1, v2}, Lcom/android/launcher3/celllayout/ViewCluster;->edgeContainsValue(II[II)Z

    move-result v1

    goto :goto_0

    .line 116
    :sswitch_2
    iget-object v1, p0, Lcom/android/launcher3/celllayout/ViewCluster;->topEdge:[I

    invoke-direct {p0, v2, v3, v1, v5}, Lcom/android/launcher3/celllayout/ViewCluster;->edgeContainsValue(II[II)Z

    move-result v1

    goto :goto_0

    .line 114
    :sswitch_3
    iget-object v1, p0, Lcom/android/launcher3/celllayout/ViewCluster;->leftEdge:[I

    invoke-direct {p0, v4, v5, v1, v3}, Lcom/android/launcher3/celllayout/ViewCluster;->edgeContainsValue(II[II)Z

    move-result v1

    .line 110
    :goto_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public final shift(II)V
    .locals 15
    .param p1, "whichEdge"    # I
    .param p2, "delta"    # I

    .line 132
    move-object v0, p0

    iget-object v1, v0, Lcom/android/launcher3/celllayout/ViewCluster;->views:Ljava/util/ArrayList;

    check-cast v1, Ljava/lang/Iterable;

    .line 133
    nop

    .local v1, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 202
    .local v2, "$i$f$mapNotNull":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 210
    .local v5, "$i$f$mapNotNullTo":I
    move-object v6, v4

    .local v6, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 211
    .local v7, "$i$f$forEach":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "element$iv$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 210
    .local v11, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object v12, v10

    check-cast v12, Landroid/view/View;

    .local v12, "v":Landroid/view/View;
    const/4 v13, 0x0

    .line 133
    .local v13, "$i$a$-mapNotNull-ViewCluster$shift$1":I
    iget-object v14, v0, Lcom/android/launcher3/celllayout/ViewCluster;->config:Lcom/android/launcher3/celllayout/ItemConfiguration;

    iget-object v14, v14, Lcom/android/launcher3/celllayout/ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/util/CellAndSpan;

    .line 210
    .end local v12    # "v":Landroid/view/View;
    .end local v13    # "$i$a$-mapNotNull-ViewCluster$shift$1":I
    if-eqz v14, :cond_0

    move-object v12, v14

    .line 212
    .local v12, "it$iv$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 210
    .local v13, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v3, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 211
    .end local v10    # "element$iv$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    .end local v12    # "it$iv$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    :cond_0
    nop

    .end local v9    # "element$iv$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 213
    :cond_1
    nop

    .line 214
    .end local v6    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$forEach":I
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapNotNullTo":I
    check-cast v3, Ljava/util/List;

    .line 202
    nop

    .end local v1    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$mapNotNull":I
    check-cast v3, Ljava/lang/Iterable;

    .line 134
    move-object v1, v3

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 215
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lcom/android/launcher3/util/CellAndSpan;

    .local v5, "c":Lcom/android/launcher3/util/CellAndSpan;
    const/4 v6, 0x0

    .line 135
    .local v6, "$i$a$-forEach-ViewCluster$shift$2":I
    sparse-switch p1, :sswitch_data_0

    .line 140
    iget v7, v5, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    add-int v7, v7, p2

    iput v7, v5, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    goto :goto_2

    .line 139
    :sswitch_0
    iget v7, v5, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    add-int v7, v7, p2

    iput v7, v5, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    goto :goto_2

    .line 137
    :sswitch_1
    iget v7, v5, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    add-int v7, v7, p2

    iput v7, v5, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    goto :goto_2

    .line 138
    :sswitch_2
    iget v7, v5, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    sub-int v7, v7, p2

    iput v7, v5, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    goto :goto_2

    .line 136
    :sswitch_3
    iget v7, v5, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    sub-int v7, v7, p2

    iput v7, v5, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    .line 142
    :goto_2
    nop

    .line 215
    .end local v5    # "c":Lcom/android/launcher3/util/CellAndSpan;
    .end local v6    # "$i$a$-forEach-ViewCluster$shift$2":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 216
    :cond_2
    nop

    .line 143
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    invoke-direct {p0}, Lcom/android/launcher3/celllayout/ViewCluster;->resetEdges()V

    .line 144
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public final sortConfigurationForEdgePush(I)V
    .locals 2
    .param p1, "edge"    # I

    .line 175
    iget-object v0, p0, Lcom/android/launcher3/celllayout/ViewCluster;->comparator:Lcom/android/launcher3/celllayout/ViewCluster$PositionComparator;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/celllayout/ViewCluster$PositionComparator;->setWhichEdge(I)V

    .line 176
    iget-object v0, p0, Lcom/android/launcher3/celllayout/ViewCluster;->config:Lcom/android/launcher3/celllayout/ItemConfiguration;

    iget-object v0, v0, Lcom/android/launcher3/celllayout/ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/android/launcher3/celllayout/ViewCluster;->comparator:Lcom/android/launcher3/celllayout/ViewCluster$PositionComparator;

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 177
    return-void
.end method
