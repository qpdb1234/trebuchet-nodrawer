.class public interface abstract Lcom/android/launcher3/WorkspaceLayoutManager;
.super Ljava/lang/Object;
.source "WorkspaceLayoutManager.java"


# static fields
.field public static final EXTRA_EMPTY_SCREEN_ID:I = -0xc9

.field public static final EXTRA_EMPTY_SCREEN_IDS:Lcom/android/launcher3/util/IntSet;

.field public static final EXTRA_EMPTY_SCREEN_SECOND_ID:I = -0xc8

.field public static final FIRST_SCREEN_ID:I = 0x0

.field public static final SECOND_SCREEN_ID:I = 0x1

.field public static final TAG:Ljava/lang/String; = "Launcher.Workspace"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    const/16 v0, -0xc9

    const/16 v1, -0xc8

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/android/launcher3/util/IntSet;->wrap([I)Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/WorkspaceLayoutManager;->EXTRA_EMPTY_SCREEN_IDS:Lcom/android/launcher3/util/IntSet;

    .line 40
    return-void
.end method


# virtual methods
.method public addInScreen(Landroid/view/View;IIIIII)V
    .locals 21
    .param p1, "child"    # Landroid/view/View;
    .param p2, "container"    # I
    .param p3, "screenId"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "spanX"    # I
    .param p7, "spanY"    # I

    .line 90
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    const/16 v1, -0x64

    const-string v14, "Launcher.Workspace"

    if-ne v8, v1, :cond_0

    .line 91
    invoke-interface {v0, v9}, Lcom/android/launcher3/WorkspaceLayoutManager;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    if-nez v1, :cond_0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping child, screenId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 95
    return-void

    .line 98
    :cond_0
    sget-object v1, Lcom/android/launcher3/WorkspaceLayoutManager;->EXTRA_EMPTY_SCREEN_IDS:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v1, v9}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v1

    if-nez v1, :cond_a

    .line 104
    const/16 v1, -0x65

    const/4 v2, 0x1

    const/4 v15, 0x0

    if-eq v8, v1, :cond_3

    const/16 v1, -0x67

    if-ne v8, v1, :cond_1

    goto :goto_0

    .line 114
    :cond_1
    instance-of v1, v7, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v1, :cond_2

    .line 115
    move-object v1, v7

    check-cast v1, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/FolderIcon;->setTextVisible(Z)V

    .line 117
    :cond_2
    invoke-interface {v0, v9}, Lcom/android/launcher3/WorkspaceLayoutManager;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    move-object/from16 v16, v1

    .local v1, "layout":Lcom/android/launcher3/CellLayout;
    goto :goto_1

    .line 106
    .end local v1    # "layout":Lcom/android/launcher3/CellLayout;
    :cond_3
    :goto_0
    invoke-interface/range {p0 .. p0}, Lcom/android/launcher3/WorkspaceLayoutManager;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v1

    .line 109
    .restart local v1    # "layout":Lcom/android/launcher3/CellLayout;
    instance-of v3, v7, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v3, :cond_4

    .line 110
    move-object v3, v7

    check-cast v3, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v3, v15}, Lcom/android/launcher3/folder/FolderIcon;->setTextVisible(Z)V

    .line 120
    :cond_4
    move-object/from16 v16, v1

    .end local v1    # "layout":Lcom/android/launcher3/CellLayout;
    .local v16, "layout":Lcom/android/launcher3/CellLayout;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 122
    .local v5, "genericLp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v5, :cond_6

    instance-of v1, v5, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    if-nez v1, :cond_5

    goto :goto_2

    .line 125
    :cond_5
    move-object v1, v5

    check-cast v1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    .line 126
    .local v1, "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    invoke-virtual {v1, v10}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellX(I)V

    .line 127
    invoke-virtual {v1, v11}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellY(I)V

    .line 128
    iput v12, v1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    .line 129
    iput v13, v1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    move-object v4, v1

    goto :goto_3

    .line 123
    .end local v1    # "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    :cond_6
    :goto_2
    new-instance v1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    invoke-direct {v1, v10, v11, v12, v13}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;-><init>(IIII)V

    move-object v4, v1

    .line 132
    .local v4, "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    :goto_3
    if-gez v12, :cond_7

    if-gez v13, :cond_7

    .line 133
    iput-boolean v15, v4, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->isLockedToGrid:Z

    .line 137
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/launcher3/model/data/ItemInfo;

    .line 138
    .local v17, "info":Lcom/android/launcher3/model/data/ItemInfo;
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/model/data/ItemInfo;->getViewId()I

    move-result v18

    .line 140
    .local v18, "childId":I
    instance-of v1, v7, Lcom/android/launcher3/folder/Folder;

    xor-int/lit8 v6, v1, 0x1

    .line 141
    .local v6, "markCellsAsOccupied":Z
    const/4 v3, -0x1

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v19, v4

    .end local v4    # "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    .local v19, "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    move/from16 v4, v18

    move-object/from16 v20, v5

    .end local v5    # "genericLp":Landroid/view/ViewGroup$LayoutParams;
    .local v20, "genericLp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v5, v19

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/celllayout/CellLayoutLayoutParams;Z)Z

    move-result v1

    if-nez v1, :cond_8

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to add to item at ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to CellLayout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_8
    invoke-virtual {v7, v15}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 150
    invoke-interface/range {p0 .. p0}, Lcom/android/launcher3/WorkspaceLayoutManager;->getWorkspaceChildOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 151
    instance-of v1, v7, Lcom/android/launcher3/DropTarget;

    if-eqz v1, :cond_9

    .line 152
    move-object v1, v7

    check-cast v1, Lcom/android/launcher3/DropTarget;

    invoke-interface {v0, v1}, Lcom/android/launcher3/WorkspaceLayoutManager;->onAddDropTarget(Lcom/android/launcher3/DropTarget;)V

    .line 154
    :cond_9
    return-void

    .line 100
    .end local v6    # "markCellsAsOccupied":Z
    .end local v16    # "layout":Lcom/android/launcher3/CellLayout;
    .end local v17    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v18    # "childId":I
    .end local v19    # "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    .end local v20    # "genericLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_a
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Screen id should not be extra empty screen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 71
    invoke-interface {p0}, Lcom/android/launcher3/WorkspaceLayoutManager;->getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher3/celllayout/CellPosMapper;->mapModelToPresenter(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    move-result-object v0

    .line 72
    .local v0, "presenterPos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    iget v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v4, v0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    iget v5, v0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellX:I

    iget v6, v0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellY:I

    iget v7, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v8, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v1 .. v8}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;IIIIII)V

    .line 75
    return-void
