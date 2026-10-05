.class public Lcom/android/launcher3/model/AllAppsToWorkspaceTask;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "AllAppsToWorkspaceTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/model/AllAppsToWorkspaceTask$Placement;
    }
.end annotation


# static fields
.field private static final LOG:Ljava/lang/String; = "AllAppsToWorkspaceTask"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    return-void
.end method

.method private static alreadyOnWorkspace(Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
    .locals 7
    .param p0, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p1, "item"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 203
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 205
    return v1

    .line 207
    :cond_0
    monitor-enter p0

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    .line 209
    .local v2, "info":Lcom/android/launcher3/model/data/ItemInfo;
    instance-of v3, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v3, :cond_1

    .line 210
    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 211
    .local v3, "wii":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    iget-object v4, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->user:Landroid/os/UserHandle;

    iget-object v5, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v4, v5}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 212
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 213
    monitor-exit p0

    return v1

    .line 216
    .end local v2    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v3    # "wii":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :cond_1
    goto :goto_0

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/FolderInfo;

    .line 218
    .local v2, "folder":Lcom/android/launcher3/model/data/FolderInfo;
    iget-object v3, v2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 219
    .local v4, "wii":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    iget-object v5, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->user:Landroid/os/UserHandle;

    iget-object v6, v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 220
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 221
    monitor-exit p0

    return v1

    .line 223
    .end local v4    # "wii":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :cond_3
    goto :goto_2

    .line 224
    .end local v2    # "folder":Lcom/android/launcher3/model/data/FolderInfo;
    :cond_4
    goto :goto_1

    .line 225
    :cond_5
    monitor-exit p0

    .line 226
    const/4 v0, 0x0

    return v0

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static gridFor(Landroid/util/LongSparseArray;III)Lcom/android/launcher3/util/GridOccupancy;
    .locals 3
    .param p1, "screenId"    # I
    .param p2, "countX"    # I
    .param p3, "countY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Lcom/android/launcher3/util/GridOccupancy;",
            ">;III)",
            "Lcom/android/launcher3/util/GridOccupancy;"
        }
    .end annotation

    .line 189
    .local p0, "occupancy":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/launcher3/util/GridOccupancy;>;"
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/GridOccupancy;

    .line 190
    .local v0, "grid":Lcom/android/launcher3/util/GridOccupancy;
    if-nez v0, :cond_0

    .line 191
    new-instance v1, Lcom/android/launcher3/util/GridOccupancy;

    invoke-direct {v1, p2, p3}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    move-object v0, v1

    .line 192
    int-to-long v1, p1

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 194
    :cond_0
    return-object v0
.end method

