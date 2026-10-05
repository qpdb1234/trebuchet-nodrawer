.class public final Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AllAppsContainer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;,
        Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;",
        "Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainerOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TASKBAR_CONTAINER_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private parentContainerCase_:I

.field private parentContainer_:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$mclearParentContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->clearParentContainer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->clearTaskbarContainer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->mergeTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->setTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 5740
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;-><init>()V

    .line 5743
    .local v0, "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    .line 5744
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5746
    .end local v0    # "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5429
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5432
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->parentContainerCase_:I

    .line 5430
    return-void
.end method

.method private clearParentContainer()V
    .locals 1

    .line 5469
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->parentContainerCase_:I

    .line 5470
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->parentContainer_:Ljava/lang/Object;

    .line 5471
    return-void
.end method

.method private clearTaskbarContainer()V
    .locals 2

    .line 5517
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->parentContainerCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5518
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->parentContainerCase_:I

    .line 5519
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->parentContainer_:Ljava/lang/Object;

    .line 5521
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;
    .locals 1

    .line 5749
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    return-object v0
.end method

.method private mergeTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V
    .locals 3
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    .line 5503
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5504
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->parentContainerCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->parentContainer_:Ljava/lang/Object;

    .line 5505
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5506
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->parentContainer_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->newBuilder(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    move-result-object v0

    .line 5507
    invoke-virtual {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->parentContainer_:Ljava/lang/Object;

    goto :goto_0

    .line 5509
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->parentContainer_:Ljava/lang/Object;

    .line 5511
    :goto_0
    iput v1, p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->parentContainerCase_:I

    .line 5512
    return-void
.end method

.method public static newBuilder()Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;
    .locals 1

    .line 5598
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    .line 5601
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5575
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-static {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5581
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5539
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5546
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5586
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5593
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5563
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5570
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5526
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5533
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5551
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5558
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;",
            ">;"
        }
    .end annotation

    .line 5755
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    .line 5495
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5496
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->parentContainer_:Ljava/lang/Object;

    .line 5497
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->parentContainerCase_:I

    .line 5498
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 5689
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 5733
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 5730
    :pswitch_0
    return-object v1

    .line 5727
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 5712
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->PARSER:Lcom/google/protobuf/Parser;

    .line 5713
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;>;"
    if-nez v0, :cond_1

    .line 5714
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    monitor-enter v1

    .line 5715
    :try_start_0
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 5716
    if-nez v0, :cond_0

    .line 5717
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 5720
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->PARSER:Lcom/google/protobuf/Parser;

    .line 5722
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 5724
    :cond_1
    :goto_0
    return-object v0

    .line 5709
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;>;"
    :pswitch_3
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    return-object v0

    .line 5697
    :pswitch_4
    const-string v0, "parentContainer_"

    const-string v1, "parentContainerCase_"

    const-string v2, "bitField0_"

    const-class v3, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 5703
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u103c\u0000"

    .line 5705
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-static {v2, v1, v0}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 5694
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;

    invoke-direct {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;-><init>(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder-IA;)V

    return-object v0

    .line 5691
    :pswitch_6
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;-><init>()V

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

.method public getParentContainerCase()Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;
    .locals 1

    .line 5464
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->parentContainerCase_:I

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;->forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;

    move-result-object v0

    return-object v0
.end method

.method public getTaskbarContainer()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;
    .locals 2

    .line 5486
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->parentContainerCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5487
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->parentContainer_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    return-object v0

    .line 5489
    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    move-result-object v0

    return-object v0
.end method

.method public hasTaskbarContainer()Z
    .locals 2

    .line 5479
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->parentContainerCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
