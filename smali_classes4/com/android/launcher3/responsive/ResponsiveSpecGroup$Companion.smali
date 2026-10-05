.class public final Lcom/android/launcher3/responsive/ResponsiveSpecGroup$Companion;
.super Ljava/lang/Object;
.source "ResponsiveSpecGroup.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/responsive/ResponsiveSpecGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nResponsiveSpecGroup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResponsiveSpecGroup.kt\ncom/android/launcher3/responsive/ResponsiveSpecGroup$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,95:1\n3190#2,10:96\n*S KotlinDebug\n*F\n+ 1 ResponsiveSpecGroup.kt\ncom/android/launcher3/responsive/ResponsiveSpecGroup$Companion\n*L\n89#1:96,10\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J,\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\u0006\"\u0008\u0008\u0001\u0010\u0007*\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\u000cR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/android/launcher3/responsive/ResponsiveSpecGroup$Companion;",
        "",
        "()V",
        "XML_GROUP_NAME",
        "",
        "create",
        "Lcom/android/launcher3/responsive/ResponsiveSpecGroup;",
        "T",
        "Lcom/android/launcher3/responsive/IResponsiveSpec;",
        "attrs",
        "Landroid/content/res/TypedArray;",
        "specs",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/responsive/ResponsiveSpecGroup$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/content/res/TypedArray;Ljava/util/List;)Lcom/android/launcher3/responsive/ResponsiveSpecGroup;
    .locals 10
    .param p1, "attrs"    # Landroid/content/res/TypedArray;
    .param p2, "specs"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/launcher3/responsive/IResponsiveSpec;",
            ">(",
            "Landroid/content/res/TypedArray;",
            "Ljava/util/List<",
            "+TT;>;)",
            "Lcom/android/launcher3/responsive/ResponsiveSpecGroup<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "attrs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "specs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    move-object v0, p2

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$partition$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 96
    .local v1, "$i$f$partition":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v2, "first$iv":Ljava/util/ArrayList;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v3, "second$iv":Ljava/util/ArrayList;
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 99
    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lcom/android/launcher3/responsive/IResponsiveSpec;

    .local v6, "it":Lcom/android/launcher3/responsive/IResponsiveSpec;
    const/4 v7, 0x0

    .line 89
    .local v7, "$i$a$-partition-ResponsiveSpecGroup$Companion$create$1":I
    invoke-interface {v6}, Lcom/android/launcher3/responsive/IResponsiveSpec;->getDimensionType()Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;

    move-result-object v8

    sget-object v9, Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;->WIDTH:Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;

    if-ne v8, v9, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    .line 99
    .end local v6    # "it":Lcom/android/launcher3/responsive/IResponsiveSpec;
    .end local v7    # "$i$a$-partition-ResponsiveSpecGroup$Companion$create$1":I
    :goto_1
    if-eqz v8, :cond_1

    .line 100
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    .end local v5    # "element$iv":Ljava/lang/Object;
    :cond_2
    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    .end local v0    # "$this$partition$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$partition":I
    .end local v2    # "first$iv":Ljava/util/ArrayList;
    .end local v3    # "second$iv":Ljava/util/ArrayList;
    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 88
    nop

    .local v0, "widthSpecs":Ljava/util/List;
    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 90
    .local v1, "heightSpecs":Ljava/util/List;
    sget v2, Lcom/android/launcher3/R$styleable;->ResponsiveSpecGroup_maxAspectRatio:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 91
    .local v2, "aspectRatio":F
    new-instance v3, Lcom/android/launcher3/responsive/ResponsiveSpecGroup;

    invoke-direct {v3, v2, v0, v1}, Lcom/android/launcher3/responsive/ResponsiveSpecGroup;-><init>(FLjava/util/List;Ljava/util/List;)V

    return-object v3
.end method