.end method

.method public addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 53
    invoke-interface {p0}, Lcom/android/launcher3/WorkspaceLayoutManager;->getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher3/celllayout/CellPosMapper;->mapModelToPresenter(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    move-result-object v0

    .line 54
    .local v0, "presenterPos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    iget v1, v0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellX:I

    .line 55
    .local v1, "x":I
    iget v2, v0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellY:I

    .line 56
    .local v2, "y":I
    iget v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v4, -0x65

    if-eq v3, v4, :cond_0

    iget v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v4, -0x67

    if-ne v3, v4, :cond_1

    .line 58
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add predicted icon "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to home screen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Launcher.Workspace"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget v3, v0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    .line 60
    .local v3, "screenId":I
    invoke-interface {p0}, Lcom/android/launcher3/WorkspaceLayoutManager;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/launcher3/Hotseat;->getCellXFromOrder(I)I

    move-result v1

    .line 61
    invoke-interface {p0}, Lcom/android/launcher3/WorkspaceLayoutManager;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/launcher3/Hotseat;->getCellYFromOrder(I)I

    move-result v2

    .line 63
    .end local v3    # "screenId":I
    :cond_1
    iget v6, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v7, v0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    iget v10, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v11, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v4, p0

    move-object v5, p1

    move v8, v1

    move v9, v2

    invoke-interface/range {v4 .. v11}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;IIIIII)V

    .line 64
    return-void
.end method

.method public abstract getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;
.end method

.method public abstract getHotseat()Lcom/android/launcher3/Hotseat;
.end method

.method public abstract getScreenWithId(I)Lcom/android/launcher3/CellLayout;
.end method

.method public getWorkspaceChildOnLongClickListener()Landroid/view/View$OnLongClickListener;
    .locals 1

    .line 157
    sget-object v0, Lcom/android/launcher3/touch/ItemLongClickListener;->INSTANCE_WORKSPACE:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method public onAddDropTarget(Lcom/android/launcher3/DropTarget;)V
    .locals 0
    .param p1, "target"    # Lcom/android/launcher3/DropTarget;

    .line 169
    return-void
.end method
