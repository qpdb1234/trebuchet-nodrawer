.class public Lcom/android/launcher3/model/GridSizeMigrationUtil;
.super Ljava/lang/Object;
.source "GridSizeMigrationUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;,
        Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "GridSizeMigrationUtil"


# direct methods
.method static bridge synthetic -$$Nest$smremoveEntryFromDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/launcher3/util/IntArray;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->removeEntryFromDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/launcher3/util/IntArray;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method private static calcDiff(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/launcher3/util/IntArray;)V
    .locals 1
    .param p3, "toBeRemoved"    # Lcom/android/launcher3/util/IntArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;",
            ">;",
            "Lcom/android/launcher3/util/IntArray;",
            ")V"
        }
    .end annotation

    .line 246
    .local p0, "src":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;>;"
    .local p1, "dest":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;>;"
    .local p2, "toBeAdded":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;>;"
    new-instance v0, Lcom/android/launcher3/model/GridSizeMigrationUtil$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/model/GridSizeMigrationUtil$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 251
    new-instance v0, Lcom/android/launcher3/model/GridSizeMigrationUtil$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p3}, Lcom/android/launcher3/model/GridSizeMigrationUtil$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;Lcom/android/launcher3/util/IntArray;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 259
    return-void
.end method

.method private static copyEntryAndUpdate(Lcom/android/launcher3/model/DatabaseHelper;IILjava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "helper"    # Lcom/android/launcher3/model/DatabaseHelper;
    .param p1, "id"    # I
    .param p2, "folderId"    # I
    .param p3, "srcTableName"    # Ljava/lang/String;
    .param p4, "destTableName"    # Ljava/lang/String;

    .line 282
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->copyEntryAndUpdate(Lcom/android/launcher3/model/DatabaseHelper;Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static copyEntryAndUpdate(Lcom/android/launcher3/model/DatabaseHelper;Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;IILjava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p0, "helper"    # Lcom/android/launcher3/model/DatabaseHelper;
    .param p1, "entry"    # Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;
    .param p2, "id"    # I
    .param p3, "folderId"    # I
    .param p4, "srcTableName"    # Ljava/lang/String;
    .param p5, "destTableName"    # Ljava/lang/String;

    .line 287
    const/4 v0, -0x1

    .line 288
    .local v0, "newId":I
    invoke-virtual {p0}, Lcom/android/launcher3/model/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v3, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 289
    if-eqz p1, :cond_0

    iget v4, p1, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->id:I

    goto :goto_0

    :cond_0
    move v4, p2

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 288
    move-object v2, p4

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 291
    .local v1, "c":Landroid/database/Cursor;
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 292
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 293
    .local v2, "values":Landroid/content/ContentValues;
    invoke-static {v1, v2}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 294
    if-eqz p1, :cond_1

    .line 295
    invoke-virtual {p1, v2}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->updateContentValues(Landroid/content/ContentValues;)V

    goto :goto_2

    .line 297
    :cond_1
    const-string v3, "container"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 299
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/model/DatabaseHelper;->generateNewItemId()I

    move-result v0

    .line 300
    const-string v3, "_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 301
    invoke-virtual {p0}, Lcom/android/launcher3/model/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p5, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 302
    .end local v2    # "values":Landroid/content/ContentValues;
    goto :goto_1

    .line 303
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 304
    return v0
.end method

.method private static copyEntryAndUpdate(Lcom/android/launcher3/model/DatabaseHelper;Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "helper"    # Lcom/android/launcher3/model/DatabaseHelper;
    .param p1, "entry"    # Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;
    .param p2, "srcTableName"    # Ljava/lang/String;
    .param p3, "destTableName"    # Ljava/lang/String;

    .line 277
    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->copyEntryAndUpdate(Lcom/android/launcher3/model/DatabaseHelper;Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static findPlacementForEntry(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;Landroid/graphics/Point;Landroid/graphics/Point;Lcom/android/launcher3/util/GridOccupancy;I)Z
    .locals 6
    .param p0, "entry"    # Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;
    .param p1, "next"    # Landroid/graphics/Point;
    .param p2, "trg"    # Landroid/graphics/Point;
    .param p3, "occupied"    # Lcom/android/launcher3/util/GridOccupancy;
    .param p4, "screenId"    # I

    .line 371
    iget v0, p1, Landroid/graphics/Point;->y:I

    .local v0, "y":I
    :goto_0
    iget v1, p2, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_4

    .line 372
    iget v1, p1, Landroid/graphics/Point;->x:I

    .local v1, "x":I
    :goto_1
    iget v3, p2, Landroid/graphics/Point;->x:I

    if-ge v1, v3, :cond_3

    .line 373
    iget v3, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->spanX:I

    iget v4, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->spanY:I

    invoke-virtual {p3, v1, v0, v3, v4}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v3

    .line 374
    .local v3, "fits":Z
    iget v4, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->minSpanX:I

    iget v5, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->minSpanY:I

    invoke-virtual {p3, v1, v0, v4, v5}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v4

    .line 376
    .local v4, "minFits":Z
    if-eqz v4, :cond_0

    .line 377
    iget v5, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->minSpanX:I

    iput v5, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->spanX:I

    .line 378
    iget v5, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->minSpanY:I

    iput v5, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->spanY:I

    .line 380
    :cond_0
    if-nez v3, :cond_2

    if-eqz v4, :cond_1

    goto :goto_2

    .line 372
    .end local v3    # "fits":Z
    .end local v4    # "minFits":Z
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 381
    .restart local v3    # "fits":Z
    .restart local v4    # "minFits":Z
    :cond_2
    :goto_2
    iput p4, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->screenId:I

    .line 382
    iput v1, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->cellX:I

    .line 383
    iput v0, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->cellY:I

    .line 384
    const/4 v2, 0x1

    invoke-virtual {p3, p0, v2}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    .line 385
    iget v5, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->spanX:I

    add-int/2addr v5, v1

    invoke-virtual {p1, v5, v0}, Landroid/graphics/Point;->set(II)V

    .line 386
    return v2

    .line 389
    .end local v1    # "x":I
    .end local v3    # "fits":Z
    .end local v4    # "minFits":Z
    :cond_3
    iget v1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Point;->set(II)V

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    .end local v0    # "y":I
    :cond_4
    return v2
.end method

.method private static getValidPackages(Landroid/content/Context;)Ljava/util/HashSet;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 318
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 319
    .local v0, "validPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 320
    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 319
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 321
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 322
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 323
    :cond_0
    sget-object v1, Lcom/android/launcher3/pm/InstallSessionHelper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/pm/InstallSessionHelper;

    .line 324
    invoke-virtual {v1}, Lcom/android/launcher3/pm/InstallSessionHelper;->getActiveSessions()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/model/GridSizeMigrationUtil$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lcom/android/launcher3/model/GridSizeMigrationUtil$$ExternalSyntheticLambda5;-><init>(Ljava/util/HashSet;)V

    .line 325
    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 326
    return-object v0
.end method

.method private static insertEntryInDb(Lcom/android/launcher3/model/DatabaseHelper;Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "helper"    # Lcom/android/launcher3/model/DatabaseHelper;
    .param p1, "entry"    # Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;
    .param p2, "srcTableName"    # Ljava/lang/String;
    .param p3, "destTableName"    # Ljava/lang/String;

    .line 263
    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->copyEntryAndUpdate(Lcom/android/launcher3/model/DatabaseHelper;Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 265
    .local v0, "id":I
    iget v1, p1, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->itemType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->itemType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 267
    :cond_0
    invoke-static {p1}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->-$$Nest$fgetmFolderItems(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 268
    .local v2, "itemIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 269
    .local v4, "itemId":I
    invoke-static {p0, v4, v0, p2, p3}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->copyEntryAndUpdate(Lcom/android/launcher3/model/DatabaseHelper;IILjava/lang/String;Ljava/lang/String;)I

    .line 270
    .end local v4    # "itemId":I
    goto :goto_1

    .line 271
    .end local v2    # "itemIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1
    goto :goto_0

    .line 273
    :cond_2
    return-void
.end method

.method static synthetic lambda$calcDiff$1(Ljava/util/List;Ljava/util/List;Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;)V
    .locals 1
    .param p0, "dest"    # Ljava/util/List;
    .param p1, "toBeAdded"    # Ljava/util/List;
    .param p2, "entry"    # Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;

    .line 247
    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_0
    return-void
.end method

.method static synthetic lambda$calcDiff$2(Lcom/android/launcher3/util/IntArray;Ljava/util/Set;)V
    .locals 1
    .param p0, "toBeRemoved"    # Lcom/android/launcher3/util/IntArray;
    .param p1, "ids"    # Ljava/util/Set;

    .line 255
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/launcher3/model/GridSizeMigrationUtil$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/GridSizeMigrationUtil$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/util/IntArray;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$calcDiff$3(Ljava/util/List;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;)V
    .locals 2
    .param p0, "src"    # Ljava/util/List;
    .param p1, "toBeRemoved"    # Lcom/android/launcher3/util/IntArray;
    .param p2, "entry"    # Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;

    .line 252
    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iget v0, p2, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->id:I

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 254
    iget v0, p2, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->itemType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 255
    invoke-static {p2}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->-$$Nest$fgetmFolderItems(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/model/GridSizeMigrationUtil$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lcom/android/launcher3/model/GridSizeMigrationUtil$$ExternalSyntheticLambda6;-><init>(Lcom/android/launcher3/util/IntArray;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 258
    :cond_0
    return-void
.end method

.method static synthetic lambda$getValidPackages$4(Ljava/util/HashSet;Lcom/android/launcher3/util/PackageUserKey;)V
    .locals 1
    .param p0, "validPackages"    # Ljava/util/HashSet;
    .param p1, "packageUserKey"    # Lcom/android/launcher3/util/PackageUserKey;

    .line 325
    iget-object v0, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$migrate$0(Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;)Z
    .locals 1
    .param p0, "toBeRemoved"    # Lcom/android/launcher3/util/IntArray;
    .param p1, "entry"    # Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;

    .line 175
    iget v0, p1, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->id:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/IntArray;->contains(I)Z

    move-result v0

    return v0
.end method

.method public static migrate(Lcom/android/launcher3/model/DatabaseHelper;Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;ILandroid/graphics/Point;Lcom/android/launcher3/model/DeviceGridState;Lcom/android/launcher3/model/DeviceGridState;)Z
    .locals 24
    .param p0, "helper"    # Lcom/android/launcher3/model/DatabaseHelper;
    .param p1, "srcReader"    # Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;
    .param p2, "destReader"    # Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;
    .param p3, "destHotseatSize"    # I
    .param p4, "targetSize"    # Landroid/graphics/Point;
    .param p5, "srcDeviceState"    # Lcom/android/launcher3/model/DeviceGridState;
    .param p6, "destDeviceState"    # Lcom/android/launcher3/model/DeviceGridState;

    .line 151
    move-object/from16 v0, p4

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->loadHotseatEntries()Ljava/util/List;

    move-result-object v1

    .line 152
    .local v1, "srcHotseatItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->loadAllWorkspaceEntries()Ljava/util/List;

    move-result-object v2

    .line 153
    .local v2, "srcWorkspaceItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->loadHotseatEntries()Ljava/util/List;

    move-result-object v9

    .line 154
    .local v9, "dstHotseatItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->loadAllWorkspaceEntries()Ljava/util/List;

    move-result-object v10

    .line 155
    .local v10, "dstWorkspaceItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;>;"
    new-instance v3, Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-direct {v3, v11}, Ljava/util/ArrayList;-><init>(I)V

    move-object v12, v3

    .line 156
    .local v12, "hotseatToBeAdded":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v11}, Ljava/util/ArrayList;-><init>(I)V

    move-object v15, v3

    .line 157
    .local v15, "workspaceToBeAdded":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;>;"
    new-instance v3, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v3}, Lcom/android/launcher3/util/IntArray;-><init>()V

    move-object v14, v3

    .line 159
    .local v14, "toBeRemoved":Lcom/android/launcher3/util/IntArray;
    invoke-static {v1, v9, v12, v14}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->calcDiff(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/launcher3/util/IntArray;)V

    .line 160
    invoke-static {v2, v10, v15, v14}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->calcDiff(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/launcher3/util/IntArray;)V

    .line 162
    iget v13, v0, Landroid/graphics/Point;->x:I

    .line 163
    .local v13, "trgX":I
    iget v8, v0, Landroid/graphics/Point;->y:I

    .line 166
    .local v8, "trgY":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start migration:\n Source Device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 168
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/launcher3/model/GridSizeMigrationUtil$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/launcher3/model/GridSizeMigrationUtil$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 169
    const-string v5, ",\n"

    const-string v6, "["

    const-string v7, "]"

    invoke-static {v5, v6, v7}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v11

    .line 168
    invoke-interface {v4, v11}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n Target Device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 171
    invoke-interface {v10}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v11, Lcom/android/launcher3/model/GridSizeMigrationUtil$$ExternalSyntheticLambda0;

    invoke-direct {v11}, Lcom/android/launcher3/model/GridSizeMigrationUtil$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v11}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 172
    invoke-static {v5, v6, v7}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v11

    .line 171
    invoke-interface {v4, v11}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n Removing Items:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 174
    invoke-interface {v10}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v11, Lcom/android/launcher3/model/GridSizeMigrationUtil$$ExternalSyntheticLambda1;

    invoke-direct {v11, v14}, Lcom/android/launcher3/model/GridSizeMigrationUtil$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/util/IntArray;)V

    invoke-interface {v4, v11}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v11, Lcom/android/launcher3/model/GridSizeMigrationUtil$$ExternalSyntheticLambda0;

    invoke-direct {v11}, Lcom/android/launcher3/model/GridSizeMigrationUtil$$ExternalSyntheticLambda0;-><init>()V

    .line 175
    invoke-interface {v4, v11}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 176
    invoke-static {v5, v6, v7}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v11

    .line 175
    invoke-interface {v4, v11}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n Adding Workspace Items:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 178
    invoke-interface {v15}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v11, Lcom/android/launcher3/model/GridSizeMigrationUtil$$ExternalSyntheticLambda0;

    invoke-direct {v11}, Lcom/android/launcher3/model/GridSizeMigrationUtil$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v11}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 179
    invoke-static {v5, v6, v7}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v11

    .line 178
    invoke-interface {v4, v11}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n Adding Hotseat Items:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 181
    invoke-interface {v12}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v11, Lcom/android/launcher3/model/GridSizeMigrationUtil$$ExternalSyntheticLambda0;

    invoke-direct {v11}, Lcom/android/launcher3/model/GridSizeMigrationUtil$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v11}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 182
    invoke-static {v5, v6, v7}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v5

    .line 181
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 166
    const-string v11, "GridSizeMigrationUtil"

    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {v14}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 186
    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->-$$Nest$fgetmDb(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->-$$Nest$fgetmTableName(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v14}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->removeEntryFromDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/launcher3/util/IntArray;)V

    .line 188
    :cond_0
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/16 v16, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 189
    return v16

    .line 193
    :cond_1
    invoke-static {v12}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 194
    invoke-static {v15}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 197
    move-object/from16 v3, p0

    move/from16 v4, p3

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object v7, v9

    move/from16 v21, v8

    .end local v8    # "trgY":I
    .local v21, "trgY":I
    move-object v8, v12

    invoke-static/range {v3 .. v8}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->solveHotseatPlacement(Lcom/android/launcher3/model/DatabaseHelper;ILcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;Ljava/util/List;Ljava/util/List;)V

    .line 202
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v3, "screens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "screenId":I
    :goto_0
    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->-$$Nest$fgetmLastScreenId(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;)I

    move-result v5

    if-gt v4, v5, :cond_2

    .line 204
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 207
    .end local v4    # "screenId":I
    :cond_2
    const/4 v4, 0x0

    .line 208
    .local v4, "preservePages":Z
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_NEW_MIGRATION_LOGIC:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v5}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 209
    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual {v6, v5}, Lcom/android/launcher3/model/DeviceGridState;->compareTo(Lcom/android/launcher3/model/DeviceGridState;)I

    move-result v7

    if-ltz v7, :cond_3

    .line 210
    invoke-virtual/range {p6 .. p6}, Lcom/android/launcher3/model/DeviceGridState;->getColumns()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/model/DeviceGridState;->getColumns()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int/2addr v7, v8

    const/4 v8, 0x2

    if-gt v7, v8, :cond_3

    const/16 v16, 0x1

    goto :goto_1

    :cond_3
    nop

    :goto_1
    move/from16 v4, v16

    goto :goto_2

    .line 208
    :cond_4
    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 214
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 216
    .local v8, "screenId":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v1

    .end local v1    # "srcHotseatItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;>;"
    .local v22, "srcHotseatItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;>;"
    const-string v1, "Migrating "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/16 v20, 0x0

    move v0, v13

    .end local v13    # "trgX":I
    .local v0, "trgX":I
    move-object/from16 v13, p0

    move-object v1, v14

    .end local v14    # "toBeRemoved":Lcom/android/launcher3/util/IntArray;
    .local v1, "toBeRemoved":Lcom/android/launcher3/util/IntArray;
    move-object/from16 v14, p1

    move-object/from16 v23, v15

    .end local v15    # "workspaceToBeAdded":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;>;"
    .local v23, "workspaceToBeAdded":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;>;"
    move-object/from16 v15, p2

    move/from16 v16, v8

    move/from16 v17, v0

    move/from16 v18, v21

    move-object/from16 v19, v23

    invoke-static/range {v13 .. v20}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->solveGridPlacement(Lcom/android/launcher3/model/DatabaseHelper;Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;IIILjava/util/List;Z)V

    .line 220
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 221
    goto :goto_4

    .line 223
    .end local v8    # "screenId":I
    :cond_5
    move v13, v0

    move-object v14, v1

    move-object/from16 v1, v22

    move-object/from16 v15, v23

    move-object/from16 v0, p4

    goto :goto_3

    .line 214
    .end local v0    # "trgX":I
    .end local v22    # "srcHotseatItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;>;"
    .end local v23    # "workspaceToBeAdded":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;>;"
    .local v1, "srcHotseatItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;>;"
    .restart local v13    # "trgX":I
    .restart local v14    # "toBeRemoved":Lcom/android/launcher3/util/IntArray;
    .restart local v15    # "workspaceToBeAdded":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;>;"
    :cond_6
    move-object/from16 v22, v1

    move v0, v13

    move-object v1, v14

    move-object/from16 v23, v15

    .line 227
    .end local v13    # "trgX":I
    .end local v14    # "toBeRemoved":Lcom/android/launcher3/util/IntArray;
    .end local v15    # "workspaceToBeAdded":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;>;"
    .restart local v0    # "trgX":I
    .local v1, "toBeRemoved":Lcom/android/launcher3/util/IntArray;
    .restart local v22    # "srcHotseatItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;>;"
    .restart local v23    # "workspaceToBeAdded":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;>;"
    :goto_4
    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->-$$Nest$fgetmLastScreenId(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;)I

    move-result v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    .line 228
    .local v7, "screenId":I
    :goto_5
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    .line 229
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move/from16 v16, v7

    move/from16 v17, v0

    move/from16 v18, v21

    move-object/from16 v19, v23

    move/from16 v20, v4

    invoke-static/range {v13 .. v20}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->solveGridPlacement(Lcom/android/launcher3/model/DatabaseHelper;Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;IIILjava/util/List;Z)V

    .line 231
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 234
    :cond_7
    const/4 v8, 0x1

    return v8
.end method

.method public static migrateGridIfNeeded(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/model/DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "idp"    # Lcom/android/launcher3/InvariantDeviceProfile;
    .param p2, "target"    # Lcom/android/launcher3/model/DatabaseHelper;
    .param p3, "source"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 112
    move-object/from16 v1, p0

    const-string v2, "Workspace migration completed in "

    const-string v3, "GridSizeMigrationUtil"

    new-instance v0, Lcom/android/launcher3/model/DeviceGridState;

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/DeviceGridState;-><init>(Landroid/content/Context;)V

    move-object v11, v0

    .line 113
    .local v11, "srcDeviceState":Lcom/android/launcher3/model/DeviceGridState;
    new-instance v0, Lcom/android/launcher3/model/DeviceGridState;

    move-object/from16 v12, p1

    invoke-direct {v0, v12}, Lcom/android/launcher3/model/DeviceGridState;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    move-object v13, v0

    .line 114
    .local v13, "destDeviceState":Lcom/android/launcher3/model/DeviceGridState;
    invoke-static {v11, v13}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->needsToMigrate(Lcom/android/launcher3/model/DeviceGridState;Lcom/android/launcher3/model/DeviceGridState;)Z

    move-result v0

    const/4 v14, 0x1

    if-nez v0, :cond_0

    .line 115
    return v14

    .line 117
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/model/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v4, "favorites"

    const-string v15, "favorites_tmp"

    move-object/from16 v10, p3

    invoke-static {v10, v4, v0, v15, v1}, Lcom/android/launcher3/provider/LauncherDbUtils;->copyTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/Context;)V

    .line 119
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->getValidPackages(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v9

    .line 120
    .local v9, "validPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 121
    .local v16, "migrationStartTime":J
    :try_start_0
    new-instance v0, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/model/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 v18, v0

    .line 122
    .local v18, "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    :try_start_1
    new-instance v5, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {v5, v0, v15, v1, v9}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/Context;Ljava/util/Set;)V

    .line 123
    .local v5, "srcReader":Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;
    new-instance v6, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {v6, v0, v4, v1, v9}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/Context;Ljava/util/Set;)V

    .line 125
    .local v6, "destReader":Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;
    new-instance v8, Landroid/graphics/Point;

    invoke-virtual {v13}, Lcom/android/launcher3/model/DeviceGridState;->getColumns()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v13}, Lcom/android/launcher3/model/DeviceGridState;->getRows()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v8, v0, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 126
    .local v8, "targetSize":Landroid/graphics/Point;
    invoke-virtual {v13}, Lcom/android/launcher3/model/DeviceGridState;->getNumHotseat()I

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v4, p2

    move-object/from16 v19, v9

    .end local v9    # "validPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v19, "validPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v9, v11

    move-object v10, v13

    :try_start_2
    invoke-static/range {v4 .. v10}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->migrate(Lcom/android/launcher3/model/DatabaseHelper;Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;ILandroid/graphics/Point;Lcom/android/launcher3/model/DeviceGridState;Lcom/android/launcher3/model/DeviceGridState;)Z

    .line 128
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, v15}, Lcom/android/launcher3/provider/LauncherDbUtils;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->commit()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    nop

    .line 131
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v9, v9, v16

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {v13, v1}, Lcom/android/launcher3/model/DeviceGridState;->writeToPrefs(Landroid/content/Context;)V

    .line 130
    return v14

    .line 121
    .end local v5    # "srcReader":Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;
    .end local v6    # "destReader":Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;
    .end local v8    # "targetSize":Landroid/graphics/Point;
    :catchall_0
    move-exception v0

    move-object v4, v0

    goto :goto_0

    .end local v19    # "validPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v9    # "validPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_1
    move-exception v0

    move-object/from16 v19, v9

    move-object v4, v0

    .end local v9    # "validPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v19    # "validPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_0
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v5, v0

    :try_start_5
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v11    # "srcDeviceState":Lcom/android/launcher3/model/DeviceGridState;
    .end local v13    # "destDeviceState":Lcom/android/launcher3/model/DeviceGridState;
    .end local v16    # "migrationStartTime":J
    .end local v19    # "validPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    .end local p2    # "target":Lcom/android/launcher3/model/DatabaseHelper;
    .end local p3    # "source":Landroid/database/sqlite/SQLiteDatabase;
    :goto_1
    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 131
    .end local v18    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    .restart local v11    # "srcDeviceState":Lcom/android/launcher3/model/DeviceGridState;
    .restart local v13    # "destDeviceState":Lcom/android/launcher3/model/DeviceGridState;
    .restart local v16    # "migrationStartTime":J
    .restart local v19    # "validPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    .restart local p2    # "target":Lcom/android/launcher3/model/DatabaseHelper;
    .restart local p3    # "source":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 136
    .end local v19    # "validPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v9    # "validPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_3
    move-exception v0

    move-object/from16 v19, v9

    .end local v9    # "validPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v19    # "validPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_3

    .line 131
    .end local v19    # "validPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v9    # "validPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_1
    move-exception v0

    move-object/from16 v19, v9

    .line 132
    .end local v9    # "validPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v0, "e":Ljava/lang/Exception;
    .restart local v19    # "validPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_2
    :try_start_6
    const-string v4, "Error during grid migration"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 134
    nop

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v16

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {v13, v1}, Lcom/android/launcher3/model/DeviceGridState;->writeToPrefs(Landroid/content/Context;)V

    .line 134
    const/4 v2, 0x0

    return v2

    .line 136
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_4
    move-exception v0

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v16

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {v13, v1}, Lcom/android/launcher3/model/DeviceGridState;->writeToPrefs(Landroid/content/Context;)V

    .line 141
    throw v0
