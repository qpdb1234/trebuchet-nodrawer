.class public Lcom/android/launcher3/provider/RestoreDbTask;
.super Ljava/lang/Object;
.source "RestoreDbTask.java"


# static fields
.field public static final APPWIDGET_IDS:Ljava/lang/String; = "appwidget_ids"

.field public static final APPWIDGET_OLD_IDS:Ljava/lang/String; = "appwidget_old_ids"

.field public static final DB_COLUMNS_TO_LOG:[Ljava/lang/String;

.field public static final FIRST_LOAD_AFTER_RESTORE_KEY:Ljava/lang/String; = "first_load_after_restore"

.field private static final INFO_COLUMN_DEFAULT_VALUE:Ljava/lang/String; = "dflt_value"

.field private static final INFO_COLUMN_NAME:Ljava/lang/String; = "name"

.field public static final RESTORED_DEVICE_TYPE:Ljava/lang/String; = "restored_task_pending"

.field private static final TAG:Ljava/lang/String; = "RestoreDbTask"


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 100
    const-string v0, "profileId"

    const-string v1, "title"

    const-string v2, "itemType"

    const-string v3, "screen"

    const-string v4, "container"

    const-string v5, "cellX"

    const-string v6, "cellY"

    const-string v7, "spanX"

    const-string v8, "spanY"

    const-string v9, "intent"

    const-string v10, "appWidgetProvider"

    const-string v11, "appWidgetId"

    const-string v12, "restored"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/provider/RestoreDbTask;->DB_COLUMNS_TO_LOG:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getManagedProfileIds(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/util/LongSparseArray;
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "defaultProfileId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "J)",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 313
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 314
    .local v0, "ids":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    nop

    .line 315
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 314
    const-string v2, "SELECT profileId from favorites WHERE profileId != ? GROUP BY profileId"

    invoke-virtual {p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 316
    .local v1, "c":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 317
    const-string v2, "profileId"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 319
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 320
    .end local v1    # "c":Landroid/database/Cursor;
    :cond_1
    return-object v0

    .line 314
    .restart local v1    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2
.end method

.method private static getTelephonyIntentSQLLiteSelection(Ljava/util/Collection;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 552
    .local p0, "packages":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/provider/RestoreDbTask$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/launcher3/provider/RestoreDbTask$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 555
    const-string v1, " OR "

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    .line 554
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 552
    return-object v0
.end method

.method private getUserForAncestralSerialNumber(Landroid/app/backup/BackupManager;J)Landroid/os/UserHandle;
    .locals 1
    .param p1, "backupManager"    # Landroid/app/backup/BackupManager;
    .param p2, "ancestralSerialNumber"    # J

    .line 329
    invoke-virtual {p1, p2, p3}, Landroid/app/backup/BackupManager;->getUserForAncestralSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public static isPending(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 348
    invoke-static {p0}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/launcher3/Item;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/launcher3/LauncherPrefs;->RESTORE_DEVICE:Lcom/android/launcher3/ConstantItem;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherPrefs;->has([Lcom/android/launcher3/Item;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getTelephonyIntentSQLLiteSelection$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "packageToChange"    # Ljava/lang/String;

    .line 553
    const-string v0, "intent LIKE \'%%\' || \'%s\' || \'%%\' "

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static logDatabaseWidgetInfo(Lcom/android/launcher3/model/ModelDbController;)V
    .locals 12
    .param p0, "controller"    # Lcom/android/launcher3/model/ModelDbController;

    .line 473
    const-string v0, "profileId"

    const-string v1, "restored"

    const-string v2, "appWidgetId"

    const-string v3, "RestoreDbTask"

    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher3/model/ModelDbController;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "favorites"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    aput-object v0, v6, v7

    const-string v7, "appWidgetId!=-1"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    .local v4, "cursor":Landroid/database/Cursor;
    :try_start_1
    new-instance v5, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v5}, Lcom/android/launcher3/util/IntArray;-><init>()V

    .line 478
    .local v5, "widgetIdList":Lcom/android/launcher3/util/IntArray;
    new-instance v6, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v6}, Lcom/android/launcher3/util/IntArray;-><init>()V

    .line 479
    .local v6, "widgetRestoreList":Lcom/android/launcher3/util/IntArray;
    new-instance v7, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v7}, Lcom/android/launcher3/util/IntArray;-><init>()V

    .line 481
    .local v7, "widgetProfileIdList":Lcom/android/launcher3/util/IntArray;
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 482
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 483
    .local v2, "widgetIdColumnIndex":I
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 484
    .local v1, "widgetRestoredColumnIndex":I
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 485
    .local v0, "widgetProfileIdIndex":I
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_0

    .line 486
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 487
    .local v8, "widgetId":I
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 488
    .local v9, "widgetRestoredFlag":I
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 490
    .local v10, "widgetProfileId":I
    invoke-virtual {v5, v8}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 491
    invoke-virtual {v6, v9}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 492
    invoke-virtual {v7, v10}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 493
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 494
    nop

    .end local v8    # "widgetId":I
    .end local v9    # "widgetRestoredFlag":I
    .end local v10    # "widgetProfileId":I
    goto :goto_0

    .line 497
    .end local v0    # "widgetProfileIdIndex":I
    .end local v1    # "widgetRestoredColumnIndex":I
    .end local v2    # "widgetIdColumnIndex":I
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 498
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v5}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v8, "]"

    if-ge v1, v2, :cond_1

    .line 500
    :try_start_2
    const-string v2, "[appWidgetId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 501
    invoke-virtual {v5, v1}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ", restoreFlag="

    .line 502
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 503
    invoke-virtual {v6, v1}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ", profileId="

    .line 504
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 505
    invoke-virtual {v7, v1}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 506
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 508
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreAppWidgetIds: all widget ids in database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 510
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v5    # "widgetIdList":Lcom/android/launcher3/util/IntArray;
    .end local v6    # "widgetRestoreList":Lcom/android/launcher3/util/IntArray;
    .end local v7    # "widgetProfileIdList":Lcom/android/launcher3/util/IntArray;
    if-eqz v4, :cond_2

    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 512
    .end local v4    # "cursor":Landroid/database/Cursor;
    :cond_2
    goto :goto_3

    .line 473
    .restart local v4    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v4, :cond_3

    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "controller":Lcom/android/launcher3/model/ModelDbController;
    :cond_3
    :goto_2
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 510
    .end local v4    # "cursor":Landroid/database/Cursor;
    .restart local p0    # "controller":Lcom/android/launcher3/model/ModelDbController;
    :catch_0
    move-exception v0

    .line 511
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "Getting widget ids from the database failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 513
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method public static logFavoritesTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10
    .param p0, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "logHeader"    # Ljava/lang/String;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "profileIds"    # [Ljava/lang/String;

    .line 568
    const-string v0, "\n"

    const-string v1, "RestoreDbTask"

    :try_start_0
    const-string v3, "favorites"

    sget-object v4, Lcom/android/launcher3/provider/RestoreDbTask;->DB_COLUMNS_TO_LOG:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 578
    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    .line 579
    .local v3, "columnNames":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 581
    .local v4, "stringBuilder":Ljava/lang/StringBuilder;
    :cond_0
    array-length v5, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v3, v6

    .line 582
    .local v7, "columnName":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    .line 583
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 585
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 584
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    .line 586
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    nop

    .end local v7    # "columnName":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 588
    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 590
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    .end local v3    # "columnNames":[Ljava/lang/String;
    .end local v4    # "stringBuilder":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 592
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logFavoritesTable: No items found from query for \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 595
    :goto_1
    if-eqz v2, :cond_3

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 597
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_3
    goto :goto_3

    .line 568
    .restart local v2    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_4

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "logHeader":Ljava/lang/String;
    .end local p2    # "where":Ljava/lang/String;
    .end local p3    # "profileIds":[Ljava/lang/String;
    :cond_4
    :goto_2
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 595
    .end local v2    # "cursor":Landroid/database/Cursor;
    .restart local p0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "logHeader":Ljava/lang/String;
    .restart local p2    # "where":Ljava/lang/String;
    .restart local p3    # "profileIds":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 596
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "logFavoritesTable: Error reading from database"

    invoke-static {v1, v2, v0}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 598
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method protected static maybeOverrideShortcuts(Landroid/content/Context;Lcom/android/launcher3/model/ModelDbController;Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "controller"    # Lcom/android/launcher3/model/ModelDbController;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "currentUser"    # J

    .line 517
    move-object/from16 v9, p2

    const-string v0, "profileId"

    const-string v10, "intent"

    const-string v11, "_id"

    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/uioverrides/ApiWrapper;->getActivityOverrides(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v12

    .line 520
    .local v12, "activityOverrides":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/LauncherActivityInfo;>;"
    if-eqz v12, :cond_5

    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v8, p1

    goto/16 :goto_8

    .line 524
    :cond_0
    :try_start_0
    const-string v2, "favorites"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v11, v3, v13

    const/4 v14, 0x1

    aput-object v10, v3, v14

    const-string v4, "%s=? AND %s=? AND ( %s )"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "itemType"

    aput-object v6, v5, v13

    aput-object v0, v5, v14

    .line 527
    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher3/provider/RestoreDbTask;->getTelephonyIntentSQLLiteSelection(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 526
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/String;

    .line 528
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v13

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v14

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 524
    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 530
    .local v1, "c":Landroid/database/Cursor;
    :try_start_1
    new-instance v2, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    invoke-direct {v2, v9}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 531
    .local v2, "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    :try_start_2
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 532
    .local v3, "idIndex":I
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 533
    .local v4, "intentIndex":I
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 534
    nop

    .line 535
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 534
    invoke-static {v5, v13}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    .line 535
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 534
    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/LauncherActivityInfo;

    .line 536
    .local v5, "override":Landroid/content/pm/LauncherActivityInfo;
    if-eqz v5, :cond_1

    .line 537
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 538
    .local v6, "values":Landroid/content/ContentValues;
    nop

    .line 539
    invoke-virtual {v5}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v8, p1

    :try_start_3
    invoke-virtual {v8, v7}, Lcom/android/launcher3/model/ModelDbController;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 538
    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 540
    invoke-static {v5}, Lcom/android/launcher3/model/data/AppInfo;->makeLaunchIntent(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v7, "favorites"

    const-string v15, "%s=?"

    new-array v13, v14, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v11, v13, v16

    invoke-static {v15, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    new-array v15, v14, [Ljava/lang/String;

    .line 542
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    const/16 v16, 0x0

    aput-object v17, v15, v16

    .line 541
    invoke-virtual {v9, v7, v6, v13, v15}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 536
    .end local v6    # "values":Landroid/content/ContentValues;
    :cond_1
    move-object/from16 v8, p1

    move/from16 v16, v13

    .line 544
    .end local v5    # "override":Landroid/content/pm/LauncherActivityInfo;
    :goto_1
    move/from16 v13, v16

    goto :goto_0

    .line 545
    :cond_2
    move-object/from16 v8, p1

    invoke-virtual {v2}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->commit()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 546
    .end local v3    # "idIndex":I
    .end local v4    # "intentIndex":I
    :try_start_4
    invoke-virtual {v2}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .end local v2    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    if-eqz v1, :cond_3

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 548
    .end local v1    # "c":Landroid/database/Cursor;
    :cond_3
    goto :goto_7

    .line 524
    .restart local v1    # "c":Landroid/database/Cursor;
    .restart local v2    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v8, p1

    :goto_2
    move-object v3, v0

    :try_start_6
    invoke-virtual {v2}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v4, v0

    :try_start_7
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "c":Landroid/database/Cursor;
    .end local v12    # "activityOverrides":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/LauncherActivityInfo;>;"
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "controller":Lcom/android/launcher3/model/ModelDbController;
    .end local p2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p3    # "currentUser":J
    :goto_3
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .end local v2    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    .restart local v1    # "c":Landroid/database/Cursor;
    .restart local v12    # "activityOverrides":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/LauncherActivityInfo;>;"
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "controller":Lcom/android/launcher3/model/ModelDbController;
    .restart local p2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p3    # "currentUser":J
    :catchall_3
    move-exception v0

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object/from16 v8, p1

    :goto_4
    move-object v2, v0

    if-eqz v1, :cond_4

    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object v3, v0

    :try_start_9
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v12    # "activityOverrides":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/LauncherActivityInfo;>;"
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "controller":Lcom/android/launcher3/model/ModelDbController;
    .end local p2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p3    # "currentUser":J
    :cond_4
    :goto_5
    throw v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 546
    .end local v1    # "c":Landroid/database/Cursor;
    .restart local v12    # "activityOverrides":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/LauncherActivityInfo;>;"
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "controller":Lcom/android/launcher3/model/ModelDbController;
    .restart local p2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p3    # "currentUser":J
    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v8, p1

    .line 547
    .local v0, "ex":Ljava/lang/Exception;
    :goto_6
    const-string v1, "RestoreDbTask"

    const-string v2, "Error while overriding shortcuts"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 549
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_7
    return-void

    .line 520
    :cond_5
    move-object/from16 v8, p1

    .line 521
    :goto_8
    return-void
.end method

.method private static performRestore(Landroid/content/Context;Lcom/android/launcher3/model/ModelDbController;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "controller"    # Lcom/android/launcher3/model/ModelDbController;

    .line 128
    invoke-virtual {p1}, Lcom/android/launcher3/model/ModelDbController;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 129
    .local v6, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v0, "performRestore: starting restore from db"

    const-string v7, "RestoreDbTask"

    invoke-static {v7, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :try_start_0
    new-instance v0, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    invoke-direct {v0, v6}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v0

    .line 131
    .local v8, "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    :try_start_1
    new-instance v0, Lcom/android/launcher3/provider/RestoreDbTask;

    invoke-direct {v0}, Lcom/android/launcher3/provider/RestoreDbTask;-><init>()V

    move-object v9, v0

    .line 132
    .local v9, "task":Lcom/android/launcher3/provider/RestoreDbTask;
    new-instance v4, Landroid/app/backup/BackupManager;

    invoke-direct {v4, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    .line 133
    .local v4, "backupManager":Landroid/app/backup/BackupManager;
    sget-object v0, Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;->Companion:Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger$Companion;

    .line 134
    invoke-virtual {v0, p0}, Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger$Companion;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;

    move-result-object v0

    move-object v10, v0

    .line 135
    .local v10, "restoreEventLogger":Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;
    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, v6

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/provider/RestoreDbTask;->sanitizeDB(Landroid/content/Context;Lcom/android/launcher3/model/ModelDbController;Landroid/database/sqlite/SQLiteDatabase;Landroid/app/backup/BackupManager;Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;)I

    .line 136
    invoke-virtual {v9, p0, p1, v10}, Lcom/android/launcher3/provider/RestoreDbTask;->restoreAppWidgetIdsIfExists(Landroid/content/Context;Lcom/android/launcher3/model/ModelDbController;Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;)V

    .line 137
    invoke-virtual {v8}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    nop

    .line 139
    :try_start_2
    invoke-virtual {v8}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 138
    const/4 v0, 0x1

    return v0

    .line 130
    .end local v4    # "backupManager":Landroid/app/backup/BackupManager;
    .end local v9    # "task":Lcom/android/launcher3/provider/RestoreDbTask;
    .end local v10    # "restoreEventLogger":Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v8}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v6    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "controller":Lcom/android/launcher3/model/ModelDbController;
    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 139
    .end local v8    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    .restart local v6    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "controller":Lcom/android/launcher3/model/ModelDbController;
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to verify db"

    invoke-static {v7, v1, v0}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 141
    const/4 v1, 0x0

    return v1
.end method

.method private reportUnrestoredProfiles(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;)V
    .locals 5
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "profileIds"    # [Ljava/lang/String;
    .param p4, "restoreEventLogger"    # Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT itemType, COUNT(*) AS count FROM favorites WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " GROUP BY itemType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 612
    .local v0, "query":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 615
    :cond_0
    const-string v2, "itemType"

    .line 616
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "count"

    .line 617
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "profile_not_restored"

    .line 615
    invoke-virtual {p4, v2, v3, v4}, Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;->logFavoritesItemsRestoreFailed(IILjava/lang/String;)V

    .line 620
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    .line 622
    :cond_1
    if-eqz v1, :cond_2

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 624
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_2
    goto :goto_1

    .line 612
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "query":Ljava/lang/String;
    .end local p1    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local p2    # "where":Ljava/lang/String;
    .end local p3    # "profileIds":[Ljava/lang/String;
    .end local p4    # "restoreEventLogger":Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;
    :cond_3
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 622
    .end local v1    # "cursor":Landroid/database/Cursor;
    .restart local v0    # "query":Ljava/lang/String;
    .restart local p1    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p2    # "where":Ljava/lang/String;
    .restart local p3    # "profileIds":[Ljava/lang/String;
    .restart local p4    # "restoreEventLogger":Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;
    :catch_0
    move-exception v1

    .line 623
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "RestoreDbTask"

    const-string v3, "reportUnrestoredProfiles: Error reading from database"

    invoke-static {v2, v3, v1}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 625
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private restoreAppWidgetIds(Landroid/content/Context;Lcom/android/launcher3/model/ModelDbController;Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;[I[ILandroid/appwidget/AppWidgetHost;)V
    .locals 31
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/launcher3/model/ModelDbController;
    .param p3, "launcherRestoreEventLogger"    # Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;
    .param p4, "oldWidgetIds"    # [I
    .param p5, "newWidgetIds"    # [I
    .param p6, "host"    # Landroid/appwidget/AppWidgetHost;

    .line 395
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/provider/RestoreDbTask;->isPending(Landroid/content/Context;)Z

    move-result v0

    const-string v6, "Deleting widgetId: "

    const-string v7, "RestoreDbTask"

    if-nez v0, :cond_1

    .line 398
    const-string v0, "Skipping widget ID remap as DB already in use"

    invoke-static {v7, v0}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    array-length v0, v4

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v0, :cond_0

    aget v9, v4, v8

    .line 400
    .local v9, "widgetId":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-virtual {v5, v9}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 399
    .end local v9    # "widgetId":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 403
    :cond_0
    return-void

    .line 406
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v8

    .line 408
    .local v8, "widgets":Landroid/appwidget/AppWidgetManager;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restoreAppWidgetIds: oldWidgetIds="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 409
    invoke-static/range {p4 .. p4}, Lcom/android/launcher3/util/IntArray;->wrap([I)Lcom/android/launcher3/util/IntArray;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/util/IntArray;->toConcatString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", newWidgetIds="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 410
    invoke-static/range {p5 .. p5}, Lcom/android/launcher3/util/IntArray;->wrap([I)Lcom/android/launcher3/util/IntArray;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/util/IntArray;->toConcatString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 408
    invoke-static {v7, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/provider/RestoreDbTask;->logDatabaseWidgetInfo(Lcom/android/launcher3/model/ModelDbController;)V

    .line 415
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_1
    array-length v0, v3

    if-ge v9, v0, :cond_7

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Widget state restore id "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v10, v3, v9

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " => "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v10, v4, v9

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/launcher3/logging/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    aget v0, v4, v9

    invoke-virtual {v8, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v10

    .line 420
    .local v10, "provider":Landroid/appwidget/AppWidgetProviderInfo;
    invoke-static {v10}, Lcom/android/launcher3/model/LoaderTask;->isValidProvider(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 422
    const/4 v0, 0x4

    move v11, v0

    .local v0, "state":I
    goto :goto_2

    .line 424
    .end local v0    # "state":I
    :cond_2
    const/4 v0, 0x2

    move v11, v0

    .line 429
    .local v11, "state":I
    :goto_2
    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/UserCache;

    .line 430
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/android/launcher3/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v12

    .line 431
    .local v12, "mainProfileId":J
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/launcher3/model/ModelDbController;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v14

    .line 432
    .local v14, "controllerProfileId":J
    aget v0, v3, v9

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 433
    .local v3, "oldWidgetId":Ljava/lang/String;
    const-string v16, "appWidgetId=? and (restored & 1) = 1 and profileId=?"

    .line 434
    .local v16, "where":Ljava/lang/String;
    move-object/from16 v17, v8

    .end local v8    # "widgets":Landroid/appwidget/AppWidgetManager;
    .local v17, "widgets":Landroid/appwidget/AppWidgetManager;
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 435
    .local v8, "profileId":Ljava/lang/String;
    filled-new-array {v3, v8}, [Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    .line 436
    .local v18, "args":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v10

    .end local v10    # "provider":Landroid/appwidget/AppWidgetProviderInfo;
    .local v19, "provider":Landroid/appwidget/AppWidgetProviderInfo;
    const-string v10, "restoreAppWidgetIds: querying profile id="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " with controller profile ID="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    new-instance v0, Lcom/android/launcher3/util/ContentWriter;

    new-instance v10, Lcom/android/launcher3/util/ContentWriter$CommitParams;

    move-object/from16 v20, v8

    .end local v8    # "profileId":Ljava/lang/String;
    .local v20, "profileId":Ljava/lang/String;
    const-string v8, "appWidgetId=? and (restored & 1) = 1 and profileId=?"

    move-wide/from16 v21, v12

    move-object/from16 v12, v18

    .end local v18    # "args":[Ljava/lang/String;
    .local v12, "args":[Ljava/lang/String;
    .local v21, "mainProfileId":J
    invoke-direct {v10, v2, v8, v12}, Lcom/android/launcher3/util/ContentWriter$CommitParams;-><init>(Lcom/android/launcher3/model/ModelDbController;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v0, v1, v10}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;Lcom/android/launcher3/util/ContentWriter$CommitParams;)V

    aget v8, v4, v9

    .line 440
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v10, "appWidgetId"

    invoke-virtual {v0, v10, v8}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    .line 441
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v13, "restored"

    invoke-virtual {v0, v13, v8}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    .line 442
    invoke-virtual {v0}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    move-result v8

    .line 443
    .local v8, "result":I
    if-nez v8, :cond_5

    .line 445
    const-string v0, "restoreAppWidgetIds: remapping failed since the widget is not in the database anymore"

    invoke-static {v7, v0}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/model/ModelDbController;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v23

    const-string v24, "favorites"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v25

    const-string v26, "appWidgetId=?"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-virtual/range {v23 .. v30}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 451
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v13, v4, v9

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, " with old id: "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    aget v0, v4, v9

    invoke-virtual {v5, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 456
    const-string v0, "widget_not_found"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v13, 0x4

    move-object/from16 v1, p3

    :try_start_1
    invoke-virtual {v1, v13, v0}, Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;->logSingleFavoritesItemRestoreFailed(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 447
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 451
    :cond_3
    move-object/from16 v1, p3

    .line 461
    :goto_3
    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .line 447
    :catchall_1
    move-exception v0

    move-object/from16 v1, p3

    :goto_4
    move-object v6, v0

    if-eqz v10, :cond_4

    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_5
    throw v6

    .line 443
    .end local v10    # "cursor":Landroid/database/Cursor;
    :cond_5
    move-object/from16 v1, p3

    .line 415
    .end local v3    # "oldWidgetId":Ljava/lang/String;
    .end local v8    # "result":I
    .end local v11    # "state":I
    .end local v12    # "args":[Ljava/lang/String;
    .end local v14    # "controllerProfileId":J
    .end local v16    # "where":Ljava/lang/String;
    .end local v19    # "provider":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v20    # "profileId":Ljava/lang/String;
    .end local v21    # "mainProfileId":J
    :cond_6
    :goto_6
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    move-object/from16 v3, p4

    move-object/from16 v8, v17

    goto/16 :goto_1

    .end local v17    # "widgets":Landroid/appwidget/AppWidgetManager;
    .local v8, "widgets":Landroid/appwidget/AppWidgetManager;
    :cond_7
    move-object/from16 v1, p3

    move-object/from16 v17, v8

    .line 465
    .end local v8    # "widgets":Landroid/appwidget/AppWidgetManager;
    .end local v9    # "i":I
    .restart local v17    # "widgets":Landroid/appwidget/AppWidgetManager;
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/model/ModelDbController;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v3, "launcher db after remap widget ids"

    const/4 v6, 0x0

    invoke-static {v0, v3, v6, v6}, Lcom/android/launcher3/provider/RestoreDbTask;->logFavoritesTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 466
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 467
    .local v0, "app":Lcom/android/launcher3/LauncherAppState;
    if-eqz v0, :cond_8

    .line 468
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    .line 470
    :cond_8
    return-void
.end method

.method public static restoreIfNeeded(Landroid/content/Context;Lcom/android/launcher3/model/ModelDbController;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dbController"    # Lcom/android/launcher3/model/ModelDbController;

    .line 108
    invoke-static {p0}, Lcom/android/launcher3/provider/RestoreDbTask;->isPending(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    const-string v0, "RestoreDbTask"

    const-string v1, "No restore task pending, exiting RestoreDbTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void

    .line 112
    :cond_0
    invoke-static {p0, p1}, Lcom/android/launcher3/provider/RestoreDbTask;->performRestore(Landroid/content/Context;Lcom/android/launcher3/model/ModelDbController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    invoke-virtual {p1}, Lcom/android/launcher3/model/ModelDbController;->createEmptyDB()V

    .line 118
    :cond_1
    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InvariantDeviceProfile;

    .line 122
    .local v0, "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    invoke-static {p0}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/launcher3/Item;

    const/4 v3, 0x0

    sget-object v4, Lcom/android/launcher3/LauncherPrefs;->RESTORE_DEVICE:Lcom/android/launcher3/ConstantItem;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherPrefs;->removeSync([Lcom/android/launcher3/Item;)V

    .line 124
    invoke-virtual {v0, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->reinitializeAfterRestore(Landroid/content/Context;)V

    .line 125
    return-void
.end method

.method public static setPending(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 355
    new-instance v0, Lcom/android/launcher3/model/DeviceGridState;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/DeviceGridState;-><init>(Landroid/content/Context;)V

    .line 356
    .local v0, "deviceGridState":Lcom/android/launcher3/model/DeviceGridState;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restore initiated from backup: DeviceGridState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RestoreDbTask"

    invoke-static {v2, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-static {p0}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Lkotlin/Pair;

    sget-object v4, Lcom/android/launcher3/LauncherPrefs;->RESTORE_DEVICE:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {v0}, Lcom/android/launcher3/model/DeviceGridState;->getDeviceType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/ConstantItem;->to(Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Lcom/android/launcher3/LauncherPrefs;->putSync([Lkotlin/Pair;)V

    .line 358
    invoke-static {}, Lcom/android/launcher3/Flags;->enableLauncherBrMetricsFixed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    invoke-static {p0}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v1

    new-array v3, v2, [Lkotlin/Pair;

    sget-object v4, Lcom/android/launcher3/LauncherPrefs;->IS_FIRST_LOAD_AFTER_RESTORE:Lcom/android/launcher3/ConstantItem;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/android/launcher3/ConstantItem;->to(Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-virtual {v1, v3}, Lcom/android/launcher3/LauncherPrefs;->putSync([Lkotlin/Pair;)V

    .line 361
    :cond_0
    return-void
.end method


# virtual methods
.method protected changeDefaultColumn(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "newProfileId"    # J

    .line 303
    const-string v0, "ALTER TABLE favorites RENAME TO favorites_old;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 304
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/android/launcher3/LauncherSettings$Favorites;->addTableToDb(Landroid/database/sqlite/SQLiteDatabase;JZ)V

    .line 305
    const-string v0, "INSERT INTO favorites SELECT * FROM favorites_old;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 306
    const-string v0, "favorites_old"

    invoke-static {p1, v0}, Lcom/android/launcher3/provider/LauncherDbUtils;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method protected getDefaultProfileId(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 336
    const-string v0, "PRAGMA table_info (favorites)"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 337
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 338
    .local v1, "nameIndex":I
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 339
    const-string v2, "profileId"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    const-string v2, "dflt_value"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 340
    :cond_1
    return-wide v2

    .line 343
    :cond_2
    :try_start_1
    new-instance v2, Ljava/io/InvalidObjectException;

    const-string v3, "Table does not have a profile id column"

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .end local v0    # "c":Landroid/database/Cursor;
    .end local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    .end local v1    # "nameIndex":I
    .restart local v0    # "c":Landroid/database/Cursor;
    .restart local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v1
.end method

.method protected migrateProfileId(Landroid/database/sqlite/SQLiteDatabase;JJ)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldProfileId"    # J
    .param p4, "newProfileId"    # J

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Changing profile user id from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RestoreDbTask"

    invoke-static {v1, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 293
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "profileId"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 294
    nop

    .line 295
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 294
    const-string v2, "favorites"

    const-string v3, "profileId = ?"

    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 296
    return-void
.end method

.method protected removeScreenIdGaps(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 266
    const-string v0, "RestoreDbTask"

    const-string v1, "Removing gaps between screenIds"

    invoke-static {v0, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const/4 v2, 0x1

    const-string v4, "favorites"

    const-string v5, "screen"

    const-string v6, "container = -100"

    const/4 v7, 0x0

    const-string v8, "screen"

    move-object v3, p1

    invoke-static/range {v2 .. v8}, Lcom/android/launcher3/provider/LauncherDbUtils;->queryIntArray(ZLandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    .line 270
    .local v0, "distinctScreens":Lcom/android/launcher3/util/IntArray;
    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    return-void

    .line 274
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UPDATE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "favorites"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 275
    const-string v2, " SET "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "screen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " =\nCASE\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 276
    .local v1, "sql":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/IntArray;->contains(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 277
    .local v3, "screenId":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 278
    const-string v5, "WHEN "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 279
    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " THEN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "screenId":I
    .local v6, "screenId":I
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    add-int/lit8 v4, v4, 0x1

    move v3, v6

    goto :goto_0

    .line 281
    .end local v4    # "i":I
    .end local v6    # "screenId":I
    .restart local v3    # "screenId":I
    :cond_1
    const-string v2, "ELSE screen\nEND WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "container"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 282
    const/16 v4, -0x64

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method restoreAppWidgetIdsIfExists(Landroid/content/Context;Lcom/android/launcher3/model/ModelDbController;Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/launcher3/model/ModelDbController;
    .param p3, "restoreEventLogger"    # Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;

    .line 367
    invoke-static {p1}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    .line 368
    .local v0, "lp":Lcom/android/launcher3/LauncherPrefs;
    const/4 v1, 0x2

    new-array v2, v1, [Lcom/android/launcher3/Item;

    sget-object v3, Lcom/android/launcher3/LauncherPrefs;->APP_WIDGET_IDS:Lcom/android/launcher3/ConstantItem;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/launcher3/LauncherPrefs;->OLD_APP_WIDGET_IDS:Lcom/android/launcher3/ConstantItem;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Lcom/android/launcher3/LauncherPrefs;->has([Lcom/android/launcher3/Item;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 369
    new-instance v12, Landroid/appwidget/AppWidgetHost;

    const/16 v2, 0x400

    move-object v3, p1

    invoke-direct {v12, p1, v2}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 370
    .local v12, "host":Landroid/appwidget/AppWidgetHost;
    sget-object v2, Lcom/android/launcher3/LauncherPrefs;->OLD_APP_WIDGET_IDS:Lcom/android/launcher3/ConstantItem;

    .line 371
    invoke-virtual {v0, v2}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/launcher3/util/IntArray;->fromConcatString(Ljava/lang/String;)Lcom/android/launcher3/util/IntArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntArray;->toArray()[I

    move-result-object v10

    sget-object v2, Lcom/android/launcher3/LauncherPrefs;->APP_WIDGET_IDS:Lcom/android/launcher3/ConstantItem;

    .line 372
    invoke-virtual {v0, v2}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/launcher3/util/IntArray;->fromConcatString(Ljava/lang/String;)Lcom/android/launcher3/util/IntArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntArray;->toArray()[I

    move-result-object v11

    .line 370
    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v9, p3

    invoke-direct/range {v6 .. v12}, Lcom/android/launcher3/provider/RestoreDbTask;->restoreAppWidgetIds(Landroid/content/Context;Lcom/android/launcher3/model/ModelDbController;Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;[I[ILandroid/appwidget/AppWidgetHost;)V

    .line 374
    .end local v12    # "host":Landroid/appwidget/AppWidgetHost;
    goto :goto_0

    .line 375
    :cond_0
    move-object v3, p1

    const-string v2, "RestoreDbTask"

    const-string v6, "Did not receive new app widget id map during Launcher restore"

    invoke-static {v2, v6}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :goto_0
    new-array v1, v1, [Lcom/android/launcher3/Item;

    sget-object v2, Lcom/android/launcher3/LauncherPrefs;->APP_WIDGET_IDS:Lcom/android/launcher3/ConstantItem;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/launcher3/LauncherPrefs;->OLD_APP_WIDGET_IDS:Lcom/android/launcher3/ConstantItem;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherPrefs;->remove([Lcom/android/launcher3/Item;)V

    .line 379
    return-void
.end method

.method protected sanitizeDB(Landroid/content/Context;Lcom/android/launcher3/model/ModelDbController;Landroid/database/sqlite/SQLiteDatabase;Landroid/app/backup/BackupManager;Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;)I
    .locals 33
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/launcher3/model/ModelDbController;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "backupManager"    # Landroid/app/backup/BackupManager;
    .param p5, "restoreEventLogger"    # Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 161
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    const-string v0, "Old Launcher Database before sanitizing:"

    const/4 v1, 0x0

    invoke-static {v8, v0, v1, v1}, Lcom/android/launcher3/provider/RestoreDbTask;->logFavoritesTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 163
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/launcher3/model/ModelDbController;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v9

    .line 164
    .local v9, "myProfileId":J
    invoke-virtual {v6, v8}, Lcom/android/launcher3/provider/RestoreDbTask;->getDefaultProfileId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v11

    .line 165
    .local v11, "oldProfileId":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sanitizeDB: myProfileId= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", oldProfileId= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RestoreDbTask"

    invoke-static {v2, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-direct {v6, v8, v11, v12}, Lcom/android/launcher3/provider/RestoreDbTask;->getManagedProfileIds(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/util/LongSparseArray;

    move-result-object v13

    .line 168
    .local v13, "oldManagedProfileIds":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-virtual {v13}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    const/4 v14, 0x1

    add-int/2addr v3, v14

    invoke-direct {v0, v3}, Landroid/util/LongSparseArray;-><init>(I)V

    move-object v15, v0

    .line 172
    .local v15, "profileMapping":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v15, v11, v12, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 173
    invoke-virtual {v13}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v14

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 174
    invoke-virtual {v13, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    .line 175
    .local v3, "oldManagedProfileId":J
    move-object/from16 v5, p4

    invoke-direct {v6, v5, v3, v4}, Lcom/android/launcher3/provider/RestoreDbTask;->getUserForAncestralSerialNumber(Landroid/app/backup/BackupManager;J)Landroid/os/UserHandle;

    move-result-object v1

    .line 176
    .local v1, "user":Landroid/os/UserHandle;
    if-eqz v1, :cond_0

    .line 177
    move-object/from16 v18, v15

    .end local v15    # "profileMapping":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    .local v18, "profileMapping":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    invoke-virtual {v7, v1}, Lcom/android/launcher3/model/ModelDbController;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v14

    .line 178
    .local v14, "newManagedProfileId":J
    move-object/from16 v19, v1

    .end local v1    # "user":Landroid/os/UserHandle;
    .local v19, "user":Landroid/os/UserHandle;
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v20, v13

    move-object/from16 v13, v18

    .end local v18    # "profileMapping":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    .local v13, "profileMapping":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    .local v20, "oldManagedProfileIds":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    invoke-virtual {v13, v3, v4, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sanitizeDB: managed profile id="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " should be mapped to new id="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .end local v14    # "newManagedProfileId":J
    goto :goto_1

    .line 182
    .end local v19    # "user":Landroid/os/UserHandle;
    .end local v20    # "oldManagedProfileIds":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    .restart local v1    # "user":Landroid/os/UserHandle;
    .local v13, "oldManagedProfileIds":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    .restart local v15    # "profileMapping":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    :cond_0
    move-object/from16 v19, v1

    move-object/from16 v20, v13

    move-object v13, v15

    .end local v1    # "user":Landroid/os/UserHandle;
    .end local v15    # "profileMapping":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    .local v13, "profileMapping":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    .restart local v19    # "user":Landroid/os/UserHandle;
    .restart local v20    # "oldManagedProfileIds":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sanitizeDB: No User found for old profileId, Ancestral Serial Number: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .end local v3    # "oldManagedProfileId":J
    .end local v19    # "user":Landroid/os/UserHandle;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    move-object v15, v13

    move-object/from16 v13, v20

    const/4 v1, 0x0

    const/4 v14, 0x1

    goto :goto_0

    .end local v20    # "oldManagedProfileIds":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    .local v13, "oldManagedProfileIds":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    .restart local v15    # "profileMapping":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    :cond_1
    move-object/from16 v20, v13

    move-object v13, v15

    .line 188
    .end local v0    # "i":I
    .end local v15    # "profileMapping":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    .local v13, "profileMapping":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    .restart local v20    # "oldManagedProfileIds":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    invoke-virtual {v13}, Landroid/util/LongSparseArray;->size()I

    move-result v14

    .line 189
    .local v14, "numProfiles":I
    new-array v15, v14, [Ljava/lang/String;

    .line 190
    .local v15, "profileIds":[Ljava/lang/String;
    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v15, v1

    .line 191
    add-int/lit8 v0, v14, -0x1

    .restart local v0    # "i":I
    :goto_2
    const/4 v3, 0x1

    if-lt v0, v3, :cond_2

    .line 192
    invoke-virtual {v13, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v15, v0

    .line 191
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 195
    .end local v0    # "i":I
    :cond_2
    array-length v0, v15

    new-array v4, v0, [Ljava/lang/String;

    .line 196
    .local v4, "args":[Ljava/lang/String;
    const-string v0, "?"

    invoke-static {v4, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "profileId NOT IN ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 198
    .local v5, "where":Ljava/lang/String;
    const-string v0, "items to delete from unrestored profiles:"

    invoke-static {v8, v0, v5, v15}, Lcom/android/launcher3/provider/RestoreDbTask;->logFavoritesTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/android/launcher3/Flags;->enableLauncherBrMetricsFixed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 200
    move-object/from16 v3, p5

    invoke-direct {v6, v8, v5, v15, v3}, Lcom/android/launcher3/provider/RestoreDbTask;->reportUnrestoredProfiles(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;)V

    goto :goto_3

    .line 199
    :cond_3
    move-object/from16 v3, p5

    .line 202
    :goto_3
    const-string v0, "favorites"

    move/from16 v18, v14

    .end local v14    # "numProfiles":I
    .local v18, "numProfiles":I
    invoke-virtual {v8, v0, v5, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 203
    .local v14, "itemsDeletedCount":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " total items from unrestored user(s) were deleted"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v1, "KeepAllIcons"

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isPropertyEnabled(Ljava/lang/String;)Z

    move-result v21

    .line 207
    .local v21, "keepAllIcons":Z
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    move-object v2, v1

    .line 208
    .local v2, "values":Landroid/content/ContentValues;
    nop

    .line 209
    if-eqz v21, :cond_4

    const/4 v3, 0x4

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    const/16 v17, 0x1

    or-int/lit8 v3, v3, 0x1

    .line 208
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v1, "restored"

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 210
    const/4 v3, 0x0

    invoke-virtual {v8, v0, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 213
    nop

    .line 216
    if-eqz v21, :cond_5

    const/16 v3, 0x8

    move/from16 v19, v3

    goto :goto_5

    :cond_5
    const/16 v19, 0x0

    :goto_5
    or-int/lit8 v3, v19, 0x7

    .line 213
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 217
    nop

    .line 218
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 217
    const-string v3, "itemType = ?"

    invoke-virtual {v8, v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 223
    const-wide/high16 v22, -0x8000000000000000L

    .line 224
    .local v22, "tempLocationOffset":J
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-virtual {v13}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseLongArray;-><init>(I)V

    move-object v3, v0

    .line 225
    .local v3, "tempMigratedIds":Landroid/util/SparseLongArray;
    const/4 v0, 0x0

    .line 226
    .local v0, "numTempMigrations":I
    invoke-virtual {v13}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    const/16 v16, 0x1

    add-int/lit8 v1, v1, -0x1

    move/from16 v32, v1

    move v1, v0

    move/from16 v0, v32

    .local v0, "i":I
    .local v1, "numTempMigrations":I
    :goto_6
    const-wide/high16 v24, -0x8000000000000000L

    if-ltz v0, :cond_8

    .line 227
    invoke-virtual {v13, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v26

    .line 228
    .local v26, "oldId":J
    invoke-virtual {v13, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    move-object/from16 v19, v4

    move-object/from16 v28, v5

    .end local v4    # "args":[Ljava/lang/String;
    .end local v5    # "where":Ljava/lang/String;
    .local v19, "args":[Ljava/lang/String;
    .local v28, "where":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 230
    .local v4, "newId":J
    cmp-long v16, v26, v4

    if-eqz v16, :cond_7

    .line 231
    invoke-virtual {v13, v4, v5}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v16

    if-ltz v16, :cond_6

    .line 232
    invoke-virtual {v3, v1, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 233
    add-int/lit8 v1, v1, 0x1

    .line 234
    add-long v4, v4, v24

    move/from16 v16, v1

    move-wide/from16 v24, v4

    goto :goto_7

    .line 231
    :cond_6
    move/from16 v16, v1

    move-wide/from16 v24, v4

    .line 236
    .end local v1    # "numTempMigrations":I
    .end local v4    # "newId":J
    .local v16, "numTempMigrations":I
    .local v24, "newId":J
    :goto_7
    move/from16 v29, v0

    .end local v0    # "i":I
    .local v29, "i":I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v30, v2

    move-object v4, v3

    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v3    # "tempMigratedIds":Landroid/util/SparseLongArray;
    .local v4, "tempMigratedIds":Landroid/util/SparseLongArray;
    .local v30, "values":Landroid/content/ContentValues;
    move-wide/from16 v2, v26

    move-object/from16 v31, v4

    .end local v4    # "tempMigratedIds":Landroid/util/SparseLongArray;
    .local v31, "tempMigratedIds":Landroid/util/SparseLongArray;
    move-wide/from16 v4, v24

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/provider/RestoreDbTask;->migrateProfileId(Landroid/database/sqlite/SQLiteDatabase;JJ)V

    move/from16 v1, v16

    goto :goto_8

    .line 230
    .end local v16    # "numTempMigrations":I
    .end local v24    # "newId":J
    .end local v29    # "i":I
    .end local v30    # "values":Landroid/content/ContentValues;
    .end local v31    # "tempMigratedIds":Landroid/util/SparseLongArray;
    .restart local v0    # "i":I
    .restart local v1    # "numTempMigrations":I
    .restart local v2    # "values":Landroid/content/ContentValues;
    .restart local v3    # "tempMigratedIds":Landroid/util/SparseLongArray;
    .local v4, "newId":J
    :cond_7
    move/from16 v29, v0

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    .line 226
    .end local v0    # "i":I
    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v3    # "tempMigratedIds":Landroid/util/SparseLongArray;
    .end local v4    # "newId":J
    .end local v26    # "oldId":J
    .restart local v29    # "i":I
    .restart local v30    # "values":Landroid/content/ContentValues;
    .restart local v31    # "tempMigratedIds":Landroid/util/SparseLongArray;
    :goto_8
    add-int/lit8 v0, v29, -0x1

    move-object/from16 v4, v19

    move-object/from16 v5, v28

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    .end local v29    # "i":I
    .restart local v0    # "i":I
    goto :goto_6

    .end local v19    # "args":[Ljava/lang/String;
    .end local v28    # "where":Ljava/lang/String;
    .end local v30    # "values":Landroid/content/ContentValues;
    .end local v31    # "tempMigratedIds":Landroid/util/SparseLongArray;
    .restart local v2    # "values":Landroid/content/ContentValues;
    .restart local v3    # "tempMigratedIds":Landroid/util/SparseLongArray;
    .local v4, "args":[Ljava/lang/String;
    .restart local v5    # "where":Ljava/lang/String;
    :cond_8
    move/from16 v29, v0

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v19, v4

    move-object/from16 v28, v5

    .line 241
    .end local v0    # "i":I
    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v3    # "tempMigratedIds":Landroid/util/SparseLongArray;
    .end local v4    # "args":[Ljava/lang/String;
    .end local v5    # "where":Ljava/lang/String;
    .restart local v19    # "args":[Ljava/lang/String;
    .restart local v28    # "where":Ljava/lang/String;
    .restart local v30    # "values":Landroid/content/ContentValues;
    .restart local v31    # "tempMigratedIds":Landroid/util/SparseLongArray;
    invoke-virtual/range {v31 .. v31}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    move v4, v0

    .local v4, "i":I
    :goto_9
    if-ltz v4, :cond_9

    .line 242
    move-object/from16 v5, v31

    .end local v31    # "tempMigratedIds":Landroid/util/SparseLongArray;
    .local v5, "tempMigratedIds":Landroid/util/SparseLongArray;
    invoke-virtual {v5, v4}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v26

    .line 243
    .local v26, "newId":J
    add-long v2, v26, v24

    move-object/from16 v0, p0

    move/from16 v16, v1

    .end local v1    # "numTempMigrations":I
    .restart local v16    # "numTempMigrations":I
    move-object/from16 v1, p3

    move/from16 v31, v4

    move-object/from16 v29, v5

    .end local v4    # "i":I
    .end local v5    # "tempMigratedIds":Landroid/util/SparseLongArray;
    .local v29, "tempMigratedIds":Landroid/util/SparseLongArray;
    .local v31, "i":I
    move-wide/from16 v4, v26

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/provider/RestoreDbTask;->migrateProfileId(Landroid/database/sqlite/SQLiteDatabase;JJ)V

    .line 241
    .end local v26    # "newId":J
    add-int/lit8 v4, v31, -0x1

    move/from16 v1, v16

    move-object/from16 v31, v29

    .end local v31    # "i":I
    .restart local v4    # "i":I
    goto :goto_9

    .end local v16    # "numTempMigrations":I
    .end local v29    # "tempMigratedIds":Landroid/util/SparseLongArray;
    .restart local v1    # "numTempMigrations":I
    .local v31, "tempMigratedIds":Landroid/util/SparseLongArray;
    :cond_9
    move/from16 v16, v1

    move-object/from16 v29, v31

    move/from16 v31, v4

    .line 246
    .end local v1    # "numTempMigrations":I
    .end local v4    # "i":I
    .end local v31    # "tempMigratedIds":Landroid/util/SparseLongArray;
    .restart local v16    # "numTempMigrations":I
    .restart local v29    # "tempMigratedIds":Landroid/util/SparseLongArray;
    cmp-long v0, v9, v11

    if-eqz v0, :cond_a

    .line 247
    invoke-virtual {v6, v8, v9, v10}, Lcom/android/launcher3/provider/RestoreDbTask;->changeDefaultColumn(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 251
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherPrefs;->RESTORE_DEVICE:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    .line 252
    invoke-virtual {v6, v8}, Lcom/android/launcher3/provider/RestoreDbTask;->removeScreenIdGaps(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 256
    :cond_b
    move-object/from16 v0, p1

    invoke-static {v0, v7, v8, v9, v10}, Lcom/android/launcher3/provider/RestoreDbTask;->maybeOverrideShortcuts(Landroid/content/Context;Lcom/android/launcher3/model/ModelDbController;Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 257
    return v14
.end method
