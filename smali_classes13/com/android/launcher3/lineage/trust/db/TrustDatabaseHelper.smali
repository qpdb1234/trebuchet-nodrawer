.class public Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TrustDatabaseHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "trust_apps_db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final KEY_HIDDEN:Ljava/lang/String; = "hidden"

.field private static final KEY_PKGNAME:Ljava/lang/String; = "pkgname"

.field private static final KEY_PROTECTED:Ljava/lang/String; = "protected"

.field private static final KEY_UID:Ljava/lang/String; = "uid"

.field private static final TABLE_NAME:Ljava/lang/String; = "trust_apps"

.field private static sSingleton:Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "trust_apps_db"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 42
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;->sSingleton:Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;->sSingleton:Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;

    .line 49
    :cond_0
    sget-object v1, Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;->sSingleton:Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 44
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public addHiddenApp(Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 69
    const-string v0, "trust_apps"

    const-string v1, "pkgname"

    invoke-virtual {p0, p1}, Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;->isPackageHidden(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    return-void

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 74
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 77
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 78
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {v3, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v4, "hidden"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 81
    const-string v4, "pkgname = ?"

    new-array v6, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v2, v0, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 83
    .local v1, "rows":I
    if-eq v1, v5, :cond_1

    .line 85
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 87
    :cond_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "rows":I
    .end local v3    # "values":Landroid/content/ContentValues;
    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 92
    throw v0

    .line 88
    :catch_0
    move-exception v0

    .line 91
    :goto_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 92
    nop

    .line 93
    return-void
.end method

.method public addProtectedApp(Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 96
    const-string v0, "trust_apps"

    const-string v1, "pkgname"

    invoke-virtual {p0, p1}, Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;->isPackageProtected(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    return-void

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 101
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 104
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 105
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {v3, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v4, "protected"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    const-string v4, "pkgname = ?"

    new-array v6, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v2, v0, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 110
    .local v1, "rows":I
    if-eq v1, v5, :cond_1

    .line 112
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 114
    :cond_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "rows":I
    .end local v3    # "values":Landroid/content/ContentValues;
    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 119
    throw v0

    .line 115
    :catch_0
    move-exception v0

    .line 118
    :goto_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 119
    nop

    .line 120
    return-void
.end method

.method public isPackageHidden(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 166
    const-string v0, "pkgname"

    const-string v1, "hidden"

    const-string v2, "trust_apps"

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "SELECT * FROM %s WHERE %s = ? AND %s = ?"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "query":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 169
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {p1, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 170
    .local v3, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 172
    .local v4, "result":Z
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v4, v2

    .line 176
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 177
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 176
    :catchall_0
    move-exception v2

    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1

    .line 177
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 179
    :cond_1
    throw v2

    .line 173
    :catch_0
    move-exception v2

    .line 176
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 177
    goto :goto_1

    .line 181
    :cond_2
    :goto_2
    return v4
.end method

.method public isPackageProtected(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 185
    const-string v0, "pkgname"

    const-string v1, "protected"

    const-string v2, "trust_apps"

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "SELECT * FROM %s WHERE %s = ? AND %s = ?"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "query":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 188
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {p1, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 189
    .local v3, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 191
    .local v4, "result":Z
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v4, v2

    .line 195
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 196
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 195
    :catchall_0
    move-exception v2

    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1

    .line 196
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 198
    :cond_1
    throw v2

    .line 192
    :catch_0
    move-exception v2

    .line 195
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 196
    goto :goto_1

    .line 200
    :cond_2
    :goto_2
    return v4
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 54
    const-string v0, "CREATE TABLE trust_apps(uid INTEGER PRIMARY KEY AUTOINCREMENT,pkgname TEXT,hidden INTEGER DEFAULT 0,protected INTEGER DEFAULT 0)"

    .line 61
    .local v0, "CMD_CREATE_TABLE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 66
    return-void
.end method

.method public removeHiddenApp(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;->isPackageHidden(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    return-void

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 129
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 132
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 133
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "hidden"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    const-string v2, "trust_apps"

    const-string v3, "pkgname = ?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 136
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "values":Landroid/content/ContentValues;
    goto :goto_0

    .line 140
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 141
    throw v1

    .line 137
    :catch_0
    move-exception v1

    .line 140
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 141
    nop

    .line 142
    return-void
.end method

.method public removeProtectedApp(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 145
    invoke-virtual {p0, p1}, Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;->isPackageProtected(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    return-void

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/lineage/trust/db/TrustDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 150
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 153
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 154
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "protected"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    const-string v2, "trust_apps"

    const-string v3, "pkgname = ?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 157
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "values":Landroid/content/ContentValues;
    goto :goto_0

    .line 161
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 162
    throw v1

    .line 158
    :catch_0
    move-exception v1

    .line 161
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 162
    nop

    .line 163
    return-void
.end method
