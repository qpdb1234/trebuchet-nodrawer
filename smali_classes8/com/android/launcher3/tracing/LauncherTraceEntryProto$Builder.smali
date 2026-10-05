.class public final Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LauncherTraceEntryProto.java"

# interfaces
.implements Lcom/android/launcher3/tracing/LauncherTraceEntryProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/tracing/LauncherTraceEntryProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/launcher3/tracing/LauncherTraceEntryProto;",
        "Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;",
        ">;",
        "Lcom/android/launcher3/tracing/LauncherTraceEntryProtoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 212
    invoke-static {}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 213
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearElapsedRealtimeNanos()Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;
    .locals 1

    .line 263
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;->copyOnWrite()V

    .line 264
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-static {v0}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->-$$Nest$mclearElapsedRealtimeNanos(Lcom/android/launcher3/tracing/LauncherTraceEntryProto;)V

    .line 265
    return-object p0
.end method

.method public clearLauncher()Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;
    .locals 1

    .line 310
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;->copyOnWrite()V

    .line 311
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-static {v0}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->-$$Nest$mclearLauncher(Lcom/android/launcher3/tracing/LauncherTraceEntryProto;)V

    .line 312
    return-object p0
.end method

.method public getElapsedRealtimeNanos()J
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->getElapsedRealtimeNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLauncher()Lcom/android/launcher3/tracing/LauncherTraceProto;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->getLauncher()Lcom/android/launcher3/tracing/LauncherTraceProto;

    move-result-object v0

    return-object v0
.end method

.method public hasElapsedRealtimeNanos()Z
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->hasElapsedRealtimeNanos()Z

    move-result v0

    return v0
.end method

.method public hasLauncher()Z
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->hasLauncher()Z

    move-result v0

    return v0
.end method

.method public mergeLauncher(Lcom/android/launcher3/tracing/LauncherTraceProto;)Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/tracing/LauncherTraceProto;

    .line 303
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;->copyOnWrite()V

    .line 304
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->-$$Nest$mmergeLauncher(Lcom/android/launcher3/tracing/LauncherTraceEntryProto;Lcom/android/launcher3/tracing/LauncherTraceProto;)V

    .line 305
    return-object p0
.end method

.method public setElapsedRealtimeNanos(J)Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;
    .locals 1
    .param p1, "value"    # J

    .line 250
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;->copyOnWrite()V

    .line 251
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-static {v0, p1, p2}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->-$$Nest$msetElapsedRealtimeNanos(Lcom/android/launcher3/tracing/LauncherTraceEntryProto;J)V

    .line 252
    return-object p0
.end method

.method public setLauncher(Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;)Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;

    .line 295
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;->copyOnWrite()V

    .line 296
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-virtual {p1}, Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/tracing/LauncherTraceProto;

    invoke-static {v0, v1}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->-$$Nest$msetLauncher(Lcom/android/launcher3/tracing/LauncherTraceEntryProto;Lcom/android/launcher3/tracing/LauncherTraceProto;)V

    .line 297
    return-object p0
.end method

.method public setLauncher(Lcom/android/launcher3/tracing/LauncherTraceProto;)Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/tracing/LauncherTraceProto;

    .line 286
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;->copyOnWrite()V

    .line 287
    iget-object v0, p0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/LauncherTraceEntryProto;->-$$Nest$msetLauncher(Lcom/android/launcher3/tracing/LauncherTraceEntryProto;Lcom/android/launcher3/tracing/LauncherTraceProto;)V

    .line 288
    return-object p0
.end method
