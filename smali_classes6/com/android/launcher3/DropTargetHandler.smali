.class public final Lcom/android/launcher3/DropTargetHandler;
.super Ljava/lang/Object;
.source "DropTargetHandler.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDropTargetHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DropTargetHandler.kt\ncom/android/launcher3/DropTargetHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,119:1\n1#2:120\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J \u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rJ\u0006\u0010\u000f\u001a\u00020\u0010J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u0014J \u0010\u0015\u001a\u00020\t2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0017\u001a\u00020\u00142\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u001aJ\u000e\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0014J\u0006\u0010\u001c\u001a\u00020\tJ\u0018\u0010\u001d\u001a\u00020\t2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020!J\u0006\u0010\"\u001a\u00020\tJ\u0016\u0010#\u001a\u00020\t2\u0006\u0010$\u001a\u00020%2\u0006\u0010\u0013\u001a\u00020\u0014R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006&"
    }
    d2 = {
        "Lcom/android/launcher3/DropTargetHandler;",
        "",
        "launcher",
        "Lcom/android/launcher3/Launcher;",
        "(Lcom/android/launcher3/Launcher;)V",
        "mLauncher",
        "getMLauncher",
        "()Lcom/android/launcher3/Launcher;",
        "dismissPrediction",
        "",
        "announcement",
        "",
        "onActionClicked",
        "Ljava/lang/Runnable;",
        "onDismiss",
        "getDragLayer",
        "Lcom/android/launcher3/dragndrop/DragLayer;",
        "getViewUnderDrag",
        "Landroid/view/View;",
        "info",
        "Lcom/android/launcher3/model/data/ItemInfo;",
        "onAccessibilityDelete",
        "view",
        "item",
        "onClick",
        "buttonDropTarget",
        "Lcom/android/launcher3/ButtonDropTarget;",
        "onDeleteComplete",
        "onDropAnimationComplete",
        "onSecondaryTargetCompleteDrop",
        "target",
        "Landroid/content/ComponentName;",
        "d",
        "Lcom/android/launcher3/DropTarget$DragObject;",
        "prepareToUndoDelete",
        "reconfigureWidget",
        "widgetId",
        "",
        "Trebuchet_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method public static synthetic $r8$lambda$A9n97AiSav_FX90FCa_hp-UQ3jQ(Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/DropTargetHandler;->onSecondaryTargetCompleteDrop$lambda$1$lambda$0(Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gJs7FlJax_u9dEwOCmMU7socxOQ(Lcom/android/launcher3/DropTargetHandler;Lcom/android/launcher3/util/IntSet;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/DropTargetHandler;->onDeleteComplete$lambda$3(Lcom/android/launcher3/DropTargetHandler;Lcom/android/launcher3/util/IntSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 23
    return-void
.end method

.method private static final onDeleteComplete$lambda$3(Lcom/android/launcher3/DropTargetHandler;Lcom/android/launcher3/util/IntSet;)V
    .locals 2
    .param p0, "this$0"    # Lcom/android/launcher3/DropTargetHandler;
    .param p1, "$pageIds"    # Lcom/android/launcher3/util/IntSet;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->setPagesToBindSynchronously(Lcom/android/launcher3/util/IntSet;)V

    .line 89
    iget-object v0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/model/ModelWriter;->abortDelete()V

    .line 90
    iget-object v0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_UNDO:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    check-cast v1, Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 91
    return-void
.end method

.method private static final onSecondaryTargetCompleteDrop$lambda$1$lambda$0(Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;)V
    .locals 1
    .param p0, "$deferred"    # Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;

    const-string v0, "$deferred"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->onLauncherResume()V

    return-void
.end method


# virtual methods
.method public final dismissPrediction(Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "announcement"    # Ljava/lang/CharSequence;
    .param p2, "onActionClicked"    # Ljava/lang/Runnable;
    .param p3, "onDismiss"    # Ljava/lang/Runnable;

    const-string v0, "announcement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onActionClicked"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    check-cast v0, Landroid/content/Context;

    sget v1, Lcom/android/launcher3/R$string;->item_removed:I

    sget v2, Lcom/android/launcher3/R$string;->undo:I

    invoke-static {v0, v1, v2, p3, p2}, Lcom/android/launcher3/views/Snackbar;->show(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 61
    return-void
.end method

.method public final getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    const-string v1, "getDragLayer(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getMLauncher()Lcom/android/launcher3/Launcher;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method public final getViewUnderDrag(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/view/View;
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    nop

    .line 65
    instance-of v0, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_0

    .line 66
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getDragInfo()Lcom/android/launcher3/celllayout/CellInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getDragInfo()Lcom/android/launcher3/celllayout/CellInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/celllayout/CellInfo;->cell:Landroid/view/View;

    goto :goto_0

    .line 70
    :cond_0
    const/4 v0, 0x0

    .line 64
    :goto_0
    return-object v0
.end method

.method public final onAccessibilityDelete(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "announcement"    # Ljava/lang/CharSequence;

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "announcement"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x1

    const-string v2, "removed by accessibility drop"

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;ZLjava/lang/String;)Z

    .line 107
    iget-object v0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->stripEmptyScreens()V

    .line 108
    iget-object v0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/launcher3/dragndrop/DragLayer;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 109
    return-void
.end method

.method public final onClick(Lcom/android/launcher3/ButtonDropTarget;)V
    .locals 3
    .param p1, "buttonDropTarget"    # Lcom/android/launcher3/ButtonDropTarget;

    const-string v0, "buttonDropTarget"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->handleAccessibleDrop(Landroid/view/View;Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public final onDeleteComplete(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 8
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x0

    .local v0, "pageItem":Ljava/lang/Object;
    move-object v0, p1

    .line 79
    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-gtz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(I)Landroid/view/View;

    move-result-object v1

    .line 81
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 120
    .local v2, "it":Landroid/view/View;
    const/4 v3, 0x0

    .line 81
    .local v3, "$i$a$-let-DropTargetHandler$onDeleteComplete$1":I
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v4

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    .line 84
    .end local v1    # "v":Landroid/view/View;
    .end local v2    # "it":Landroid/view/View;
    .end local v3    # "$i$a$-let-DropTargetHandler$onDeleteComplete$1":I
    :cond_0
    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v2, -0x64

    if-ne v1, v2, :cond_1

    .line 85
    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/util/IntSet;->wrap([I)Lcom/android/launcher3/util/IntSet;

    move-result-object v1

    goto :goto_0

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getCurrentPageScreenIds()Lcom/android/launcher3/util/IntSet;

    move-result-object v1

    .line 84
    :goto_0
    nop

    .line 83
    nop

    .line 87
    .local v1, "pageIds":Lcom/android/launcher3/util/IntSet;
    new-instance v2, Lcom/android/launcher3/DropTargetHandler$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher3/DropTargetHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/DropTargetHandler;Lcom/android/launcher3/util/IntSet;)V

    .line 94
    .local v2, "onUndoClicked":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    check-cast v3, Landroid/content/Context;

    .line 95
    sget v4, Lcom/android/launcher3/R$string;->item_removed:I

    .line 96
    sget v5, Lcom/android/launcher3/R$string;->undo:I

    .line 97
    iget-object v6, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v6

    new-instance v7, Lcom/android/launcher3/DropTargetHandler$$ExternalSyntheticLambda1;

    invoke-direct {v7, v6}, Lcom/android/launcher3/DropTargetHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/model/ModelWriter;)V

    .line 98
    nop

    .line 93
    invoke-static {v3, v4, v5, v7, v2}, Lcom/android/launcher3/views/Snackbar;->show(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 100
    return-void
.end method

.method public final onDropAnimationComplete()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    check-cast v1, Lcom/android/launcher3/statemanager/BaseState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 28
    return-void
.end method

.method public final onSecondaryTargetCompleteDrop(Landroid/content/ComponentName;Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 7
    .param p1, "target"    # Landroid/content/ComponentName;
    .param p2, "d"    # Lcom/android/launcher3/DropTarget$DragObject;

    const-string v0, "d"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    .line 32
    .local v0, "dragSource":Lcom/android/launcher3/DragSource;
    instance-of v1, v0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;

    if-eqz v1, :cond_1

    .line 33
    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;

    .line 34
    .local v1, "deferred":Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;
    iget-object v2, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v2, v2, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;

    if-eqz v2, :cond_1

    .line 35
    if-eqz p1, :cond_0

    move-object v2, p1

    .local v2, "it":Landroid/content/ComponentName;
    const/4 v3, 0x0

    .line 36
    .local v3, "$i$a$-let-DropTargetHandler$onSecondaryTargetCompleteDrop$1":I
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->mPackageName:Ljava/lang/String;

    .line 37
    iget-object v4, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    new-instance v5, Lcom/android/launcher3/DropTargetHandler$$ExternalSyntheticLambda2;

    invoke-direct {v5, v1}, Lcom/android/launcher3/DropTargetHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;)V

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Lcom/android/launcher3/Launcher;->addEventCallback(ILjava/lang/Runnable;)V

    .line 38
    nop

    .line 35
    .end local v2    # "it":Landroid/content/ComponentName;
    .end local v3    # "$i$a$-let-DropTargetHandler$onSecondaryTargetCompleteDrop$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    .line 39
    invoke-virtual {v1}, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->sendFailure()V

    .line 43
    .end local v0    # "dragSource":Lcom/android/launcher3/DragSource;
    .end local v1    # "deferred":Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;
    :cond_1
    return-void
.end method

.method public final prepareToUndoDelete()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/model/ModelWriter;->prepareToUndoDelete()V

    .line 75
    return-void
.end method

.method public final reconfigureWidget(ILcom/android/launcher3/model/data/ItemInfo;)V
    .locals 3
    .param p1, "widgetId"    # I
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    invoke-static {p1, v1, p2}, Lcom/android/launcher3/util/PendingRequestArgs;->forWidgetInfo(ILcom/android/launcher3/widget/WidgetAddFlowHandler;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PendingRequestArgs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    .line 47
    iget-object v0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppWidgetHolder()Lcom/android/launcher3/widget/LauncherWidgetHolder;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    check-cast v1, Lcom/android/launcher3/BaseDraggingActivity;

    .line 49
    nop

    .line 50
    nop

    .line 47
    const/16 v2, 0xd

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->startConfigActivity(Lcom/android/launcher3/BaseDraggingActivity;II)V

    .line 52
    return-void
.end method
