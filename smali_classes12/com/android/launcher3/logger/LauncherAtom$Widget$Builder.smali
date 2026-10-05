.class public final Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$WidgetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$Widget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/launcher3/logger/LauncherAtom$Widget;",
        "Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$WidgetOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 9438
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$Widget;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 9439
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAppWidgetId()Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
    .locals 1

    .line 9545
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->copyOnWrite()V

    .line 9546
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->-$$Nest$mclearAppWidgetId(Lcom/android/launcher3/logger/LauncherAtom$Widget;)V

    .line 9547
    return-object p0
.end method

.method public clearComponentName()Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
    .locals 1

    .line 9692
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->copyOnWrite()V

    .line 9693
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->-$$Nest$mclearComponentName(Lcom/android/launcher3/logger/LauncherAtom$Widget;)V

    .line 9694
    return-object p0
.end method

.method public clearPackageName()Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
    .locals 1

    .line 9611
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->copyOnWrite()V

    .line 9612
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->-$$Nest$mclearPackageName(Lcom/android/launcher3/logger/LauncherAtom$Widget;)V

    .line 9613
    return-object p0
.end method

.method public clearSpanX()Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
    .locals 1

    .line 9473
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->copyOnWrite()V

    .line 9474
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->-$$Nest$mclearSpanX(Lcom/android/launcher3/logger/LauncherAtom$Widget;)V

    .line 9475
    return-object p0
.end method

.method public clearSpanY()Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
    .locals 1

    .line 9509
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->copyOnWrite()V

    .line 9510
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->-$$Nest$mclearSpanY(Lcom/android/launcher3/logger/LauncherAtom$Widget;)V

    .line 9511
    return-object p0
.end method

.method public clearWidgetFeatures()Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
    .locals 1

    .line 9743
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->copyOnWrite()V

    .line 9744
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->-$$Nest$mclearWidgetFeatures(Lcom/android/launcher3/logger/LauncherAtom$Widget;)V

    .line 9745
    return-object p0
.end method

.method public getAppWidgetId()I
    .locals 1

    .line 9528
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->getAppWidgetId()I

    move-result v0

    return v0
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 1

    .line 9653
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->getComponentName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComponentNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9666
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->getComponentNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 9572
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9585
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->getPackageNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSpanX()I
    .locals 1

    .line 9456
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->getSpanX()I

    move-result v0

    return v0
.end method

.method public getSpanY()I
    .locals 1

    .line 9492
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->getSpanY()I

    move-result v0

    return v0
.end method

.method public getWidgetFeatures()I
    .locals 1

    .line 9726
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->getWidgetFeatures()I

    move-result v0

    return v0
.end method

.method public hasAppWidgetId()Z
    .locals 1

    .line 9520
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->hasAppWidgetId()Z

    move-result v0

    return v0
.end method

.method public hasComponentName()Z
    .locals 1

    .line 9641
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->hasComponentName()Z

    move-result v0

    return v0
.end method

.method public hasPackageName()Z
    .locals 1

    .line 9560
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->hasPackageName()Z

    move-result v0

    return v0
.end method

.method public hasSpanX()Z
    .locals 1

    .line 9448
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->hasSpanX()Z

    move-result v0

    return v0
.end method

.method public hasSpanY()Z
    .locals 1

    .line 9484
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->hasSpanY()Z

    move-result v0

    return v0
.end method

.method public hasWidgetFeatures()Z
    .locals 1

    .line 9718
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->hasWidgetFeatures()Z

    move-result v0

    return v0
.end method

.method public setAppWidgetId(I)Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 9536
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->copyOnWrite()V

    .line 9537
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->-$$Nest$msetAppWidgetId(Lcom/android/launcher3/logger/LauncherAtom$Widget;I)V

    .line 9538
    return-object p0
.end method

.method public setComponentName(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 9679
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->copyOnWrite()V

    .line 9680
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->-$$Nest$msetComponentName(Lcom/android/launcher3/logger/LauncherAtom$Widget;Ljava/lang/String;)V

    .line 9681
    return-object p0
.end method

.method public setComponentNameBytes(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 9707
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->copyOnWrite()V

    .line 9708
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->-$$Nest$msetComponentNameBytes(Lcom/android/launcher3/logger/LauncherAtom$Widget;Lcom/google/protobuf/ByteString;)V

    .line 9709
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 9598
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->copyOnWrite()V

    .line 9599
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->-$$Nest$msetPackageName(Lcom/android/launcher3/logger/LauncherAtom$Widget;Ljava/lang/String;)V

    .line 9600
    return-object p0
.end method

.method public setPackageNameBytes(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 9626
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->copyOnWrite()V

    .line 9627
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->-$$Nest$msetPackageNameBytes(Lcom/android/launcher3/logger/LauncherAtom$Widget;Lcom/google/protobuf/ByteString;)V

    .line 9628
    return-object p0
.end method

.method public setSpanX(I)Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 9464
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->copyOnWrite()V

    .line 9465
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->-$$Nest$msetSpanX(Lcom/android/launcher3/logger/LauncherAtom$Widget;I)V

    .line 9466
    return-object p0
.end method

.method public setSpanY(I)Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 9500
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->copyOnWrite()V

    .line 9501
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->-$$Nest$msetSpanY(Lcom/android/launcher3/logger/LauncherAtom$Widget;I)V

    .line 9502
    return-object p0
.end method

.method public setWidgetFeatures(I)Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 9734
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->copyOnWrite()V

    .line 9735
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->-$$Nest$msetWidgetFeatures(Lcom/android/launcher3/logger/LauncherAtom$Widget;I)V

    .line 9736
    return-object p0
.end method
