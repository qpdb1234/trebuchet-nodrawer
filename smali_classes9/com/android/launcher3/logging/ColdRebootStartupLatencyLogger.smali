.class public Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;
.super Ljava/lang/Object;
.source "ColdRebootStartupLatencyLogger.kt"

# interfaces
.implements Lcom/android/launcher3/logging/StartupLatencyLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nColdRebootStartupLatencyLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColdRebootStartupLatencyLogger.kt\ncom/android/launcher3/logging/ColdRebootStartupLatencyLogger\n+ 2 SparseLongArray.kt\nandroidx/core/util/SparseLongArrayKt\n*L\n1#1,193:1\n33#2:194\n75#2:195\n33#2:196\n33#2:197\n33#2:198\n*S KotlinDebug\n*F\n+ 1 ColdRebootStartupLatencyLogger.kt\ncom/android/launcher3/logging/ColdRebootStartupLatencyLogger\n*L\n143#1:194\n147#1:195\n167#1:196\n170#1:197\n175#1:198\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u0000 .2\u00020\u0001:\u0001.B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u001f\u001a\u00020\u0000H\u0017J\u0010\u0010 \u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004H\u0017J\u0010\u0010!\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020#H\u0017J\u0018\u0010!\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0019H\u0017J\u0010\u0010%\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020#H\u0017J\u0018\u0010%\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020#2\u0006\u0010&\u001a\u00020\u0019H\u0017J\u0008\u0010\'\u001a\u00020\u0000H\u0017J\u0010\u0010\'\u001a\u00020\u00002\u0006\u0010&\u001a\u00020\u0019H\u0007J\u0010\u0010(\u001a\u00020)2\u0006\u0010\"\u001a\u00020#H\u0003J\u0008\u0010*\u001a\u00020)H\u0017J\u0008\u0010+\u001a\u00020)H\u0007J\u0010\u0010,\u001a\u00020\u00102\u0006\u0010\"\u001a\u00020#H\u0003J\u0010\u0010-\u001a\u00020\u00102\u0006\u0010\"\u001a\u00020#H\u0003R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000c\u0010\u0002\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0016\u0010\u0002\u001a\u0004\u0008\u0017\u0010\u000eR$\u0010\u0018\u001a\u00020\u00198\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u001a\u0010\u0002\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001e\u00a8\u0006/"
    }
    d2 = {
        "Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;",
        "Lcom/android/launcher3/logging/StartupLatencyLogger;",
        "()V",
        "cardinality",
        "",
        "getCardinality$annotations",
        "getCardinality",
        "()I",
        "setCardinality",
        "(I)V",
        "endTimeByEvent",
        "Landroid/util/SparseLongArray;",
        "getEndTimeByEvent$annotations",
        "getEndTimeByEvent",
        "()Landroid/util/SparseLongArray;",
        "isInTest",
        "",
        "isTornDown",
        "()Z",
        "setTornDown",
        "(Z)V",
        "startTimeByEvent",
        "getStartTimeByEvent$annotations",
        "getStartTimeByEvent",
        "workspaceLoadStartTime",
        "",
        "getWorkspaceLoadStartTime$annotations",
        "getWorkspaceLoadStartTime",
        "()J",
        "setWorkspaceLoadStartTime",
        "(J)V",
        "log",
        "logCardinality",
        "logEnd",
        "event",
        "Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;",
        "endTimeMs",
        "logStart",
        "startTimeMs",
        "logWorkspaceLoadStartTime",
        "maybeLogStartOfWorkspaceLoadTime",
        "",
        "reset",
        "setIsInTest",
        "validateLoggingEventAtEnd",
        "validateLoggingEventAtStart",
        "Companion",
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
.field public static final Companion:Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger$Companion;

.field public static final TAG:Ljava/lang/String; = "ColdRebootStartupLatencyLogger"

.field public static final UNSET_INT:I = -0x1

.field public static final UNSET_LONG:J = -0x1L


# instance fields
.field private cardinality:I

.field private final endTimeByEvent:Landroid/util/SparseLongArray;

.field private isInTest:Z

.field private isTornDown:Z

.field private final startTimeByEvent:Landroid/util/SparseLongArray;

.field private workspaceLoadStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->Companion:Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->startTimeByEvent:Landroid/util/SparseLongArray;

    .line 26
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->endTimeByEvent:Landroid/util/SparseLongArray;

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->cardinality:I

    .line 30
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->workspaceLoadStartTime:J

    .line 15
    return-void
.end method

.method public static synthetic getCardinality$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getEndTimeByEvent$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getStartTimeByEvent$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getWorkspaceLoadStartTime$annotations()V
    .locals 0

    return-void
.end method

.method private final maybeLogStartOfWorkspaceLoadTime(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    .line 128
    iget-wide v0, p0, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->workspaceLoadStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 129
    return-void

    .line 131
    :cond_0
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_ASYNC:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    if-ne p1, v0, :cond_1

    .line 132
    iget-wide v0, p0, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->workspaceLoadStartTime:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->logStart(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;J)Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;

    .line 133
    iput-wide v2, p0, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->workspaceLoadStartTime:J

    .line 135
    :cond_1
    return-void
.end method

.method private final validateLoggingEventAtEnd(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;)Z
    .locals 8
    .param p1, "event"    # Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    .line 164
    iget-boolean v0, p0, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->isInTest:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 165
    return v1

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->startTimeByEvent:Landroid/util/SparseLongArray;

    .local v0, "$this$contains$iv":Landroid/util/SparseLongArray;
    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->getId()I

    move-result v2

    .local v2, "key$iv":I
    const/4 v3, 0x0

    .line 196
    .local v3, "$i$f$contains":I
    invoke-virtual {v0, v2}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v4

    const/4 v5, 0x0

    if-ltz v4, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v5

    .line 167
    .end local v0    # "$this$contains$iv":Landroid/util/SparseLongArray;
    .end local v2    # "key$iv":I
    .end local v3    # "$i$f$contains":I
    :goto_0
    const-string v2, "Cannot end "

    const-string v3, "ColdRebootStartupLatencyLogger"

    if-nez v0, :cond_2

    .line 168
    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " event before starting it"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return v5

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->endTimeByEvent:Landroid/util/SparseLongArray;

    .restart local v0    # "$this$contains$iv":Landroid/util/SparseLongArray;
    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->getId()I

    move-result v4

    .local v4, "key$iv":I
    const/4 v6, 0x0

    .line 197
    .local v6, "$i$f$contains":I
    invoke-virtual {v0, v4}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v7

    if-ltz v7, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v5

    .line 170
    .end local v0    # "$this$contains$iv":Landroid/util/SparseLongArray;
    .end local v4    # "key$iv":I
    .end local v6    # "$i$f$contains":I
    :goto_1
    if-eqz v0, :cond_4

    .line 171
    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot end same "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " event again"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return v5

    .line 174
    :cond_4
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_TOTAL_DURATION:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    if-eq p1, v0, :cond_6

    .line 175
    iget-object v0, p0, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->endTimeByEvent:Landroid/util/SparseLongArray;

    .line 176
    sget-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_TOTAL_DURATION:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    invoke-virtual {v4}, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->getId()I

    move-result v4

    .line 175
    nop

    .restart local v0    # "$this$contains$iv":Landroid/util/SparseLongArray;
    .restart local v4    # "key$iv":I
    const/4 v6, 0x0

    .line 198
    .restart local v6    # "$i$f$contains":I
    invoke-virtual {v0, v4}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v7

    if-ltz v7, :cond_5

    move v0, v1

    goto :goto_2

    :cond_5
    move v0, v5

    .line 175
    .end local v0    # "$this$contains$iv":Landroid/util/SparseLongArray;
    .end local v4    # "key$iv":I
    .end local v6    # "$i$f$contains":I
    :goto_2
    if-eqz v0, :cond_6

    .line 180
    nop

    .line 181
    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " event after LAUNCHER_LATENCY_STARTUP_TOTAL_DURATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return v5

    .line 185
    :cond_6
    return v1
.end method

.method private final validateLoggingEventAtStart(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;)Z
    .locals 6
    .param p1, "event"    # Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    .line 140
    iget-boolean v0, p0, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->isInTest:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 141
    return v1

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->startTimeByEvent:Landroid/util/SparseLongArray;

    .local v0, "$this$contains$iv":Landroid/util/SparseLongArray;
    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->getId()I

    move-result v2

    .local v2, "key$iv":I
    const/4 v3, 0x0

    .line 194
    .local v3, "$i$f$contains":I
    invoke-virtual {v0, v2}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v4

    const/4 v5, 0x0

    if-ltz v4, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v5

    .line 143
    .end local v0    # "$this$contains$iv":Landroid/util/SparseLongArray;
    .end local v2    # "key$iv":I
    .end local v3    # "$i$f$contains":I
    :goto_0
    const-string v2, "ColdRebootStartupLatencyLogger"

    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot restart same "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " event"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return v5

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->startTimeByEvent:Landroid/util/SparseLongArray;

    .local v0, "$this$isEmpty$iv":Landroid/util/SparseLongArray;
    const/4 v3, 0x0

    .line 195
    .local v3, "$i$f$isEmpty":I
    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    move-result v4

    if-nez v4, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v5

    .line 147
    .end local v0    # "$this$isEmpty$iv":Landroid/util/SparseLongArray;
    .end local v3    # "$i$f$isEmpty":I
    :goto_1
    if-eqz v0, :cond_4

    .line 148
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_TOTAL_DURATION:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    if-eq p1, v0, :cond_4

    .line 151
    nop

    .line 152
    nop

    .line 150
    const-string v0, "The first log start event must be LAUNCHER_LATENCY_STARTUP_TOTAL_DURATION."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return v5

    .line 158
    :cond_4
    return v1
.end method


# virtual methods
.method public final getCardinality()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->cardinality:I

    return v0
.end method

.method public final getEndTimeByEvent()Landroid/util/SparseLongArray;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->endTimeByEvent:Landroid/util/SparseLongArray;

    return-object v0
.end method

.method public final getStartTimeByEvent()Landroid/util/SparseLongArray;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->startTimeByEvent:Landroid/util/SparseLongArray;

    return-object v0
.end method

.method public final getWorkspaceLoadStartTime()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->workspaceLoadStartTime:J

    return-wide v0
.end method

.method public final isTornDown()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->isTornDown:Z

    return v0
.end method

.method public log()Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;
    .locals 0

    .line 42
    return-object p0
.end method

.method public bridge synthetic log()Lcom/android/launcher3/logging/StartupLatencyLogger;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->log()Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logging/StartupLatencyLogger;

    return-object v0
.end method

.method public logCardinality(I)Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;
    .locals 1
    .param p1, "cardinality"    # I

    .line 66
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    .line 67
    iget-boolean v0, p0, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->isTornDown:Z

    if-eqz v0, :cond_0

    .line 68
    return-object p0

    .line 70
    :cond_0
    iput p1, p0, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->cardinality:I

    .line 71
    return-object p0
.end method

.method public bridge synthetic logCardinality(I)Lcom/android/launcher3/logging/StartupLatencyLogger;
    .locals 1
    .param p1, "cardinality"    # I

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->logCardinality(I)Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logging/StartupLatencyLogger;

    return-object v0
.end method

.method public logEnd(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;)Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;
    .locals 2
    .param p1, "event"    # Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->logEnd(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;J)Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;

    move-result-object v0

    return-object v0
.end method

.method public logEnd(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;J)Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;
    .locals 2
    .param p1, "event"    # Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;
    .param p2, "endTimeMs"    # J

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    .line 104
    iget-boolean v0, p0, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->isTornDown:Z

    if-eqz v0, :cond_0

    .line 105
    return-object p0

    .line 107
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->maybeLogStartOfWorkspaceLoadTime(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;)V

    .line 108
    invoke-direct {p0, p1}, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->validateLoggingEventAtEnd(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->endTimeByEvent:Landroid/util/SparseLongArray;

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 112
    :cond_1
    return-object p0
.end method

.method public bridge synthetic logEnd(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;)Lcom/android/launcher3/logging/StartupLatencyLogger;
    .locals 1
    .param p1, "event"    # Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->logEnd(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;)Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logging/StartupLatencyLogger;

    return-object v0
.end method

.method public bridge synthetic logEnd(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;J)Lcom/android/launcher3/logging/StartupLatencyLogger;
    .locals 1
    .param p1, "event"    # Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;
    .param p2, "endTimeMs"    # J

    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->logEnd(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;J)Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logging/StartupLatencyLogger;

    return-object v0
.end method

.method public logStart(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;)Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;
    .locals 2
    .param p1, "event"    # Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->logStart(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;J)Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;

    move-result-object v0

    return-object v0
.end method

.method public logStart(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;J)Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;
    .locals 2
    .param p1, "event"    # Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;
    .param p2, "startTimeMs"    # J

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    .line 85
    iget-boolean v0, p0, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->isTornDown:Z

    if-eqz v0, :cond_0

    .line 86
    return-object p0

    .line 88
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->validateLoggingEventAtStart(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->startTimeByEvent:Landroid/util/SparseLongArray;

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 91
    :cond_1
    return-object p0
.end method

.method public bridge synthetic logStart(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;)Lcom/android/launcher3/logging/StartupLatencyLogger;
    .locals 1
    .param p1, "event"    # Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->logStart(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;)Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logging/StartupLatencyLogger;

    return-object v0
.end method

.method public bridge synthetic logStart(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;J)Lcom/android/launcher3/logging/StartupLatencyLogger;
    .locals 1
    .param p1, "event"    # Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;
    .param p2, "startTimeMs"    # J

    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->logStart(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;J)Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logging/StartupLatencyLogger;

    return-object v0
.end method

.method public logWorkspaceLoadStartTime()Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;
    .locals 2

    .line 47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->logWorkspaceLoadStartTime(J)Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;

    move-result-object v0

    return-object v0
.end method

.method public final logWorkspaceLoadStartTime(J)Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;
    .locals 1
    .param p1, "startTimeMs"    # J

    .line 52
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    .line 53
    iget-boolean v0, p0, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->isTornDown:Z

    if-eqz v0, :cond_0

    .line 54
    return-object p0

    .line 56
    :cond_0
    iput-wide p1, p0, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->workspaceLoadStartTime:J

    .line 57
    return-object p0
.end method

.method public bridge synthetic logWorkspaceLoadStartTime()Lcom/android/launcher3/logging/StartupLatencyLogger;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->logWorkspaceLoadStartTime()Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logging/StartupLatencyLogger;

    return-object v0
.end method

.method public reset()V
    .locals 2

    .line 118
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    .line 119
    iget-object v0, p0, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->startTimeByEvent:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->clear()V

    .line 120
    iget-object v0, p0, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->endTimeByEvent:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->clear()V

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->cardinality:I

    .line 122
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->workspaceLoadStartTime:J

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->isTornDown:Z

    .line 124
    return-void
.end method

.method public final setCardinality(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 28
    iput p1, p0, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->cardinality:I

    return-void
.end method

.method public final setIsInTest()V
    .locals 1

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->isInTest:Z

    .line 191
    return-void
.end method

.method public final setTornDown(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 36
    iput-boolean p1, p0, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->isTornDown:Z

    return-void
.end method

.method public final setWorkspaceLoadStartTime(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 30
    iput-wide p1, p0, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;->workspaceLoadStartTime:J

    return-void
.end method
