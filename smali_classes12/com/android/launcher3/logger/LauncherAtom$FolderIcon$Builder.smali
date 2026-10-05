.class public final Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$FolderIconOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;",
        "Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$FolderIconOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 10805
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 10806
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCardinality()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;
    .locals 1

    .line 10856
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->copyOnWrite()V

    .line 10857
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->-$$Nest$mclearCardinality(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;)V

    .line 10858
    return-object p0
.end method

.method public clearFromLabelState()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;
    .locals 1

    .line 10908
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->copyOnWrite()V

    .line 10909
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->-$$Nest$mclearFromLabelState(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;)V

    .line 10910
    return-object p0
.end method

.method public clearLabelInfo()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;
    .locals 1

    .line 11031
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->copyOnWrite()V

    .line 11032
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->-$$Nest$mclearLabelInfo(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;)V

    .line 11033
    return-object p0
.end method

.method public clearToLabelState()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;
    .locals 1

    .line 10960
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->copyOnWrite()V

    .line 10961
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->-$$Nest$mclearToLabelState(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;)V

    .line 10962
    return-object p0
.end method

.method public getCardinality()I
    .locals 1

    .line 10831
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->getCardinality()I

    move-result v0

    return v0
.end method

.method public getFromLabelState()Lcom/android/launcher3/logger/LauncherAtom$FromState;
    .locals 1

    .line 10883
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->getFromLabelState()Lcom/android/launcher3/logger/LauncherAtom$FromState;

    move-result-object v0

    return-object v0
.end method

.method public getLabelInfo()Ljava/lang/String;
    .locals 1

    .line 10989
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->getLabelInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabelInfoBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 11003
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->getLabelInfoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getToLabelState()Lcom/android/launcher3/logger/LauncherAtom$ToState;
    .locals 1

    .line 10935
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->getToLabelState()Lcom/android/launcher3/logger/LauncherAtom$ToState;

    move-result-object v0

    return-object v0
.end method

.method public hasCardinality()Z
    .locals 1

    .line 10819
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->hasCardinality()Z

    move-result v0

    return v0
.end method

.method public hasFromLabelState()Z
    .locals 1

    .line 10871
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->hasFromLabelState()Z

    move-result v0

    return v0
.end method

.method public hasLabelInfo()Z
    .locals 1

    .line 10976
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->hasLabelInfo()Z

    move-result v0

    return v0
.end method

.method public hasToLabelState()Z
    .locals 1

    .line 10923
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->hasToLabelState()Z

    move-result v0

    return v0
.end method

.method public setCardinality(I)Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 10843
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->copyOnWrite()V

    .line 10844
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->-$$Nest$msetCardinality(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;I)V

    .line 10845
    return-object p0
.end method

.method public setFromLabelState(Lcom/android/launcher3/logger/LauncherAtom$FromState;)Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$FromState;

    .line 10895
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->copyOnWrite()V

    .line 10896
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->-$$Nest$msetFromLabelState(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;Lcom/android/launcher3/logger/LauncherAtom$FromState;)V

    .line 10897
    return-object p0
.end method

.method public setLabelInfo(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 11017
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->copyOnWrite()V

    .line 11018
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->-$$Nest$msetLabelInfo(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;Ljava/lang/String;)V

    .line 11019
    return-object p0
.end method

.method public setLabelInfoBytes(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 11047
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->copyOnWrite()V

    .line 11048
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->-$$Nest$msetLabelInfoBytes(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;Lcom/google/protobuf/ByteString;)V

    .line 11049
    return-object p0
.end method

.method public setToLabelState(Lcom/android/launcher3/logger/LauncherAtom$ToState;)Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .line 10947
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->copyOnWrite()V

    .line 10948
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->-$$Nest$msetToLabelState(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;Lcom/android/launcher3/logger/LauncherAtom$ToState;)V

    .line 10949
    return-object p0
.end method
