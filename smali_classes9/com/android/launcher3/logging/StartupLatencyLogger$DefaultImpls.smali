.class public final Lcom/android/launcher3/logging/StartupLatencyLogger$DefaultImpls;
.super Ljava/lang/Object;
.source "StartupLatencyLogger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logging/StartupLatencyLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static log(Lcom/android/launcher3/logging/StartupLatencyLogger;)Lcom/android/launcher3/logging/StartupLatencyLogger;
    .locals 0
    .param p0, "$this"    # Lcom/android/launcher3/logging/StartupLatencyLogger;

    .line 24
    return-object p0
.end method

.method public static logCardinality(Lcom/android/launcher3/logging/StartupLatencyLogger;I)Lcom/android/launcher3/logging/StartupLatencyLogger;
    .locals 0
    .param p0, "$this"    # Lcom/android/launcher3/logging/StartupLatencyLogger;
    .param p1, "cardinality"    # I

    .line 32
    return-object p0
.end method

.method public static logEnd(Lcom/android/launcher3/logging/StartupLatencyLogger;Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;)Lcom/android/launcher3/logging/StartupLatencyLogger;
    .locals 1
    .param p0, "$this"    # Lcom/android/launcher3/logging/StartupLatencyLogger;
    .param p1, "event"    # Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    return-object p0
.end method

.method public static logEnd(Lcom/android/launcher3/logging/StartupLatencyLogger;Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;J)Lcom/android/launcher3/logging/StartupLatencyLogger;
    .locals 1
    .param p0, "$this"    # Lcom/android/launcher3/logging/StartupLatencyLogger;
    .param p1, "event"    # Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;
    .param p2, "endTimeMs"    # J

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    return-object p0
.end method

.method public static logStart(Lcom/android/launcher3/logging/StartupLatencyLogger;Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;)Lcom/android/launcher3/logging/StartupLatencyLogger;
    .locals 1
    .param p0, "$this"    # Lcom/android/launcher3/logging/StartupLatencyLogger;
    .param p1, "event"    # Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    return-object p0
.end method

.method public static logStart(Lcom/android/launcher3/logging/StartupLatencyLogger;Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;J)Lcom/android/launcher3/logging/StartupLatencyLogger;
    .locals 1
    .param p0, "$this"    # Lcom/android/launcher3/logging/StartupLatencyLogger;
    .param p1, "event"    # Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;
    .param p2, "startTimeMs"    # J

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    return-object p0
.end method

.method public static logWorkspaceLoadStartTime(Lcom/android/launcher3/logging/StartupLatencyLogger;)Lcom/android/launcher3/logging/StartupLatencyLogger;
    .locals 0
    .param p0, "$this"    # Lcom/android/launcher3/logging/StartupLatencyLogger;

    .line 26
    return-object p0
.end method
