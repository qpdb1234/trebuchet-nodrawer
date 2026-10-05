.class Lcom/android/launcher3/LauncherAnimUtils$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LauncherAnimUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherAnimUtils;->newCancelListener(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mDispatched:Z

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/android/launcher3/LauncherAnimUtils$12;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 228
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/LauncherAnimUtils$12;->mDispatched:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 232
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAnimUtils$12;->mDispatched:Z

    if-nez v0, :cond_0

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAnimUtils$12;->mDispatched:Z

    .line 234
    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimUtils$12;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 236
    :cond_0
    return-void
.end method
