.class public final Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$ApplicationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/launcher3/logger/LauncherAtom$Application;",
        "Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$ApplicationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 8278
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Application;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$Application;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8279
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/logger/LauncherAtom$Application$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearComponentName()Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;
    .locals 1

    .line 8380
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->copyOnWrite()V

    .line 8381
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$Application;->-$$Nest$mclearComponentName(Lcom/android/launcher3/logger/LauncherAtom$Application;)V

    .line 8382
    return-object p0
.end method

.method public clearPackageName()Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;
    .locals 1

    .line 8323
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->copyOnWrite()V

    .line 8324
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$Application;->-$$Nest$mclearPackageName(Lcom/android/launcher3/logger/LauncherAtom$Application;)V

    .line 8325
    return-object p0
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 1

    .line 8353
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Application;->getComponentName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComponentNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8362
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Application;->getComponentNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 8296
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8305
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Application;->getPackageNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasComponentName()Z
    .locals 1

    .line 8345
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Application;->hasComponentName()Z

    move-result v0

    return v0
.end method

.method public hasPackageName()Z
    .locals 1

    .line 8288
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Application;->hasPackageName()Z

    move-result v0

    return v0
.end method

.method public setComponentName(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 8371
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->copyOnWrite()V

    .line 8372
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Application;->-$$Nest$msetComponentName(Lcom/android/launcher3/logger/LauncherAtom$Application;Ljava/lang/String;)V

    .line 8373
    return-object p0
.end method

.method public setComponentNameBytes(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 8391
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->copyOnWrite()V

    .line 8392
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Application;->-$$Nest$msetComponentNameBytes(Lcom/android/launcher3/logger/LauncherAtom$Application;Lcom/google/protobuf/ByteString;)V

    .line 8393
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 8314
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->copyOnWrite()V

    .line 8315
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Application;->-$$Nest$msetPackageName(Lcom/android/launcher3/logger/LauncherAtom$Application;Ljava/lang/String;)V

    .line 8316
    return-object p0
.end method

.method public setPackageNameBytes(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 8334
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->copyOnWrite()V

    .line 8335
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Application;->-$$Nest$msetPackageNameBytes(Lcom/android/launcher3/logger/LauncherAtom$Application;Lcom/google/protobuf/ByteString;)V

    .line 8336
    return-object p0
.end method
