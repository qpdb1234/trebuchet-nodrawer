.class public Lcom/android/launcher3/anim/AnimatedFloat;
.super Ljava/lang/Object;
.source "AnimatedFloat.java"


# static fields
.field private static final NO_OP:Ljava/lang/Runnable;

.field public static final VALUE:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/anim/AnimatedFloat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEndValue:Ljava/lang/Float;

.field private final mUpdateCallback:Ljava/lang/Runnable;

.field private mValueAnimator:Landroid/animation/ObjectAnimator;

.field public value:F


# direct methods
.method static bridge synthetic -$$Nest$fgetmValueAnimator(Lcom/android/launcher3/anim/AnimatedFloat;)Landroid/animation/ObjectAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmEndValue(Lcom/android/launcher3/anim/AnimatedFloat;Ljava/lang/Float;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/anim/AnimatedFloat;->mEndValue:Ljava/lang/Float;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmValueAnimator(Lcom/android/launcher3/anim/AnimatedFloat;Landroid/animation/ObjectAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/anim/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat$1;

    const-string v1, "value"

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/anim/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    .line 41
    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/anim/AnimatedFloat$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/AnimatedFloat;->NO_OP:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    sget-object v0, Lcom/android/launcher3/anim/AnimatedFloat;->NO_OP:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "updateCallback"    # Ljava/lang/Runnable;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/launcher3/anim/AnimatedFloat;->mUpdateCallback:Ljava/lang/Runnable;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;F)V
    .locals 0
    .param p1, "updateCallback"    # Ljava/lang/Runnable;
    .param p2, "initialValue"    # F

    .line 59
    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    .line 60
    iput p2, p0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    .line 61
    return-void
.end method

.method static synthetic lambda$static$0()V
    .locals 0

    .line 41
    return-void
.end method


# virtual methods
.method public animateToValue(F)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p1, "end"    # F

    .line 67
    iget v0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public animateToValue(FF)Landroid/animation/ObjectAnimator;
    .locals 3
    .param p1, "start"    # F
    .param p2, "end"    # F

    .line 74
    invoke-virtual {p0}, Lcom/android/launcher3/anim/AnimatedFloat;->cancelAnimation()V

    .line 75
    sget-object v0, Lcom/android/launcher3/anim/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    .line 76
    new-instance v1, Lcom/android/launcher3/anim/AnimatedFloat$2;

    invoke-direct {v1, p0, p2}, Lcom/android/launcher3/anim/AnimatedFloat$2;-><init>(Lcom/android/launcher3/anim/AnimatedFloat;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 92
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public cancelAnimation()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 115
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 116
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    .line 120
    :cond_0
    return-void
.end method

.method public finishAnimation()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 129
    :cond_0
    return-void
.end method

.method public getRemainingTime()J
    .locals 7

    .line 146
    invoke-virtual {p0}, Lcom/android/launcher3/anim/AnimatedFloat;->isAnimating()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v3

    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_0

    .line 148
    :cond_0
    nop

    .line 146
    :goto_0
    return-wide v1
.end method

.method public isAnimating()Z
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAnimatingToValue(F)Z
    .locals 1
    .param p1, "endValue"    # F

    .line 139
    invoke-virtual {p0}, Lcom/android/launcher3/anim/AnimatedFloat;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->mEndValue:Ljava/lang/Float;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSettledOnValue(F)Z
    .locals 1
    .param p1, "endValue"    # F

    .line 155
    invoke-virtual {p0}, Lcom/android/launcher3/anim/AnimatedFloat;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateValue(F)V
    .locals 1
    .param p1, "v"    # F

    .line 100
    iget v0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iput p1, p0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    .line 102
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->mUpdateCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 104
    :cond_0
    return-void
.end method
