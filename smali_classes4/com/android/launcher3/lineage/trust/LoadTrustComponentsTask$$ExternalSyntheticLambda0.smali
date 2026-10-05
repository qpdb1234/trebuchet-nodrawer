.class public final synthetic Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/launcher3/lineage/trust/db/TrustComponent;

    check-cast p2, Lcom/android/launcher3/lineage/trust/db/TrustComponent;

    invoke-static {p1, p2}, Lcom/android/launcher3/lineage/trust/LoadTrustComponentsTask;->lambda$doInBackground$0(Lcom/android/launcher3/lineage/trust/db/TrustComponent;Lcom/android/launcher3/lineage/trust/db/TrustComponent;)I

    move-result p1

    return p1
.end method
