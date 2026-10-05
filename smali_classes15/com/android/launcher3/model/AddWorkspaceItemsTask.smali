.class public Lcom/android/launcher3/model/AddWorkspaceItemsTask;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "AddWorkspaceItemsTask.java"


# static fields
.field private static final LOG:Ljava/lang/String; = "AddWorkspaceItemsTask"


# instance fields
.field private final mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mItemSpaceFinder:Lcom/android/launcher3/model/WorkspaceItemSpaceFinder;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 66
    .local p1, "itemList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Object;>;>;"
    new-instance v0, Lcom/android/launcher3/model/WorkspaceItemSpaceFinder;

    invoke-direct {v0}, Lcom/android/launcher3/model/WorkspaceItemSpaceFinder;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;-><init>(Ljava/util/List;Lcom/android/launcher3/model/WorkspaceItemSpaceFinder;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/android/launcher3/model/WorkspaceItemSpaceFinder;)V
    .locals 0
    .param p2, "itemSpaceFinder"    # Lcom/android/launcher3/model/WorkspaceItemSpaceFinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/android/launcher3/model/WorkspaceItemSpaceFinder;",
            ")V"
        }
    .end annotation

    .line 74
    .local p1, "itemList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->mItemList:Ljava/util/List;

    .line 76
    iput-object p2, p0, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->mItemSpaceFinder:Lcom/android/launcher3/model/WorkspaceItemSpaceFinder;

    .line 77
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .locals 23
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p3, "apps"    # Lcom/android/launcher3/model/AllAppsList;

    .line 82
    move-object/from16 v1, p0

    move-object/from16 v9, p2

    iget-object v0, v1, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    return-void

    .line 86
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 87
    .local v10, "addedItemsFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v0, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntArray;-><init>()V

    move-object v11, v0

    .line 89
    .local v11, "addedWorkspaceScreensFinal":Lcom/android/launcher3/util/IntArray;
    monitor-enter p2

    .line 90
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/model/BgDataModel;->collectWorkspaceScreens()Lcom/android/launcher3/util/IntArray;

    move-result-object v5

    .line 92
    .local v5, "workspaceScreens":Lcom/android/launcher3/util/IntArray;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v0, "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v2, v1, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->mItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 94
    .local v3, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Object;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    .line 95
    .local v4, "item":Lcom/android/launcher3/model/data/ItemInfo;
    iget v6, v4, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v6, :cond_3

    .line 97
    invoke-virtual {v4}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    iget-object v7, v4, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v9, v6, v7}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->shortcutExists(Lcom/android/launcher3/model/BgDataModel;Landroid/content/Intent;Landroid/os/UserHandle;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 98
    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 103
    invoke-virtual {v4}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 102
    invoke-static {v6, v7}, Lcom/android/launcher3/util/PackageManagerHelper;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 104
    goto :goto_0

    .line 107
    :cond_2
    instance-of v6, v4, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v6, :cond_3

    move-object v6, v4

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 108
    invoke-virtual {v6}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->isArchived()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 109
    goto :goto_0

    .line 113
    :cond_3
    iget v6, v4, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v6, :cond_4

    .line 114
    instance-of v6, v4, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    if-eqz v6, :cond_4

    .line 115
    move-object v6, v4

    check-cast v6, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/launcher3/model/data/WorkspaceItemFactory;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v6

    move-object v4, v6

    .line 118
    :cond_4
    if-eqz v4, :cond_5

    .line 119
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    .end local v3    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Object;>;"
    .end local v4    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_5
    goto :goto_0

    .line 123
    :cond_6
    sget-object v2, Lcom/android/launcher3/pm/InstallSessionHelper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 124
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/pm/InstallSessionHelper;

    move-object v12, v2

    .line 125
    .local v12, "packageInstaller":Lcom/android/launcher3/pm/InstallSessionHelper;
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/content/pm/LauncherApps;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherApps;

    move-object v13, v2

    .line 127
    .local v13, "launcherApps":Landroid/content/pm/LauncherApps;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    move-object v15, v2

    .line 129
    .local v15, "item":Lcom/android/launcher3/model/data/ItemInfo;
    iget-object v2, v1, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->mItemSpaceFinder:Lcom/android/launcher3/model/WorkspaceItemSpaceFinder;

    iget v7, v15, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v8, v15, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object v6, v11

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/model/WorkspaceItemSpaceFinder;->findSpaceForItem(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;II)[I

    move-result-object v2

    .line 131
    .local v2, "coords":[I
    const/4 v3, 0x0

    aget v19, v2, v3

    .line 134
    .local v19, "screenId":I
    instance-of v4, v15, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-nez v4, :cond_9

    instance-of v4, v15, Lcom/android/launcher3/model/data/FolderInfo;

    if-nez v4, :cond_9

    instance-of v4, v15, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v4, :cond_7

    goto :goto_2

    .line 137
    :cond_7
    instance-of v4, v15, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    if-eqz v4, :cond_8

    .line 138
    move-object v4, v15

    check-cast v4, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/android/launcher3/model/data/WorkspaceItemFactory;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v4

    .local v4, "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    goto :goto_3

    .line 140
    .end local v4    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_8
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unexpected info type"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v10    # "addedItemsFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .end local v11    # "addedWorkspaceScreensFinal":Lcom/android/launcher3/util/IntArray;
    .end local p1    # "app":Lcom/android/launcher3/LauncherAppState;
    .end local p2    # "dataModel":Lcom/android/launcher3/model/BgDataModel;
    .end local p3    # "apps":Lcom/android/launcher3/model/AllAppsList;
    throw v3

    .line 136
    .restart local v10    # "addedItemsFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .restart local v11    # "addedWorkspaceScreensFinal":Lcom/android/launcher3/util/IntArray;
    .restart local p1    # "app":Lcom/android/launcher3/LauncherAppState;
    .restart local p2    # "dataModel":Lcom/android/launcher3/model/BgDataModel;
    .restart local p3    # "apps":Lcom/android/launcher3/model/AllAppsList;
    :cond_9
    :goto_2
    move-object v4, v15

    .line 143
    .restart local v4    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    :goto_3
    instance-of v6, v15, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v6, :cond_12

    move-object v6, v15

    check-cast v6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isPromise()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 144
    move-object v6, v15

    check-cast v6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 145
    .local v6, "workspaceInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    invoke-virtual {v15}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 146
    invoke-virtual {v15}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_a
    const/4 v8, 0x0

    .line 147
    .local v8, "packageName":Ljava/lang/String;
    :goto_4
    if-nez v8, :cond_b

    .line 148
    goto :goto_1

    .line 150
    :cond_b
    iget-object v3, v15, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v12, v3, v8}, Lcom/android/launcher3/pm/InstallSessionHelper;->getActiveSessionInfo(Landroid/os/UserHandle;Ljava/lang/String;)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v3

    .line 153
    .local v3, "sessionInfo":Landroid/content/pm/PackageInstaller$SessionInfo;
    invoke-virtual {v12, v3}, Lcom/android/launcher3/pm/InstallSessionHelper;->verifySessionInfo(Landroid/content/pm/PackageInstaller$SessionInfo;)Z

    move-result v17

    if-nez v17, :cond_c

    .line 154
    const-string v7, "AddWorkspaceItemsTask"

    move-object/from16 v22, v0

    .end local v0    # "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .local v22, "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v4

    .end local v4    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    .local v17, "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    const-string v4, "Item info failed session info verification. Skipping : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    move-object/from16 v0, v22

    goto/16 :goto_1

    .line 159
    .end local v17    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v22    # "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .restart local v0    # "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .restart local v4    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_c
    move-object/from16 v22, v0

    move-object/from16 v17, v4

    .end local v0    # "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .end local v4    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    .restart local v17    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    .restart local v22    # "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iget-object v4, v15, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    .line 160
    invoke-virtual {v0, v8, v4}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 161
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    const/4 v4, 0x1

    goto :goto_5

    :cond_d
    const/4 v4, 0x0

    .line 163
    .local v4, "hasActivity":Z
    :goto_5
    if-nez v3, :cond_f

    .line 164
    if-nez v4, :cond_e

    .line 166
    move-object/from16 v0, v22

    goto/16 :goto_1

    .line 164
    :cond_e
    move-object/from16 v18, v3

    goto :goto_6

    .line 169
    :cond_f
    nop

    .line 170
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->getProgress()F

    move-result v18

    const/high16 v20, 0x42c80000    # 100.0f

    mul-float v7, v18, v20

    float-to-int v7, v7

    .line 169
    move-object/from16 v18, v3

    const/4 v3, 0x1

    .end local v3    # "sessionInfo":Landroid/content/pm/PackageInstaller$SessionInfo;
    .local v18, "sessionInfo":Landroid/content/pm/PackageInstaller$SessionInfo;
    invoke-virtual {v6, v7, v3}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->setProgressLevel(II)V

    .line 174
    :goto_6
    if-eqz v4, :cond_11

    .line 177
    new-instance v3, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v7

    move/from16 v20, v4

    const/4 v4, 0x0

    .end local v4    # "hasActivity":Z
    .local v20, "hasActivity":Z
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/LauncherActivityInfo;

    move-object/from16 v16, v0

    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .local v16, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    iget-object v0, v15, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v3, v7, v4, v0}, Lcom/android/launcher3/model/data/AppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    .line 178
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/launcher3/model/data/AppInfo;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    move-object v4, v0

    .line 180
    .end local v17    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    .local v4, "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    invoke-virtual {v4}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v3, v4, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v9, v0, v3}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->shortcutExists(Lcom/android/launcher3/model/BgDataModel;Landroid/content/Intent;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 185
    move-object/from16 v0, v22

    goto/16 :goto_1

    .line 188
    :cond_10
    move-object v0, v4

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 189
    .local v0, "wii":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    const-string v3, ""

    iput-object v3, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->title:Ljava/lang/CharSequence;

    .line 190
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v3

    iget-object v7, v15, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v7}, Lcom/android/launcher3/icons/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v3

    iput-object v3, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 191
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v3

    move-object v7, v4

    check-cast v7, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 192
    invoke-virtual {v7}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->usingLowResIcon()Z

    move-result v7

    .line 191
    invoke-virtual {v3, v0, v7}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    goto :goto_8

    .line 174
    .end local v16    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .end local v20    # "hasActivity":Z
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .local v4, "hasActivity":Z
    .restart local v17    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_11
    move-object/from16 v16, v0

    move/from16 v20, v4

    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .end local v4    # "hasActivity":Z
    .restart local v16    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .restart local v20    # "hasActivity":Z
    goto :goto_7

    .line 143
    .end local v6    # "workspaceInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v16    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .end local v17    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v18    # "sessionInfo":Landroid/content/pm/PackageInstaller$SessionInfo;
    .end local v20    # "hasActivity":Z
    .end local v22    # "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .local v0, "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .local v4, "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_12
    move-object/from16 v22, v0

    move-object/from16 v17, v4

    .line 197
    .end local v0    # "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .end local v4    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    .restart local v17    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    .restart local v22    # "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    :goto_7
    move-object/from16 v4, v17

    .end local v17    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    .restart local v4    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v16

    const/16 v18, -0x64

    const/4 v0, 0x1

    aget v20, v2, v0

    const/4 v0, 0x2

    aget v21, v2, v0

    move-object/from16 v17, v4

    invoke-virtual/range {v16 .. v21}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 202
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    const-string v0, "AddWorkspaceItemsTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding item info to workspace: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .end local v2    # "coords":[I
    .end local v4    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v15    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v19    # "screenId":I
    move-object/from16 v0, v22

    goto/16 :goto_1

    .line 127
    .end local v22    # "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .restart local v0    # "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    :cond_13
    move-object/from16 v22, v0

    .line 207
    .end local v0    # "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .end local v5    # "workspaceScreens":Lcom/android/launcher3/util/IntArray;
    .end local v12    # "packageInstaller":Lcom/android/launcher3/pm/InstallSessionHelper;
    .end local v13    # "launcherApps":Landroid/content/pm/LauncherApps;
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 210
    new-instance v0, Lcom/android/launcher3/model/AddWorkspaceItemsTask$1;

    invoke-direct {v0, v1, v10, v11}, Lcom/android/launcher3/model/AddWorkspaceItemsTask$1;-><init>(Lcom/android/launcher3/model/AddWorkspaceItemsTask;Ljava/util/ArrayList;Lcom/android/launcher3/util/IntArray;)V

    invoke-virtual {v1, v0}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 231
    :cond_14
    return-void

    .line 207
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected shortcutExists(Lcom/android/launcher3/model/BgDataModel;Landroid/content/Intent;Landroid/os/UserHandle;)Z
    .locals 12
    .param p1, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 240
    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 242
    return v0

    .line 244
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 247
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "compPkgName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 249
    invoke-virtual {p2, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, "intentWithPkg":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "intentWithoutPkg":Ljava/lang/String;
    goto :goto_0

    .line 252
    .end local v3    # "intentWithPkg":Ljava/lang/String;
    .end local v4    # "intentWithoutPkg":Ljava/lang/String;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    .line 253
    .restart local v3    # "intentWithPkg":Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "intentWithoutPkg":Ljava/lang/String;
    goto :goto_0

    .line 256
    .end local v1    # "compPkgName":Ljava/lang/String;
    .end local v3    # "intentWithPkg":Ljava/lang/String;
    .end local v4    # "intentWithoutPkg":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    .line 257
    .restart local v1    # "compPkgName":Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    .line 258
    .restart local v3    # "intentWithPkg":Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    .line 261
    .restart local v4    # "intentWithoutPkg":Ljava/lang/String;
    :goto_0
    invoke-static {p2}, Lcom/android/launcher3/util/PackageManagerHelper;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result v5

    .line 262
    .local v5, "isLauncherAppTarget":Z
    monitor-enter p1

    .line 263
    :try_start_0
    iget-object v6, p1, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v6}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/ItemInfo;

    .line 264
    .local v7, "item":Lcom/android/launcher3/model/data/ItemInfo;
    instance-of v8, v7, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v8, :cond_5

    .line 265
    move-object v8, v7

    check-cast v8, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 266
    .local v8, "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    invoke-virtual {v7}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v9

    if-eqz v9, :cond_5

    iget-object v9, v8, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v9, p3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 267
    new-instance v9, Landroid/content/Intent;

    invoke-virtual {v7}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 268
    .local v9, "copyIntent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 269
    invoke-virtual {v9, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v10

    .line 270
    .local v10, "s":Ljava/lang/String;
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_2

    .line 275
    :cond_3
    if-eqz v5, :cond_5

    .line 276
    invoke-virtual {v8}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isPromise()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 277
    const/4 v11, 0x2

    invoke-virtual {v8, v11}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 278
    invoke-virtual {v8}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_5

    if-eqz v1, :cond_5

    .line 280
    invoke-virtual {v8}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 281
    monitor-exit p1

    return v0

    .line 271
    :cond_4
    :goto_2
    monitor-exit p1

    return v0

    .line 285
    .end local v7    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v8    # "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .end local v9    # "copyIntent":Landroid/content/Intent;
    .end local v10    # "s":Ljava/lang/String;
    :cond_5
    goto :goto_1

    .line 286
    :cond_6
    monitor-exit p1

    .line 287
    return v2

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
