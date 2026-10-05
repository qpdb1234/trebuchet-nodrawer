.class public Lcom/android/launcher3/model/DatabaseHelper;
.super Lcom/android/launcher3/util/NoLocaleSQLiteHelper;
.source "DatabaseHelper.java"

# interfaces
.implements Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;


# static fields
.field private static final DOWNGRADE_SCHEMA_FILE:Ljava/lang/String; = "downgrade_schema.json"

.field private static final LOGD:Z = false

.field public static final SCHEMA_VERSION:I = 0x20

.field private static final TAG:Ljava/lang/String; = "DatabaseHelper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field public mHotseatRestoreTableExists:Z

.field private mMaxItemId:I

.field private final mOnEmptyDbCreateCallback:Ljava/lang/Runnable;

.field private final mUserSerialProvider:Ljava/util/function/ToLongFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToLongFunction<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$m2ZXP_32Bkx8yK_dgJd4_yUQt8M(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/function/ToLongFunction;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbName"    # Ljava/lang/String;
    .param p4, "onEmptyDbCreateCallback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/function/ToLongFunction<",
            "Landroid/os/UserHandle;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 91
    .local p3, "userSerialProvider":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<Landroid/os/UserHandle;>;"
    const/16 v0, 0x20

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/util/NoLocaleSQLiteHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/model/DatabaseHelper;->mMaxItemId:I

    .line 92
    iput-object p1, p0, Lcom/android/launcher3/model/DatabaseHelper;->mContext:Landroid/content/Context;

    .line 93
    iput-object p3, p0, Lcom/android/launcher3/model/DatabaseHelper;->mUserSerialProvider:Ljava/util/function/ToLongFunction;

    .line 94
    iput-object p4, p0, Lcom/android/launcher3/model/DatabaseHelper;->mOnEmptyDbCreateCallback:Ljava/lang/Runnable;

    .line 95
    return-void
.end method

.method private addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J

    .line 434
    :try_start_0
    new-instance v0, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    invoke-direct {v0, p1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    .local v0, "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ALTER TABLE favorites ADD COLUMN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER NOT NULL DEFAULT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v0}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    :try_start_2
    invoke-virtual {v0}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 441
    .end local v0    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    nop

    .line 442
    const/4 v0, 0x1

    return v0

    .line 434
    .restart local v0    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p2    # "columnName":Ljava/lang/String;
    .end local p3    # "defaultValue":J
    :goto_0
    throw v1
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    .line 438
    .end local v0    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    .restart local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p2    # "columnName":Ljava/lang/String;
    .restart local p3    # "defaultValue":J
    :catch_0
    move-exception v0

    .line 439
    .local v0, "ex":Landroid/database/SQLException;
    const-string v1, "DatabaseHelper"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    const/4 v1, 0x0

    return v1
.end method

.method private getDefaultUserSerial()J
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/android/launcher3/model/DatabaseHelper;->mUserSerialProvider:Ljava/util/function/ToLongFunction;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static varargs getMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 4
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 517
    const/4 v0, 0x0

    .line 518
    .local v0, "max":I
    :try_start_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 519
    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 518
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    .local v1, "prog":Landroid/database/sqlite/SQLiteStatement;
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v1, v2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    long-to-int v0, v2

    .line 521
    if-ltz v0, :cond_1

    .line 524
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 531
    .end local v1    # "prog":Landroid/database/sqlite/SQLiteStatement;
    :cond_0
    goto :goto_1

    .line 522
    .restart local v1    # "prog":Landroid/database/sqlite/SQLiteStatement;
    :cond_1
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error: could not query max id"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "max":I
    .end local v1    # "prog":Landroid/database/sqlite/SQLiteStatement;
    .end local p0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "query":Ljava/lang/String;
    .end local p2    # "args":[Ljava/lang/Object;
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 518
    .restart local v0    # "max":I
    .restart local v1    # "prog":Landroid/database/sqlite/SQLiteStatement;
    .restart local p0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "query":Ljava/lang/String;
    .restart local p2    # "args":[Ljava/lang/Object;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "max":I
    .end local p0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "query":Ljava/lang/String;
    .end local p2    # "args":[Ljava/lang/Object;
    :cond_2
    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0

    .line 524
    .end local v1    # "prog":Landroid/database/sqlite/SQLiteStatement;
    .restart local v0    # "max":I
    .restart local p0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "query":Ljava/lang/String;
    .restart local p2    # "args":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 525
    .local v1, "exception":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 526
    .local v2, "message":Ljava/lang/String;
    const-string v3, "re-open"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "already-closed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 532
    .end local v1    # "exception":Ljava/lang/IllegalArgumentException;
    .end local v2    # "message":Ljava/lang/String;
    :goto_1
    return v0

    .line 529
    .restart local v1    # "exception":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "message":Ljava/lang/String;
    :cond_3
    throw v1
.end method

.method private initializeMaxItemId(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 489
    const-string v0, "_id"

    const-string v1, "favorites"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "SELECT MAX(%1$s) FROM %2$s"

    invoke-static {p1, v1, v0}, Lcom/android/launcher3/model/DatabaseHelper;->getMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public checkId(Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 484
    const-string v0, "_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 485
    .local v0, "id":I
    iget v1, p0, Lcom/android/launcher3/model/DatabaseHelper;->mMaxItemId:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/model/DatabaseHelper;->mMaxItemId:I

    .line 486
    return-void
.end method

.method convertShortcutsToLauncherActivities(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 366
    const-string v0, "intent"

    const-string v1, "_id"

    const-string v2, "DatabaseHelper"

    :try_start_0
    new-instance v3, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    invoke-direct {v3, p1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 368
    .local v3, "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    :try_start_1
    const-string v5, "favorites"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v1, v6, v12

    const/4 v13, 0x1

    aput-object v0, v6, v13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "itemType=1 AND profileId="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 371
    invoke-direct {p0}, Lcom/android/launcher3/model/DatabaseHelper;->getDefaultUserSerial()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 368
    move-object v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 373
    .local v4, "c":Landroid/database/Cursor;
    :try_start_2
    const-string v5, "UPDATE favorites SET itemType=0 WHERE _id=?"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 376
    .local v5, "updateStmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_3
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 377
    .local v1, "idIndex":I
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 379
    .local v0, "intentIndex":I
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 380
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 383
    .local v6, "intentDescription":Ljava/lang/String;
    :try_start_4
    invoke-static {v6, v12}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 387
    .local v7, "intent":Landroid/content/Intent;
    nop

    .line 389
    :try_start_5
    invoke-static {v7}, Lcom/android/launcher3/util/PackageManagerHelper;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 390
    goto :goto_0

    .line 393
    :cond_0
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 394
    .local v8, "id":I
    int-to-long v9, v8

    invoke-virtual {v5, v13, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 395
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    .line 396
    nop

    .end local v6    # "intentDescription":Ljava/lang/String;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "id":I
    goto :goto_0

    .line 384
    .restart local v6    # "intentDescription":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 385
    .local v7, "e":Ljava/net/URISyntaxException;
    const-string v8, "Unable to parse intent"

    invoke-static {v2, v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    goto :goto_0

    .line 397
    .end local v6    # "intentDescription":Ljava/lang/String;
    .end local v7    # "e":Ljava/net/URISyntaxException;
    :cond_1
    invoke-virtual {v3}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->commit()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 398
    .end local v0    # "intentIndex":I
    .end local v1    # "idIndex":I
    if-eqz v5, :cond_2

    :try_start_6
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v5    # "updateStmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_2
    if-eqz v4, :cond_3

    :try_start_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .end local v4    # "c":Landroid/database/Cursor;
    :cond_3
    :try_start_8
    invoke-virtual {v3}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_8
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_8} :catch_1

    .line 400
    .end local v3    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    goto :goto_4

    .line 366
    .restart local v3    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    .restart local v4    # "c":Landroid/database/Cursor;
    .restart local v5    # "updateStmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_0
    move-exception v0

    if-eqz v5, :cond_4

    :try_start_9
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_a
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    .end local v4    # "c":Landroid/database/Cursor;
    .end local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_4
    :goto_1
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .end local v5    # "updateStmt":Landroid/database/sqlite/SQLiteStatement;
    .restart local v3    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    .restart local v4    # "c":Landroid/database/Cursor;
    .restart local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_2
    move-exception v0

    if-eqz v4, :cond_5

    :try_start_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v1

    :try_start_c
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    .end local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_5
    :goto_2
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .end local v4    # "c":Landroid/database/Cursor;
    .restart local v3    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    .restart local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_4
    move-exception v0

    :try_start_d
    invoke-virtual {v3}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v1

    :try_start_e
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_3
    throw v0
    :try_end_e
    .catch Landroid/database/SQLException; {:try_start_e .. :try_end_e} :catch_1

    .line 398
    .end local v3    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    .restart local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_1
    move-exception v0

    .line 399
    .local v0, "ex":Landroid/database/SQLException;
    const-string v1, "Error deduping shortcuts"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 401
    .end local v0    # "ex":Landroid/database/SQLException;
    :goto_4
    return-void
.end method

.method public createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 304
    new-instance v0, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    invoke-direct {v0, p1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 305
    .local v0, "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    :try_start_0
    const-string v1, "favorites"

    invoke-static {p1, v1}, Lcom/android/launcher3/provider/LauncherDbUtils;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 306
    const-string v1, "workspaceScreens"

    invoke-static {p1, v1}, Lcom/android/launcher3/provider/LauncherDbUtils;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 308
    invoke-virtual {v0}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->commit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    invoke-virtual {v0}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V

    .line 310
    .end local v0    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    return-void

    .line 304
    .restart local v0    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public dbInsertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;

    .line 473
    if-eqz p3, :cond_1

    .line 476
    const-string v0, "_id"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {p0, p3}, Lcom/android/launcher3/model/DatabaseHelper;->checkId(Landroid/content/ContentValues;)V

    .line 480
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 477
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: attempting to add item without specifying an id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: attempting to insert null values"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateNewItemId()I
    .locals 2

    .line 452
    iget v0, p0, Lcom/android/launcher3/model/DatabaseHelper;->mMaxItemId:I

    if-ltz v0, :cond_0

    .line 455
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/model/DatabaseHelper;->mMaxItemId:I

    .line 456
    return v0

    .line 453
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: max item id was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNewScreenId()I
    .locals 5

    .line 498
    invoke-virtual {p0}, Lcom/android/launcher3/model/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 501
    const/16 v1, -0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "screen"

    const-string v3, "favorites"

    const-string v4, "container"

    filled-new-array {v2, v3, v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 498
    const-string v2, "SELECT MAX(%1$s) FROM %2$s WHERE %3$s = %4$d AND %1$s >= 0"

    invoke-static {v0, v2, v1}, Lcom/android/launcher3/model/DatabaseHelper;->getMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected handleOneTimeDataUpgrade(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 149
    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/model/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/UserCache;

    .line 150
    .local v0, "um":Lcom/android/launcher3/pm/UserCache;
    invoke-virtual {v0}, Lcom/android/launcher3/pm/UserCache;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 151
    .local v2, "user":Landroid/os/UserHandle;
    invoke-virtual {v0, v2}, Lcom/android/launcher3/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v3

    .line 152
    .local v3, "serial":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update favorites set intent = replace(intent, \';l.profile="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";\', \';\') where itemType = 0;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 154
    .local v5, "sql":Ljava/lang/String;
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 155
    .end local v2    # "user":Landroid/os/UserHandle;
    .end local v3    # "serial":J
    .end local v5    # "sql":Ljava/lang/String;
    goto :goto_0

    .line 156
    :cond_0
    return-void
.end method

.method protected initIds()V
    .locals 2

    .line 100
    iget v0, p0, Lcom/android/launcher3/model/DatabaseHelper;->mMaxItemId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/android/launcher3/model/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/DatabaseHelper;->initializeMaxItemId(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/DatabaseHelper;->mMaxItemId:I

    .line 103
    :cond_0
    return-void
.end method

.method public insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 469
    const-string v0, "favorites"

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher3/model/DatabaseHelper;->dbInsertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method public loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/AutoInstallsLayout;)I
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "loader"    # Lcom/android/launcher3/AutoInstallsLayout;

    .line 506
    new-instance v0, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntArray;-><init>()V

    invoke-virtual {p2, p1, v0}, Lcom/android/launcher3/AutoInstallsLayout;->loadLayout(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/util/IntArray;)I

    move-result v0

    .line 509
    .local v0, "count":I
    invoke-direct {p0, p1}, Lcom/android/launcher3/model/DatabaseHelper;->initializeMaxItemId(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/model/DatabaseHelper;->mMaxItemId:I

    .line 510
    return v0
.end method

.method public newLauncherWidgetHolder()Lcom/android/launcher3/widget/LauncherWidgetHolder;
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/android/launcher3/model/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/widget/LauncherWidgetHolder;

    move-result-object v0

    return-object v0
.end method

.method public onAddOrDeleteOp(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 119
    iget-boolean v0, p0, Lcom/android/launcher3/model/DatabaseHelper;->mHotseatRestoreTableExists:Z

    if-eqz v0, :cond_0

    .line 120
    const-string v0, "hotseat_restore_backup"

    invoke-static {p1, v0}, Lcom/android/launcher3/provider/LauncherDbUtils;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/model/DatabaseHelper;->mHotseatRestoreTableExists:Z

    .line 123
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 109
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/model/DatabaseHelper;->mMaxItemId:I

    .line 111
    invoke-direct {p0}, Lcom/android/launcher3/model/DatabaseHelper;->getDefaultUserSerial()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/android/launcher3/LauncherSettings$Favorites;->addTableToDb(Landroid/database/sqlite/SQLiteDatabase;JZ)V

    .line 114
    invoke-direct {p0, p1}, Lcom/android/launcher3/model/DatabaseHelper;->initializeMaxItemId(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/DatabaseHelper;->mMaxItemId:I

    .line 115
    iget-object v0, p0, Lcom/android/launcher3/model/DatabaseHelper;->mOnEmptyDbCreateCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 116
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/model/DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v1, "downgrade_schema.json"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/model/DbDowngradeHelper;->parse(Ljava/io/File;)Lcom/android/launcher3/model/DbDowngradeHelper;

    move-result-object v0

    .line 292
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/model/DbDowngradeHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    goto :goto_0

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to downgrade from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Wiping database."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DatabaseHelper"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 298
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 131
    invoke-super {p0, p1}, Lcom/android/launcher3/util/NoLocaleSQLiteHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 133
    iget-object v0, p0, Lcom/android/launcher3/model/DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v1, "downgrade_schema.json"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 134
    .local v0, "schemaFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/DatabaseHelper;->handleOneTimeDataUpgrade(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 137
    :cond_0
    const/16 v1, 0x20

    iget-object v2, p0, Lcom/android/launcher3/model/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/model/DbDowngradeHelper;->updateSchemaFile(Ljava/io/File;ILandroid/content/Context;)V

    .line 138
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 163
    const-string v0, "favorites"

    const-string v1, "DatabaseHelper"

    const-string v2, "screen"

    const-wide/16 v3, 0x0

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_2

    .line 169
    :pswitch_0
    :try_start_0
    new-instance v5, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    invoke-direct {v5, p1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .local v5, "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    :try_start_1
    const-string v6, "ALTER TABLE favorites ADD COLUMN appWidgetProvider TEXT;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v5}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :try_start_2
    invoke-virtual {v5}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 177
    .end local v5    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    nop

    .line 180
    :pswitch_1
    const-string v5, "modified"

    invoke-direct {p0, p1, v5, v3, v4}, Lcom/android/launcher3/model/DatabaseHelper;->addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z

    move-result v5

    if-nez v5, :cond_0

    .line 182
    goto/16 :goto_2

    .line 186
    :cond_0
    :pswitch_2
    const-string v5, "restored"

    invoke-direct {p0, p1, v5, v3, v4}, Lcom/android/launcher3/model/DatabaseHelper;->addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z

    move-result v5

    if-nez v5, :cond_1

    .line 188
    goto/16 :goto_2

    .line 199
    :cond_1
    :pswitch_3
    const-string v5, "profileId"

    invoke-direct {p0}, Lcom/android/launcher3/model/DatabaseHelper;->getDefaultUserSerial()J

    move-result-wide v6

    invoke-direct {p0, p1, v5, v6, v7}, Lcom/android/launcher3/model/DatabaseHelper;->addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z

    move-result v5

    if-nez v5, :cond_2

    .line 201
    goto/16 :goto_2

    .line 205
    :cond_2
    :pswitch_4
    const/4 v5, 0x1

    invoke-virtual {p0, p1, v5}, Lcom/android/launcher3/model/DatabaseHelper;->updateFolderItemsRank(Landroid/database/sqlite/SQLiteDatabase;Z)Z

    move-result v5

    if-nez v5, :cond_3

    .line 206
    goto/16 :goto_2

    .line 211
    :cond_3
    :pswitch_5
    const-string v5, "options"

    invoke-direct {p0, p1, v5, v3, v4}, Lcom/android/launcher3/model/DatabaseHelper;->addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z

    move-result v3

    if-nez v3, :cond_4

    .line 213
    goto/16 :goto_2

    .line 221
    :cond_4
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/DatabaseHelper;->convertShortcutsToLauncherActivities(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 227
    :pswitch_7
    const/4 v4, 0x0

    const-string v6, "workspaceScreens"

    const-string v7, "_id"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "screenRank"

    move-object v5, p1

    invoke-static/range {v4 .. v10}, Lcom/android/launcher3/provider/LauncherDbUtils;->queryIntArray(ZLandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/IntArray;

    move-result-object v3

    .line 229
    .local v3, "finalScreens":Lcom/android/launcher3/util/IntArray;
    invoke-virtual {v3}, Lcom/android/launcher3/util/IntArray;->toArray()[I

    move-result-object v4

    .line 230
    .local v4, "original":[I
    invoke-static {v4}, Ljava/util/Arrays;->sort([I)V

    .line 231
    const-string v5, ""

    .line 232
    .local v5, "updatemap":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v4

    if-ge v6, v7, :cond_6

    .line 233
    invoke-virtual {v3, v6}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v7

    aget v8, v4, v6

    if-eq v7, v8, :cond_5

    .line 234
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 235
    invoke-virtual {v3, v6}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aget v10, v4, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v2, v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    .line 234
    const-string v10, " WHEN %1$s=%2$d THEN %3$d"

    invoke-static {v8, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 232
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 238
    .end local v6    # "i":I
    :cond_6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 239
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 242
    const/16 v7, -0x64

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "container"

    filled-new-array {v0, v2, v5, v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 239
    const-string v8, "UPDATE %1$s SET %2$s=CASE %3$s ELSE %2$s END WHERE %4$s = %5$d"

    invoke-static {v6, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 243
    .local v6, "query":Ljava/lang/String;
    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 245
    .end local v6    # "query":Ljava/lang/String;
    :cond_7
    const-string v6, "workspaceScreens"

    invoke-static {p1, v6}, Lcom/android/launcher3/provider/LauncherDbUtils;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 248
    .end local v3    # "finalScreens":Lcom/android/launcher3/util/IntArray;
    .end local v4    # "original":[I
    .end local v5    # "updatemap":Ljava/lang/String;
    :pswitch_8
    const-string v3, "appWidgetSource"

    const-wide/16 v4, -0x1

    invoke-direct {p0, p1, v3, v4, v5}, Lcom/android/launcher3/model/DatabaseHelper;->addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z

    move-result v3

    .line 250
    .local v3, "columnAdded":Z
    if-nez v3, :cond_8

    .line 252
    goto :goto_2

    .line 257
    .end local v3    # "columnAdded":Z
    :cond_8
    :pswitch_9
    const/16 v1, -0x309

    const/16 v3, -0x30a

    filled-new-array {v1, v3}, [I

    move-result-object v1

    .line 258
    invoke-static {v1}, Lcom/android/launcher3/util/IntArray;->wrap([I)Lcom/android/launcher3/util/IntArray;

    move-result-object v1

    .line 257
    invoke-static {v2, v1}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Lcom/android/launcher3/util/IntArray;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 274
    :pswitch_a
    iget-object v0, p0, Lcom/android/launcher3/model/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/launcher3/provider/LauncherDbUtils;->migrateLegacyShortcuts(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 279
    :pswitch_b
    return-void

    .line 169
    .local v5, "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v5}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p2    # "oldVersion":I
    .end local p3    # "newVersion":I
    :goto_1
    throw v0
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    .line 173
    .end local v5    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    .restart local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p2    # "oldVersion":I
    .restart local p3    # "newVersion":I
    :catch_0
    move-exception v0

    .line 174
    .local v0, "ex":Landroid/database/SQLException;
    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    nop

    .line 284
    .end local v0    # "ex":Landroid/database/SQLException;
    :goto_2
    const-string v0, "Destroying all old data."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 286
    return-void

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public removeGhostWidgets(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 318
    const-string v0, "]"

    const-string v1, "["

    const-string v2, ","

    const-string v3, "DatabaseHelper"

    invoke-virtual {p0}, Lcom/android/launcher3/model/DatabaseHelper;->newLauncherWidgetHolder()Lcom/android/launcher3/widget/LauncherWidgetHolder;

    move-result-object v4

    .line 324
    .local v4, "holder":Lcom/android/launcher3/widget/LauncherWidgetHolder;
    :try_start_0
    invoke-virtual {v4}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->getAppWidgetIds()[I

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    .local v5, "allWidgets":[I
    nop

    .line 329
    const/4 v6, 0x0

    :try_start_1
    const-string v8, "favorites"

    const-string v9, "appWidgetId"

    const-string v10, "itemType=4"

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, p1

    invoke-static/range {v6 .. v12}, Lcom/android/launcher3/provider/LauncherDbUtils;->queryIntArray(ZLandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/IntArray;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher3/util/IntSet;->wrap(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntSet;

    move-result-object v6

    .line 332
    .local v6, "validWidgets":Lcom/android/launcher3/util/IntSet;
    const/4 v7, 0x0

    .line 333
    .local v7, "isAnyWidgetRemoved":Z
    array-length v8, v5

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_1

    aget v10, v5, v9

    .line 334
    .local v10, "widgetId":I
    invoke-virtual {v6, v10}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v11, :cond_0

    .line 336
    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Deleting invalid widget "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-virtual {v4, v10}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->deleteAppWidgetId(I)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 338
    const/4 v7, 0x1

    .line 341
    goto :goto_1

    .line 339
    :catch_0
    move-exception v11

    .line 333
    .end local v10    # "widgetId":I
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 344
    :cond_1
    if-eqz v7, :cond_2

    .line 345
    :try_start_3
    invoke-static {v5}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v8

    new-instance v9, Lcom/android/launcher3/model/DatabaseHelper$$ExternalSyntheticLambda0;

    invoke-direct {v9}, Lcom/android/launcher3/model/DatabaseHelper$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v8, v9}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v8

    .line 346
    invoke-static {v2, v1, v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 347
    .local v8, "allWidgetsIds":Ljava/lang/String;
    nop

    .line 348
    invoke-virtual {v6}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/util/IntArray;->toArray()[I

    move-result-object v9

    .line 347
    invoke-static {v9}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v9

    new-instance v10, Lcom/android/launcher3/model/DatabaseHelper$$ExternalSyntheticLambda0;

    invoke-direct {v10}, Lcom/android/launcher3/model/DatabaseHelper$$ExternalSyntheticLambda0;-><init>()V

    .line 348
    invoke-interface {v9, v10}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v9

    .line 349
    invoke-static {v2, v1, v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 350
    .local v0, "validWidgetsIds":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "One or more widgets was removed. db_path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 351
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " allWidgetsIds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", validWidgetsIds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-static {v3, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 356
    .end local v0    # "validWidgetsIds":Ljava/lang/String;
    .end local v5    # "allWidgets":[I
    .end local v6    # "validWidgets":Lcom/android/launcher3/util/IntSet;
    .end local v7    # "isAnyWidgetRemoved":Z
    .end local v8    # "allWidgetsIds":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->destroy()V

    .line 357
    nop

    .line 358
    return-void

    .line 356
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 325
    :catch_1
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/IncompatibleClassChangeError;
    :try_start_4
    const-string v1, "getAppWidgetIds not supported"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 356
    invoke-virtual {v4}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->destroy()V

    .line 327
    return-void

    .line 356
    .end local v0    # "e":Ljava/lang/IncompatibleClassChangeError;
    :goto_2
    invoke-virtual {v4}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->destroy()V

    .line 357
    throw v0
.end method

.method updateFolderItemsRank(Landroid/database/sqlite/SQLiteDatabase;Z)Z
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "addRankColumn"    # Z

    .line 405
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    invoke-direct {v1, p1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    .local v1, "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    if-eqz p2, :cond_0

    .line 408
    :try_start_1
    const-string v2, "ALTER TABLE favorites ADD COLUMN rank INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 412
    :cond_0
    const-string v2, "SELECT container, MAX(cellX) FROM favorites WHERE container IN (SELECT _id FROM favorites WHERE itemType = ?) GROUP BY container;"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    .line 415
    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    .line 412
    invoke-virtual {p1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 417
    .local v2, "c":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 418
    const-string v4, "UPDATE favorites SET rank=cellX+(cellY*?) WHERE container=? AND cellX IS NOT NULL AND cellY IS NOT NULL;"

    new-array v6, v5, [Ljava/lang/Object;

    .line 420
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v3

    .line 418
    invoke-virtual {p1, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 423
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 424
    invoke-virtual {v1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
    .end local v2    # "c":Landroid/database/Cursor;
    :try_start_2
    invoke-virtual {v1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 429
    .end local v1    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    nop

    .line 430
    return v3

    .line 405
    .restart local v1    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p2    # "addRankColumn":Z
    :goto_1
    throw v2
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    .line 425
    .end local v1    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    .restart local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p2    # "addRankColumn":Z
    :catch_0
    move-exception v1

    .line 427
    .local v1, "ex":Landroid/database/SQLException;
    const-string v2, "DatabaseHelper"

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 428
    return v0
.end method
