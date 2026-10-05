.class public Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;
.super Ljava/lang/Object;
.source "StringMatcherUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/search/StringMatcherUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringMatcher"
.end annotation


# static fields
.field private static final MAX_UNICODE:C = '\uffff'


# instance fields
.field private final mCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;->mCollator:Ljava/text/Collator;

    .line 116
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 117
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setDecomposition(I)V

    .line 118
    return-void
.end method

.method public static getInstance()Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;
    .locals 1

    .line 139
    new-instance v0, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;

    invoke-direct {v0}, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected isBreak(III)Z
    .locals 4
    .param p1, "thisType"    # I
    .param p2, "prevType"    # I
    .param p3, "nextType"    # I

    .line 154
    const/4 v0, 0x1

    sparse-switch p2, :sswitch_data_0

    .line 161
    const/16 v1, 0x9

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_1

    .line 191
    return v2

    .line 159
    :sswitch_0
    return v0

    .line 189
    :sswitch_1
    return v0

    .line 181
    :sswitch_2
    if-eq p2, v1, :cond_0

    const/16 v1, 0xa

    if-eq p2, v1, :cond_0

    const/16 v1, 0xb

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    return v0

    .line 176
    :sswitch_3
    const/4 v1, 0x5

    if-gt p2, v1, :cond_2

    if-gtz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    :cond_2
    :goto_1
    return v0

    .line 165
    :sswitch_4
    if-eq p3, v0, :cond_3

    const/16 v3, 0x1c

    if-eq p3, v3, :cond_3

    if-eq p3, v1, :cond_3

    if-eqz p3, :cond_3

    .line 168
    return v0

    .line 173
    :cond_3
    :sswitch_5
    if-eq p2, v0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    return v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x3 -> :sswitch_5
        0x9 -> :sswitch_2
        0xa -> :sswitch_2
        0xb -> :sswitch_2
        0x14 -> :sswitch_1
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x1a -> :sswitch_1
    .end sparse-switch
.end method

.method public matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;->mCollator:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 134
    return v1

    .line 126
    :pswitch_0
    return v2

    .line 132
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;->mCollator:Ljava/text/Collator;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0xffff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-le v0, v3, :cond_0

    move v1, v2

    :cond_0
    return v1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
