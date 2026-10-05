.class public Lcom/android/launcher3/uioverrides/flags/FlagsFactory;
.super Ljava/lang/Object;
.source "FlagsFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 72
    return-void
.end method

.method public static getDebugFlag(ILjava/lang/String;Lcom/android/launcher3/config/FeatureFlags$FlagState;Ljava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;
    .locals 2
    .param p0, "bugId"    # I
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "flagState"    # Lcom/android/launcher3/config/FeatureFlags$FlagState;
    .param p3, "description"    # Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    sget-object v1, Lcom/android/launcher3/config/FeatureFlags$FlagState;->ENABLED:Lcom/android/launcher3/config/FeatureFlags$FlagState;

    if-ne p2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;-><init>(Z)V

    return-object v0
.end method

.method public static getIntFlag(ILjava/lang/String;ILjava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$IntFlag;
    .locals 1
    .param p0, "bugId"    # I
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValueInCode"    # I
    .param p3, "description"    # Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/android/launcher3/config/FeatureFlags$IntFlag;

    invoke-direct {v0, p2}, Lcom/android/launcher3/config/FeatureFlags$IntFlag;-><init>(I)V

    return-object v0
.end method

.method public static getIntFlag(ILjava/lang/String;ILjava/lang/String;Lcom/android/launcher3/ConstantItem;)Lcom/android/launcher3/config/FeatureFlags$IntFlag;
    .locals 1
    .param p0, "bugId"    # I
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValueInCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/launcher3/config/FeatureFlags$IntFlag;"
        }
    .end annotation

    .line 66
    .local p4, "launcherPrefFlag":Lcom/android/launcher3/ConstantItem;, "Lcom/android/launcher3/ConstantItem<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/android/launcher3/config/FeatureFlags$IntFlag;

    invoke-direct {v0, p2}, Lcom/android/launcher3/config/FeatureFlags$IntFlag;-><init>(I)V

    return-object v0
.end method

.method public static getReleaseFlag(ILjava/lang/String;Lcom/android/launcher3/config/FeatureFlags$FlagState;Ljava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;
    .locals 2
    .param p0, "bugId"    # I
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "flagState"    # Lcom/android/launcher3/config/FeatureFlags$FlagState;
    .param p3, "description"    # Ljava/lang/String;

    .line 49
    new-instance v0, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    sget-object v1, Lcom/android/launcher3/config/FeatureFlags$FlagState;->ENABLED:Lcom/android/launcher3/config/FeatureFlags$FlagState;

    if-ne p2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;-><init>(Z)V

    return-object v0
.end method
