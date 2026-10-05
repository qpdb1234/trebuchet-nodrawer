.class public Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;
.super Landroid/view/WindowInsetsAnimation$Callback;
.source "KeyboardInsetAnimationCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;,
        Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardInsetListener;
    }
.end annotation


# instance fields
.field private mInitialTranslation:F

.field private mKeyboardTranslationState:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;

.field private mTerminalTranslation:F

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/WindowInsetsAnimation$Callback;-><init>(I)V

    .line 47
    sget-object v0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;->SYSTEM:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;

    iput-object v0, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mKeyboardTranslationState:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;

    .line 61
    iput-object p1, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mView:Landroid/view/View;

    .line 62
    return-void
.end method


# virtual methods
.method public getKeyboardTranslationState()Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mKeyboardTranslationState:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;

    return-object v0
.end method

.method public onEnd(Landroid/view/WindowInsetsAnimation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/WindowInsetsAnimation;

    .line 119
    iget-object v0, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardInsetListener;

    if-eqz v1, :cond_0

    .line 120
    check-cast v0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardInsetListener;

    invoke-interface {v0}, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardInsetListener;->onTranslationEnd()V

    .line 122
    :cond_0
    sget-object v0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;->SYSTEM:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;

    iput-object v0, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mKeyboardTranslationState:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;

    .line 123
    return-void
.end method

.method public onPrepare(Landroid/view/WindowInsetsAnimation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/WindowInsetsAnimation;

    .line 70
    sget-object v0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;->MANUAL_PREPARED:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;

    iput-object v0, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mKeyboardTranslationState:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;

    .line 71
    iget-object v0, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mInitialTranslation:F

    .line 72
    return-void
.end method

.method public onProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .locals 5
    .param p1, "windowInsets"    # Landroid/view/WindowInsets;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowInsets;",
            "Ljava/util/List<",
            "Landroid/view/WindowInsetsAnimation;",
            ">;)",
            "Landroid/view/WindowInsets;"
        }
    .end annotation

    .line 90
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInsetsAnimation;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mView:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mInitialTranslation:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 92
    return-object p1

    .line 94
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsetsAnimation;

    .line 96
    .local v0, "animation":Landroid/view/WindowInsetsAnimation;
    invoke-virtual {v0}, Landroid/view/WindowInsetsAnimation;->getDurationMillis()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 97
    invoke-virtual {v0}, Landroid/view/WindowInsetsAnimation;->getInterpolatedFraction()F

    move-result v1

    .line 98
    .local v1, "progress":F
    iget-object v2, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mView:Landroid/view/View;

    iget v3, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mInitialTranslation:F

    iget v4, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mTerminalTranslation:F

    .line 99
    invoke-static {v1, v3, v4}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v3

    .line 98
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 100
    .end local v1    # "progress":F
    goto :goto_0

    .line 102
    :cond_1
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    neg-int v1, v1

    .line 103
    .local v1, "translationY":I
    iget-object v2, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 105
    int-to-float v2, v1

    iget-object v3, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 107
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mView:Landroid/view/View;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 110
    .end local v1    # "translationY":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mView:Landroid/view/View;

    instance-of v2, v1, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardInsetListener;

    if-eqz v2, :cond_3

    .line 111
    check-cast v1, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardInsetListener;

    invoke-virtual {v0}, Landroid/view/WindowInsetsAnimation;->getAlpha()F

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardInsetListener;->onKeyboardAlphaChanged(F)V

    .line 114
    :cond_3
    return-object p1
.end method

.method public onStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .locals 2
    .param p1, "animation"    # Landroid/view/WindowInsetsAnimation;
    .param p2, "bounds"    # Landroid/view/WindowInsetsAnimation$Bounds;

    .line 78
    iget-object v0, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mTerminalTranslation:F

    .line 80
    iget-object v0, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mView:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mInitialTranslation:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 81
    sget-object v0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;->MANUAL_ONGOING:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;

    iput-object v0, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mKeyboardTranslationState:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardTranslationState;

    .line 82
    iget-object v0, p0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;->mView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardInsetListener;

    if-eqz v1, :cond_0

    .line 83
    check-cast v0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardInsetListener;

    invoke-interface {v0}, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardInsetListener;->onTranslationStart()V

    .line 85
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/WindowInsetsAnimation$Callback;->onStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;

    move-result-object v0

    return-object v0
.end method