.end method

.method public static needsToMigrate(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "idp"    # Lcom/android/launcher3/InvariantDeviceProfile;

    .line 84
    new-instance v0, Lcom/android/launcher3/model/DeviceGridState;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/DeviceGridState;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/launcher3/model/DeviceGridState;

    invoke-direct {v1, p1}, Lcom/android/launcher3/model/DeviceGridState;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-static {v0, v1}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->needsToMigrate(Lcom/android/launcher3/model/DeviceGridState;Lcom/android/launcher3/model/DeviceGridState;)Z

    move-result v0

    return v0
.end method

.method private static needsToMigrate(Lcom/android/launcher3/model/DeviceGridState;Lcom/android/launcher3/model/DeviceGridState;)Z
    .locals 3
    .param p0, "srcDeviceState"    # Lcom/android/launcher3/model/DeviceGridState;
    .param p1, "destDeviceState"    # Lcom/android/launcher3/model/DeviceGridState;

    .line 89
    invoke-virtual {p1, p0}, Lcom/android/launcher3/model/DeviceGridState;->isCompatible(Lcom/android/launcher3/model/DeviceGridState;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 90
    .local v0, "needsToMigrate":Z
    if-eqz v0, :cond_0

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Migration is needed. destDeviceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", srcDeviceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GridSizeMigrationUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    return v0
.end method

.method private static removeEntryFromDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/launcher3/util/IntArray;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "entryIds"    # Lcom/android/launcher3/util/IntArray;

    .line 308
    nop

    .line 309
    const-string v0, "_id"

    invoke-static {v0, p2}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Lcom/android/launcher3/util/IntArray;)Ljava/lang/String;

    move-result-object v0

    .line 308
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 310
    return-void
.end method

.method private static solveGridPlacement(Lcom/android/launcher3/model/DatabaseHelper;Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;IIILjava/util/List;Z)V
    .locals 8
    .param p0, "helper"    # Lcom/android/launcher3/model/DatabaseHelper;
    .param p1, "srcReader"    # Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;
    .param p2, "destReader"    # Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;
    .param p3, "screenId"    # I
    .param p4, "trgX"    # I
    .param p5, "trgY"    # I
    .param p7, "matchingScreenIdOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/DatabaseHelper;",
            "Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;",
            "Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;",
            "III",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;",
            ">;Z)V"
        }
    .end annotation

    .line 333
    .local p6, "sortedItemsToPlace":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;>;"
    new-instance v0, Lcom/android/launcher3/util/GridOccupancy;

    invoke-direct {v0, p4, p5}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    .line 334
    .local v0, "occupied":Lcom/android/launcher3/util/GridOccupancy;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p4, p5}, Landroid/graphics/Point;-><init>(II)V

    .line 335
    .local v1, "trg":Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/Point;

    .line 336
    nop

    .line 340
    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 341
    .local v2, "next":Landroid/graphics/Point;
    invoke-static {p2}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->-$$Nest$fgetmWorkspaceEntriesByScreenId(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;)Ljava/util/Map;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 342
    .local v3, "existedEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;>;"
    if-eqz v3, :cond_0

    .line 343
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;

    .line 344
    .local v5, "entry":Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;
    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    .line 345
    .end local v5    # "entry":Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;
    goto :goto_0

    .line 347
    :cond_0
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 348
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 349
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;

    .line 350
    .restart local v5    # "entry":Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;
    if-eqz p7, :cond_1

    iget v6, v5, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->screenId:I

    if-ge v6, p3, :cond_1

    goto :goto_1

    .line 351
    :cond_1
    if-eqz p7, :cond_2

    iget v6, v5, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->screenId:I

    if-le v6, p3, :cond_2

    goto :goto_3

    .line 352
    :cond_2
    iget v6, v5, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->minSpanX:I

    if-gt v6, p4, :cond_5

    iget v6, v5, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->minSpanY:I

    if-le v6, p5, :cond_3

    goto :goto_2

    .line 356
    :cond_3
    invoke-static {v5, v2, v1, v0, p3}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->findPlacementForEntry(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;Landroid/graphics/Point;Landroid/graphics/Point;Lcom/android/launcher3/util/GridOccupancy;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 357
    invoke-static {p1}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->-$$Nest$fgetmTableName(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p2}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->-$$Nest$fgetmTableName(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v5, v6, v7}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->insertEntryInDb(Lcom/android/launcher3/model/DatabaseHelper;Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 360
    .end local v5    # "entry":Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;
    :cond_4
    goto :goto_1

    .line 353
    .restart local v5    # "entry":Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;
    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 354
    goto :goto_1

    .line 361
    .end local v5    # "entry":Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;
    :cond_6
    :goto_3
    return-void
.end method

.method private static solveHotseatPlacement(Lcom/android/launcher3/model/DatabaseHelper;ILcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .param p0, "helper"    # Lcom/android/launcher3/model/DatabaseHelper;
    .param p1, "hotseatSize"    # I
    .param p2, "srcReader"    # Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;
    .param p3, "destReader"    # Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/DatabaseHelper;",
            "I",
            "Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;",
            "Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;",
            ">;)V"
        }
    .end annotation

    .line 400
    .local p4, "placedHotseatItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;>;"
    .local p5, "itemsToPlace":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;>;"
    new-array v0, p1, [Z

    .line 401
    .local v0, "occupied":[Z
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;

    .line 402
    .local v2, "entry":Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;
    iget v4, v2, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->screenId:I

    aput-boolean v3, v0, v4

    .line 403
    .end local v2    # "entry":Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;
    goto :goto_0

    .line 405
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 406
    aget-boolean v2, v0, v1

    if-nez v2, :cond_1

    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 407
    const/4 v2, 0x0

    invoke-interface {p5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;

    .line 408
    .local v4, "entry":Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;
    iput v1, v4, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->screenId:I

    .line 411
    iput v1, v4, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->cellX:I

    .line 412
    iput v2, v4, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->cellY:I

    .line 413
    invoke-static {p2}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->-$$Nest$fgetmTableName(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->-$$Nest$fgetmTableName(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v2, v5}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->insertEntryInDb(Lcom/android/launcher3/model/DatabaseHelper;Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget v2, v4, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->screenId:I

    aput-boolean v3, v0, v2

    .line 405
    .end local v4    # "entry":Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 417
    .end local v1    # "i":I
    :cond_2
    return-void
.end method
