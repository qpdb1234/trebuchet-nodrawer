.class public Lcom/android/launcher3/anim/PendingAnimation;
.super Lcom/android/launcher3/anim/AnimatedPropertySetter;
.source "PendingAnimation.java"


# instance fields
.field private final mAnimHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;",
            ">;"
        }
    .end annotation
.end field

.field private final mDuration:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "duration"    # J

    .line 46
    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimatedPropertySetter;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/anim/PendingAnimation;->mAnimHolders:Ljava/util/ArrayList;

    .line 47
    iput-wide p1, p0, Lcom/android/launcher3/anim/PendingAnimation;->mDuration:J

    .line 48
    return-void
.end method

.method static synthetic lambda$logAnimationProgressToTrace$0(Ljava/lang/String;Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p0, "counterName"    # Ljava/lang/String;
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 104
    nop

    .line 105
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 104
    invoke-static {p0, v0, v1}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public add(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "anim"    # Landroid/animation/Animator;

    .line 64
    sget-object v0, Lcom/android/launcher3/anim/SpringProperty;->DEFAULT:Lcom/android/launcher3/anim/SpringProperty;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Lcom/android/launcher3/anim/SpringProperty;)V

    .line 65
    return-void
.end method

.method public add(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;Lcom/android/launcher3/anim/SpringProperty;)V
    .locals 0
    .param p1, "anim"    # Landroid/animation/Animator;
    .param p2, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p3, "springProperty"    # Lcom/android/launcher3/anim/SpringProperty;

    .line 58
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 59
    invoke-virtual {p0, p1, p3}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Lcom/android/launcher3/anim/SpringProperty;)V

    .line 60
    return-void
.end method

.method public add(Landroid/animation/Animator;Lcom/android/launcher3/anim/SpringProperty;)V
    .locals 3
    .param p1, "a"    # Landroid/animation/Animator;
    .param p2, "springProperty"    # Lcom/android/launcher3/anim/SpringProperty;

    .line 68
    iget-object v0, p0, Lcom/android/launcher3/anim/PendingAnimation;->mAnim:Landroid/animation/AnimatorSet;

    iget-wide v1, p0, Lcom/android/launcher3/anim/PendingAnimation;->mDuration:J

    invoke-virtual {p1, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 69
    iget-wide v0, p0, Lcom/android/launcher3/anim/PendingAnimation;->mDuration:J

    iget-object v2, p0, Lcom/android/launcher3/anim/PendingAnimation;->mAnimHolders:Ljava/util/ArrayList;

    invoke-static {p1, v0, v1, p2, v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->addAnimationHoldersRecur(Landroid/animation/Animator;JLcom/android/launcher3/anim/SpringProperty;Ljava/util/ArrayList;)V

    .line 70
    return-void
.end method

.method public addAnimatedFloat(Lcom/android/launcher3/anim/AnimatedFloat;FFLandroid/animation/TimeInterpolator;)V
    .locals 1
    .param p1, "target"    # Lcom/android/launcher3/anim/AnimatedFloat;
    .param p2, "from"    # F
    .param p3, "to"    # F
    .param p4, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 95
    invoke-virtual {p1, p2, p3}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 96
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0, p4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 97
    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    .line 98
    return-void
.end method

.method public addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V
    .locals 2
    .param p3, "from"    # F
    .param p4, "to"    # F
    .param p5, "interpolator"    # Landroid/animation/TimeInterpolator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/FloatProperty<",
            "TT;>;FF",
            "Landroid/animation/TimeInterpolator;",
            ")V"
        }
    .end annotation

    .line 81
    .local p1, "target":Ljava/lang/Object;, "TT;"
    .local p2, "property":Landroid/util/FloatProperty;, "Landroid/util/FloatProperty<TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 v1, 0x1

    aput p4, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 82
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0, p5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 83
    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    .line 84
    return-void
.end method

.method public buildAnim()Landroid/animation/AnimatorSet;
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/android/launcher3/anim/PendingAnimation;->mAnimHolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/launcher3/anim/PendingAnimation;->mDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    .line 118
    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 5

    .line 125
    new-instance v0, Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p0}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/launcher3/anim/PendingAnimation;->mDuration:J

    iget-object v4, p0, Lcom/android/launcher3/anim/PendingAnimation;->mAnimHolders:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher3/anim/AnimatorPlaybackController;-><init>(Landroid/animation/AnimatorSet;JLjava/util/ArrayList;)V

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/android/launcher3/anim/PendingAnimation;->mDuration:J

    return-wide v0
.end method

.method public logAnimationProgressToTrace(Ljava/lang/String;)V
    .locals 1
    .param p1, "counterName"    # Ljava/lang/String;

    .line 102
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Lcom/android/launcher3/anim/PendingAnimation$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/launcher3/anim/PendingAnimation$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-super {p0, v0}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addOnFrameListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 107
    :cond_0
    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 76
    iget-object v0, p0, Lcom/android/launcher3/anim/PendingAnimation;->mAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 77
    return-void
.end method
