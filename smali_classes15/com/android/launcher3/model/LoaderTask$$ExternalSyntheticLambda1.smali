.class public final synthetic Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/model/BgDataModel$Callbacks;

.field public final synthetic f$1:Lcom/android/launcher3/model/AllAppsToWorkspaceTask$Placement;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/BgDataModel$Callbacks;Lcom/android/launcher3/model/AllAppsToWorkspaceTask$Placement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/model/BgDataModel$Callbacks;

    iput-object p2, p0, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda1;->f$1:Lcom/android/launcher3/model/AllAppsToWorkspaceTask$Placement;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/model/BgDataModel$Callbacks;

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda1;->f$1:Lcom/android/launcher3/model/AllAppsToWorkspaceTask$Placement;

    invoke-static {v0, v1}, Lcom/android/launcher3/model/LoaderTask;->lambda$run$1(Lcom/android/launcher3/model/BgDataModel$Callbacks;Lcom/android/launcher3/model/AllAppsToWorkspaceTask$Placement;)V

    return-void
.end method
