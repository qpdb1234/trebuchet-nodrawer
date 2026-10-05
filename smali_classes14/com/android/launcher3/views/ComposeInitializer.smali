.class public final Lcom/android/launcher3/views/ComposeInitializer;
.super Ljava/lang/Object;
.source "ComposeInitializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;
    }
.end annotation


# direct methods
.method static bridge synthetic -$$Nest$smonAttachedToWindow(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/views/ComposeInitializer;->onAttachedToWindow(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smonDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/views/ComposeInitializer;->onDetachedFromWindow(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getContentChild(Lcom/android/launcher3/views/ActivityContext;)Landroid/view/View;
    .locals 5
    .param p0, "target"    # Lcom/android/launcher3/views/ActivityContext;

    .line 67
    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    .line 68
    .local v0, "self":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 69
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    .line 70
    .local v2, "parentView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x1020002

    if-ne v3, v4, :cond_0

    return-object v0

    .line 71
    :cond_0
    move-object v0, v2

    .line 72
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 74
    .end local v2    # "parentView":Landroid/view/View;
    :cond_1
    return-object v0
.end method

.method public static initCompose(Lcom/android/launcher3/views/ActivityContext;)V
    .locals 2
    .param p0, "target"    # Lcom/android/launcher3/views/ActivityContext;

    .line 46
    invoke-static {p0}, Lcom/android/launcher3/views/ComposeInitializer;->getContentChild(Lcom/android/launcher3/views/ActivityContext;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/views/ComposeInitializer$1;

    invoke-direct {v1}, Lcom/android/launcher3/views/ComposeInitializer$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 59
    return-void
.end method

.method private static onAttachedToWindow(Landroid/view/View;)V
    .locals 3
    .param p0, "root"    # Landroid/view/View;

    .line 81
    invoke-static {p0}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    if-nez v0, :cond_2

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 87
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020002

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ComposeInitializer.onContentChildAttachedToWindow(View) must be called on the content child. Outside of activities and dialogs, this is usually the top-most View of a window."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_1
    :goto_0
    new-instance v1, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;

    invoke-direct {v1, p0}, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;-><init>(Landroid/view/View;)V

    .line 101
    .local v1, "lifecycleOwner":Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;
    invoke-virtual {v1}, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;->onCreate()V

    .line 105
    invoke-static {p0, v1}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->set(Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    .line 106
    invoke-static {p0, v1}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->set(Landroid/view/View;Landroidx/savedstate/SavedStateRegistryOwner;)V

    .line 107
    return-void

    .line 82
    .end local v0    # "parent":Landroid/view/ViewParent;
    .end local v1    # "lifecycleOwner":Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already has a LifecycleOwner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static onDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p0, "root"    # Landroid/view/View;

    .line 113
    invoke-static {p0}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    .line 114
    .local v0, "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    if-eqz v0, :cond_0

    .line 115
    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;

    invoke-virtual {v1}, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;->onDestroy()V

    .line 117
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->set(Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    .line 118
    invoke-static {p0, v1}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->set(Landroid/view/View;Landroidx/savedstate/SavedStateRegistryOwner;)V

    .line 119
    return-void
.end method
