.class public final Lcom/android/launcher3/util/EventLogArray$Companion;
.super Ljava/lang/Object;
.source "EventLogArray.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/EventLogArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\"\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000fH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/android/launcher3/util/EventLogArray$Companion;",
        "",
        "()V",
        "TYPE_BOOL_FALSE",
        "",
        "TYPE_BOOL_TRUE",
        "TYPE_FLOAT",
        "TYPE_INTEGER",
        "TYPE_ONE_OFF",
        "isEntrySame",
        "",
        "entry",
        "Lcom/android/launcher3/util/EventLogArray$EventEntry;",
        "type",
        "event",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/util/EventLogArray$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$isEntrySame(Lcom/android/launcher3/util/EventLogArray$Companion;Lcom/android/launcher3/util/EventLogArray$EventEntry;ILjava/lang/String;)Z
    .locals 1
    .param p0, "$this"    # Lcom/android/launcher3/util/EventLogArray$Companion;
    .param p1, "entry"    # Lcom/android/launcher3/util/EventLogArray$EventEntry;
    .param p2, "type"    # I
    .param p3, "event"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/util/EventLogArray$Companion;->isEntrySame(Lcom/android/launcher3/util/EventLogArray$EventEntry;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private final isEntrySame(Lcom/android/launcher3/util/EventLogArray$EventEntry;ILjava/lang/String;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/launcher3/util/EventLogArray$EventEntry;
    .param p2, "type"    # I
    .param p3, "event"    # Ljava/lang/String;

    .line 37
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/util/EventLogArray$EventEntry;->getType()I

    move-result v0

    if-ne v0, p2, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/util/EventLogArray$EventEntry;->getEvent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
