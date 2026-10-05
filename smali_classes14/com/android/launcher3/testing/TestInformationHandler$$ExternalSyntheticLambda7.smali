.class public final synthetic Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda7;->f$0:Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda7;->f$0:Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;

    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-static {v0, p1}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$13(Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;Lcom/android/launcher3/Launcher;)Landroid/graphics/Point;

    move-result-object p1

    return-object p1
.end method
