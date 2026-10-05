.class Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PrivateSpaceHeaderViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->animateCollapseAnimation(Landroid/view/ViewGroup;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;

.field final synthetic val$lockButton:Landroid/view/ViewGroup;

.field final synthetic val$scrollBar:Lcom/android/launcher3/views/RecyclerViewFastScroller;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;Lcom/android/launcher3/views/RecyclerViewFastScroller;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;

    .line 228
    iput-object p1, p0, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController$2;->this$0:Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;

    iput-object p2, p0, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController$2;->val$scrollBar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    iput-object p3, p0, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController$2;->val$lockButton:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 241
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 242
    iget-object v0, p0, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController$2;->val$scrollBar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    if-eqz v0, :cond_0

    .line 243
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    .line 244
    iget-object v0, p0, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController$2;->val$scrollBar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setVisibility(I)V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController$2;->this$0:Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->-$$Nest$fgetmPrivateProfileManager(Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;)Lcom/android/launcher3/allapps/PrivateProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/PrivateProfileManager;->lockPrivateProfile()V

    .line 247
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 231
    iget-object v0, p0, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController$2;->val$scrollBar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    if-eqz v0, :cond_0

    .line 232
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setVisibility(I)V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController$2;->this$0:Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->-$$Nest$mcollapse(Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;)V

    .line 237
    iget-object v0, p0, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController$2;->val$lockButton:Landroid/view/ViewGroup;

    sget v1, Lcom/android/launcher3/R$id;->lock_text:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 238
    return-void
.end method
