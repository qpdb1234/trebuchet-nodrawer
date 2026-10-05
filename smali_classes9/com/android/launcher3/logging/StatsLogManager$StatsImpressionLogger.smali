.class public interface abstract Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;
.super Ljava/lang/Object;
.source "StatsLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logging/StatsLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StatsImpressionLogger"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger$State;
    }
.end annotation


# virtual methods
.method public log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V
    .locals 0
    .param p1, "event"    # Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    .line 1112
    return-void
.end method

.method public withAboveKeyboard(Z)Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;
    .locals 0
    .param p1, "aboveKeyboard"    # Z

    .line 1090
    return-object p0
.end method

.method public withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;
    .locals 0
    .param p1, "instanceId"    # Lcom/android/launcher3/logging/InstanceId;

    .line 1061
    return-object p0
.end method

.method public withQueryLength(I)Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;
    .locals 0
    .param p1, "queryLength"    # I

    .line 1075
    return-object p0
.end method

.method public withResultSource(I)Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;
    .locals 0
    .param p1, "resultSource"    # I

    .line 1105
    return-object p0
.end method

.method public withResultType(I)Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;
    .locals 0
    .param p1, "resultType"    # I

    .line 1082
    return-object p0
.end method

.method public withState(Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger$State;)Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;
    .locals 0
    .param p1, "state"    # Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger$State;

    .line 1068
    return-object p0
.end method

.method public withUid(I)Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;
    .locals 0
    .param p1, "uid"    # I

    .line 1098
    return-object p0
.end method