.method static synthetic lambda$execute$0(Lcom/android/launcher3/model/AllAppsToWorkspaceTask$Placement;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 4
    .param p0, "placement"    # Lcom/android/launcher3/model/AllAppsToWorkspaceTask$Placement;
    .param p1, "callbacks"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 84
    invoke-virtual {p0}, Lcom/android/launcher3/model/AllAppsToWorkspaceTask$Placement;->copyNewScreens()Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/model/AllAppsToWorkspaceTask$Placement;->addedItems:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v0, v1, v2}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindAppsAdded(Lcom/android/launcher3/util/IntArray;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static placeAllAppsOnWorkspace(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)Lcom/android/launcher3/model/AllAppsToWorkspaceTask$Placement;
    .locals 26
    .param p0, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p1, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p2, "apps"    # Lcom/android/launcher3/model/AllAppsList;

    .line 95
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v0, Lcom/android/launcher3/model/AllAppsToWorkspaceTask$Placement;

    invoke-direct {v0}, Lcom/android/launcher3/model/AllAppsToWorkspaceTask$Placement;-><init>()V

    move-object v3, v0

    .line 96
    .local v3, "placement":Lcom/android/launcher3/model/AllAppsToWorkspaceTask$Placement;
    iget-object v0, v2, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    return-object v3

    .line 100
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 101
    .local v4, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lcom/android/launcher3/model/ModelDbController;

    move-result-object v5

    .line 102
    .local v5, "dbController":Lcom/android/launcher3/model/ModelDbController;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v6

    .line 103
    .local v6, "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    iget v7, v6, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 104
    .local v7, "countX":I
    iget v8, v6, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    .line 108
    .local v8, "countY":I
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    move-object v9, v0

    .line 110
    .local v9, "occupancy":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/launcher3/util/GridOccupancy;>;"
    monitor-enter p1

    .line 111
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/model/BgDataModel;->collectWorkspaceScreens()Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    .line 112
    .local v0, "screens":Lcom/android/launcher3/util/IntArray;
    iget-object v10, v1, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v10}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v12, -0x64

    const/4 v13, 0x1

    if-eqz v11, :cond_3

    :try_start_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/model/data/ItemInfo;

    .line 113
    .local v11, "info":Lcom/android/launcher3/model/data/ItemInfo;
    iget v14, v11, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-eq v14, v12, :cond_1

    .line 114
    goto :goto_0

    .line 116
    :cond_1
    iget v12, v11, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    int-to-long v14, v12

    invoke-virtual {v9, v14, v15}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/util/GridOccupancy;

    .line 117
    .local v12, "grid":Lcom/android/launcher3/util/GridOccupancy;
    if-nez v12, :cond_2

    .line 118
    new-instance v14, Lcom/android/launcher3/util/GridOccupancy;

    invoke-direct {v14, v7, v8}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    move-object v12, v14

    .line 119
    iget v14, v11, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    int-to-long v14, v14

    invoke-virtual {v9, v14, v15, v12}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 121
    :cond_2
    invoke-virtual {v12, v11, v13}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    .end local v11    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v12    # "grid":Lcom/android/launcher3/util/GridOccupancy;
    goto :goto_0

    .line 123
    .end local v0    # "screens":Lcom/android/launcher3/util/IntArray;
    :catchall_0
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v23, v6

    goto/16 :goto_6

    .restart local v0    # "screens":Lcom/android/launcher3/util/IntArray;
    :cond_3
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 125
    const/4 v10, 0x2

    new-array v10, v10, [I

    .line 126
    .local v10, "xy":[I
    new-instance v11, Ljava/util/ArrayList;

    iget-object v14, v2, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-direct {v11, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/model/data/AppInfo;

    .line 127
    .local v14, "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    if-eqz v14, :cond_a

    iget-object v15, v14, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    if-nez v15, :cond_4

    .line 128
    goto :goto_1

    .line 130
    :cond_4
    new-instance v15, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v15, v14}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Lcom/android/launcher3/model/data/AppInfo;)V

    .line 131
    .local v15, "item":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    invoke-static {v1, v15}, Lcom/android/launcher3/model/AllAppsToWorkspaceTask;->alreadyOnWorkspace(Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 132
    goto :goto_1

    .line 135
    :cond_5
    iget v12, v15, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->spanX:I

    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 136
    .local v12, "spanX":I
    iget v2, v15, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->spanY:I

    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 139
    .local v2, "spanY":I
    const/16 v17, -0x1

    .line 140
    .local v17, "screenId":I
    const/16 v18, 0x0

    move/from16 v13, v18

    .local v13, "i":I
    :goto_2
    move-object/from16 v23, v6

    .end local v6    # "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    .local v23, "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v6

    if-ge v13, v6, :cond_7

    .line 141
    invoke-virtual {v0, v13}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v6

    .line 142
    .local v6, "candidate":I
    move-object/from16 v24, v11

    invoke-static {v9, v6, v7, v8}, Lcom/android/launcher3/model/AllAppsToWorkspaceTask;->gridFor(Landroid/util/LongSparseArray;III)Lcom/android/launcher3/util/GridOccupancy;

    move-result-object v11

    .line 143
    .local v11, "grid":Lcom/android/launcher3/util/GridOccupancy;
    invoke-virtual {v11, v10, v12, v2}, Lcom/android/launcher3/util/GridOccupancy;->findVacantCell([III)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 144
    move/from16 v17, v6

    .line 145
    goto :goto_3

    .line 140
    .end local v6    # "candidate":I
    .end local v11    # "grid":Lcom/android/launcher3/util/GridOccupancy;
    :cond_6
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v6, v23

    move-object/from16 v11, v24

    goto :goto_2

    :cond_7
    move-object/from16 v24, v11

    .line 148
    .end local v13    # "i":I
    :goto_3
    if-gez v17, :cond_9

    .line 149
    invoke-virtual {v5}, Lcom/android/launcher3/model/ModelDbController;->getNewScreenId()I

    move-result v6

    .line 150
    .end local v17    # "screenId":I
    .local v6, "screenId":I
    invoke-virtual {v0, v6}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 151
    iget-object v11, v3, Lcom/android/launcher3/model/AllAppsToWorkspaceTask$Placement;->newScreens:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v11, v6}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 152
    invoke-static {v9, v6, v7, v8}, Lcom/android/launcher3/model/AllAppsToWorkspaceTask;->gridFor(Landroid/util/LongSparseArray;III)Lcom/android/launcher3/util/GridOccupancy;

    move-result-object v11

    .line 153
    .restart local v11    # "grid":Lcom/android/launcher3/util/GridOccupancy;
    invoke-virtual {v11, v10, v12, v2}, Lcom/android/launcher3/util/GridOccupancy;->findVacantCell([III)Z

    move-result v13

    if-nez v13, :cond_8

    .line 154
    const-string v13, "AllAppsToWorkspaceTask"

    move-object/from16 v25, v0

    .end local v0    # "screens":Lcom/android/launcher3/util/IntArray;
    .local v25, "screens":Lcom/android/launcher3/util/IntArray;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v6

    .end local v6    # "screenId":I
    .restart local v17    # "screenId":I
    const-string v6, "Brand new screen has no room, skipping "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    move-object/from16 v2, p2

    move-object/from16 v6, v23

    move-object/from16 v11, v24

    move-object/from16 v0, v25

    const/16 v12, -0x64

    const/4 v13, 0x1

    goto/16 :goto_1

    .line 153
    .end local v17    # "screenId":I
    .end local v25    # "screens":Lcom/android/launcher3/util/IntArray;
    .restart local v0    # "screens":Lcom/android/launcher3/util/IntArray;
    .restart local v6    # "screenId":I
    :cond_8
    move-object/from16 v25, v0

    move/from16 v17, v6

    .end local v0    # "screens":Lcom/android/launcher3/util/IntArray;
    .end local v6    # "screenId":I
    .restart local v17    # "screenId":I
    .restart local v25    # "screens":Lcom/android/launcher3/util/IntArray;
    move/from16 v0, v17

    goto :goto_4

    .line 148
    .end local v11    # "grid":Lcom/android/launcher3/util/GridOccupancy;
    .end local v25    # "screens":Lcom/android/launcher3/util/IntArray;
    .restart local v0    # "screens":Lcom/android/launcher3/util/IntArray;
    :cond_9
    move-object/from16 v25, v0

    .end local v0    # "screens":Lcom/android/launcher3/util/IntArray;
    .restart local v25    # "screens":Lcom/android/launcher3/util/IntArray;
    move/from16 v0, v17

    .line 159
    .end local v17    # "screenId":I
    .local v0, "screenId":I
    :goto_4
    invoke-static {v9, v0, v7, v8}, Lcom/android/launcher3/model/AllAppsToWorkspaceTask;->gridFor(Landroid/util/LongSparseArray;III)Lcom/android/launcher3/util/GridOccupancy;

    move-result-object v6

    .line 160
    .local v6, "grid":Lcom/android/launcher3/util/GridOccupancy;
    const/4 v11, 0x0

    aget v18, v10, v11

    const/4 v13, 0x1

    aget v19, v10, v13

    const/16 v22, 0x1

    move-object/from16 v17, v6

    move/from16 v20, v12

    move/from16 v21, v2

    invoke-virtual/range {v17 .. v22}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 162
    const/16 v13, -0x64

    iput v13, v15, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->container:I

    .line 163
    iput v0, v15, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->screenId:I

    .line 164
    aget v11, v10, v11

    iput v11, v15, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->cellX:I

    .line 165
    const/4 v11, 0x1

    aget v13, v10, v11

    iput v13, v15, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->cellY:I

    .line 166
    invoke-virtual {v5}, Lcom/android/launcher3/model/ModelDbController;->generateNewItemId()I

    move-result v11

    iput v11, v15, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->id:I

    .line 170
    new-instance v11, Lcom/android/launcher3/util/ContentWriter;

    invoke-direct {v11, v4}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;)V

    .line 171
    .local v11, "writer":Lcom/android/launcher3/util/ContentWriter;
    invoke-virtual {v15, v11}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V

    .line 172
    const-string v13, "_id"

    move/from16 v17, v2

    .end local v2    # "spanY":I
    .local v17, "spanY":I
    iget v2, v15, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v13, v2}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    .line 173
    const-string v2, "favorites"

    invoke-virtual {v11, v4}, Lcom/android/launcher3/util/ContentWriter;->getValues(Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v13

    invoke-virtual {v5, v2, v13}, Lcom/android/launcher3/model/ModelDbController;->insert(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 174
    const/4 v2, 0x1

    invoke-virtual {v1, v4, v15, v2}, Lcom/android/launcher3/model/BgDataModel;->addItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Z)V

    .line 176
    iget-object v13, v3, Lcom/android/launcher3/model/AllAppsToWorkspaceTask$Placement;->addedItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    const-string v13, "AllAppsToWorkspaceTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v4

    .end local v4    # "context":Landroid/content/Context;
    .local v18, "context":Landroid/content/Context;
    const-string v4, "Placed "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " on screen "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " at "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v15, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->cellX:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v15, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->cellY:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .end local v0    # "screenId":I
    .end local v6    # "grid":Lcom/android/launcher3/util/GridOccupancy;
    .end local v11    # "writer":Lcom/android/launcher3/util/ContentWriter;
    .end local v12    # "spanX":I
    .end local v14    # "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    .end local v15    # "item":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .end local v17    # "spanY":I
    move-object/from16 v2, p2

    move-object/from16 v4, v18

    move-object/from16 v6, v23

    move-object/from16 v11, v24

    move-object/from16 v0, v25

    const/16 v12, -0x64

    const/4 v13, 0x1

    goto/16 :goto_1

    .line 127
    .end local v18    # "context":Landroid/content/Context;
    .end local v23    # "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    .end local v25    # "screens":Lcom/android/launcher3/util/IntArray;
    .local v0, "screens":Lcom/android/launcher3/util/IntArray;
    .restart local v4    # "context":Landroid/content/Context;
    .local v6, "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    .restart local v14    # "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    :cond_a
    move-object/from16 v25, v0

    move-object/from16 v18, v4

    move-object/from16 v23, v6

    move-object/from16 v24, v11

    .end local v0    # "screens":Lcom/android/launcher3/util/IntArray;
    .end local v4    # "context":Landroid/content/Context;
    .end local v6    # "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    .restart local v18    # "context":Landroid/content/Context;
    .restart local v23    # "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    .restart local v25    # "screens":Lcom/android/launcher3/util/IntArray;
    move-object/from16 v2, p2

    const/16 v12, -0x64

    const/4 v13, 0x1

    goto/16 :goto_1

    .line 181
    .end local v14    # "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    .end local v18    # "context":Landroid/content/Context;
    .end local v23    # "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    .end local v25    # "screens":Lcom/android/launcher3/util/IntArray;
    .restart local v0    # "screens":Lcom/android/launcher3/util/IntArray;
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v6    # "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    :cond_b
    move-object/from16 v25, v0

    move-object/from16 v18, v4

    move-object/from16 v23, v6

    .end local v0    # "screens":Lcom/android/launcher3/util/IntArray;
    .end local v4    # "context":Landroid/content/Context;
    .end local v6    # "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    .restart local v18    # "context":Landroid/content/Context;
    .restart local v23    # "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    .restart local v25    # "screens":Lcom/android/launcher3/util/IntArray;
    const-string v0, "AllAppsToWorkspaceTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Placed "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v3, Lcom/android/launcher3/model/AllAppsToWorkspaceTask$Placement;->addedItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " apps on the workspace"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 182
    iget-object v4, v3, Lcom/android/launcher3/model/AllAppsToWorkspaceTask$Placement;->newScreens:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v4}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v4

    if-lez v4, :cond_c

    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", created "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v3, Lcom/android/launcher3/model/AllAppsToWorkspaceTask$Placement;->newScreens:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v6}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " new pages"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_c
    const-string v4, ""

    :goto_5
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-static {v0, v2}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-object v3

    .line 123
    .end local v10    # "xy":[I
    .end local v18    # "context":Landroid/content/Context;
    .end local v23    # "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    .end local v25    # "screens":Lcom/android/launcher3/util/IntArray;
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v6    # "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    :catchall_1
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v23, v6

    .end local v4    # "context":Landroid/content/Context;
    .end local v6    # "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    .restart local v18    # "context":Landroid/content/Context;
    .restart local v23    # "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    :goto_6
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_6
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .locals 2
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p3, "apps"    # Lcom/android/launcher3/model/AllAppsList;

    .line 82
    invoke-static {p1, p2, p3}, Lcom/android/launcher3/model/AllAppsToWorkspaceTask;->placeAllAppsOnWorkspace(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)Lcom/android/launcher3/model/AllAppsToWorkspaceTask$Placement;

    move-result-object v0

    .line 83
    .local v0, "placement":Lcom/android/launcher3/model/AllAppsToWorkspaceTask$Placement;
    invoke-virtual {v0}, Lcom/android/launcher3/model/AllAppsToWorkspaceTask$Placement;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Lcom/android/launcher3/model/AllAppsToWorkspaceTask$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/launcher3/model/AllAppsToWorkspaceTask$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/model/AllAppsToWorkspaceTask$Placement;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/AllAppsToWorkspaceTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 87
    :cond_0
    return-void
.end method
