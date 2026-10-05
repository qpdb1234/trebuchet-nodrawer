.class public Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;
.super Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;
.source "ShortcutMenuAccessibilityDelegate.java"


# direct methods
.method public static synthetic $r8$lambda$fViryi87J1RlL5MOKOIHHCS5CA8(Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;Lcom/android/launcher3/model/data/WorkspaceItemInfo;I[I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->lambda$performAction$0(Lcom/android/launcher3/model/data/WorkspaceItemInfo;I[I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 42
    invoke-direct {p0, p1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;-><init>(Lcom/android/launcher3/Launcher;)V

    .line 43
    return-void
.end method

.method private synthetic lambda$performAction$0(Lcom/android/launcher3/model/data/WorkspaceItemInfo;I[I)V
    .locals 7
    .param p1, "info"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p2, "screenId"    # I
    .param p3, "coordinates"    # [I

    .line 65
    iget-object v0, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v1

    const/16 v3, -0x64

    const/4 v0, 0x0

    aget v5, p3, v0

    const/4 v0, 0x1

    aget v6, p3, v0

    move-object v2, p1

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 68
    iget-object v1, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;Z)V

    .line 69
    iget-object v0, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    .line 70
    sget v0, Lcom/android/launcher3/R$string;->item_added_to_workspace:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->announceConfirmation(I)V

    .line 71
    return-void
.end method


# virtual methods
.method protected getSupportedActions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/List;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<",
            "Lcom/android/launcher3/Launcher;",
            ">.",
            "LauncherAction;",
            ">;)V"
        }
    .end annotation

    .line 47
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<Lcom/android/launcher3/Launcher;>.LauncherAction;>;"
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    sget v1, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->ADD_TO_WORKSPACE:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_0
    return-void
.end method

.method protected performAction(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;IZ)Z
    .locals 7
    .param p1, "host"    # Landroid/view/View;
    .param p2, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "action"    # I
    .param p4, "fromKeyboard"    # Z

    .line 54
    sget v0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->ADD_TO_WORKSPACE:I

    const/4 v1, 0x0

    if-ne p3, v0, :cond_2

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-nez v0, :cond_0

    .line 56
    return v1

    .line 58
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getFinalInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    .line 59
    .local v0, "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 60
    .local v2, "coordinates":[I
    invoke-virtual {p0, p2, v2}, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->findSpaceOnWorkspace(Lcom/android/launcher3/model/data/ItemInfo;[I)I

    move-result v3

    .line 61
    .local v3, "screenId":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 62
    return v1

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    sget-object v4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    new-instance v5, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v0, v3, v2}, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;Lcom/android/launcher3/model/data/WorkspaceItemInfo;I[I)V

    invoke-static {v5}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v6, v5}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;ZLandroid/animation/Animator$AnimatorListener;)V

    .line 72
    return v6

    .line 74
    .end local v0    # "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .end local v2    # "coordinates":[I
    .end local v3    # "screenId":I
    :cond_2
    return v1
.end method
