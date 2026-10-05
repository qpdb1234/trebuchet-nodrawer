.class public final synthetic Lcom/android/launcher3/touch/AllAppsSwipeController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public final synthetic f$0:F

.field public final synthetic f$1:Landroid/view/animation/Interpolator;


# direct methods
.method public synthetic constructor <init>(FLandroid/view/animation/Interpolator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/touch/AllAppsSwipeController$$ExternalSyntheticLambda0;->f$0:F

    iput-object p2, p0, Lcom/android/launcher3/touch/AllAppsSwipeController$$ExternalSyntheticLambda0;->f$1:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 2

    iget v0, p0, Lcom/android/launcher3/touch/AllAppsSwipeController$$ExternalSyntheticLambda0;->f$0:F

    iget-object v1, p0, Lcom/android/launcher3/touch/AllAppsSwipeController$$ExternalSyntheticLambda0;->f$1:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/touch/AllAppsSwipeController;->lambda$thresholdInterpolator$0(FLandroid/view/animation/Interpolator;F)F

    move-result p1

    return p1
.end method
