.class public final Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SwipeHandlerProto.java"

# interfaces
.implements Lcom/android/launcher3/tracing/SwipeHandlerProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/tracing/SwipeHandlerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/launcher3/tracing/SwipeHandlerProto;",
        "Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;",
        ">;",
        "Lcom/android/launcher3/tracing/SwipeHandlerProtoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 272
    invoke-static {}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/tracing/SwipeHandlerProto;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 273
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAppToOverviewProgress()Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;
    .locals 1

    .line 442
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->copyOnWrite()V

    .line 443
    iget-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-static {v0}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->-$$Nest$mclearAppToOverviewProgress(Lcom/android/launcher3/tracing/SwipeHandlerProto;)V

    .line 444
    return-object p0
.end method

.method public clearGestureState()Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;
    .locals 1

    .line 318
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->copyOnWrite()V

    .line 319
    iget-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-static {v0}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->-$$Nest$mclearGestureState(Lcom/android/launcher3/tracing/SwipeHandlerProto;)V

    .line 320
    return-object p0
.end method

.method public clearIsRecentsAttachedToAppWindow()Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;
    .locals 1

    .line 354
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->copyOnWrite()V

    .line 355
    iget-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-static {v0}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->-$$Nest$mclearIsRecentsAttachedToAppWindow(Lcom/android/launcher3/tracing/SwipeHandlerProto;)V

    .line 356
    return-object p0
.end method

.method public clearScrollOffset()Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;
    .locals 1

    .line 390
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->copyOnWrite()V

    .line 391
    iget-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-static {v0}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->-$$Nest$mclearScrollOffset(Lcom/android/launcher3/tracing/SwipeHandlerProto;)V

    .line 392
    return-object p0
.end method

.method public getAppToOverviewProgress()F
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->getAppToOverviewProgress()F

    move-result v0

    return v0
.end method

.method public getGestureState()Lcom/android/launcher3/tracing/GestureStateProto;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->getGestureState()Lcom/android/launcher3/tracing/GestureStateProto;

    move-result-object v0

    return-object v0
.end method

.method public getIsRecentsAttachedToAppWindow()Z
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->getIsRecentsAttachedToAppWindow()Z

    move-result v0

    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->getScrollOffset()I

    move-result v0

    return v0
.end method

.method public hasAppToOverviewProgress()Z
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->hasAppToOverviewProgress()Z

    move-result v0

    return v0
.end method

.method public hasGestureState()Z
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->hasGestureState()Z

    move-result v0

    return v0
.end method

.method public hasIsRecentsAttachedToAppWindow()Z
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->hasIsRecentsAttachedToAppWindow()Z

    move-result v0

    return v0
.end method

.method public hasScrollOffset()Z
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->hasScrollOffset()Z

    move-result v0

    return v0
.end method

.method public mergeGestureState(Lcom/android/launcher3/tracing/GestureStateProto;)Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/tracing/GestureStateProto;

    .line 311
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->copyOnWrite()V

    .line 312
    iget-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->-$$Nest$mmergeGestureState(Lcom/android/launcher3/tracing/SwipeHandlerProto;Lcom/android/launcher3/tracing/GestureStateProto;)V

    .line 313
    return-object p0
.end method

.method public setAppToOverviewProgress(F)Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;
    .locals 1
    .param p1, "value"    # F

    .line 429
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->copyOnWrite()V

    .line 430
    iget-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->-$$Nest$msetAppToOverviewProgress(Lcom/android/launcher3/tracing/SwipeHandlerProto;F)V

    .line 431
    return-object p0
.end method

.method public setGestureState(Lcom/android/launcher3/tracing/GestureStateProto$Builder;)Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/android/launcher3/tracing/GestureStateProto$Builder;

    .line 303
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->copyOnWrite()V

    .line 304
    iget-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-virtual {p1}, Lcom/android/launcher3/tracing/GestureStateProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-static {v0, v1}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->-$$Nest$msetGestureState(Lcom/android/launcher3/tracing/SwipeHandlerProto;Lcom/android/launcher3/tracing/GestureStateProto;)V

    .line 305
    return-object p0
.end method

.method public setGestureState(Lcom/android/launcher3/tracing/GestureStateProto;)Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/tracing/GestureStateProto;

    .line 294
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->copyOnWrite()V

    .line 295
    iget-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->-$$Nest$msetGestureState(Lcom/android/launcher3/tracing/SwipeHandlerProto;Lcom/android/launcher3/tracing/GestureStateProto;)V

    .line 296
    return-object p0
.end method

.method public setIsRecentsAttachedToAppWindow(Z)Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 345
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->copyOnWrite()V

    .line 346
    iget-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->-$$Nest$msetIsRecentsAttachedToAppWindow(Lcom/android/launcher3/tracing/SwipeHandlerProto;Z)V

    .line 347
    return-object p0
.end method

.method public setScrollOffset(I)Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 381
    invoke-virtual {p0}, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->copyOnWrite()V

    .line 382
    iget-object v0, p0, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/tracing/SwipeHandlerProto;

    invoke-static {v0, p1}, Lcom/android/launcher3/tracing/SwipeHandlerProto;->-$$Nest$msetScrollOffset(Lcom/android/launcher3/tracing/SwipeHandlerProto;I)V

    .line 383
    return-object p0
.end method
