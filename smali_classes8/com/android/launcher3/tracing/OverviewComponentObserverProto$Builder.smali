.class public final Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "OverviewComponentObserverProto.java"

# interfaces
.implements Lcom/android/launcher3/tracing/OverviewComponentObserverProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/tracing/OverviewComponentObserverProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/launcher3/tracing/OverviewComponentObserverProto;",
        "Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;",
        ">;",
        "Lcom/android/launcher3/tracing/OverviewComponentObserverProtoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 176
    invoke-static {}, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 177
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearOverviewActivityResumed()Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;
    .locals 1

    .line 247
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;->copyOnWrite()V

    .line 248
    iget-object v0, p0, Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    invoke-static {v0}, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;->-$$Nest$mclearOverviewActivityResumed(Lcom/android/launcher3/tracing/OverviewComponentObserverProto;)V

    .line 249
    return-object p0
.end method

.method public clearOverviewActivityStarted()Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;
    .locals 1

    .line 211
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;->copyOnWrite()V

    .line 212
    iget-object v0, p0, Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    invoke-static {v0}, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;->-$$Nest$mclearOverviewActivityStarted(Lcom/android/launcher3/tracing/OverviewComponentObserverProto;)V

    .line 213
    return-object p0
.end method

.method public getOverviewActivityResumed()Z
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;->getOverviewActivityResumed()Z

    move-result v0

    return v0
.end method

.method public getOverviewActivityStarted()Z
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;->getOverviewActivityStarted()Z

    move-result v0

    return v0
.end method

.method public hasOverviewActivityResumed()Z
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;->hasOverviewActivityResumed()Z

    move-result v0

    return v0
.end method

.method public hasOverviewActivityStarted()Z
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;->hasOverviewActivityStarted()Z

    move-result v0

    return v0
.end method

.method public setOverviewActivityResumed(Z)Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 238
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;->copyOnWrite()V

    .line 239
    iget-object v0, p0, Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;->-$$Nest$msetOverviewActivityResumed(Lcom/android/launcher3/tracing/OverviewComponentObserverProto;Z)V

    .line 240
    return-object p0
.end method

.method public setOverviewActivityStarted(Z)Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 202
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;->copyOnWrite()V

    .line 203
    iget-object v0, p0, Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;->-$$Nest$msetOverviewActivityStarted(Lcom/android/launcher3/tracing/OverviewComponentObserverProto;Z)V

    .line 204
    return-object p0
.end method
