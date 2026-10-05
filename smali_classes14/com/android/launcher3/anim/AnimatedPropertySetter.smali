.class public Lcom/android/launcher3/anim/AnimatedPropertySetter;
.super Lcom/android/launcher3/anim/PropertySetter;
.source "AnimatedPropertySetter.java"


# instance fields
.field protected final mAnim:Landroid/animation/AnimatorSet;

.field protected mProgressAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/android/launcher3/anim/PropertySetter;-><init>()V

    .line 41
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/anim/AnimatedPropertySetter;->mAnim:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static synthetic lambda$addOnFrameCallback$0(Ljava/lang/Runnable;Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "anim"    # Landroid/animation/ValueAnimator;

    .line 117
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public add(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "a"    # Landroid/animation/Animator;

    .line 148
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatedPropertySetter;->mAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 149
    return-void
.end method

.method public addEndListener(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 133
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatedPropertySetter;->mProgressAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/anim/AnimatedPropertySetter;->mProgressAnimator:Landroid/animation/ValueAnimator;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatedPropertySetter;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-static {p1}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/util/function/Consumer;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 137
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public addListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 143
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatedPropertySetter;->mAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 144
    return-void
.end method

.method public addOnFrameCallback(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 117
    new-instance v0, Lcom/android/launcher3/anim/AnimatedPropertySetter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/launcher3/anim/AnimatedPropertySetter$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addOnFrameListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 118
    return-void
.end method

.method public addOnFrameListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 124
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatedPropertySetter;->mProgressAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 125
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/anim/AnimatedPropertySetter;->mProgressAnimator:Landroid/animation/ValueAnimator;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatedPropertySetter;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 129
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public buildAnim()Landroid/animation/AnimatorSet;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatedPropertySetter;->mProgressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->add(Landroid/animation/Animator;)V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/anim/AnimatedPropertySetter;->mProgressAnimator:Landroid/animation/ValueAnimator;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatedPropertySetter;->mAnim:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public setColor(Ljava/lang/Object;Landroid/util/IntProperty;ILandroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .locals 1
    .param p3, "value"    # I
    .param p4, "interpolator"    # Landroid/animation/TimeInterpolator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/IntProperty<",
            "TT;>;I",
            "Landroid/animation/TimeInterpolator;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .line 104
    .local p1, "target":Ljava/lang/Object;, "TT;"
    .local p2, "property":Landroid/util/IntProperty;, "Landroid/util/IntProperty<TT;>;"
    invoke-virtual {p2, p1}, Landroid/util/IntProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p3, :cond_0

    .line 105
    sget-object v0, Lcom/android/launcher3/anim/AnimatedPropertySetter;->NO_OP:Landroid/animation/AnimatorSet;

    return-object v0

    .line 107
    :cond_0
    filled-new-array {p3}, [I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 108
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0, p4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->add(Landroid/animation/Animator;)V

    .line 110
    return-object v0
.end method

.method public setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .locals 2
    .param p3, "value"    # F
    .param p4, "interpolator"    # Landroid/animation/TimeInterpolator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/FloatProperty<",
            "TT;>;F",
            "Landroid/animation/TimeInterpolator;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .line 79
    .local p1, "target":Ljava/lang/Object;, "TT;"
    .local p2, "property":Landroid/util/FloatProperty;, "Landroid/util/FloatProperty<TT;>;"
    invoke-virtual {p2, p1}, Landroid/util/FloatProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    .line 80
    sget-object v0, Lcom/android/launcher3/anim/AnimatedPropertySetter;->NO_OP:Landroid/animation/AnimatorSet;

    return-object v0

    .line 82
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 83
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0, p4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->add(Landroid/animation/Animator;)V

    .line 85
    return-object v0
.end method

.method public setInt(Ljava/lang/Object;Landroid/util/IntProperty;ILandroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .locals 1
    .param p3, "value"    # I
    .param p4, "interpolator"    # Landroid/animation/TimeInterpolator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/IntProperty<",
            "TT;>;I",
            "Landroid/animation/TimeInterpolator;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .line 91
    .local p1, "target":Ljava/lang/Object;, "TT;"
    .local p2, "property":Landroid/util/IntProperty;, "Landroid/util/IntProperty<TT;>;"
    invoke-virtual {p2, p1}, Landroid/util/IntProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p3, :cond_0

    .line 92
    sget-object v0, Lcom/android/launcher3/anim/AnimatedPropertySetter;->NO_OP:Landroid/animation/AnimatorSet;

    return-object v0

    .line 94
    :cond_0
    filled-new-array {p3}, [I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 95
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0, p4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 96
    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->add(Landroid/animation/Animator;)V

    .line 97
    return-object v0
.end method

.method public setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "alpha"    # F
    .param p3, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 46
    if-nez p1, :cond_0

    .line 47
    sget-object v0, Lcom/android/launcher3/anim/AnimatedPropertySetter;->NO_OP:Landroid/animation/AnimatorSet;

    return-object v0

    .line 52
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    .line 53
    invoke-static {p1}, Lcom/android/launcher3/anim/AlphaUpdateListener;->updateVisibility(Landroid/view/View;)V

    .line 54
    sget-object v0, Lcom/android/launcher3/anim/AnimatedPropertySetter;->NO_OP:Landroid/animation/AnimatorSet;

    return-object v0

    .line 57
    :cond_1
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 58
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    new-instance v1, Lcom/android/launcher3/anim/AlphaUpdateListener;

    invoke-direct {v1, p1}, Lcom/android/launcher3/anim/AlphaUpdateListener;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 59
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 60
    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->add(Landroid/animation/Animator;)V

    .line 61
    return-object v0
.end method

.method public setViewBackgroundColor(Landroid/view/View;ILandroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "color"    # I
    .param p3, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 66
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    if-ne v0, p2, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_BACKGROUND_COLOR:Landroid/util/IntProperty;

    filled-new-array {p2}, [I

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 71
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 72
    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->add(Landroid/animation/Animator;)V

    .line 73
    return-object v0

    .line 68
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/launcher3/anim/AnimatedPropertySetter;->NO_OP:Landroid/animation/AnimatorSet;

    return-object v0
.end method
