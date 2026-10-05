.class public final Lcom/android/launcher3/responsive/ResponsiveSpecsParser;
.super Ljava/lang/Object;
.source "ResponsiveSpecsParser.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001c\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u0006\u0010\t\u001a\u00020\nH\u0002J}\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u000e0\r0\u000c\"\u0008\u0008\u0000\u0010\u000e*\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112W\u0010\u0012\u001aS\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0010\u0012\u0013\u0012\u00110\u0016\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0017\u0012\u001f\u0012\u001d\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0018\u0012\u0004\u0012\u0002H\u000e0\u0013J\u0015\u0010\u0019\u001a\u00020\u001a*\u00020\n2\u0006\u0010\u001b\u001a\u00020\u0007H\u0082\u0004J\u0015\u0010\u001c\u001a\u00020\u001a*\u00020\n2\u0006\u0010\u001b\u001a\u00020\u0007H\u0082\u0004R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/android/launcher3/responsive/ResponsiveSpecsParser;",
        "",
        "resourceHelper",
        "Lcom/android/launcher3/util/ResourceHelper;",
        "(Lcom/android/launcher3/util/ResourceHelper;)V",
        "parseSizeSpecs",
        "",
        "",
        "Lcom/android/launcher3/responsive/SizeSpec;",
        "parser",
        "Landroid/content/res/XmlResourceParser;",
        "parseXML",
        "",
        "Lcom/android/launcher3/responsive/ResponsiveSpecGroup;",
        "T",
        "Lcom/android/launcher3/responsive/IResponsiveSpec;",
        "responsiveSpecType",
        "Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;",
        "map",
        "Lkotlin/Function3;",
        "Lkotlin/ParameterName;",
        "name",
        "Landroid/content/res/TypedArray;",
        "attributes",
        "sizeSpecs",
        "ends",
        "",
        "tag",
        "starts",
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
.field private final resourceHelper:Lcom/android/launcher3/util/ResourceHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/util/ResourceHelper;)V
    .locals 1
    .param p1, "resourceHelper"    # Lcom/android/launcher3/util/ResourceHelper;

    const-string v0, "resourceHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/responsive/ResponsiveSpecsParser;->resourceHelper:Lcom/android/launcher3/util/ResourceHelper;

    return-void
.end method

