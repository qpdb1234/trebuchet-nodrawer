.class Lcom/android/launcher3/allapps/AllAppsTransitionController$VibrationAnimatorUpdateListener;
.super Ljava/lang/Object;
.source "AllAppsTransitionController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/AllAppsTransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VibrationAnimatorUpdateListener"
.end annotation


# instance fields
.field private final mController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

.field private final mEndThreshold:F

.field private mHasCommitted:Z

.field private final mStartThreshold:F

.field private final mVibratorWrapper:Lcom/android/launcher3/util/VibratorWrapper;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/AllAppsTransitionController;Lcom/android/launcher3/util/VibratorWrapper;FF)V
    .locals 0
    .param p1, "controller"    # Lcom/android/launcher3/allapps/AllAppsTransitionController;
    .param p2, "vibratorWrapper"    # Lcom/android/launcher3/util/VibratorWrapper;
    .param p3, "startThreshold"    # F
    .param p4, "endThreshold"    # F

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$VibrationAnimatorUpdateListener;->mController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    .line 524
    iput-object p2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$VibrationAnimatorUpdateListener;->mVibratorWrapper:Lcom/android/launcher3/util/VibratorWrapper;

    .line 525
    iput p3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$VibrationAnimatorUpdateListener;->mStartThreshold:F

    .line 526
    iput p4, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$VibrationAnimatorUpdateListener;->mEndThreshold:F

    .line 527
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 531
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$VibrationAnimatorUpdateListener;->mHasCommitted:Z

    if-eqz v0, :cond_0

    .line 532
    return-void

    .line 534
    :cond_0
    sget-object v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->ALL_APPS_PROGRESS:Landroid/util/FloatProperty;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$VibrationAnimatorUpdateListener;->mController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    .line 535
    invoke-virtual {v0, v1}, Landroid/util/FloatProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 536
    .local v0, "currentProgress":F
    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$VibrationAnimatorUpdateListener;->mStartThreshold:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$VibrationAnimatorUpdateListener;->mEndThreshold:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 537
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$VibrationAnimatorUpdateListener;->mVibratorWrapper:Lcom/android/launcher3/util/VibratorWrapper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/VibratorWrapper;->vibrateForDragTexture()V

    goto :goto_0

    .line 538
    :cond_1
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    .line 540
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$VibrationAnimatorUpdateListener;->mVibratorWrapper:Lcom/android/launcher3/util/VibratorWrapper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/VibratorWrapper;->vibrateForDragCommit()V

    .line 541
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$VibrationAnimatorUpdateListener;->mHasCommitted:Z

    .line 543
    :cond_2
    :goto_0
    return-void
.end method
