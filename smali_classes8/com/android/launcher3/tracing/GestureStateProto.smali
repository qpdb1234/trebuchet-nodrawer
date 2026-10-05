.class public final Lcom/android/launcher3/tracing/GestureStateProto;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "GestureStateProto.java"

# interfaces
.implements Lcom/android/launcher3/tracing/GestureStateProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;,
        Lcom/android/launcher3/tracing/GestureStateProto$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/launcher3/tracing/GestureStateProto;",
        "Lcom/android/launcher3/tracing/GestureStateProto$Builder;",
        ">;",
        "Lcom/android/launcher3/tracing/GestureStateProtoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

.field public static final ENDTARGET_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/tracing/GestureStateProto;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private endTarget_:I


# direct methods
.method static bridge synthetic -$$Nest$mclearEndTarget(Lcom/android/launcher3/tracing/GestureStateProto;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/tracing/GestureStateProto;->clearEndTarget()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetEndTarget(Lcom/android/launcher3/tracing/GestureStateProto;Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/tracing/GestureStateProto;->setEndTarget(Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/tracing/GestureStateProto;
    .locals 1

    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 360
    new-instance v0, Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-direct {v0}, Lcom/android/launcher3/tracing/GestureStateProto;-><init>()V

    .line 363
    .local v0, "defaultInstance":Lcom/android/launcher3/tracing/GestureStateProto;
    sput-object v0, Lcom/android/launcher3/tracing/GestureStateProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

    .line 364
    const-class v1, Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 366
    .end local v0    # "defaultInstance":Lcom/android/launcher3/tracing/GestureStateProto;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 15
    return-void
.end method

.method private clearEndTarget()V
    .locals 1

    .line 168
    iget v0, p0, Lcom/android/launcher3/tracing/GestureStateProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/launcher3/tracing/GestureStateProto;->bitField0_:I

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/tracing/GestureStateProto;->endTarget_:I

    .line 170
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/launcher3/tracing/GestureStateProto;
    .locals 1

    .line 369
    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/launcher3/tracing/GestureStateProto$Builder;
    .locals 1

    .line 247
    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/GestureStateProto;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/GestureStateProto$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/launcher3/tracing/GestureStateProto;)Lcom/android/launcher3/tracing/GestureStateProto$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/android/launcher3/tracing/GestureStateProto;

    .line 250
    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/tracing/GestureStateProto;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/GestureStateProto$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/launcher3/tracing/GestureStateProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-static {v0, p0}, Lcom/android/launcher3/tracing/GestureStateProto;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/GestureStateProto;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/GestureStateProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/tracing/GestureStateProto;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/GestureStateProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/tracing/GestureStateProto;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 188
    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/GestureStateProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/GestureStateProto;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 195
    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/GestureStateProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/launcher3/tracing/GestureStateProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/GestureStateProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/GestureStateProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/GestureStateProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/launcher3/tracing/GestureStateProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/GestureStateProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/GestureStateProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/GestureStateProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/launcher3/tracing/GestureStateProto;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 175
    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/GestureStateProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/GestureStateProto;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 182
    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/GestureStateProto;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/tracing/GestureStateProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 200
    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/GestureStateProto;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/GestureStateProto;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 207
    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/GestureStateProto;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/tracing/GestureStateProto;",
            ">;"
        }
    .end annotation

    .line 375
    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/GestureStateProto;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setEndTarget(Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    .line 161
    invoke-virtual {p1}, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/tracing/GestureStateProto;->endTarget_:I

    .line 162
    iget v0, p0, Lcom/android/launcher3/tracing/GestureStateProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/tracing/GestureStateProto;->bitField0_:I

    .line 163
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 353
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 350
    :pswitch_0
    return-object v1

    .line 347
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 332
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 333
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/tracing/GestureStateProto;>;"
    if-nez v0, :cond_1

    .line 334
    const-class v1, Lcom/android/launcher3/tracing/GestureStateProto;

    monitor-enter v1

    .line 335
    :try_start_0
    sget-object v2, Lcom/android/launcher3/tracing/GestureStateProto;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 336
    if-nez v0, :cond_0

    .line 337
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/android/launcher3/tracing/GestureStateProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 340
    sput-object v0, Lcom/android/launcher3/tracing/GestureStateProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 342
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 344
    :cond_1
    :goto_0
    return-object v0

    .line 329
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/tracing/GestureStateProto;>;"
    :pswitch_3
    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

    return-object v0

    .line 318
    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "endTarget_"

    .line 321
    invoke-static {}, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 323
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u100c\u0000"

    .line 325
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/tracing/GestureStateProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-static {v2, v1, v0}, Lcom/android/launcher3/tracing/GestureStateProto;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 315
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/android/launcher3/tracing/GestureStateProto$Builder;

    invoke-direct {v0, v1}, Lcom/android/launcher3/tracing/GestureStateProto$Builder;-><init>(Lcom/android/launcher3/tracing/GestureStateProto$Builder-IA;)V

    return-object v0

    .line 312
    :pswitch_6
    new-instance v0, Lcom/android/launcher3/tracing/GestureStateProto;

    invoke-direct {v0}, Lcom/android/launcher3/tracing/GestureStateProto;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getEndTarget()Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;
    .locals 2

    .line 153
    iget v0, p0, Lcom/android/launcher3/tracing/GestureStateProto;->endTarget_:I

    invoke-static {v0}, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->forNumber(I)Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    move-result-object v0

    .line 154
    .local v0, "result":Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;
    if-nez v0, :cond_0

    sget-object v1, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->UNSET:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public hasEndTarget()Z
    .locals 2

    .line 145
    iget v0, p0, Lcom/android/launcher3/tracing/GestureStateProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