.method private final ends(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Z
    .locals 2
    .param p1, "$this$ends"    # Landroid/content/res/XmlResourceParser;
    .param p2, "tag"    # Ljava/lang/String;

    .line 124
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final parseSizeSpecs(Landroid/content/res/XmlResourceParser;)Ljava/util/Map;
    .locals 7
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/responsive/SizeSpec;",
            ">;"
        }
    .end annotation

    .line 106
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "parentName":Ljava/lang/String;
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    .line 109
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 110
    .local v1, "result":Ljava/util/Map;
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 111
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 112
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getName(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/android/launcher3/responsive/SizeSpec;->Companion:Lcom/android/launcher3/responsive/SizeSpec$Companion;

    iget-object v4, p0, Lcom/android/launcher3/responsive/ResponsiveSpecsParser;->resourceHelper:Lcom/android/launcher3/util/ResourceHelper;

    move-object v5, p1

    check-cast v5, Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    const-string v6, "asAttributeSet(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/responsive/SizeSpec$Companion;->create(Lcom/android/launcher3/util/ResourceHelper;Landroid/util/AttributeSet;)Lcom/android/launcher3/responsive/SizeSpec;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    goto :goto_0

    .line 117
    :cond_1
    return-object v1
.end method

.method private final starts(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Z
    .locals 2
    .param p1, "$this$starts"    # Landroid/content/res/XmlResourceParser;
    .param p2, "tag"    # Ljava/lang/String;

    .line 121
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final parseXML(Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;Lkotlin/jvm/functions/Function3;)Ljava/util/List;
    .locals 11
    .param p1, "responsiveSpecType"    # Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;
    .param p2, "map"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/launcher3/responsive/IResponsiveSpec;",
            ">(",
            "Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;",
            "-",
            "Landroid/content/res/TypedArray;",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/responsive/SizeSpec;",
            ">;+TT;>;)",
            "Ljava/util/List<",
            "Lcom/android/launcher3/responsive/ResponsiveSpecGroup<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "specs"

    const-string v1, "responsiveSpecType"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "map"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/android/launcher3/responsive/ResponsiveSpecsParser;->resourceHelper:Lcom/android/launcher3/util/ResourceHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/ResourceHelper;->getXml()Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 42
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    nop

    .line 43
    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 44
    .local v3, "groups":Ljava/util/List;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 45
    .local v4, "specs":Ljava/util/List;
    const/4 v5, 0x0

    .line 47
    .local v5, "groupAttrs":Landroid/content/res/TypedArray;
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    .line 48
    .local v6, "eventType":I
    :goto_0
    if-eq v6, v2, :cond_4

    .line 50
    nop

    .line 51
    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/responsive/ResponsiveSpecsParser;->starts(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "asAttributeSet(...)"

    if-eqz v7, :cond_0

    .line 53
    :try_start_1
    iget-object v7, p0, Lcom/android/launcher3/responsive/ResponsiveSpecsParser;->resourceHelper:Lcom/android/launcher3/util/ResourceHelper;

    .line 54
    move-object v9, v1

    check-cast v9, Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object v8, Lcom/android/launcher3/R$styleable;->ResponsiveSpecGroup:[I

    const-string v10, "ResponsiveSpecGroup"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v7, v9, v8}, Lcom/android/launcher3/util/ResourceHelper;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 52
    move-object v5, v7

    goto :goto_1

    .line 58
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/responsive/ResponsiveSpecsParser;->ends(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 59
    if-eqz v5, :cond_1

    .line 60
    move-object v7, v3

    check-cast v7, Ljava/util/Collection;

    sget-object v8, Lcom/android/launcher3/responsive/ResponsiveSpecGroup;->Companion:Lcom/android/launcher3/responsive/ResponsiveSpecGroup$Companion;

    invoke-virtual {v8, v5, v4}, Lcom/android/launcher3/responsive/ResponsiveSpecGroup$Companion;->create(Landroid/content/res/TypedArray;Ljava/util/List;)Lcom/android/launcher3/responsive/ResponsiveSpecGroup;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 62
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    const/4 v5, 0x0

    goto :goto_1

    .line 59
    :cond_1
    const-string v0, "Required value was null."

    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p1    # "responsiveSpecType":Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;
    .end local p2    # "map":Lkotlin/jvm/functions/Function3;
    throw v7

    .line 66
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p1    # "responsiveSpecType":Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;
    .restart local p2    # "map":Lkotlin/jvm/functions/Function3;
    :cond_2
    invoke-virtual {p1}, Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;->getXmlTag()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v1, v7}, Lcom/android/launcher3/responsive/ResponsiveSpecsParser;->starts(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 68
    iget-object v7, p0, Lcom/android/launcher3/responsive/ResponsiveSpecsParser;->resourceHelper:Lcom/android/launcher3/util/ResourceHelper;

    .line 69
    move-object v9, v1

    check-cast v9, Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    sget-object v8, Lcom/android/launcher3/R$styleable;->ResponsiveSpec:[I

    const-string v10, "ResponsiveSpec"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v7, v9, v8}, Lcom/android/launcher3/util/ResourceHelper;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 67
    nop

    .line 73
    .local v7, "attrs":Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Lcom/android/launcher3/responsive/ResponsiveSpecsParser;->parseSizeSpecs(Landroid/content/res/XmlResourceParser;)Ljava/util/Map;

    move-result-object v8

    .line 74
    .local v8, "sizeSpecs":Ljava/util/Map;
    move-object v9, v4

    check-cast v9, Ljava/util/Collection;

    invoke-interface {p2, p1, v7, v8}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    .end local v7    # "attrs":Landroid/content/res/TypedArray;
    .end local v8    # "sizeSpecs":Ljava/util/Map;
    :cond_3
    :goto_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    move v6, v7

    goto/16 :goto_0

    .line 82
    :cond_4
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 85
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    .line 91
    nop

    .line 101
    .end local v3    # "groups":Ljava/util/List;
    .end local v4    # "specs":Ljava/util/List;
    .end local v5    # "groupAttrs":Landroid/content/res/TypedArray;
    .end local v6    # "eventType":I
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    move-object v0, v5

    .local v0, "groupAttrs":Landroid/content/res/TypedArray;
    move-object v2, v3

    .local v2, "groups":Ljava/util/List;
    move v5, v6

    .line 91
    .restart local v4    # "specs":Ljava/util/List;
    .local v5, "eventType":I
    return-object v3

    .line 85
    .end local v0    # "groupAttrs":Landroid/content/res/TypedArray;
    .end local v2    # "groups":Ljava/util/List;
    .restart local v3    # "groups":Ljava/util/List;
    .local v5, "groupAttrs":Landroid/content/res/TypedArray;
    .restart local v6    # "eventType":I
    :cond_5
    const/4 v0, 0x0

    .line 86
    .local v0, "$i$a$-check-ResponsiveSpecsParser$parseXML$1":I
    :try_start_2
    new-instance v7, Lcom/android/launcher3/responsive/InvalidResponsiveGridSpec;

    .line 87
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid XML. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " specs not linked to a group."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 86
    invoke-direct {v7, v8}, Lcom/android/launcher3/responsive/InvalidResponsiveGridSpec;-><init>(Ljava/lang/String;)V

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p1    # "responsiveSpecType":Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;
    .end local p2    # "map":Lkotlin/jvm/functions/Function3;
    throw v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    .end local v0    # "$i$a$-check-ResponsiveSpecsParser$parseXML$1":I
    .end local v3    # "groups":Ljava/util/List;
    .end local v4    # "specs":Ljava/util/List;
    .end local v5    # "groupAttrs":Landroid/content/res/TypedArray;
    .end local v6    # "eventType":I
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p1    # "responsiveSpecType":Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;
    .restart local p2    # "map":Lkotlin/jvm/functions/Function3;
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    nop

    .line 96
    nop

    .line 95
    nop

    .line 94
    :try_start_3
    instance-of v3, v0, Ljava/lang/NoSuchFieldException;

    if-eqz v3, :cond_6

    move v3, v2

    goto :goto_2

    .line 95
    :cond_6
    instance-of v3, v0, Ljava/io/IOException;

    :goto_2
    if-eqz v3, :cond_7

    goto :goto_3

    .line 96
    :cond_7
    instance-of v2, v0, Lorg/xmlpull/v1/XmlPullParserException;

    :goto_3
    if-eqz v2, :cond_8

    .line 97
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failure parsing specs file."

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p1    # "responsiveSpecType":Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;
    .end local p2    # "map":Lkotlin/jvm/functions/Function3;
    throw v2

    .line 98
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p1    # "responsiveSpecType":Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;
    .restart local p2    # "map":Lkotlin/jvm/functions/Function3;
    :cond_8
    nop

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p1    # "responsiveSpecType":Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;
    .end local p2    # "map":Lkotlin/jvm/functions/Function3;
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p1    # "responsiveSpecType":Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;
    .restart local p2    # "map":Lkotlin/jvm/functions/Function3;
    :goto_4
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    throw v0
.end method
