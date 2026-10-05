.class public final synthetic Lcom/android/launcher3/model/ModelDbController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/model/ModelDbController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/ModelDbController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/ModelDbController$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/model/ModelDbController;

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/model/ModelDbController;

    check-cast p1, Landroid/os/UserHandle;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/model/ModelDbController;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    return-wide v0
.end method
