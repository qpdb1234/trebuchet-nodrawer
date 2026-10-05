.class public final synthetic Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lcom/android/launcher3/InvariantDeviceProfile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    iput-object p2, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda1;->f$2:Lcom/android/launcher3/InvariantDeviceProfile;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda1;->f$2:Lcom/android/launcher3/InvariantDeviceProfile;

    check-cast p1, Lcom/android/launcher3/model/BgDataModel;

    invoke-static {v0, v1, v2, p1}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->$r8$lambda$8PIlNZUglVn5s9AhHx4H7dPMrrY(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/model/BgDataModel;)V

    return-void
.end method
