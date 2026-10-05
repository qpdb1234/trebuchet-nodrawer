.class public final synthetic Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;

.field public final synthetic f$1:Lcom/android/launcher3/celllayout/ReorderParameters;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;Lcom/android/launcher3/celllayout/ReorderParameters;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;

    iput-object p2, p0, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm$$ExternalSyntheticLambda3;->f$1:Lcom/android/launcher3/celllayout/ReorderParameters;

    iput-boolean p3, p0, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm$$ExternalSyntheticLambda3;->f$2:Z

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;

    iget-object v1, p0, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm$$ExternalSyntheticLambda3;->f$1:Lcom/android/launcher3/celllayout/ReorderParameters;

    iget-boolean v2, p0, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm$$ExternalSyntheticLambda3;->f$2:Z

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->$r8$lambda$zIiOUTIb6mWxd-Wfc_sVCS3MA7I(Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;Lcom/android/launcher3/celllayout/ReorderParameters;Z)Lcom/android/launcher3/celllayout/ItemConfiguration;

    move-result-object v0

    return-object v0
.end method
