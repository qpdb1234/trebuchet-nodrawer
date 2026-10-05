.class Lcom/android/launcher3/folder/PreviewBackground$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PreviewBackground.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/PreviewBackground;->animateScale(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/PreviewBackground;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/PreviewBackground;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/folder/PreviewBackground;

    .line 429
    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->this$0:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 439
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->this$0:Lcom/android/launcher3/folder/PreviewBackground;

    iget-boolean v0, v0, Lcom/android/launcher3/folder/PreviewBackground;->mIsAccepting:Z

    if-nez v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->this$0:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-static {v0}, Lcom/android/launcher3/folder/PreviewBackground;->-$$Nest$mclearDrawingDelegate(Lcom/android/launcher3/folder/PreviewBackground;)V

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->this$0:Lcom/android/launcher3/folder/PreviewBackground;

    iget-boolean v1, v0, Lcom/android/launcher3/folder/PreviewBackground;->mIsHovered:Z

    iput-boolean v1, v0, Lcom/android/launcher3/folder/PreviewBackground;->mIsHoveredOrAnimating:Z

    .line 443
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->this$0:Lcom/android/launcher3/folder/PreviewBackground;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher3/folder/PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    .line 444
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 432
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->this$0:Lcom/android/launcher3/folder/PreviewBackground;

    iget-boolean v0, v0, Lcom/android/launcher3/folder/PreviewBackground;->mIsHovered:Z

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->this$0:Lcom/android/launcher3/folder/PreviewBackground;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/folder/PreviewBackground;->mIsHoveredOrAnimating:Z

    .line 435
    :cond_0
    return-void
.end method
