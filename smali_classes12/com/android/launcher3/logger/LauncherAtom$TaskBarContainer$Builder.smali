.class public final Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;",
        "Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainerOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7788
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 7789
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCardinality()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;
    .locals 1

    .line 7887
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->copyOnWrite()V

    .line 7888
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->-$$Nest$mclearCardinality(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V

    .line 7889
    return-object p0
.end method

.method public clearIndex()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;
    .locals 1

    .line 7835
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->copyOnWrite()V

    .line 7836
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->-$$Nest$mclearIndex(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V

    .line 7837
    return-object p0
.end method

.method public clearParentContainer()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;
    .locals 1

    .line 7798
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->copyOnWrite()V

    .line 7799
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->-$$Nest$mclearParentContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V

    .line 7800
    return-object p0
.end method

.method public clearTaskSwitcherContainer()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;
    .locals 1

    .line 7935
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->copyOnWrite()V

    .line 7936
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->-$$Nest$mclearTaskSwitcherContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V

    .line 7937
    return-object p0
.end method

.method public getCardinality()I
    .locals 1

    .line 7862
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->getCardinality()I

    move-result v0

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 7818
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->getIndex()I

    move-result v0

    return v0
.end method

.method public getParentContainerCase()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;
    .locals 1

    .line 7794
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->getParentContainerCase()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;

    move-result-object v0

    return-object v0
.end method

.method public getTaskSwitcherContainer()Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;
    .locals 1

    .line 7904
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->getTaskSwitcherContainer()Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    move-result-object v0

    return-object v0
.end method

.method public hasCardinality()Z
    .locals 1

    .line 7850
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->hasCardinality()Z

    move-result v0

    return v0
.end method

.method public hasIndex()Z
    .locals 1

    .line 7810
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->hasIndex()Z

    move-result v0

    return v0
.end method

.method public hasTaskSwitcherContainer()Z
    .locals 1

    .line 7897
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->hasTaskSwitcherContainer()Z

    move-result v0

    return v0
.end method

.method public mergeTaskSwitcherContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    .line 7927
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->copyOnWrite()V

    .line 7928
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->-$$Nest$mmergeTaskSwitcherContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;)V

    .line 7929
    return-object p0
.end method

.method public setCardinality(I)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 7874
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->copyOnWrite()V

    .line 7875
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->-$$Nest$msetCardinality(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;I)V

    .line 7876
    return-object p0
.end method

.method public setIndex(I)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 7826
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->copyOnWrite()V

    .line 7827
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->-$$Nest$msetIndex(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;I)V

    .line 7828
    return-object p0
.end method

.method public setTaskSwitcherContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer$Builder;

    .line 7919
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->copyOnWrite()V

    .line 7920
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    invoke-static {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->-$$Nest$msetTaskSwitcherContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;)V

    .line 7921
    return-object p0
.end method

.method public setTaskSwitcherContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    .line 7910
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->copyOnWrite()V

    .line 7911
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->-$$Nest$msetTaskSwitcherContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;)V

    .line 7912
    return-object p0
.end method
