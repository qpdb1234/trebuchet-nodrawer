.class public final Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$TaskOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/launcher3/logger/LauncherAtom$Task;",
        "Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$TaskOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 10133
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Task;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$Task;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 10134
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/logger/LauncherAtom$Task$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearComponentName()Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;
    .locals 1

    .line 10235
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->copyOnWrite()V

    .line 10236
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$Task;->-$$Nest$mclearComponentName(Lcom/android/launcher3/logger/LauncherAtom$Task;)V

    .line 10237
    return-object p0
.end method

.method public clearIndex()Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;
    .locals 1

    .line 10282
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->copyOnWrite()V

    .line 10283
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$Task;->-$$Nest$mclearIndex(Lcom/android/launcher3/logger/LauncherAtom$Task;)V

    .line 10284
    return-object p0
.end method

.method public clearPackageName()Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;
    .locals 1

    .line 10178
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->copyOnWrite()V

    .line 10179
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$Task;->-$$Nest$mclearPackageName(Lcom/android/launcher3/logger/LauncherAtom$Task;)V

    .line 10180
    return-object p0
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 1

    .line 10208
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Task;->getComponentName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComponentNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10217
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Task;->getComponentNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 10265
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Task;->getIndex()I

    move-result v0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 10151
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Task;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10160
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Task;->getPackageNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasComponentName()Z
    .locals 1

    .line 10200
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Task;->hasComponentName()Z

    move-result v0

    return v0
.end method

.method public hasIndex()Z
    .locals 1

    .line 10257
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Task;->hasIndex()Z

    move-result v0

    return v0
.end method

.method public hasPackageName()Z
    .locals 1

    .line 10143
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$Task;->hasPackageName()Z

    move-result v0

    return v0
.end method

.method public setComponentName(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 10226
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->copyOnWrite()V

    .line 10227
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Task;->-$$Nest$msetComponentName(Lcom/android/launcher3/logger/LauncherAtom$Task;Ljava/lang/String;)V

    .line 10228
    return-object p0
.end method

.method public setComponentNameBytes(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 10246
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->copyOnWrite()V

    .line 10247
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Task;->-$$Nest$msetComponentNameBytes(Lcom/android/launcher3/logger/LauncherAtom$Task;Lcom/google/protobuf/ByteString;)V

    .line 10248
    return-object p0
.end method

.method public setIndex(I)Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 10273
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->copyOnWrite()V

    .line 10274
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Task;->-$$Nest$msetIndex(Lcom/android/launcher3/logger/LauncherAtom$Task;I)V

    .line 10275
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 10169
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->copyOnWrite()V

    .line 10170
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Task;->-$$Nest$msetPackageName(Lcom/android/launcher3/logger/LauncherAtom$Task;Ljava/lang/String;)V

    .line 10171
    return-object p0
.end method

.method public setPackageNameBytes(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 10189
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->copyOnWrite()V

    .line 10190
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$Task;->-$$Nest$msetPackageNameBytes(Lcom/android/launcher3/logger/LauncherAtom$Task;Lcom/google/protobuf/ByteString;)V

    .line 10191
    return-object p0
.end method
