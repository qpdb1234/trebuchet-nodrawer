.class public Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;
.super Ljava/lang/Object;
.source "GridSizeMigrationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/model/GridSizeMigrationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DbReader"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mLastScreenId:I

.field private final mTableName:Ljava/lang/String;

.field private final mValidPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorkspaceEntriesByScreenId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmDb(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastScreenId(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mLastScreenId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTableName(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mTableName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWorkspaceEntriesByScreenId(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mWorkspaceEntriesByScreenId:Ljava/util/Map;

    return-object p0
.end method

.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/Context;Ljava/util/Set;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 431
    .local p4, "validPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mLastScreenId:I

    .line 427
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mWorkspaceEntriesByScreenId:Ljava/util/Map;

    .line 432
    iput-object p1, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 433
    iput-object p2, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mTableName:Ljava/lang/String;

    .line 434
    iput-object p3, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mContext:Landroid/content/Context;

    .line 435
    iput-object p4, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mValidPackages:Ljava/util/Set;

    .line 436
    return-void
.end method

.method private getFolderItemsCount(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;)I
    .locals 7
    .param p1, "entry"    # Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;

    .line 610
    const-string v0, "_id"

    const-string v1, "intent"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "container = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->queryWorkspace([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 614
    .local v0, "c":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 615
    .local v1, "total":I
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 617
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 618
    .local v3, "id":I
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 619
    .local v4, "intent":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->verifyIntent(Ljava/lang/String;)V

    .line 620
    add-int/lit8 v1, v1, 0x1

    .line 621
    invoke-static {p1}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->-$$Nest$fgetmFolderItems(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 622
    invoke-static {p1}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->-$$Nest$fgetmFolderItems(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;)Ljava/util/Map;

    move-result-object v5

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    :cond_0
    invoke-static {p1}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->-$$Nest$fgetmFolderItems(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    nop

    .end local v3    # "id":I
    .end local v4    # "intent":Ljava/lang/String;
    goto :goto_0

    .line 625
    :catch_0
    move-exception v3

    .line 626
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v5, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mTableName:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/util/IntArray;->wrap([I)Lcom/android/launcher3/util/IntArray;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->-$$Nest$smremoveEntryFromDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/launcher3/util/IntArray;)V

    .line 627
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 629
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 630
    return v1
.end method

.method private queryWorkspace([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "columns"    # [Ljava/lang/String;
    .param p2, "where"    # Ljava/lang/String;

    .line 634
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mTableName:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private verifyIntent(Ljava/lang/String;)V
    .locals 2
    .param p1, "intentStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 640
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 641
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 642
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->verifyPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 643
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 645
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->verifyPackage(Ljava/lang/String;)V

    .line 647
    :cond_1
    :goto_0
    return-void
.end method

.method private verifyPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 652
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mValidPackages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    return-void

    .line 654
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Package not available"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected loadAllWorkspaceEntries()Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;",
            ">;"
        }
    .end annotation

    .line 502
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 503
    .local v2, "workspaceEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;>;"
    const-string v3, "_id"

    const-string v4, "itemType"

    const-string v5, "screen"

    const-string v6, "cellX"

    const-string v7, "cellY"

    const-string v8, "spanX"

    const-string v9, "spanY"

    const-string v10, "intent"

    const-string v11, "appWidgetProvider"

    const-string v12, "appWidgetId"

    filled-new-array/range {v3 .. v12}, [Ljava/lang/String;

    move-result-object v0

    const-string v3, "container = -100"

    invoke-direct {v1, v0, v3}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->queryWorkspace([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 517
    .local v3, "c":Landroid/database/Cursor;
    const-string v0, "_id"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 518
    .local v4, "indexId":I
    const-string v0, "itemType"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 519
    .local v5, "indexItemType":I
    const-string v0, "screen"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 520
    .local v6, "indexScreen":I
    const-string v0, "cellX"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 521
    .local v7, "indexCellX":I
    const-string v0, "cellY"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 522
    .local v8, "indexCellY":I
    const-string v0, "spanX"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 523
    .local v9, "indexSpanX":I
    const-string v0, "spanY"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 524
    .local v10, "indexSpanY":I
    const-string v0, "intent"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 525
    .local v11, "indexIntent":I
    const-string v0, "appWidgetProvider"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 527
    .local v12, "indexAppWidgetProvider":I
    const-string v0, "appWidgetId"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 530
    .local v13, "indexAppWidgetId":I
    new-instance v0, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntArray;-><init>()V

    move-object v14, v0

    .line 531
    .local v14, "entriesToRemove":Lcom/android/launcher3/util/IntArray;
    new-instance v0, Lcom/android/launcher3/widget/WidgetManagerHelper;

    iget-object v15, v1, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mContext:Landroid/content/Context;

    invoke-direct {v0, v15}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    move-object v15, v0

    .line 532
    .local v15, "widgetManagerHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 533
    new-instance v0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;

    invoke-direct {v0}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;-><init>()V

    move-object/from16 v16, v0

    .line 534
    .local v16, "entry":Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move/from16 v17, v4

    move-object/from16 v4, v16

    .end local v16    # "entry":Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;
    .local v4, "entry":Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;
    .local v17, "indexId":I
    iput v0, v4, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->id:I

    .line 535
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v4, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->itemType:I

    .line 536
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v4, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->screenId:I

    .line 537
    iget v0, v1, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mLastScreenId:I

    move/from16 v16, v5

    .end local v5    # "indexItemType":I
    .local v16, "indexItemType":I
    iget v5, v4, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->screenId:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mLastScreenId:I

    .line 538
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v4, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->cellX:I

    .line 539
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v4, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->cellY:I

    .line 540
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v4, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->spanX:I

    .line 541
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v4, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->spanY:I

    .line 545
    :try_start_0
    iget v0, v4, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->itemType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v5, 0x2

    sparse-switch v0, :sswitch_data_0

    .line 589
    move/from16 v18, v6

    .end local v6    # "indexScreen":I
    .local v18, "indexScreen":I
    :try_start_1
    new-instance v0, Ljava/lang/Exception;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_6

    .line 582
    .end local v18    # "indexScreen":I
    .restart local v6    # "indexScreen":I
    :sswitch_0
    :try_start_2
    invoke-direct {v1, v4}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->getFolderItemsCount(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;)I

    move-result v0

    .line 583
    .local v0, "total":I
    if-ne v0, v5, :cond_0

    goto/16 :goto_4

    .line 584
    :cond_0
    new-instance v5, Ljava/lang/Exception;

    move/from16 v18, v0

    .end local v0    # "total":I
    .local v18, "total":I
    const-string v0, "App pair contains fewer or more than 2 items"

    invoke-direct {v5, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v2    # "workspaceEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;>;"
    .end local v3    # "c":Landroid/database/Cursor;
    .end local v4    # "entry":Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;
    .end local v6    # "indexScreen":I
    .end local v7    # "indexCellX":I
    .end local v8    # "indexCellY":I
    .end local v9    # "indexSpanX":I
    .end local v10    # "indexSpanY":I
    .end local v11    # "indexIntent":I
    .end local v12    # "indexAppWidgetProvider":I
    .end local v13    # "indexAppWidgetId":I
    .end local v14    # "entriesToRemove":Lcom/android/launcher3/util/IntArray;
    .end local v15    # "widgetManagerHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local v16    # "indexItemType":I
    .end local v17    # "indexId":I
    throw v5

    .line 553
    .end local v18    # "total":I
    .restart local v2    # "workspaceEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;>;"
    .restart local v3    # "c":Landroid/database/Cursor;
    .restart local v4    # "entry":Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;
    .restart local v6    # "indexScreen":I
    .restart local v7    # "indexCellX":I
    .restart local v8    # "indexCellY":I
    .restart local v9    # "indexSpanX":I
    .restart local v10    # "indexSpanY":I
    .restart local v11    # "indexIntent":I
    .restart local v12    # "indexAppWidgetProvider":I
    .restart local v13    # "indexAppWidgetId":I
    .restart local v14    # "entriesToRemove":Lcom/android/launcher3/util/IntArray;
    .restart local v15    # "widgetManagerHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v16    # "indexItemType":I
    .restart local v17    # "indexId":I
    :sswitch_1
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->-$$Nest$fputmProvider(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;Ljava/lang/String;)V

    .line 554
    invoke-static {v4}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->-$$Nest$fgetmProvider(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 555
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->verifyPackage(Ljava/lang/String;)V

    .line 557
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 558
    .local v5, "widgetId":I
    nop

    .line 559
    invoke-virtual {v15, v5, v0}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getLauncherAppWidgetInfo(ILandroid/content/ComponentName;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v19

    .line 560
    .local v19, "pInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    const/16 v20, 0x0

    .line 561
    .local v20, "spans":Landroid/graphics/Point;
    if-eqz v19, :cond_1

    .line 562
    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getMinSpans()Landroid/graphics/Point;

    move-result-object v21

    move-object/from16 v20, v21

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    goto :goto_1

    .line 561
    :cond_1
    move-object/from16 v21, v0

    move-object/from16 v0, v20

    .line 564
    .end local v20    # "spans":Landroid/graphics/Point;
    .local v0, "spans":Landroid/graphics/Point;
    .local v21, "cn":Landroid/content/ComponentName;
    :goto_1
    if-eqz v0, :cond_4

    .line 565
    move/from16 v20, v5

    .end local v5    # "widgetId":I
    .local v20, "widgetId":I
    iget v5, v0, Landroid/graphics/Point;->x:I

    if-lez v5, :cond_2

    iget v5, v0, Landroid/graphics/Point;->x:I

    goto :goto_2

    :cond_2
    iget v5, v4, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->spanX:I

    :goto_2
    iput v5, v4, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->minSpanX:I

    .line 566
    iget v5, v0, Landroid/graphics/Point;->y:I

    if-lez v5, :cond_3

    iget v5, v0, Landroid/graphics/Point;->y:I

    goto :goto_3

    :cond_3
    iget v5, v4, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->spanY:I

    :goto_3
    iput v5, v4, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->minSpanY:I

    goto :goto_4

    .line 569
    .end local v20    # "widgetId":I
    .restart local v5    # "widgetId":I
    :cond_4
    move/from16 v20, v5

    .end local v5    # "widgetId":I
    .restart local v20    # "widgetId":I
    const/4 v5, 0x2

    iput v5, v4, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->minSpanY:I

    iput v5, v4, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->minSpanX:I

    .line 572
    goto :goto_4

    .line 575
    .end local v0    # "spans":Landroid/graphics/Point;
    .end local v19    # "pInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    .end local v20    # "widgetId":I
    .end local v21    # "cn":Landroid/content/ComponentName;
    :sswitch_2
    invoke-direct {v1, v4}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->getFolderItemsCount(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;)I

    move-result v0

    .line 576
    .local v0, "total":I
    if-eqz v0, :cond_5

    goto :goto_4

    .line 577
    :cond_5
    new-instance v5, Ljava/lang/Exception;

    move/from16 v18, v0

    .end local v0    # "total":I
    .restart local v18    # "total":I
    const-string v0, "Folder is empty"

    invoke-direct {v5, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v2    # "workspaceEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;>;"
    .end local v3    # "c":Landroid/database/Cursor;
    .end local v4    # "entry":Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;
    .end local v6    # "indexScreen":I
    .end local v7    # "indexCellX":I
    .end local v8    # "indexCellY":I
    .end local v9    # "indexSpanX":I
    .end local v10    # "indexSpanY":I
    .end local v11    # "indexIntent":I
    .end local v12    # "indexAppWidgetProvider":I
    .end local v13    # "indexAppWidgetId":I
    .end local v14    # "entriesToRemove":Lcom/android/launcher3/util/IntArray;
    .end local v15    # "widgetManagerHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local v16    # "indexItemType":I
    .end local v17    # "indexId":I
    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 591
    .end local v18    # "total":I
    .restart local v2    # "workspaceEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;>;"
    .restart local v3    # "c":Landroid/database/Cursor;
    .restart local v4    # "entry":Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;
    .restart local v6    # "indexScreen":I
    .restart local v7    # "indexCellX":I
    .restart local v8    # "indexCellY":I
    .restart local v9    # "indexSpanX":I
    .restart local v10    # "indexSpanY":I
    .restart local v11    # "indexIntent":I
    .restart local v12    # "indexAppWidgetProvider":I
    .restart local v13    # "indexAppWidgetId":I
    .restart local v14    # "entriesToRemove":Lcom/android/launcher3/util/IntArray;
    .restart local v15    # "widgetManagerHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v16    # "indexItemType":I
    .restart local v17    # "indexId":I
    :catch_0
    move-exception v0

    move/from16 v18, v6

    goto :goto_7

    .line 548
    :sswitch_3
    :try_start_3
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->-$$Nest$fputmIntent(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;Ljava/lang/String;)V

    .line 549
    invoke-static {v4}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->-$$Nest$fgetmIntent(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->verifyIntent(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 550
    nop

    .line 597
    :goto_4
    nop

    .line 598
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    iget-object v0, v1, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mWorkspaceEntriesByScreenId:Ljava/util/Map;

    iget v5, v4, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->screenId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 600
    iget-object v0, v1, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mWorkspaceEntriesByScreenId:Ljava/util/Map;

    iget v5, v4, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->screenId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move/from16 v18, v6

    .end local v6    # "indexScreen":I
    .local v18, "indexScreen":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 599
    .end local v18    # "indexScreen":I
    .restart local v6    # "indexScreen":I
    :cond_6
    move/from16 v18, v6

    .line 602
    .end local v6    # "indexScreen":I
    .restart local v18    # "indexScreen":I
    :goto_5
    iget-object v0, v1, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mWorkspaceEntriesByScreenId:Ljava/util/Map;

    iget v5, v4, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->screenId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    .end local v4    # "entry":Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;
    move/from16 v5, v16

    move/from16 v4, v17

    move/from16 v6, v18

    goto/16 :goto_0

    .line 589
    .restart local v4    # "entry":Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;
    :goto_6
    :try_start_4
    const-string v5, "Invalid item type"

    invoke-direct {v0, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v2    # "workspaceEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;>;"
    .end local v3    # "c":Landroid/database/Cursor;
    .end local v4    # "entry":Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;
    .end local v7    # "indexCellX":I
    .end local v8    # "indexCellY":I
    .end local v9    # "indexSpanX":I
    .end local v10    # "indexSpanY":I
    .end local v11    # "indexIntent":I
    .end local v12    # "indexAppWidgetProvider":I
    .end local v13    # "indexAppWidgetId":I
    .end local v14    # "entriesToRemove":Lcom/android/launcher3/util/IntArray;
    .end local v15    # "widgetManagerHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local v16    # "indexItemType":I
    .end local v17    # "indexId":I
    .end local v18    # "indexScreen":I
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 591
    .restart local v2    # "workspaceEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;>;"
    .restart local v3    # "c":Landroid/database/Cursor;
    .restart local v4    # "entry":Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;
    .restart local v7    # "indexCellX":I
    .restart local v8    # "indexCellY":I
    .restart local v9    # "indexSpanX":I
    .restart local v10    # "indexSpanY":I
    .restart local v11    # "indexIntent":I
    .restart local v12    # "indexAppWidgetProvider":I
    .restart local v13    # "indexAppWidgetId":I
    .restart local v14    # "entriesToRemove":Lcom/android/launcher3/util/IntArray;
    .restart local v15    # "widgetManagerHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v16    # "indexItemType":I
    .restart local v17    # "indexId":I
    .restart local v18    # "indexScreen":I
    :catch_1
    move-exception v0

    goto :goto_7

    .end local v18    # "indexScreen":I
    .restart local v6    # "indexScreen":I
    :catch_2
    move-exception v0

    move/from16 v18, v6

    .line 593
    .end local v6    # "indexScreen":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18    # "indexScreen":I
    :goto_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing item "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GridSizeMigrationUtil"

    invoke-static {v6, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 595
    iget v5, v4, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->id:I

    invoke-virtual {v14, v5}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 596
    move/from16 v5, v16

    move/from16 v4, v17

    move/from16 v6, v18

    goto/16 :goto_0

    .line 604
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v16    # "indexItemType":I
    .end local v17    # "indexId":I
    .end local v18    # "indexScreen":I
    .local v4, "indexId":I
    .local v5, "indexItemType":I
    .restart local v6    # "indexScreen":I
    :cond_7
    move/from16 v17, v4

    .end local v4    # "indexId":I
    .restart local v17    # "indexId":I
    iget-object v0, v1, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, v1, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mTableName:Ljava/lang/String;

    invoke-static {v0, v4, v14}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->-$$Nest$smremoveEntryFromDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/launcher3/util/IntArray;)V

    .line 605
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 606
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x6 -> :sswitch_3
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method protected loadHotseatEntries()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;",
            ">;"
        }
    .end annotation

    .line 439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 440
    .local v0, "hotseatEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;>;"
    const-string v1, "_id"

    const-string v2, "itemType"

    const-string v3, "intent"

    const-string v4, "screen"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "container = -101"

    invoke-direct {p0, v5, v6}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->queryWorkspace([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 449
    .local v5, "c":Landroid/database/Cursor;
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 450
    .local v1, "indexId":I
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 451
    .local v2, "indexItemType":I
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 452
    .local v3, "indexIntent":I
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 454
    .local v4, "indexScreen":I
    new-instance v6, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v6}, Lcom/android/launcher3/util/IntArray;-><init>()V

    .line 455
    .local v6, "entriesToRemove":Lcom/android/launcher3/util/IntArray;
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 456
    new-instance v7, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;

    invoke-direct {v7}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;-><init>()V

    .line 457
    .local v7, "entry":Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v7, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->id:I

    .line 458
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v7, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->itemType:I

    .line 459
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v7, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->screenId:I

    .line 463
    :try_start_0
    iget v8, v7, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->itemType:I

    sparse-switch v8, :sswitch_data_0

    .line 485
    new-instance v8, Ljava/lang/Exception;

    goto :goto_2

    .line 478
    :sswitch_0
    invoke-direct {p0, v7}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->getFolderItemsCount(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;)I

    move-result v8

    .line 479
    .local v8, "total":I
    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    goto :goto_1

    .line 480
    :cond_0
    new-instance v9, Ljava/lang/Exception;

    const-string v10, "App pair contains fewer or more than 2 items"

    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v0    # "hotseatEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;>;"
    .end local v1    # "indexId":I
    .end local v2    # "indexItemType":I
    .end local v3    # "indexIntent":I
    .end local v4    # "indexScreen":I
    .end local v5    # "c":Landroid/database/Cursor;
    .end local v6    # "entriesToRemove":Lcom/android/launcher3/util/IntArray;
    .end local v7    # "entry":Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;
    throw v9

    .line 471
    .end local v8    # "total":I
    .restart local v0    # "hotseatEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;>;"
    .restart local v1    # "indexId":I
    .restart local v2    # "indexItemType":I
    .restart local v3    # "indexIntent":I
    .restart local v4    # "indexScreen":I
    .restart local v5    # "c":Landroid/database/Cursor;
    .restart local v6    # "entriesToRemove":Lcom/android/launcher3/util/IntArray;
    .restart local v7    # "entry":Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;
    :sswitch_1
    invoke-direct {p0, v7}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->getFolderItemsCount(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;)I

    move-result v8

    .line 472
    .restart local v8    # "total":I
    if-eqz v8, :cond_1

    goto :goto_1

    .line 473
    :cond_1
    new-instance v9, Ljava/lang/Exception;

    const-string v10, "Folder is empty"

    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v0    # "hotseatEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;>;"
    .end local v1    # "indexId":I
    .end local v2    # "indexItemType":I
    .end local v3    # "indexIntent":I
    .end local v4    # "indexScreen":I
    .end local v5    # "c":Landroid/database/Cursor;
    .end local v6    # "entriesToRemove":Lcom/android/launcher3/util/IntArray;
    .end local v7    # "entry":Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;
    throw v9

    .line 466
    .end local v8    # "total":I
    .restart local v0    # "hotseatEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;>;"
    .restart local v1    # "indexId":I
    .restart local v2    # "indexItemType":I
    .restart local v3    # "indexIntent":I
    .restart local v4    # "indexScreen":I
    .restart local v5    # "c":Landroid/database/Cursor;
    .restart local v6    # "entriesToRemove":Lcom/android/launcher3/util/IntArray;
    .restart local v7    # "entry":Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;
    :sswitch_2
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->-$$Nest$fputmIntent(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;Ljava/lang/String;)V

    .line 467
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->verifyIntent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    nop

    .line 493
    :goto_1
    nop

    .line 494
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    .end local v7    # "entry":Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;
    goto :goto_0

    .line 485
    .restart local v7    # "entry":Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;
    :goto_2
    :try_start_1
    const-string v9, "Invalid item type"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v0    # "hotseatEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;>;"
    .end local v1    # "indexId":I
    .end local v2    # "indexItemType":I
    .end local v3    # "indexIntent":I
    .end local v4    # "indexScreen":I
    .end local v5    # "c":Landroid/database/Cursor;
    .end local v6    # "entriesToRemove":Lcom/android/launcher3/util/IntArray;
    .end local v7    # "entry":Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;
    throw v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 487
    .restart local v0    # "hotseatEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;>;"
    .restart local v1    # "indexId":I
    .restart local v2    # "indexItemType":I
    .restart local v3    # "indexIntent":I
    .restart local v4    # "indexScreen":I
    .restart local v5    # "c":Landroid/database/Cursor;
    .restart local v6    # "entriesToRemove":Lcom/android/launcher3/util/IntArray;
    .restart local v7    # "entry":Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;
    :catch_0
    move-exception v8

    .line 489
    .local v8, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Removing item "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v7, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "GridSizeMigrationUtil"

    invoke-static {v10, v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 491
    iget v9, v7, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->id:I

    invoke-virtual {v6, v9}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 492
    goto :goto_0

    .line 496
    .end local v7    # "entry":Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v7, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v8, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mTableName:Ljava/lang/String;

    invoke-static {v7, v8, v6}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->-$$Nest$smremoveEntryFromDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/launcher3/util/IntArray;)V

    .line 497
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 498
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x2 -> :sswitch_1
        0x6 -> :sswitch_2
        0xa -> :sswitch_0
    .end sparse-switch
.end method
