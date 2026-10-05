.class public Lcom/android/launcher3/search/StringMatcherUtility;
.super Ljava/lang/Object;
.source "StringMatcherUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;,
        Lcom/android/launcher3/search/StringMatcherUtility$StringMatcherSpace;
    }
.end annotation


# static fields
.field private static final SPACE:Ljava/lang/Character;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/search/StringMatcherUtility;->SPACE:Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getListOfBreakpoints(Ljava/lang/CharSequence;Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;)Lcom/android/launcher3/util/IntArray;
    .locals 8
    .param p0, "input"    # Ljava/lang/CharSequence;
    .param p1, "matcher"    # Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;

    .line 75
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 76
    .local v0, "inputLength":I
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-le v0, v1, :cond_4

    sget-object v1, Lcom/android/launcher3/search/StringMatcherUtility;->SPACE:Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-static {p0, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    goto :goto_2

    .line 85
    :cond_0
    new-instance v1, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v1}, Lcom/android/launcher3/util/IntArray;-><init>()V

    .line 87
    .local v1, "listOfBreakPoints":Lcom/android/launcher3/util/IntArray;
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getType(I)I

    move-result v3

    .line 88
    .local v3, "thisType":I
    const/4 v4, 0x1

    invoke-static {p0, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->getType(I)I

    move-result v4

    .line 89
    .local v4, "nextType":I
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_3

    .line 90
    move v6, v3

    .line 91
    .local v6, "prevType":I
    move v3, v4

    .line 92
    add-int/lit8 v7, v0, -0x1

    if-ge v5, v7, :cond_1

    .line 93
    add-int/lit8 v7, v5, 0x1

    invoke-static {p0, v7}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->getType(I)I

    move-result v7

    goto :goto_1

    .line 94
    :cond_1
    move v7, v2

    :goto_1
    move v4, v7

    .line 95
    invoke-virtual {p1, v3, v6, v4}, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;->isBreak(III)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 97
    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v1, v7}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 89
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 100
    .end local v5    # "i":I
    .end local v6    # "prevType":I
    :cond_3
    return-object v1

    .line 80
    .end local v1    # "listOfBreakPoints":Lcom/android/launcher3/util/IntArray;
    .end local v3    # "thisType":I
    .end local v4    # "nextType":I
    :cond_4
    :goto_2
    invoke-static {v2, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/search/StringMatcherUtility$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/launcher3/search/StringMatcherUtility$$ExternalSyntheticLambda0;-><init>(Ljava/lang/CharSequence;)V

    .line 81
    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/search/StringMatcherUtility$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/launcher3/search/StringMatcherUtility$$ExternalSyntheticLambda1;-><init>()V

    .line 82
    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->map(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;

    move-result-object v1

    .line 83
    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    .line 80
    invoke-static {v1}, Lcom/android/launcher3/util/IntArray;->wrap([I)Lcom/android/launcher3/util/IntArray;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$getListOfBreakpoints$0(Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p0, "input"    # Ljava/lang/CharSequence;
    .param p1, "i"    # I

    .line 81
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    sget-object v1, Lcom/android/launcher3/search/StringMatcherUtility;->SPACE:Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getListOfBreakpoints$1(I)I
    .locals 1
    .param p0, "i"    # I

    .line 82
    add-int/lit8 v0, p0, -0x1

    return v0
.end method

.method public static matches(Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;)Z
    .locals 9
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "matcher"    # Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;

    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 40
    .local v0, "queryLength":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 42
    .local v1, "targetLength":I
    const/4 v2, 0x0

    if-lt v1, v0, :cond_5

    if-gtz v0, :cond_0

    goto :goto_2

    .line 46
    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/search/StringMatcherUtility;->requestSimpleFuzzySearch(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    return v2

    .line 51
    :cond_1
    const/4 v3, 0x0

    .line 52
    .local v3, "thisType":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->getType(I)I

    move-result v4

    .line 54
    .local v4, "nextType":I
    sub-int v5, v1, v0

    .line 55
    .local v5, "end":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-gt v6, v5, :cond_4

    .line 56
    move v7, v3

    .line 57
    .local v7, "lastType":I
    move v3, v4

    .line 58
    add-int/lit8 v8, v1, -0x1

    if-ge v6, v8, :cond_2

    .line 59
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->getType(I)I

    move-result v8

    goto :goto_1

    :cond_2
    move v8, v2

    :goto_1
    move v4, v8

    .line 60
    invoke-virtual {p2, v3, v7, v4}, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;->isBreak(III)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int v8, v6, v0

    .line 61
    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, p0, v8}, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 62
    const/4 v2, 0x1

    return v2

    .line 55
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 65
    .end local v6    # "i":I
    .end local v7    # "lastType":I
    :cond_4
    return v2

    .line 43
    .end local v3    # "thisType":I
    .end local v4    # "nextType":I
    .end local v5    # "end":I
    :cond_5
    :goto_2
    return v2
.end method

.method private static requestSimpleFuzzySearch(Ljava/lang/String;)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 220
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 221
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 222
    .local v1, "codepoint":I
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 223
    sget-object v2, Lcom/android/launcher3/search/StringMatcherUtility$1;->$SwitchMap$java$lang$Character$UnicodeScript:[I

    invoke-static {v1}, Ljava/lang/Character$UnicodeScript;->of(I)Ljava/lang/Character$UnicodeScript;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Character$UnicodeScript;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 228
    .end local v1    # "codepoint":I
    goto :goto_0

    .line 226
    .restart local v1    # "codepoint":I
    :pswitch_0
    const/4 v2, 0x1

    return v2

    .line 229
    .end local v0    # "i":I
    .end local v1    # "codepoint":I
    :cond_0
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
