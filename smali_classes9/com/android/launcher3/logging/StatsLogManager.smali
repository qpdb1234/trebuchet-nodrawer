.class public Lcom/android/launcher3/logging/StatsLogManager;
.super Ljava/lang/Object;
.source "StatsLogManager.java"

# interfaces
.implements Lcom/android/launcher3/util/ResourceBasedOverride;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;,
        Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;,
        Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;,
        Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;,
        Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;,
        Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;,
        Lcom/android/launcher3/logging/StatsLogManager$EventEnum;
    }
.end annotation


# static fields
.field public static final LAUNCHER_STATE_ALLAPPS:I = 0x4

.field public static final LAUNCHER_STATE_BACKGROUND:I = 0x1

.field public static final LAUNCHER_STATE_HOME:I = 0x2

.field public static final LAUNCHER_STATE_OVERVIEW:I = 0x3

.field public static final LAUNCHER_STATE_UNCHANGED:I = 0x5

.field public static final LAUNCHER_STATE_UNSPECIFIED:I


# instance fields
.field protected mActivityContext:Lcom/android/launcher3/views/ActivityContext;

.field protected mContext:Landroid/content/Context;

.field private mInstanceId:Lcom/android/launcher3/logging/InstanceId;

.field private mKeyboardStateManager:Lcom/android/launcher3/logging/KeyboardStateManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logging/StatsLogManager;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    .line 59
    iput-object v0, p0, Lcom/android/launcher3/logging/StatsLogManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getLauncherAtomEvent(IILcom/android/launcher3/logging/StatsLogManager$EventEnum;)Lcom/android/launcher3/logging/StatsLogManager$EventEnum;
    .locals 1
    .param p0, "startState"    # I
    .param p1, "targetState"    # I
    .param p2, "fallbackEvent"    # Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    .line 68
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    if-ne p1, v0, :cond_0

    .line 70
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_HOME_GESTURE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    return-object v0

    .line 71
    :cond_0
    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    if-ne p1, v0, :cond_1

    .line 73
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_OVERVIEW_GESTURE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    return-object v0

    .line 74
    :cond_1
    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    if-ne p1, v0, :cond_2

    .line 76
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_OPEN_UP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    return-object v0

    .line 77
    :cond_2
    if-ne p0, v0, :cond_3

    if-eq p1, v0, :cond_3

    .line 79
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_CLOSE_DOWN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    return-object v0

    .line 81
    :cond_3
    return-object p2
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 1188
    nop

    .line 1189
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$string;->stats_log_manager_class:I

    .line 1188
    const-class v2, Lcom/android/launcher3/logging/StatsLogManager;

    invoke-static {v2, v0, v1}, Lcom/android/launcher3/util/ResourceBasedOverride$Overrides;->getObject(Ljava/lang/Class;Landroid/content/Context;I)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logging/StatsLogManager;

    .line 1190
    .local v0, "manager":Lcom/android/launcher3/logging/StatsLogManager;
    invoke-static {p0}, Lcom/android/launcher3/views/ActivityContext;->lookupContextNoThrow(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    iput-object v1, v0, Lcom/android/launcher3/logging/StatsLogManager;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    .line 1191
    iput-object p0, v0, Lcom/android/launcher3/logging/StatsLogManager;->mContext:Landroid/content/Context;

    .line 1192
    return-object v0
.end method


# virtual methods
.method protected createImpressionLogger()Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;
    .locals 1

    .line 1171
    new-instance v0, Lcom/android/launcher3/logging/StatsLogManager$3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/logging/StatsLogManager$3;-><init>(Lcom/android/launcher3/logging/StatsLogManager;)V

    return-object v0
.end method

.method protected createLatencyLogger()Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;
    .locals 1

    .line 1166
    new-instance v0, Lcom/android/launcher3/logging/StatsLogManager$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/logging/StatsLogManager$2;-><init>(Lcom/android/launcher3/logging/StatsLogManager;)V

    return-object v0
.end method

.method protected createLogger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 1

    .line 1161
    new-instance v0, Lcom/android/launcher3/logging/StatsLogManager$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/logging/StatsLogManager$1;-><init>(Lcom/android/launcher3/logging/StatsLogManager;)V

    return-object v0
.end method

.method public impressionLogger()Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;
    .locals 2

    .line 1141
    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->createImpressionLogger()Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;

    move-result-object v0

    .line 1142
    .local v0, "logger":Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;
    iget-object v1, p0, Lcom/android/launcher3/logging/StatsLogManager;->mInstanceId:Lcom/android/launcher3/logging/InstanceId;

    if-eqz v1, :cond_0

    .line 1143
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;

    .line 1145
    :cond_0
    return-object v0
.end method

.method public keyboardStateManager()Lcom/android/launcher3/logging/KeyboardStateManager;
    .locals 3

    .line 1152
    iget-object v0, p0, Lcom/android/launcher3/logging/StatsLogManager;->mKeyboardStateManager:Lcom/android/launcher3/logging/KeyboardStateManager;

    if-nez v0, :cond_1

    .line 1153
    new-instance v0, Lcom/android/launcher3/logging/KeyboardStateManager;

    .line 1154
    iget-object v1, p0, Lcom/android/launcher3/logging/StatsLogManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$dimen;->default_ime_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .line 1155
    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1}, Lcom/android/launcher3/logging/KeyboardStateManager;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/logging/StatsLogManager;->mKeyboardStateManager:Lcom/android/launcher3/logging/KeyboardStateManager;

    .line 1157
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/logging/StatsLogManager;->mKeyboardStateManager:Lcom/android/launcher3/logging/KeyboardStateManager;

    return-object v0
.end method

.method public latencyLogger()Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;
    .locals 2

    .line 1130
    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->createLatencyLogger()Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;

    move-result-object v0

    .line 1131
    .local v0, "logger":Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;
    iget-object v1, p0, Lcom/android/launcher3/logging/StatsLogManager;->mInstanceId:Lcom/android/launcher3/logging/InstanceId;

    if-eqz v1, :cond_0

    .line 1132
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;

    .line 1134
    :cond_0
    return-object v0
.end method

.method public logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 2

    .line 1119
    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->createLogger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    .line 1120
    .local v0, "logger":Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    iget-object v1, p0, Lcom/android/launcher3/logging/StatsLogManager;->mInstanceId:Lcom/android/launcher3/logging/InstanceId;

    if-eqz v1, :cond_0

    .line 1121
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    .line 1123
    :cond_0
    return-object v0
.end method

.method public withDefaultInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager;
    .locals 0
    .param p1, "instanceId"    # Lcom/android/launcher3/logging/InstanceId;

    .line 1180
    iput-object p1, p0, Lcom/android/launcher3/logging/StatsLogManager;->mInstanceId:Lcom/android/launcher3/logging/InstanceId;

    .line 1181
    return-object p0
.end method
