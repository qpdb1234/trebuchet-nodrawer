.class public Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;
.super Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;
.source "LauncherAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<",
        "Lcom/android/launcher3/Launcher;",
        ">;"
    }
.end annotation


# static fields
.field protected static final ADD_TO_WORKSPACE:I

.field public static final DEEP_SHORTCUTS:I

.field public static final DISMISS_PREDICTION:I

.field public static final INVALID:I = -0x1

.field protected static final MOVE:I

.field protected static final MOVE_TO_WORKSPACE:I

.field public static final PIN_PREDICTION:I

.field public static final RECONFIGURE:I

.field public static final REMOVE:I

.field protected static final RESIZE:I

.field private static final TAG:Ljava/lang/String; = "LauncherAccessibilityDelegate"

.field public static final UNINSTALL:I


# direct methods
.method public static synthetic $r8$lambda$-pjjXYGxAzla-GRUiJnrJZIpzO4(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->lambda$addToWorkspace$5(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2PnKQMrXEBSmQqP0hP46oqWFxHI(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->lambda$getSupportedResizeActions$1(Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$49Rrcf5WSpf5THbMHhPEagYFGFA(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->lambda$getSupportedResizeActions$4(Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$7zx7DAyIVgjkewWagglREvvmRUo(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->lambda$moveToWorkspace$8(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NyUP8bWqHR0HWzlmQC36FqK0ShY(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/model/data/ItemInfo;I[IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->lambda$addToWorkspace$6(Lcom/android/launcher3/model/data/ItemInfo;I[IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wtm17ReX-l5w_WV7aGnAixUI4eI(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->lambda$getSupportedResizeActions$3(Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$hxMAeHW7lnN7x1C5qhcZzZa3nXE(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->lambda$getSupportedResizeActions$2(Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 66
    sget v0, Lcom/android/launcher3/R$id;->action_remove:I

    sput v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->REMOVE:I

    .line 67
    sget v0, Lcom/android/launcher3/R$id;->action_uninstall:I

    sput v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->UNINSTALL:I

    .line 68
    sget v0, Lcom/android/launcher3/R$id;->action_dismiss_prediction:I

    sput v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->DISMISS_PREDICTION:I

    .line 69
    sget v0, Lcom/android/launcher3/R$id;->action_pin_prediction:I

    sput v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->PIN_PREDICTION:I

    .line 70
    sget v0, Lcom/android/launcher3/R$id;->action_reconfigure:I

    sput v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->RECONFIGURE:I

    .line 72
    sget v0, Lcom/android/launcher3/R$id;->action_add_to_workspace:I

    sput v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->ADD_TO_WORKSPACE:I

    .line 73
    sget v0, Lcom/android/launcher3/R$id;->action_move:I

    sput v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->MOVE:I

    .line 74
    sget v0, Lcom/android/launcher3/R$id;->action_move_to_workspace:I

    sput v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->MOVE_TO_WORKSPACE:I

    .line 75
    sget v0, Lcom/android/launcher3/R$id;->action_resize:I

    sput v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->RESIZE:I

    .line 76
    sget v0, Lcom/android/launcher3/R$id;->action_deep_shortcuts:I

    sput v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->DEEP_SHORTCUTS:I

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 6
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 79
    invoke-direct {p0, p1}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;-><init>(Landroid/content/Context;)V

    .line 81
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    sget v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->REMOVE:I

    new-instance v2, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    sget v3, Lcom/android/launcher3/R$string;->remove_drop_target_label:I

    const/16 v4, 0x34

    invoke-direct {v2, p0, v1, v3, v4}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    sget v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->UNINSTALL:I

    new-instance v2, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    sget v3, Lcom/android/launcher3/R$string;->uninstall_drop_target_label:I

    const/16 v5, 0x31

    invoke-direct {v2, p0, v1, v3, v5}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    sget v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->DISMISS_PREDICTION:I

    new-instance v2, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    sget v3, Lcom/android/launcher3/R$string;->dismiss_prediction_label:I

    invoke-direct {v2, p0, v1, v3, v4}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    sget v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->RECONFIGURE:I

    new-instance v2, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    sget v3, Lcom/android/launcher3/R$string;->gadget_setup_text:I

    const/16 v4, 0x21

    invoke-direct {v2, p0, v1, v3, v4}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    sget v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->ADD_TO_WORKSPACE:I

    new-instance v2, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    sget v3, Lcom/android/launcher3/R$string;->action_add_to_workspace:I

    const/16 v4, 0x2c

    invoke-direct {v2, p0, v1, v3, v4}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    sget v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->MOVE:I

    new-instance v2, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    sget v3, Lcom/android/launcher3/R$string;->action_move:I

    const/16 v5, 0x29

    invoke-direct {v2, p0, v1, v3, v5}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    sget v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->MOVE_TO_WORKSPACE:I

    new-instance v2, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    sget v3, Lcom/android/launcher3/R$string;->action_move_to_workspace:I

    invoke-direct {v2, p0, v1, v3, v4}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    sget v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->RESIZE:I

    new-instance v2, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    sget v3, Lcom/android/launcher3/R$string;->action_resize:I

    const/16 v4, 0x2e

    invoke-direct {v2, p0, v1, v3, v4}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    sget v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->DEEP_SHORTCUTS:I

    new-instance v2, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    sget v3, Lcom/android/launcher3/R$string;->action_deep_shortcut:I

    const/16 v4, 0x2f

    invoke-direct {v2, p0, v1, v3, v4}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    return-void
.end method

.method private bindItem(Lcom/android/launcher3/model/data/ItemInfo;Z)V
    .locals 4
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "focusForAccessibility"    # Z

    .line 433
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getItemInflater()Lcom/android/launcher3/util/ItemInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/util/ItemInflater;->inflateItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/ModelWriter;)Landroid/view/View;

    move-result-object v0

    .line 434
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 435
    return-void

    .line 437
    :cond_0
    const/4 v1, 0x0

    .line 438
    .local v1, "anim":Landroid/animation/AnimatorSet;
    if-eqz p2, :cond_1

    .line 439
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v1, v2

    .line 440
    new-instance v2, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda3;-><init>(Landroid/view/View;)V

    invoke-static {v2}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 443
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/launcher3/Launcher;->bindInflatedItems(Ljava/util/List;Landroid/animation/AnimatorSet;)V

    .line 444
    return-void
.end method

.method public static getSupportedActions(Lcom/android/launcher3/Launcher;Landroid/view/View;)Ljava/util/List;
    .locals 4
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "host"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Launcher;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<",
            "Lcom/android/launcher3/Launcher;",
            ">.",
            "LauncherAction;",
            ">;"
        }
    .end annotation

    .line 146
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-nez v0, :cond_0

    goto :goto_1

    .line 149
    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpen(Landroid/content/Context;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v0

    .line 150
    .local v0, "container":Lcom/android/launcher3/popup/PopupContainerWithArrow;
    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v1

    .line 152
    .local v1, "delegate":Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<Lcom/android/launcher3/Launcher;>.LauncherAction;>;"
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v1, p1, v3, v2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->getSupportedActions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/List;)V

    .line 154
    return-object v2

    .line 147
    .end local v0    # "container":Lcom/android/launcher3/popup/PopupContainerWithArrow;
    .end local v1    # "delegate":Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<Lcom/android/launcher3/Launcher;>.LauncherAction;>;"
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getSupportedResizeActions(Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Ljava/util/List;
    .locals 11
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/views/OptionsPopupView$OptionItem;",
            ">;"
        }
    .end annotation

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/views/OptionsPopupView$OptionItem;>;"
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 212
    .local v1, "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v1, :cond_0

    .line 213
    return-object v0

    .line 217
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/dragndrop/DragView;

    if-eqz v2, :cond_1

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragView;->getContentViewParent()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    .local v2, "layout":Lcom/android/launcher3/CellLayout;
    goto :goto_0

    .line 220
    .end local v2    # "layout":Lcom/android/launcher3/CellLayout;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    .line 222
    .restart local v2    # "layout":Lcom/android/launcher3/CellLayout;
    :goto_0
    iget v3, v1, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    .line 223
    iget v3, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->cellX:I

    iget v5, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    add-int/2addr v3, v5

    iget v5, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->cellY:I

    iget v6, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    invoke-virtual {v2, v3, v5, v4, v6}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->cellX:I

    sub-int/2addr v3, v4

    iget v5, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->cellY:I

    iget v6, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    .line 224
    invoke-virtual {v2, v3, v5, v4, v6}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 225
    :cond_2
    new-instance v3, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    iget-object v6, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/launcher3/R$string;->action_increase_width:I

    sget v8, Lcom/android/launcher3/R$drawable;->ic_widget_width_increase:I

    sget-object v9, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->IGNORE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    new-instance v10, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda4;

    invoke-direct {v10, p0, p1, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;-><init>(Landroid/content/Context;IILcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View$OnLongClickListener;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_3
    iget v3, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    iget v5, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->minSpanX:I

    if-le v3, v5, :cond_4

    iget v3, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    if-le v3, v4, :cond_4

    .line 233
    new-instance v3, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    iget-object v6, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/launcher3/R$string;->action_decrease_width:I

    sget v8, Lcom/android/launcher3/R$drawable;->ic_widget_width_decrease:I

    sget-object v9, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->IGNORE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    new-instance v10, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda5;

    invoke-direct {v10, p0, p1, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;-><init>(Landroid/content/Context;IILcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View$OnLongClickListener;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_4
    iget v3, v1, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_7

    .line 242
    iget v3, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->cellX:I

    iget v5, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->cellY:I

    iget v6, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    add-int/2addr v5, v6

    iget v6, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    invoke-virtual {v2, v3, v5, v6, v4}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v3

    if-nez v3, :cond_5

    iget v3, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->cellX:I

    iget v5, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->cellY:I

    sub-int/2addr v5, v4

    iget v6, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    .line 243
    invoke-virtual {v2, v3, v5, v6, v4}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 244
    :cond_5
    new-instance v3, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    iget-object v6, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/launcher3/R$string;->action_increase_height:I

    sget v8, Lcom/android/launcher3/R$drawable;->ic_widget_height_increase:I

    sget-object v9, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->IGNORE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    new-instance v10, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda6;

    invoke-direct {v10, p0, p1, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda6;-><init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;-><init>(Landroid/content/Context;IILcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View$OnLongClickListener;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_6
    iget v3, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    iget v5, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->minSpanY:I

    if-le v3, v5, :cond_7

    iget v3, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    if-le v3, v4, :cond_7

    .line 252
    new-instance v3, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    iget-object v6, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/launcher3/R$string;->action_decrease_height:I

    sget v8, Lcom/android/launcher3/R$drawable;->ic_widget_height_decrease:I

    sget-object v9, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->IGNORE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    new-instance v10, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda7;

    invoke-direct {v10, p0, p1, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda7;-><init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;-><init>(Landroid/content/Context;IILcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View$OnLongClickListener;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_7
    return-object v0
.end method

.method private synthetic lambda$addToWorkspace$5(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 7
    .param p1, "fi"    # Lcom/android/launcher3/model/data/FolderInfo;
    .param p2, "member"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 424
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v1

    iget v3, p1, Lcom/android/launcher3/model/data/FolderInfo;->id:I

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 425
    return-void
.end method

.method private synthetic lambda$addToWorkspace$6(Lcom/android/launcher3/model/data/ItemInfo;I[IZ)V
    .locals 10
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "screenId"    # I
    .param p3, "coordinates"    # [I
    .param p4, "accessibility"    # Z

    .line 397
    instance-of v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 398
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    iget-object v3, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    invoke-interface {v0, v3}, Lcom/android/launcher3/model/data/WorkspaceItemFactory;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    .line 399
    .local v0, "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    iget-object v3, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v4

    const/16 v6, -0x64

    aget v8, p3, v2

    aget v9, p3, v1

    move-object v5, v0

    move v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 403
    invoke-direct {p0, p1, p4}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->bindItem(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    .line 404
    sget v1, Lcom/android/launcher3/R$string;->item_added_to_workspace:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->announceConfirmation(I)V

    .line 405
    .end local v0    # "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    goto/16 :goto_0

    :cond_0
    instance-of v0, p1, Lcom/android/launcher3/PendingAddItemInfo;

    if-eqz v0, :cond_1

    .line 406
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/PendingAddItemInfo;

    .line 407
    .local v0, "info":Lcom/android/launcher3/PendingAddItemInfo;
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    .line 408
    .local v1, "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    invoke-virtual {v1, p2}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Workspace;->snapToPage(I)Z

    .line 409
    iget-object v2, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/Launcher;

    const/16 v5, -0x64

    iget v8, v0, Lcom/android/launcher3/PendingAddItemInfo;->spanX:I

    iget v9, v0, Lcom/android/launcher3/PendingAddItemInfo;->spanY:I

    move-object v4, v0

    move v6, p2

    move-object v7, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/launcher3/Launcher;->addPendingItem(Lcom/android/launcher3/PendingAddItemInfo;II[III)V

    .line 411
    .end local v0    # "info":Lcom/android/launcher3/PendingAddItemInfo;
    .end local v1    # "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_2

    .line 412
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->clone()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    .line 413
    .local v0, "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    iget-object v3, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v3

    const/16 v5, -0x64

    aget v7, p3, v2

    aget v8, p3, v1

    move-object v4, v0

    move v6, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 416
    invoke-direct {p0, v0, p4}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->bindItem(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    .line 417
    .end local v0    # "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/FolderInfo;

    .line 418
    .local v0, "fi":Lcom/android/launcher3/model/data/FolderInfo;
    iget-object v3, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v9

    .line 419
    .local v9, "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    invoke-virtual {v9, p2}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v3

    invoke-virtual {v9, v3}, Lcom/android/launcher3/Workspace;->snapToPage(I)Z

    .line 420
    iget-object v3, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v3

    const/16 v5, -0x64

    aget v7, p3, v2

    aget v8, p3, v1

    move-object v4, v0

    move v6, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 423
    iget-object v1, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/model/data/FolderInfo;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 426
    invoke-direct {p0, v0, p4}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->bindItem(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    .line 428
    .end local v0    # "fi":Lcom/android/launcher3/model/data/FolderInfo;
    .end local v9    # "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic lambda$bindItem$7(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 441
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private synthetic lambda$getSupportedResizeActions$1(Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Landroid/view/View;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .param p3, "v"    # Landroid/view/View;

    .line 229
    sget v0, Lcom/android/launcher3/R$string;->action_increase_width:I

    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->performResizeAction(ILandroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$getSupportedResizeActions$2(Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Landroid/view/View;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .param p3, "v"    # Landroid/view/View;

    .line 237
    sget v0, Lcom/android/launcher3/R$string;->action_decrease_width:I

    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->performResizeAction(ILandroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$getSupportedResizeActions$3(Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Landroid/view/View;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .param p3, "v"    # Landroid/view/View;

    .line 248
    sget v0, Lcom/android/launcher3/R$string;->action_increase_height:I

    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->performResizeAction(ILandroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$getSupportedResizeActions$4(Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Landroid/view/View;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .param p3, "v"    # Landroid/view/View;

    .line 256
    sget v0, Lcom/android/launcher3/R$string;->action_decrease_height:I

    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->performResizeAction(ILandroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$moveToWorkspace$8(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 470
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;Z)V

    .line 471
    sget v0, Lcom/android/launcher3/R$string;->item_moved:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->announceConfirmation(I)V

    .line 472
    return-void
.end method

.method static synthetic lambda$performAction$0(Landroid/view/View;)V
    .locals 2
    .param p0, "host"    # Landroid/view/View;

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 188
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 189
    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 190
    return-void
.end method

.method private performResizeAction(ILandroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Z
    .locals 7
    .param p1, "action"    # I
    .param p2, "host"    # Landroid/view/View;
    .param p3, "info"    # Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 263
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    .line 264
    .local v0, "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    .line 265
    .local v1, "layout":Lcom/android/launcher3/CellLayout;
    invoke-virtual {v1, p2}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 267
    sget v2, Lcom/android/launcher3/R$string;->action_increase_width:I

    const/4 v3, 0x1

    if-ne p1, v2, :cond_3

    .line 268
    invoke-virtual {p2}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    if-ne v2, v3, :cond_0

    iget v2, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->cellX:I

    sub-int/2addr v2, v3

    iget v4, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->cellY:I

    iget v5, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    .line 269
    invoke-virtual {v1, v2, v4, v3, v5}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget v2, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->cellX:I

    iget v4, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    add-int/2addr v2, v4

    iget v4, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->cellY:I

    iget v5, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    .line 270
    invoke-virtual {v1, v2, v4, v3, v5}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v2

    if-nez v2, :cond_2

    .line 271
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellX(I)V

    .line 272
    iget v2, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->cellX:I

    sub-int/2addr v2, v3

    iput v2, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->cellX:I

    .line 274
    :cond_2
    iget v2, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    .line 275
    iget v2, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    add-int/2addr v2, v3

    iput v2, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    goto :goto_0

    .line 276
    :cond_3
    sget v2, Lcom/android/launcher3/R$string;->action_decrease_width:I

    if-ne p1, v2, :cond_4

    .line 277
    iget v2, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    .line 278
    iget v2, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    sub-int/2addr v2, v3

    iput v2, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    goto :goto_0

    .line 279
    :cond_4
    sget v2, Lcom/android/launcher3/R$string;->action_increase_height:I

    if-ne p1, v2, :cond_6

    .line 280
    iget v2, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->cellX:I

    iget v4, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->cellY:I

    iget v5, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    add-int/2addr v4, v5

    iget v5, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    invoke-virtual {v1, v2, v4, v5, v3}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v2

    if-nez v2, :cond_5

    .line 281
    invoke-virtual {v0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellY(I)V

    .line 282
    iget v2, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->cellY:I

    sub-int/2addr v2, v3

    iput v2, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->cellY:I

    .line 284
    :cond_5
    iget v2, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    .line 285
    iget v2, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    add-int/2addr v2, v3

    iput v2, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    goto :goto_0

    .line 286
    :cond_6
    sget v2, Lcom/android/launcher3/R$string;->action_decrease_height:I

    if-ne p1, v2, :cond_7

    .line 287
    iget v2, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    .line 288
    iget v2, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    sub-int/2addr v2, v3

    iput v2, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    .line 291
    :cond_7
    :goto_0
    invoke-virtual {v1, p2}, Lcom/android/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 292
    move-object v2, p2

    check-cast v2, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget-object v4, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    iget v5, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    iget v6, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    invoke-static {v2, v4, v5, v6}, Lcom/android/launcher3/widget/util/WidgetSizes;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Landroid/content/Context;II)V

    .line 294
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 295
    iget-object v2, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 296
    iget-object v2, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    sget v4, Lcom/android/launcher3/R$string;->widget_resized:I

    iget v5, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/Launcher;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->announceConfirmation(Ljava/lang/String;)V

    .line 297
    return v3
.end method

.method private supportAddToWorkSpace(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 134
    instance-of v0, p1, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/AppInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/AppInfo;->runtimeStatusFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_2

    :cond_0
    instance-of v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_2

    :cond_1
    instance-of v0, p1, Lcom/android/launcher3/PendingAddItemInfo;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/PendingAddItemInfo;

    iget v0, v0, Lcom/android/launcher3/PendingAddItemInfo;->runtimeStatusFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addToWorkspace(Lcom/android/launcher3/model/data/ItemInfo;Z)Z
    .locals 11
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "accessibility"    # Z

    .line 391
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 392
    .local v0, "coordinates":[I
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->findSpaceOnWorkspace(Lcom/android/launcher3/model/data/ItemInfo;[I)I

    move-result v7

    .line 393
    .local v7, "screenId":I
    const/4 v1, -0x1

    if-ne v7, v1, :cond_0

    .line 394
    const/4 v1, 0x0

    return v1

    .line 396
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v8

    sget-object v9, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    new-instance v10, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda0;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move v4, v7

    move-object v5, v0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/model/data/ItemInfo;I[IZ)V

    invoke-static {v10}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v8, v9, v2, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;ZLandroid/animation/Animator$AnimatorListener;)V

    .line 429
    return v2
.end method

.method announceConfirmation(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 301
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->announceConfirmation(Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method protected beginAccessibleDrag(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Z
    .locals 7
    .param p1, "item"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "fromKeyboard"    # Z

    .line 306
    invoke-virtual {p0, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->itemSupportsAccessibleDrag(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 307
    return v1

    .line 310
    :cond_0
    new-instance v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;

    invoke-direct {v0}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;

    .line 311
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;

    iput-object p2, v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;->info:Lcom/android/launcher3/model/data/ItemInfo;

    .line 312
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;

    iput-object p1, v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;->item:Landroid/view/View;

    .line 313
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;

    sget-object v2, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragType;->ICON:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragType;

    iput-object v2, v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;->dragType:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragType;

    .line 314
    instance-of v0, p2, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;

    sget-object v2, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragType;->FOLDER:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragType;

    iput-object v2, v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;->dragType:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragType;

    goto :goto_0

    .line 316
    :cond_1
    instance-of v0, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_2

    .line 317
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;

    sget-object v2, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragType;->WIDGET:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragType;

    iput-object v2, v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;->dragType:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragType;

    .line 320
    :cond_2
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 321
    .local v0, "pos":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 322
    iget-object v2, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 324
    new-instance v2, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v2}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    .line 325
    .local v2, "options":Lcom/android/launcher3/dragndrop/DragOptions;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    .line 326
    iput-boolean p3, v2, Lcom/android/launcher3/dragndrop/DragOptions;->isKeyboardDrag:Z

    .line 327
    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    iput-object v4, v2, Lcom/android/launcher3/dragndrop/DragOptions;->simulatedDndStartPoint:Landroid/graphics/Point;

    .line 329
    if-eqz p3, :cond_3

    .line 330
    iget-object v4, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/android/launcher3/R$layout;->keyboard_drag_and_drop:I

    iget-object v6, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/android/launcher3/Launcher;

    .line 331
    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;

    .line 332
    .local v1, "popup":Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;
    invoke-virtual {v1, p1, p2, v2}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->showForIcon(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 333
    .end local v1    # "popup":Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;
    goto :goto_1

    .line 334
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-static {p1, v1, p2, v2}, Lcom/android/launcher3/touch/ItemLongClickListener;->beginDrag(Landroid/view/View;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 336
    :goto_1
    return v3
.end method

.method protected findSpaceOnWorkspace(Lcom/android/launcher3/model/data/ItemInfo;[I)I
    .locals 9
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "outCoordinates"    # [I

    .line 343
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    .line 344
    .local v0, "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getScreenOrder()Lcom/android/launcher3/util/IntArray;

    move-result-object v1

    .line 348
    .local v1, "workspaceScreens":Lcom/android/launcher3/util/IntArray;
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v2

    .line 349
    .local v2, "screenIndex":I
    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v3

    .line 350
    .local v3, "screenId":I
    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout;

    .line 352
    .local v4, "layout":Lcom/android/launcher3/CellLayout;
    iget v5, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v6, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v4, p2, v5, v6}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v5

    .line 353
    .local v5, "found":Z
    const/4 v2, 0x0

    .line 354
    :goto_0
    if-nez v5, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 355
    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v3

    .line 356
    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Lcom/android/launcher3/CellLayout;

    .line 357
    iget v6, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v4, p2, v6, v7}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v5

    .line 358
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 361
    :cond_0
    if-eqz v5, :cond_1

    .line 362
    return v3

    .line 365
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->addExtraEmptyScreens()V

    .line 366
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->commitExtraEmptyScreens()Lcom/android/launcher3/util/IntSet;

    move-result-object v6

    .line 367
    .local v6, "emptyScreenIds":Lcom/android/launcher3/util/IntSet;
    invoke-virtual {v6}, Lcom/android/launcher3/util/IntSet;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 369
    const/4 v7, -0x1

    return v7

    .line 372
    :cond_2
    invoke-virtual {v6}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v3

    .line 373
    invoke-virtual {v0, v3}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v4

    .line 374
    iget v7, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v8, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v4, p2, v7, v8}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v5

    .line 376
    if-nez v5, :cond_3

    .line 377
    const-string v7, "LauncherAccessibilityDelegate"

    const-string v8, "Not enough space on an empty screen"

    invoke-static {v7, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_3
    return v3
.end method

.method protected getSupportedActions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/List;)V
    .locals 6
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

    .line 105
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<Lcom/android/launcher3/Launcher;>.LauncherAction;>;"
    invoke-static {p2}, Lcom/android/launcher3/util/ShortcutUtil;->supportsShortcuts(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    sget v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->DEEP_SHORTCUTS:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDropTargetBar()Lcom/android/launcher3/DropTargetBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DropTargetBar;->getDropTargets()[Lcom/android/launcher3/ButtonDropTarget;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 110
    .local v3, "target":Lcom/android/launcher3/ButtonDropTarget;
    invoke-virtual {v3, p2, p1}, Lcom/android/launcher3/ButtonDropTarget;->supportsAccessibilityDrop(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 111
    iget-object v4, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/android/launcher3/ButtonDropTarget;->getAccessibilityAction()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .end local v3    # "target":Lcom/android/launcher3/ButtonDropTarget;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->itemSupportsAccessibleDrag(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 117
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    sget v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->MOVE:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ltz v0, :cond_3

    .line 120
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    sget v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->MOVE_TO_WORKSPACE:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 121
    :cond_3
    instance-of v0, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_4

    .line 122
    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->getSupportedResizeActions(Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 123
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    sget v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->RESIZE:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_4
    :goto_1
    invoke-direct {p0, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->supportAddToWorkSpace(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 129
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    sget v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->ADD_TO_WORKSPACE:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_5
    return-void
.end method

.method public moveToWorkspace(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 11
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 453
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    .line 454
    .local v0, "folder":Lcom/android/launcher3/folder/Folder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/Folder;->close(Z)V

    .line 455
    move-object v8, p1

    check-cast v8, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 456
    .local v8, "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v8, v3}, Lcom/android/launcher3/model/data/FolderInfo;->remove(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    .line 458
    const/4 v2, 0x2

    new-array v9, v2, [I

    .line 459
    .local v9, "coordinates":[I
    invoke-virtual {p0, p1, v9}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->findSpaceOnWorkspace(Lcom/android/launcher3/model/data/ItemInfo;[I)I

    move-result v10

    .line 460
    .local v10, "screenId":I
    const/4 v2, -0x1

    if-ne v10, v2, :cond_0

    .line 461
    return v3

    .line 463
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    const/16 v4, -0x64

    aget v6, v9, v3

    aget v7, v9, v1

    move-object v3, v8

    move v5, v10

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/model/ModelWriter;->moveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 469
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, p1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda8;-><init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 473
    return v1
.end method

.method protected performAction(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;IZ)Z
    .locals 7
    .param p1, "host"    # Landroid/view/View;
    .param p2, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "action"    # I
    .param p4, "fromKeyboard"    # Z

    .line 160
    const/16 v0, 0x20

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p3, v0, :cond_4

    .line 161
    const/4 v0, 0x0

    .line 165
    .local v0, "dragCondition":Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;
    instance-of v4, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v4, :cond_0

    .line 166
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->startLongPressAction()Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    move-result-object v0

    goto :goto_1

    .line 167
    :cond_0
    instance-of v4, p1, Lcom/android/launcher3/views/BubbleTextHolder;

    if-eqz v4, :cond_2

    .line 168
    move-object v4, p1

    check-cast v4, Lcom/android/launcher3/views/BubbleTextHolder;

    .line 169
    .local v4, "holder":Lcom/android/launcher3/views/BubbleTextHolder;
    invoke-interface {v4}, Lcom/android/launcher3/views/BubbleTextHolder;->getBubbleText()Lcom/android/launcher3/BubbleTextView;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 170
    :cond_1
    invoke-interface {v4}, Lcom/android/launcher3/views/BubbleTextHolder;->getBubbleText()Lcom/android/launcher3/BubbleTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->startLongPressAction()Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 172
    .end local v4    # "holder":Lcom/android/launcher3/views/BubbleTextHolder;
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    move v2, v3

    :cond_3
    return v2

    .line 173
    .end local v0    # "dragCondition":Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;
    :cond_4
    sget v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->MOVE:I

    if-ne p3, v0, :cond_5

    .line 174
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->beginAccessibleDrag(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    move-result v0

    return v0

    .line 175
    :cond_5
    sget v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->ADD_TO_WORKSPACE:I

    if-ne p3, v0, :cond_6

    .line 176
    invoke-virtual {p0, p2, v3}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->addToWorkspace(Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    move-result v0

    return v0

    .line 177
    :cond_6
    sget v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->MOVE_TO_WORKSPACE:I

    if-ne p3, v0, :cond_7

    .line 178
    invoke-virtual {p0, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->moveToWorkspace(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    return v0

    .line 179
    :cond_7
    sget v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->RESIZE:I

    if-ne p3, v0, :cond_8

    .line 180
    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 181
    .local v0, "info":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->getSupportedResizeActions(Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Ljava/util/List;

    move-result-object v1

    .line 182
    .local v1, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/views/OptionsPopupView$OptionItem;>;"
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 183
    .local v4, "pos":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v5

    invoke-virtual {v5, p1, v4}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 184
    iget-object v5, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/android/launcher3/views/ActivityContext;

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v5, v6, v1, v2}, Lcom/android/launcher3/views/OptionsPopupView;->show(Lcom/android/launcher3/views/ActivityContext;Landroid/graphics/RectF;Ljava/util/List;Z)Lcom/android/launcher3/views/OptionsPopupView;

    move-result-object v2

    .line 185
    .local v2, "popup":Lcom/android/launcher3/popup/ArrowPopup;
    invoke-virtual {v2}, Lcom/android/launcher3/popup/ArrowPopup;->requestFocus()Z

    .line 186
    new-instance v5, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v5, p1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v5}, Lcom/android/launcher3/popup/ArrowPopup;->addOnCloseCallback(Ljava/lang/Runnable;)V

    .line 191
    return v3

    .line 192
    .end local v0    # "info":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .end local v1    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/views/OptionsPopupView$OptionItem;>;"
    .end local v2    # "popup":Lcom/android/launcher3/popup/ArrowPopup;
    .end local v4    # "pos":Landroid/graphics/Rect;
    :cond_8
    sget v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->DEEP_SHORTCUTS:I

    if-ne p3, v0, :cond_c

    .line 193
    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_9

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    goto :goto_2

    .line 194
    :cond_9
    instance-of v0, p1, Lcom/android/launcher3/views/BubbleTextHolder;

    if-eqz v0, :cond_a

    .line 195
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/views/BubbleTextHolder;

    invoke-interface {v0}, Lcom/android/launcher3/views/BubbleTextHolder;->getBubbleText()Lcom/android/launcher3/BubbleTextView;

    move-result-object v1

    goto :goto_2

    :cond_a
    nop

    :goto_2
    move-object v0, v1

    .line 196
    .local v0, "btv":Lcom/android/launcher3/BubbleTextView;
    if-eqz v0, :cond_b

    invoke-static {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->showForIcon(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v1

    if-eqz v1, :cond_b

    move v2, v3

    :cond_b
    return v2

    .line 198
    .end local v0    # "btv":Lcom/android/launcher3/BubbleTextView;
    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDropTargetBar()Lcom/android/launcher3/DropTargetBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DropTargetBar;->getDropTargets()[Lcom/android/launcher3/ButtonDropTarget;

    move-result-object v0

    array-length v1, v0

    move v4, v2

    :goto_3
    if-ge v4, v1, :cond_e

    aget-object v5, v0, v4

    .line 199
    .local v5, "dropTarget":Lcom/android/launcher3/ButtonDropTarget;
    invoke-virtual {v5, p2, p1}, Lcom/android/launcher3/ButtonDropTarget;->supportsAccessibilityDrop(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 200
    invoke-virtual {v5}, Lcom/android/launcher3/ButtonDropTarget;->getAccessibilityAction()I

    move-result v6

    if-ne p3, v6, :cond_d

    .line 201
    invoke-virtual {v5, p1, p2}, Lcom/android/launcher3/ButtonDropTarget;->onAccessibilityDrop(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 202
    return v3

    .line 198
    .end local v5    # "dropTarget":Lcom/android/launcher3/ButtonDropTarget;
    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 206
    :cond_e
    return v2
.end method
