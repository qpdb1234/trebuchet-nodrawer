.class public final Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$SearchActionItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SearchActionItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;",
        "Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$SearchActionItemOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

.field public static final PACKAGE_NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final TITLE_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private packageName_:Ljava/lang/String;

.field private title_:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$mclearPackageName(Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->clearPackageName()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearTitle(Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->clearTitle()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPackageName(Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->setPackageName(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPackageNameBytes(Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->setPackageNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTitle(Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTitleBytes(Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->setTitleBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 11889
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;-><init>()V

    .line 11892
    .local v0, "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    .line 11893
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 11895
    .end local v0    # "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 11505
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 11506
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->packageName_:Ljava/lang/String;

    .line 11507
    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->title_:Ljava/lang/String;

    .line 11508
    return-void
.end method

.method private clearPackageName()V
    .locals 1

    .line 11551
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->bitField0_:I

    .line 11552
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->packageName_:Ljava/lang/String;

    .line 11553
    return-void
.end method

.method private clearTitle()V
    .locals 1

    .line 11605
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->bitField0_:I

    .line 11606
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->title_:Ljava/lang/String;

    .line 11607
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;
    .locals 1

    .line 11898
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;
    .locals 1

    .line 11693
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;)Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    .line 11696
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11670
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-static {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11676
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11634
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11641
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11681
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11688
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11658
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11665
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11621
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11628
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11646
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11653
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;",
            ">;"
        }
    .end annotation

    .line 11904
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setPackageName(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 11543
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 11544
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget v1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->bitField0_:I

    .line 11545
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->packageName_:Ljava/lang/String;

    .line 11546
    return-void
.end method

.method private setPackageNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 11560
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->packageName_:Ljava/lang/String;

    .line 11561
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->bitField0_:I

    .line 11562
    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 11597
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 11598
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget v1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->bitField0_:I

    .line 11599
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->title_:Ljava/lang/String;

    .line 11600
    return-void
.end method

.method private setTitleBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 11614
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->title_:Ljava/lang/String;

    .line 11615
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->bitField0_:I

    .line 11616
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 11838
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 11882
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 11879
    :pswitch_0
    return-object v1

    .line 11876
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 11861
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->PARSER:Lcom/google/protobuf/Parser;

    .line 11862
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;>;"
    if-nez v0, :cond_1

    .line 11863
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    monitor-enter v1

    .line 11864
    :try_start_0
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 11865
    if-nez v0, :cond_0

    .line 11866
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 11869
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->PARSER:Lcom/google/protobuf/Parser;

    .line 11871
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 11873
    :cond_1
    :goto_0
    return-object v0

    .line 11858
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;>;"
    :pswitch_3
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    return-object v0

    .line 11846
    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "packageName_"

    const-string v2, "title_"

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 11851
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001"

    .line 11854
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-static {v2, v1, v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 11843
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;

    invoke-direct {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;-><init>(Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder-IA;)V

    return-object v0

    .line 11840
    :pswitch_6
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;-><init>()V

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

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 11526
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->packageName_:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 11535
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->packageName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 11580
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 11589
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->title_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasPackageName()Z
    .locals 2

    .line 11518
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasTitle()Z
    .locals 1

    .line 11572
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
