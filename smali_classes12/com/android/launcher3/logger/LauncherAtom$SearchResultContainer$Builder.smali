.class public final Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;",
        "Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainerOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6648
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 6649
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAllAppsContainer()Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;
    .locals 1

    .line 6807
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->copyOnWrite()V

    .line 6808
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->-$$Nest$mclearAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;)V

    .line 6809
    return-object p0
.end method

.method public clearParentContainer()Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;
    .locals 1

    .line 6658
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->copyOnWrite()V

    .line 6659
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->-$$Nest$mclearParentContainer(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;)V

    .line 6660
    return-object p0
.end method

.method public clearQueryLength()Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;
    .locals 1

    .line 6711
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->copyOnWrite()V

    .line 6712
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->-$$Nest$mclearQueryLength(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;)V

    .line 6713
    return-object p0
.end method

.method public clearWorkspace()Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;
    .locals 1

    .line 6759
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->copyOnWrite()V

    .line 6760
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->-$$Nest$mclearWorkspace(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;)V

    .line 6761
    return-object p0
.end method

.method public getAllAppsContainer()Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;
    .locals 1

    .line 6776
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->getAllAppsContainer()Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    move-result-object v0

    return-object v0
.end method

.method public getParentContainerCase()Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;
    .locals 1

    .line 6654
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->getParentContainerCase()Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;

    move-result-object v0

    return-object v0
.end method

.method public getQueryLength()I
    .locals 1

    .line 6686
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->getQueryLength()I

    move-result v0

    return v0
.end method

.method public getWorkspace()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;
    .locals 1

    .line 6728
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->getWorkspace()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    move-result-object v0

    return-object v0
.end method

.method public hasAllAppsContainer()Z
    .locals 1

    .line 6769
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->hasAllAppsContainer()Z

    move-result v0

    return v0
.end method

.method public hasQueryLength()Z
    .locals 1

    .line 6674
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->hasQueryLength()Z

    move-result v0

    return v0
.end method

.method public hasWorkspace()Z
    .locals 1

    .line 6721
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->hasWorkspace()Z

    move-result v0

    return v0
.end method

.method public mergeAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    .line 6799
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->copyOnWrite()V

    .line 6800
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->-$$Nest$mmergeAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)V

    .line 6801
    return-object p0
.end method

.method public mergeWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    .line 6751
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->copyOnWrite()V

    .line 6752
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->-$$Nest$mmergeWorkspace(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)V

    .line 6753
    return-object p0
.end method

.method public setAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;

    .line 6791
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->copyOnWrite()V

    .line 6792
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-static {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->-$$Nest$msetAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)V

    .line 6793
    return-object p0
.end method

.method public setAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    .line 6782
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->copyOnWrite()V

    .line 6783
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->-$$Nest$msetAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)V

    .line 6784
    return-object p0
.end method

.method public setQueryLength(I)Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 6698
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->copyOnWrite()V

    .line 6699
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->-$$Nest$msetQueryLength(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;I)V

    .line 6700
    return-object p0
.end method

.method public setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    .line 6743
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->copyOnWrite()V

    .line 6744
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-static {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->-$$Nest$msetWorkspace(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)V

    .line 6745
    return-object p0
.end method

.method public setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    .line 6734
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->copyOnWrite()V

    .line 6735
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->-$$Nest$msetWorkspace(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)V

    .line 6736
    return-object p0
.end method
