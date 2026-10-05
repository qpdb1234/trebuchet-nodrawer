.class public Lcom/android/launcher3/touch/ItemLongClickListener;
.super Ljava/lang/Object;
.source "ItemLongClickListener.java"


# static fields
.field public static final INSTANCE_ALL_APPS:Landroid/view/View$OnLongClickListener;

.field public static final INSTANCE_WORKSPACE:Landroid/view/View$OnLongClickListener;


# direct methods
.method public static synthetic $r8$lambda$nz9MSaglTImbNX-jBQmvpOY7s8M(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/touch/ItemLongClickListener;->onWorkspaceItemLongClick(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$w0E77iw3NhDMXITrEZo4RYOwnrg(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/touch/ItemLongClickListener;->onAllAppsItemLongClick(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lcom/android/launcher3/touch/ItemLongClickListener$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/touch/ItemLongClickListener$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/launcher3/touch/ItemLongClickListener;->INSTANCE_WORKSPACE:Landroid/view/View$OnLongClickListener;

    .line 59
    new-instance v0, Lcom/android/launcher3/touch/ItemLongClickListener$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/touch/ItemLongClickListener$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/launcher3/touch/ItemLongClickListener;->INSTANCE_ALL_APPS:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginDrag(Landroid/view/View;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "dragOptions"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 84
    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ltz v0, :cond_1

    .line 85
    invoke-static {p1}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    .line 86
    .local v0, "folder":Lcom/android/launcher3/folder/Folder;
    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getIconsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/Folder;->close(Z)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {v0, p0, p3}, Lcom/android/launcher3/folder/Folder;->startDrag(Landroid/view/View;Lcom/android/launcher3/dragndrop/DragOptions;)Z

    .line 91
    return-void

    .line 96
    .end local v0    # "folder":Lcom/android/launcher3/folder/Folder;
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/launcher3/celllayout/CellInfo;

    .line 97
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/launcher3/celllayout/CellPosMapper;->mapModelToPresenter(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    move-result-object v1

    invoke-direct {v0, p0, p2, v1}, Lcom/android/launcher3/celllayout/CellInfo;-><init>(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;)V

    .line 98
    .local v0, "longClickCellInfo":Lcom/android/launcher3/celllayout/CellInfo;
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lcom/android/launcher3/Workspace;->startDrag(Lcom/android/launcher3/celllayout/CellInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 99
    return-void
.end method

.method public static canStartDrag(Lcom/android/launcher3/Launcher;)Z
    .locals 2
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 178
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 179
    return v0

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 185
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 187
    :cond_2
    invoke-static {}, Lcom/android/launcher3/config/FeatureFlags;->enableSplitContextually()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isSplitSelectionActive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 188
    return v0

    .line 191
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$onWidgetItemLongClick$0(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 0
    .param p0, "target"    # Landroid/view/View;
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "success"    # Z

    .line 105
    return-void
.end method

.method private static onAllAppsItemLongClick(Landroid/view/View;)Z
    .locals 8
    .param p0, "view"    # Landroid/view/View;

    .line 138
    instance-of v0, p0, Lcom/android/launcher3/widget/WidgetCell;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/widget/WidgetCell;

    .line 139
    .local v0, "wc":Lcom/android/launcher3/widget/WidgetCell;
    invoke-static {v0}, Lcom/android/launcher3/touch/ItemLongClickListener;->onWidgetItemLongClick(Lcom/android/launcher3/widget/WidgetCell;)Z

    move-result v1

    return v1

    .line 141
    .end local v0    # "wc":Lcom/android/launcher3/widget/WidgetCell;
    :cond_0
    const-string v0, "Main"

    const-string v1, "onAllAppsItemLongClick"

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Landroid/view/View;->cancelLongPress()V

    .line 143
    instance-of v0, p0, Lcom/android/launcher3/views/BubbleTextHolder;

    if-eqz v0, :cond_1

    .line 144
    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/views/BubbleTextHolder;

    invoke-interface {v0}, Lcom/android/launcher3/views/BubbleTextHolder;->getBubbleText()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    goto :goto_0

    .line 145
    :cond_1
    move-object v0, p0

    :goto_0
    nop

    .line 146
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    .line 147
    .local v1, "launcher":Lcom/android/launcher3/Launcher;
    invoke-static {v1}, Lcom/android/launcher3/touch/ItemLongClickListener;->canStartDrag(Lcom/android/launcher3/Launcher;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    return v3

    .line 149
    :cond_2
    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-nez v2, :cond_3

    return v3

    .line 150
    :cond_3
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v2

    if-eqz v2, :cond_4

    return v3

    .line 152
    :cond_4
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    .line 153
    .local v2, "logger":Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v4, :cond_5

    .line 154
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v2, v4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    .line 156
    :cond_5
    sget-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_ITEM_LONG_PRESSED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v2, v4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 159
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v4

    .line 160
    .local v4, "dragController":Lcom/android/launcher3/dragndrop/DragController;
    new-instance v5, Lcom/android/launcher3/touch/ItemLongClickListener$1;

    invoke-direct {v5, v0, v4}, Lcom/android/launcher3/touch/ItemLongClickListener$1;-><init>(Landroid/view/View;Lcom/android/launcher3/dragndrop/DragController;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 173
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v6

    new-instance v7, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v7}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    invoke-virtual {v5, v0, v6, v7}, Lcom/android/launcher3/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 174
    return v3
.end method

.method private static onWidgetItemLongClick(Lcom/android/launcher3/widget/WidgetCell;)Z
    .locals 18
    .param p0, "v"    # Lcom/android/launcher3/widget/WidgetCell;

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/WidgetCell;->getWidgetView()Lcom/android/launcher3/widget/WidgetImageView;

    move-result-object v0

    .line 104
    .local v0, "image":Lcom/android/launcher3/widget/WidgetImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/WidgetCell;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    .line 105
    .local v1, "launcher":Lcom/android/launcher3/Launcher;
    new-instance v7, Lcom/android/launcher3/touch/ItemLongClickListener$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Lcom/android/launcher3/touch/ItemLongClickListener$$ExternalSyntheticLambda2;-><init>()V

    .line 109
    .local v7, "dragSource":Lcom/android/launcher3/DragSource;
    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/WidgetCell;->getAppWidgetHostViewPreview()Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    move-result-object v2

    if-nez v2, :cond_0

    .line 110
    return v3

    .line 113
    :cond_0
    new-instance v2, Lcom/android/launcher3/widget/PendingItemDragHelper;

    move-object/from16 v9, p0

    invoke-direct {v2, v9}, Lcom/android/launcher3/widget/PendingItemDragHelper;-><init>(Landroid/view/View;)V

    move-object v15, v2

    .line 116
    .local v15, "dragHelper":Lcom/android/launcher3/widget/PendingItemDragHelper;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/WidgetCell;->getRemoteViewsPreview()Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/WidgetCell;->getAppWidgetHostViewScale()F

    move-result v4

    invoke-virtual {v15, v2, v4}, Lcom/android/launcher3/widget/PendingItemDragHelper;->setRemoteViewsPreview(Landroid/widget/RemoteViews;F)V

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/WidgetCell;->getAppWidgetHostViewPreview()Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/android/launcher3/widget/PendingItemDragHelper;->setAppWidgetHostViewPreview(Lcom/android/launcher3/widget/NavigableAppWidgetHostView;)V

    .line 119
    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v4, 0x2

    const/16 v17, 0x1

    if-eqz v2, :cond_1

    .line 120
    new-array v10, v4, [I

    .line 121
    .local v10, "loc":[I
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v2

    invoke-virtual {v2, v0, v10}, Lcom/android/launcher3/dragndrop/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    .line 123
    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetImageView;->getBitmapBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 124
    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetImageView;->getWidth()I

    move-result v6

    new-instance v8, Landroid/graphics/Point;

    aget v2, v10, v3

    aget v3, v10, v17

    invoke-direct {v8, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    new-instance v11, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v11}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    .line 123
    move-object v2, v15

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v8

    move-object v8, v11

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/widget/PendingItemDragHelper;->startDrag(Landroid/graphics/Rect;IILandroid/graphics/Point;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 125
    .end local v10    # "loc":[I
    move-object v3, v15

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/widget/WidgetCell;->getAppWidgetHostViewPreview()Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    move-result-object v2

    .line 127
    .local v2, "preview":Lcom/android/launcher3/widget/NavigableAppWidgetHostView;
    new-array v4, v4, [I

    .line 128
    .local v4, "loc":[I
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Lcom/android/launcher3/dragndrop/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    .line 129
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 130
    .local v5, "r":Landroid/graphics/Rect;
    invoke-virtual {v2, v5}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getWorkspaceVisualDragBounds(Landroid/graphics/Rect;)V

    .line 131
    invoke-virtual {v2}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getMeasuredWidth()I

    move-result v12

    invoke-virtual {v2}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getMeasuredWidth()I

    move-result v13

    new-instance v14, Landroid/graphics/Point;

    aget v3, v4, v3

    aget v6, v4, v17

    invoke-direct {v14, v3, v6}, Landroid/graphics/Point;-><init>(II)V

    new-instance v16, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct/range {v16 .. v16}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    move-object v10, v15

    move-object v11, v5

    move-object v3, v15

    .end local v15    # "dragHelper":Lcom/android/launcher3/widget/PendingItemDragHelper;
    .local v3, "dragHelper":Lcom/android/launcher3/widget/PendingItemDragHelper;
    move-object v15, v7

    invoke-virtual/range {v10 .. v16}, Lcom/android/launcher3/widget/PendingItemDragHelper;->startDrag(Landroid/graphics/Rect;IILandroid/graphics/Point;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 134
    .end local v2    # "preview":Lcom/android/launcher3/widget/NavigableAppWidgetHostView;
    .end local v4    # "loc":[I
    .end local v5    # "r":Landroid/graphics/Rect;
    :goto_0
    return v17
.end method

.method private static onWorkspaceItemLongClick(Landroid/view/View;)Z
    .locals 3
    .param p0, "v"    # Landroid/view/View;

    .line 63
    instance-of v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    const-string v1, "Main"

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "Widgets.onLongClick"

    invoke-static {v1, v0}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_0
    const-string v0, "onWorkspaceItemLongClick"

    invoke-static {v1, v0}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 69
    .local v0, "launcher":Lcom/android/launcher3/Launcher;
    invoke-static {v0}, Lcom/android/launcher3/touch/ItemLongClickListener;->canStartDrag(Lcom/android/launcher3/Launcher;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 70
    :cond_1
    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    .line 71
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/launcher3/LauncherState;->EDIT_MODE:Lcom/android/launcher3/LauncherState;

    .line 72
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 73
    return v2

    .line 75
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/model/data/ItemInfo;

    if-nez v1, :cond_3

    return v2

    .line 77
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    new-instance v2, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v2}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher3/touch/ItemLongClickListener;->beginDrag(Landroid/view/View;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 79
    const/4 v1, 0x1

    return v1
.end method
