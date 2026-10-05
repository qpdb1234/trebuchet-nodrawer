.class public Lcom/android/launcher3/search/StringMatcherUtility$StringMatcherSpace;
.super Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;
.source "StringMatcherUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/search/StringMatcherUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringMatcherSpace"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 200
    invoke-direct {p0}, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/launcher3/search/StringMatcherUtility$StringMatcherSpace;
    .locals 1

    .line 203
    new-instance v0, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcherSpace;

    invoke-direct {v0}, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcherSpace;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected isBreak(III)Z
    .locals 1
    .param p1, "thisType"    # I
    .param p2, "prevType"    # I
    .param p3, "nextType"    # I

    .line 212
    if-eqz p2, :cond_1

    const/16 v0, 0xc

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
