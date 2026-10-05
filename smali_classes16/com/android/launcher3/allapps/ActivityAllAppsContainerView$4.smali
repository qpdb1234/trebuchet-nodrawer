.class Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActivityAllAppsContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->addSpringFromFlingUpdateListener(Landroid/animation/ValueAnimator;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

.field final synthetic val$progress:F

.field final synthetic val$velocity:F


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;FF)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    .line 1359
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$4;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$4;"
    iput-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$4;->this$0:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iput p2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$4;->val$progress:F

    iput p3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$4;->val$velocity:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 1362
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$4;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$4;"
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$4;->val$progress:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$4;->this$0:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 1363
    .local v0, "distance":F
    nop

    .line 1364
    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    const v2, 0x3fd9999a    # 1.7f

    mul-float/2addr v1, v2

    div-float v1, v0, v1

    iget v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$4;->val$velocity:F

    add-float/2addr v1, v2

    .line 1363
    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1366
    .local v1, "settleVelocity":F
    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$4;->this$0:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    const/high16 v3, 0x44960000    # 1200.0f

    mul-float/2addr v3, v1

    .line 1367
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1366
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x3e8

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->access$000(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;I)V

    .line 1368
    return-void
.end method
