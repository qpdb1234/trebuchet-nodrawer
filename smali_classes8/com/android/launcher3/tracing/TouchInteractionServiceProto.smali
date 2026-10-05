.class public final Lcom/android/launcher3/tracing/TouchInteractionServiceProto;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "TouchInteractionServiceProto.java"

# interfaces
.implements Lcom/android/launcher3/tracing/TouchInteractionServiceProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/launcher3/tracing/TouchInteractionServiceProto;",
        "Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;",
        ">;",
        "Lcom/android/launcher3/tracing/TouchInteractionServiceProtoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

.field public static final INPUT_CONSUMER_FIELD_NUMBER:I = 0x3

.field public static final OVERVIEW_COMPONENT_OBVSERVER_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/tracing/TouchInteractionServiceProto;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERVICE_CONNECTED_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private inputConsumer_:Lcom/android/launcher3/tracing/InputConsumerProto;

.field private overviewComponentObvserver_:Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

.field private serviceConnected_:Z


# direct methods
.method static bridge synthetic -$$Nest$mclearInputConsumer(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->clearInputConsumer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearOverviewComponentObvserver(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->clearOverviewComponentObvserver()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearServiceConnected(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->clearServiceConnected()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeInputConsumer(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;Lcom/android/launcher3/tracing/InputConsumerProto;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->mergeInputConsumer(Lcom/android/launcher3/tracing/InputConsumerProto;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeOverviewComponentObvserver(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;Lcom/android/launcher3/tracing/OverviewComponentObserverProto;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->mergeOverviewComponentObvserver(Lcom/android/launcher3/tracing/OverviewComponentObserverProto;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetInputConsumer(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;Lcom/android/launcher3/tracing/InputConsumerProto;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->setInputConsumer(Lcom/android/launcher3/tracing/InputConsumerProto;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetOverviewComponentObvserver(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;Lcom/android/launcher3/tracing/OverviewComponentObserverProto;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->setOverviewComponentObvserver(Lcom/android/launcher3/tracing/OverviewComponentObserverProto;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetServiceConnected(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->setServiceConnected(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/tracing/TouchInteractionServiceProto;
    .locals 1

    sget-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 427
    new-instance v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-direct {v0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;-><init>()V

    .line 430
    .local v0, "defaultInstance":Lcom/android/launcher3/tracing/TouchInteractionServiceProto;
    sput-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    .line 431
    const-class v1, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 433
    .end local v0    # "defaultInstance":Lcom/android/launcher3/tracing/TouchInteractionServiceProto;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 15
    return-void
.end method

.method private clearInputConsumer()V
    .locals 1

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->inputConsumer_:Lcom/android/launcher3/tracing/InputConsumerProto;

    .line 140
    iget v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    .line 141
    return-void
.end method

.method private clearOverviewComponentObvserver()V
    .locals 1

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->overviewComponentObvserver_:Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    .line 94
    iget v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    .line 95
    return-void
.end method

.method private clearServiceConnected()V
    .locals 1

    .line 47
    iget v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->serviceConnected_:Z

    .line 49
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/launcher3/tracing/TouchInteractionServiceProto;
    .locals 1

    .line 436
    sget-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    return-object v0
.end method

.method private mergeInputConsumer(Lcom/android/launcher3/tracing/InputConsumerProto;)V
    .locals 2
    .param p1, "value"    # Lcom/android/launcher3/tracing/InputConsumerProto;

    .line 126
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    iget-object v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->inputConsumer_:Lcom/android/launcher3/tracing/InputConsumerProto;

    if-eqz v0, :cond_0

    .line 128
    invoke-static {}, Lcom/android/launcher3/tracing/InputConsumerProto;->getDefaultInstance()Lcom/android/launcher3/tracing/InputConsumerProto;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->inputConsumer_:Lcom/android/launcher3/tracing/InputConsumerProto;

    .line 130
    invoke-static {v0}, Lcom/android/launcher3/tracing/InputConsumerProto;->newBuilder(Lcom/android/launcher3/tracing/InputConsumerProto;)Lcom/android/launcher3/tracing/InputConsumerProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/tracing/InputConsumerProto$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/InputConsumerProto$Builder;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/InputConsumerProto$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/InputConsumerProto;

    iput-object v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->inputConsumer_:Lcom/android/launcher3/tracing/InputConsumerProto;

    goto :goto_0

    .line 132
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->inputConsumer_:Lcom/android/launcher3/tracing/InputConsumerProto;

    .line 134
    :goto_0
    iget v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    .line 135
    return-void
.end method

.method private mergeOverviewComponentObvserver(Lcom/android/launcher3/tracing/OverviewComponentObserverProto;)V
    .locals 2
    .param p1, "value"    # Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    .line 80
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    iget-object v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->overviewComponentObvserver_:Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;->getDefaultInstance()Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->overviewComponentObvserver_:Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    .line 84
    invoke-static {v0}, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;->newBuilder(Lcom/android/launcher3/tracing/OverviewComponentObserverProto;)Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    iput-object v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->overviewComponentObvserver_:Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    goto :goto_0

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->overviewComponentObvserver_:Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    .line 88
    :goto_0
    iget v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    .line 89
    return-void
.end method

.method public static newBuilder()Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;
    .locals 1

    .line 218
    sget-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/launcher3/tracing/TouchInteractionServiceProto;)Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    .line 221
    sget-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/launcher3/tracing/TouchInteractionServiceProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    sget-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0, p0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/TouchInteractionServiceProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    sget-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/tracing/TouchInteractionServiceProto;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 159
    sget-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/TouchInteractionServiceProto;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 166
    sget-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/launcher3/tracing/TouchInteractionServiceProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    sget-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/TouchInteractionServiceProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    sget-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/launcher3/tracing/TouchInteractionServiceProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    sget-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/TouchInteractionServiceProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    sget-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/launcher3/tracing/TouchInteractionServiceProto;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 146
    sget-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/TouchInteractionServiceProto;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 153
    sget-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/tracing/TouchInteractionServiceProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 171
    sget-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/tracing/TouchInteractionServiceProto;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 178
    sget-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/tracing/TouchInteractionServiceProto;",
            ">;"
        }
    .end annotation

    .line 442
    sget-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-virtual {v0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setInputConsumer(Lcom/android/launcher3/tracing/InputConsumerProto;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/tracing/InputConsumerProto;

    .line 117
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    iput-object p1, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->inputConsumer_:Lcom/android/launcher3/tracing/InputConsumerProto;

    .line 119
    iget v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    .line 120
    return-void
.end method

.method private setOverviewComponentObvserver(Lcom/android/launcher3/tracing/OverviewComponentObserverProto;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    iput-object p1, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->overviewComponentObvserver_:Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    .line 73
    iget v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    .line 74
    return-void
.end method

.method private setServiceConnected(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 40
    iget v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    .line 41
    iput-boolean p1, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->serviceConnected_:Z

    .line 42
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 375
    sget-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 420
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 417
    :pswitch_0
    return-object v1

    .line 414
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 399
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 400
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/tracing/TouchInteractionServiceProto;>;"
    if-nez v0, :cond_1

    .line 401
    const-class v1, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    monitor-enter v1

    .line 402
    :try_start_0
    sget-object v2, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 403
    if-nez v0, :cond_0

    .line 404
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 407
    sput-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 409
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 411
    :cond_1
    :goto_0
    return-object v0

    .line 396
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/tracing/TouchInteractionServiceProto;>;"
    :pswitch_3
    sget-object v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    return-object v0

    .line 383
    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "serviceConnected_"

    const-string v2, "overviewComponentObvserver_"

    const-string v3, "inputConsumer_"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 389
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1007\u0000\u0002\u1009\u0001\u0003\u1009\u0002"

    .line 392
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-static {v2, v1, v0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 380
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;

    invoke-direct {v0, v1}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;-><init>(Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder-IA;)V

    return-object v0

    .line 377
    :pswitch_6
    new-instance v0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-direct {v0}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;-><init>()V

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

.method public getInputConsumer()Lcom/android/launcher3/tracing/InputConsumerProto;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->inputConsumer_:Lcom/android/launcher3/tracing/InputConsumerProto;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/tracing/InputConsumerProto;->getDefaultInstance()Lcom/android/launcher3/tracing/InputConsumerProto;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOverviewComponentObvserver()Lcom/android/launcher3/tracing/OverviewComponentObserverProto;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->overviewComponentObvserver_:Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;->getDefaultInstance()Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getServiceConnected()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->serviceConnected_:Z

    return v0
.end method

.method public hasInputConsumer()Z
    .locals 1

    .line 104
    iget v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOverviewComponentObvserver()Z
    .locals 1

    .line 58
    iget v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasServiceConnected()Z
    .locals 2

    .line 25
    iget v0, p0, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
