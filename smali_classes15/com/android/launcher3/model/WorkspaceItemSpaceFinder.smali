.class public Lcom/android/launcher3/model/WorkspaceItemSpaceFinder;
.super Ljava/lang/Object;
.source "WorkspaceItemSpaceFinder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findNextAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z
    .locals 5
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p3, "xy"    # [I
    .param p4, "spanX"    # I
    .param p5, "spanY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/LauncherAppState;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;[III)Z"
        }
    .end annotation

    .line 105
    .local p2, "occupiedPos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    .line 107
    .local v0, "profile":Lcom/android/launcher3/InvariantDeviceProfile;
    new-instance v1, Lcom/android/launcher3/util/GridOccupancy;

    iget v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v3, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    .line 108
    .local v1, "occupied":Lcom/android/launcher3/util/GridOccupancy;
    if-eqz p2, :cond_0

    .line 109
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    .line 110
    .local v3, "r":Lcom/android/launcher3/model/data/ItemInfo;
    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    .line 111
    .end local v3    # "r":Lcom/android/launcher3/model/data/ItemInfo;
    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {v1, p3, p4, p5}, Lcom/android/launcher3/util/GridOccupancy;->findVacantCell([III)Z

    move-result v2

    return v2
.end method


# virtual methods
.method public findSpaceForItem(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;II)[I
    .locals 15
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p3, "workspaceScreens"    # Lcom/android/launcher3/util/IntArray;
    .param p4, "addedWorkspaceScreensFinal"    # Lcom/android/launcher3/util/IntArray;
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I

    .line 46
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    move-object v3, v0

    .line 49
    .local v3, "screenItems":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;>;"
    monitor-enter p2

    .line 50
    :try_start_0
    iget-object v0, v1, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    .line 51
    .local v4, "info":Lcom/android/launcher3/model/data/ItemInfo;
    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v6, -0x64

    if-ne v5, v6, :cond_1

    .line 52
    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 53
    .local v5, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    if-nez v5, :cond_0

    .line 54
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v6

    .line 55
    iget v6, v4, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 57
    :cond_0
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v4    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v5    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    :cond_1
    goto :goto_0

    .line 60
    :cond_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "screenId":I
    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 65
    .local v4, "coordinates":[I
    const/4 v11, 0x0

    .line 67
    .local v11, "found":Z
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v12

    .line 69
    .local v12, "screenCount":I
    new-instance v5, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v5}, Lcom/android/launcher3/util/IntSet;-><init>()V

    move-object v13, v5

    .line 75
    .local v13, "screensToExclude":Lcom/android/launcher3/util/IntSet;
    const/4 v5, 0x0

    move v14, v5

    .local v14, "screen":I
    :goto_1
    if-ge v14, v12, :cond_4

    .line 76
    invoke-virtual {v2, v14}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v0

    .line 77
    invoke-virtual {v13, v0}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v5

    if-nez v5, :cond_3

    int-to-long v5, v0

    .line 78
    invoke-virtual {v3, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/util/ArrayList;

    .line 77
    move-object v5, p0

    move-object/from16 v6, p1

    move-object v8, v4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/model/WorkspaceItemSpaceFinder;->findNextAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 80
    const/4 v11, 0x1

    .line 81
    goto :goto_2

    .line 75
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 85
    .end local v14    # "screen":I
    :cond_4
    :goto_2
    if-nez v11, :cond_6

    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lcom/android/launcher3/model/ModelDbController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/model/ModelDbController;->getNewScreenId()I

    move-result v0

    .line 90
    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 91
    move-object/from16 v14, p4

    invoke-virtual {v14, v0}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 94
    int-to-long v5, v0

    .line 95
    invoke-virtual {v3, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/util/ArrayList;

    .line 94
    move-object v5, p0

    move-object/from16 v6, p1

    move-object v8, v4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/model/WorkspaceItemSpaceFinder;->findNextAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    .line 96
    :cond_5
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Can\'t find space to add the item"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 85
    :cond_6
    move-object/from16 v14, p4

    .line 99
    :goto_3
    const/4 v5, 0x0

    aget v5, v4, v5

    const/4 v6, 0x1

    aget v6, v4, v6

    filled-new-array {v0, v5, v6}, [I

    move-result-object v5

    return-object v5

    .line 60
    .end local v0    # "screenId":I
    .end local v4    # "coordinates":[I
    .end local v11    # "found":Z
    .end local v12    # "screenCount":I
    .end local v13    # "screensToExclude":Lcom/android/launcher3/util/IntSet;
    :catchall_0
    move-exception v0

    move-object/from16 v14, p4

    :goto_4
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4
.end method
