.class public final Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;",
        "Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainerOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5618
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5619
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearParentContainer()Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;
    .locals 1

    .line 5628
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;->copyOnWrite()V

    .line 5629
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->-$$Nest$mclearParentContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)V

    .line 5630
    return-object p0
.end method

.method public clearTaskbarContainer()Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;
    .locals 1

    .line 5677
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;->copyOnWrite()V

    .line 5678
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->-$$Nest$mclearTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)V

    .line 5679
    return-object p0
.end method

.method public getParentContainerCase()Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;
    .locals 1

    .line 5624
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->getParentContainerCase()Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;

    move-result-object v0

    return-object v0
.end method

.method public getTaskbarContainer()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;
    .locals 1

    .line 5646
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->getTaskbarContainer()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    move-result-object v0

    return-object v0
.end method

.method public hasTaskbarContainer()Z
    .locals 1

    .line 5639
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->hasTaskbarContainer()Z

    move-result v0

    return v0
.end method

.method public mergeTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    .line 5669
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;->copyOnWrite()V

    .line 5670
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->-$$Nest$mmergeTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V

    .line 5671
    return-object p0
.end method

.method public setTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    .line 5661
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;->copyOnWrite()V

    .line 5662
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-static {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->-$$Nest$msetTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V

    .line 5663
    return-object p0
.end method

.method public setTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    .line 5652
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;->copyOnWrite()V

    .line 5653
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->-$$Nest$msetTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V

    .line 5654
    return-object p0
.end method
