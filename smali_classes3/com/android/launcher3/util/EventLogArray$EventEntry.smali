.class final Lcom/android/launcher3/util/EventLogArray$EventEntry;
.super Ljava/lang/Object;
.source "EventLogArray.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/EventLogArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EventEntry"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0010R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0006\"\u0004\u0008\u001d\u0010\u0008\u00a8\u0006 "
    }
    d2 = {
        "Lcom/android/launcher3/util/EventLogArray$EventEntry;",
        "",
        "()V",
        "duplicateCount",
        "",
        "getDuplicateCount",
        "()I",
        "setDuplicateCount",
        "(I)V",
        "event",
        "",
        "getEvent",
        "()Ljava/lang/String;",
        "setEvent",
        "(Ljava/lang/String;)V",
        "extras",
        "",
        "getExtras",
        "()F",
        "setExtras",
        "(F)V",
        "time",
        "",
        "getTime",
        "()J",
        "setTime",
        "(J)V",
        "type",
        "getType",
        "setType",
        "update",
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


# instance fields
.field private duplicateCount:I

.field private event:Ljava/lang/String;

.field private extras:F

.field private time:J

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDuplicateCount()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/android/launcher3/util/EventLogArray$EventEntry;->duplicateCount:I

    return v0
.end method

.method public final getEvent()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/launcher3/util/EventLogArray$EventEntry;->event:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtras()F
    .locals 1

    .line 106
    iget v0, p0, Lcom/android/launcher3/util/EventLogArray$EventEntry;->extras:F

    return v0
.end method

.method public final getTime()J
    .locals 2

    .line 107
    iget-wide v0, p0, Lcom/android/launcher3/util/EventLogArray$EventEntry;->time:J

    return-wide v0
.end method

.method public final getType()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/android/launcher3/util/EventLogArray$EventEntry;->type:I

    return v0
.end method

.method public final setDuplicateCount(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 108
    iput p1, p0, Lcom/android/launcher3/util/EventLogArray$EventEntry;->duplicateCount:I

    return-void
.end method

.method public final setEvent(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 105
    iput-object p1, p0, Lcom/android/launcher3/util/EventLogArray$EventEntry;->event:Ljava/lang/String;

    return-void
.end method

.method public final setExtras(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 106
    iput p1, p0, Lcom/android/launcher3/util/EventLogArray$EventEntry;->extras:F

    return-void
.end method

.method public final setTime(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 107
    iput-wide p1, p0, Lcom/android/launcher3/util/EventLogArray$EventEntry;->time:J

    return-void
.end method

.method public final setType(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 104
    iput p1, p0, Lcom/android/launcher3/util/EventLogArray$EventEntry;->type:I

    return-void
.end method

.method public final update(ILjava/lang/String;F)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "extras"    # F

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iput p1, p0, Lcom/android/launcher3/util/EventLogArray$EventEntry;->type:I

    .line 111
    iput-object p2, p0, Lcom/android/launcher3/util/EventLogArray$EventEntry;->event:Ljava/lang/String;

    .line 112
    iput p3, p0, Lcom/android/launcher3/util/EventLogArray$EventEntry;->extras:F

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/util/EventLogArray$EventEntry;->time:J

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/EventLogArray$EventEntry;->duplicateCount:I

    .line 115
    return-void
.end method
