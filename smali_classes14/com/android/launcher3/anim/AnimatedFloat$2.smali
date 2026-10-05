.class Lcom/android/launcher3/anim/AnimatedFloat$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimatedFloat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(FF)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/anim/AnimatedFloat;

.field final synthetic val$end:F


# direct methods
.method constructor <init>(Lcom/android/launcher3/anim/AnimatedFloat;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/anim/AnimatedFloat;

    .line 76
    iput-object p1, p0, Lcom/android/launcher3/anim/AnimatedFloat$2;->this$0:Lcom/android/launcher3/anim/AnimatedFloat;

    iput p2, p0, Lcom/android/launcher3/anim/AnimatedFloat$2;->val$end:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 86
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatedFloat$2;->this$0:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-static {v0}, Lcom/android/launcher3/anim/AnimatedFloat;->-$$Nest$fgetmValueAnimator(Lcom/android/launcher3/anim/AnimatedFloat;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatedFloat$2;->this$0:Lcom/android/launcher3/anim/AnimatedFloat;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;->-$$Nest$fputmValueAnimator(Lcom/android/launcher3/anim/AnimatedFloat;Landroid/animation/ObjectAnimator;)V

    .line 88
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatedFloat$2;->this$0:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-static {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;->-$$Nest$fputmEndValue(Lcom/android/launcher3/anim/AnimatedFloat;Ljava/lang/Float;)V

    .line 90
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 79
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatedFloat$2;->this$0:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-static {v0}, Lcom/android/launcher3/anim/AnimatedFloat;->-$$Nest$fgetmValueAnimator(Lcom/android/launcher3/anim/AnimatedFloat;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatedFloat$2;->this$0:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v1, p0, Lcom/android/launcher3/anim/AnimatedFloat$2;->val$end:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;->-$$Nest$fputmEndValue(Lcom/android/launcher3/anim/AnimatedFloat;Ljava/lang/Float;)V

    .line 82
    :cond_0
    return-void
.end method
