.class Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PrivateSpaceHeaderViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->updatePrivateStateAnimator(ZLandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;

.field final synthetic val$expand:Z

.field final synthetic val$lockButton:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;Landroid/view/ViewGroup;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;

    .line 263
    iput-object p1, p0, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController$3;->this$0:Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;

    iput-object p2, p0, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController$3;->val$lockButton:Landroid/view/ViewGroup;

    iput-boolean p3, p0, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController$3;->val$expand:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 267
    iget-object v0, p0, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController$3;->val$lockButton:Landroid/view/ViewGroup;

    sget v1, Lcom/android/launcher3/R$id;->lock_text:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController$3;->val$expand:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 268
    return-void
.end method
