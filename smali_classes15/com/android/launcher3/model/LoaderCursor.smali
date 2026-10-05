.class public Lcom/android/launcher3/model/LoaderCursor;
.super Landroid/database/CursorWrapper;
.source "LoaderCursor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LoaderCursor"


# instance fields
.field private final allUsers:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field public container:I

.field public id:I

.field public itemType:I

.field private mActivityInfo:Landroid/content/pm/LauncherActivityInfo;

.field private final mApp:Lcom/android/launcher3/LauncherAppState;

.field private final mAppWidgetIdIndex:I

.field private final mAppWidgetProviderIndex:I

.field private final mAppWidgetSourceIndex:I

.field private final mCellXIndex:I

.field private final mCellYIndex:I

.field private final mContainerIndex:I

.field private final mContext:Landroid/content/Context;

.field private final mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

.field private final mIconCache:Lcom/android/launcher3/icons/IconCache;

.field private final mIconIndex:I

.field private final mIdIndex:I

.field private final mIntentIndex:I

.field private final mItemTypeIndex:I

.field private final mItemsToRemove:Lcom/android/launcher3/util/IntArray;

.field private final mOccupied:Lcom/android/launcher3/util/IntSparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/IntSparseArrayMap<",
            "Lcom/android/launcher3/util/GridOccupancy;",
            ">;"
        }
    .end annotation
.end field

.field private final mOptionsIndex:I

.field private final mProfileIdIndex:I

.field private final mRankIndex:I

.field private final mRestoreEventLogger:Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;

.field private final mRestoredIndex:I

.field private final mRestoredRows:Lcom/android/launcher3/util/IntArray;

.field private final mScreenIndex:I

.field private final mSpanXIndex:I

.field private final mSpanYIndex:I

.field public final mTitleIndex:I

.field public restoreFlag:I

.field public serialNumber:J

.field public user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/UserManagerState;Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p3, "userManagerState"    # Lcom/android/launcher3/model/UserManagerState;
    .param p4, "restoreEventLogger"    # Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;

    .line 117
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 79
    new-instance v0, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mItemsToRemove:Lcom/android/launcher3/util/IntArray;

    .line 80
    new-instance v0, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mRestoredRows:Lcom/android/launcher3/util/IntArray;

    .line 81
    new-instance v0, Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mOccupied:Lcom/android/launcher3/util/IntSparseArrayMap;

    .line 119
    iput-object p2, p0, Lcom/android/launcher3/model/LoaderCursor;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 120
    iget-object v0, p3, Lcom/android/launcher3/model/UserManagerState;->allUsers:Landroid/util/LongSparseArray;

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->allUsers:Landroid/util/LongSparseArray;

    .line 121
    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mContext:Landroid/content/Context;

    .line 122
    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    .line 123
    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 124
    iput-object p4, p0, Lcom/android/launcher3/model/LoaderCursor;->mRestoreEventLogger:Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;

    .line 127
    const-string v0, "icon"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mIconIndex:I

    .line 128
    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mTitleIndex:I

    .line 130
    const-string v0, "_id"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mIdIndex:I

    .line 131
    const-string v0, "container"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mContainerIndex:I

    .line 132
    const-string v0, "itemType"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mItemTypeIndex:I

    .line 133
    const-string v0, "screen"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mScreenIndex:I

    .line 134
    const-string v0, "cellX"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mCellXIndex:I

    .line 135
    const-string v0, "cellY"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mCellYIndex:I

    .line 136
    const-string v0, "profileId"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mProfileIdIndex:I

    .line 137
    const-string v0, "restored"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mRestoredIndex:I

    .line 138
    const-string v0, "intent"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mIntentIndex:I

    .line 140
    const-string v0, "appWidgetId"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mAppWidgetIdIndex:I

    .line 141
    const-string v0, "appWidgetProvider"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mAppWidgetProviderIndex:I

    .line 142
    const-string v0, "spanX"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mSpanXIndex:I

    .line 143
    const-string v0, "spanY"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mSpanYIndex:I

    .line 144
    const-string v0, "rank"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mRankIndex:I

    .line 145
    const-string v0, "options"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mOptionsIndex:I

    .line 146
    const-string v0, "appWidgetSource"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mAppWidgetSourceIndex:I

    .line 147
    return-void
.end method


# virtual methods
.method public applyCommonProperties(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 467
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->id:I

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    .line 468
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->container:I

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    .line 469
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mScreenIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    .line 470
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mCellXIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    .line 471
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mCellYIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    .line 472
    return-void
.end method

.method public checkAndAddItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;

    .line 475
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/model/LoaderCursor;->checkAndAddItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/LoaderMemoryLogger;)V

    .line 476
    return-void
.end method

.method public checkAndAddItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/LoaderMemoryLogger;)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p3, "logger"    # Lcom/android/launcher3/model/LoaderMemoryLogger;

    .line 484
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 487
    invoke-static {p1}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    .line 489
    :cond_0
    iget-boolean v0, p2, Lcom/android/launcher3/model/BgDataModel;->isFirstPagePinnedItemEnabled:Z

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/model/LoaderCursor;->checkItemPlacement(Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 490
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1, p3}, Lcom/android/launcher3/model/BgDataModel;->addItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;ZLcom/android/launcher3/model/LoaderMemoryLogger;)V

    .line 491
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mRestoreEventLogger:Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;

    if-eqz v0, :cond_2

    .line 492
    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;->logSingleFavoritesItemRestored(I)V

    goto :goto_0

    .line 495
    :cond_1
    const-string v0, "Item position overlap"

    const-string v1, "invalid_size_or_location"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    :cond_2
    :goto_0
    return-void
.end method

.method protected checkItemPlacement(Lcom/android/launcher3/model/data/ItemInfo;Z)Z
    .locals 16
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "isFirstPagePinnedItemEnabled"    # Z

    .line 503
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    .line 504
    .local v2, "containerIndex":I
    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const-string v4, ") already occupied"

    const-string v5, ")"

    const-string v6, ":"

    const-string v7, "Error loading shortcut "

    const-string v8, "LoaderCursor"

    const-string v9, ","

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v12, -0x65

    if-ne v3, v12, :cond_3

    .line 505
    iget-object v3, v0, Lcom/android/launcher3/model/LoaderCursor;->mOccupied:Lcom/android/launcher3/util/IntSparseArrayMap;

    .line 506
    invoke-virtual {v3, v12}, Lcom/android/launcher3/util/IntSparseArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/GridOccupancy;

    .line 508
    .local v3, "hotseatOccupancy":Lcom/android/launcher3/util/GridOccupancy;
    iget v13, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget-object v14, v0, Lcom/android/launcher3/model/LoaderCursor;->mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v14, v14, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseHotseatIcons:I

    if-lt v13, v14, :cond_0

    .line 509
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " into hotseat position "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", position out of bounds: (0 to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Lcom/android/launcher3/model/LoaderCursor;->mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v6, v6, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseHotseatIcons:I

    sub-int/2addr v6, v11

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    return v10

    .line 516
    :cond_0
    if-eqz v3, :cond_2

    .line 517
    iget-object v5, v3, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    iget v7, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    aget-object v5, v5, v7

    aget-boolean v5, v5, v10

    if-eqz v5, :cond_1

    .line 518
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error loading shortcut into hotseat "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " into position ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    return v10

    .line 523
    :cond_1
    iget-object v4, v3, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    iget v5, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    aget-object v4, v4, v5

    aput-boolean v11, v4, v10

    .line 524
    return v11

    .line 527
    :cond_2
    new-instance v4, Lcom/android/launcher3/util/GridOccupancy;

    iget-object v5, v0, Lcom/android/launcher3/model/LoaderCursor;->mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v5, v5, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseHotseatIcons:I

    invoke-direct {v4, v5, v11}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    .line 528
    .local v4, "occupancy":Lcom/android/launcher3/util/GridOccupancy;
    iget-object v5, v4, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    iget v6, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    aget-object v5, v5, v6

    aput-boolean v11, v5, v10

    .line 529
    iget-object v5, v0, Lcom/android/launcher3/model/LoaderCursor;->mOccupied:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v5, v12, v4}, Lcom/android/launcher3/util/IntSparseArrayMap;->put(ILjava/lang/Object;)V

    .line 530
    return v11

    .line 532
    .end local v3    # "hotseatOccupancy":Lcom/android/launcher3/util/GridOccupancy;
    .end local v4    # "occupancy":Lcom/android/launcher3/util/GridOccupancy;
    :cond_3
    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v12, -0x64

    if-eq v3, v12, :cond_4

    .line 534
    return v11

    .line 537
    :cond_4
    iget-object v3, v0, Lcom/android/launcher3/model/LoaderCursor;->mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v3, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 538
    .local v3, "countX":I
    iget-object v13, v0, Lcom/android/launcher3/model/LoaderCursor;->mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v13, v13, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    .line 539
    .local v13, "countY":I
    iget v14, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const-string v15, "-"

    const-string v10, " into cell ("

    if-ne v14, v12, :cond_5

    iget v12, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ltz v12, :cond_9

    :cond_5
    iget v12, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-ltz v12, :cond_9

    iget v12, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v14, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    add-int/2addr v12, v14

    if-gt v12, v3, :cond_9

    iget v12, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v14, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    add-int/2addr v12, v14

    if-le v12, v13, :cond_6

    goto/16 :goto_0

    .line 548
    :cond_6
    iget-object v5, v0, Lcom/android/launcher3/model/LoaderCursor;->mOccupied:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget v12, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v5, v12}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v5

    if-nez v5, :cond_7

    .line 549
    new-instance v5, Lcom/android/launcher3/util/GridOccupancy;

    add-int/lit8 v12, v3, 0x1

    add-int/lit8 v14, v13, 0x1

    invoke-direct {v5, v12, v14}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    .line 550
    .local v5, "screen":Lcom/android/launcher3/util/GridOccupancy;
    iget v12, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    .line 559
    iget-object v12, v0, Lcom/android/launcher3/model/LoaderCursor;->mOccupied:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget v14, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v12, v14, v5}, Lcom/android/launcher3/util/IntSparseArrayMap;->put(ILjava/lang/Object;)V

    .line 561
    .end local v5    # "screen":Lcom/android/launcher3/util/GridOccupancy;
    :cond_7
    iget-object v5, v0, Lcom/android/launcher3/model/LoaderCursor;->mOccupied:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget v12, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v5, v12}, Lcom/android/launcher3/util/IntSparseArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/util/GridOccupancy;

    .line 564
    .local v5, "occupancy":Lcom/android/launcher3/util/GridOccupancy;
    iget v12, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v14, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v11, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v0, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v5, v12, v14, v11, v0}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 565
    const/4 v0, 0x1

    invoke-virtual {v5, v1, v0}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    .line 566
    return v0

    .line 568
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const/4 v0, 0x0

    return v0

    .line 541
    .end local v5    # "occupancy":Lcom/android/launcher3/util/GridOccupancy;
    :cond_9
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ") out of screen bounds ( "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const/4 v0, 0x0

    return v0
.end method

.method public commitDeleted()Z
    .locals 4

    .line 415
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mItemsToRemove:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lcom/android/launcher3/model/ModelDbController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mItemsToRemove:Lcom/android/launcher3/util/IntArray;

    .line 418
    const-string v2, "_id"

    invoke-static {v2, v1}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Lcom/android/launcher3/util/IntArray;)Ljava/lang/String;

    move-result-object v1

    .line 417
    const-string v2, "favorites"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/launcher3/model/ModelDbController;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 419
    const/4 v0, 0x1

    return v0

    .line 421
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public commitRestoredItems()V
    .locals 5

    .line 439
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mRestoredRows:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 441
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 442
    .local v0, "values":Landroid/content/ContentValues;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "restored"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 443
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lcom/android/launcher3/model/ModelDbController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderCursor;->mRestoredRows:Lcom/android/launcher3/util/IntArray;

    .line 444
    const-string v3, "_id"

    invoke-static {v3, v2}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Lcom/android/launcher3/util/IntArray;)Ljava/lang/String;

    move-result-object v2

    .line 443
    const-string v3, "favorites"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v0, v2, v4}, Lcom/android/launcher3/model/ModelDbController;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 446
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mRestoreEventLogger:Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;

    if-eqz v0, :cond_1

    .line 447
    invoke-virtual {v0}, Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;->reportLauncherRestoreResults()V

    .line 449
    :cond_1
    return-void
.end method

.method public createIconRequestInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)Lcom/android/launcher3/model/data/IconRequestInfo;
    .locals 3
    .param p1, "wai"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p2, "useLowResIcon"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            "Z)",
            "Lcom/android/launcher3/model/data/IconRequestInfo<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation

    .line 204
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderCursor;->getIconBlob()[B

    move-result-object v0

    .line 207
    .local v0, "iconBlob":[B
    :goto_1
    new-instance v1, Lcom/android/launcher3/model/data/IconRequestInfo;

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderCursor;->mActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-direct {v1, p1, v2, v0, p2}, Lcom/android/launcher3/model/data/IconRequestInfo;-><init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;[BZ)V

    return-object v1
.end method

.method public getAppShortcutInfo(Landroid/content/Intent;ZZ)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "allowMissingTarget"    # Z
    .param p3, "useLowResIcon"    # Z

    .line 329
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher3/model/LoaderCursor;->getAppShortcutInfo(Landroid/content/Intent;ZZZ)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAppShortcutInfo(Landroid/content/Intent;ZZZ)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "allowMissingTarget"    # Z
    .param p3, "useLowResIcon"    # Z
    .param p4, "loadIcon"    # Z

    .line 334
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    const-string v1, "LoaderCursor"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 335
    const-string v0, "Null user found in getShortcutInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    return-object v2

    .line 339
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 340
    .local v0, "componentName":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    .line 341
    const-string v3, "Missing component found in getShortcutInfo"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return-object v2

    .line 345
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 346
    .local v3, "newIntent":Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 348
    iget-object v4, p0, Lcom/android/launcher3/model/LoaderCursor;->mContext:Landroid/content/Context;

    const-class v5, Landroid/content/pm/LauncherApps;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/LauncherApps;

    iget-object v5, p0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    .line 349
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/LauncherApps;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/model/LoaderCursor;->mActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    .line 350
    if-nez v4, :cond_2

    if-nez p2, :cond_2

    .line 351
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing activity found in getShortcutInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return-object v2

    .line 355
    :cond_2
    new-instance v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>()V

    .line 356
    .local v1, "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    iget-object v2, p0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iput-object v2, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->user:Landroid/os/UserHandle;

    .line 357
    iput-object v3, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    .line 358
    iget-object v2, p0, Lcom/android/launcher3/model/LoaderCursor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/pm/UserCache;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/pm/UserCache;

    move-result-object v2

    .line 359
    .local v2, "userCache":Lcom/android/launcher3/pm/UserCache;
    iget-object v4, p0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/pm/UserCache;->getUserInfo(Landroid/os/UserHandle;)Lcom/android/launcher3/util/UserIconInfo;

    move-result-object v4

    .line 361
    .local v4, "userIconInfo":Lcom/android/launcher3/util/UserIconInfo;
    if-eqz p4, :cond_3

    .line 362
    iget-object v5, p0, Lcom/android/launcher3/model/LoaderCursor;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    iget-object v6, p0, Lcom/android/launcher3/model/LoaderCursor;->mActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v5, v1, v6, p3}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V

    .line 363
    iget-object v5, p0, Lcom/android/launcher3/model/LoaderCursor;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    iget-object v6, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v7, p0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/icons/IconCache;->isDefaultIcon(Lcom/android/launcher3/icons/BitmapInfo;Landroid/os/UserHandle;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 364
    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/LoaderCursor;->loadIcon(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    .line 368
    :cond_3
    iget-object v5, p0, Lcom/android/launcher3/model/LoaderCursor;->mActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    if-eqz v5, :cond_4

    .line 369
    invoke-static {v1, v5, v4}, Lcom/android/launcher3/model/data/AppInfo;->updateRuntimeFlagsForActivityTarget(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Lcom/android/launcher3/util/UserIconInfo;)V

    .line 373
    :cond_4
    iget-object v5, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 374
    if-eqz p4, :cond_5

    .line 375
    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderCursor;->getTitle()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->title:Ljava/lang/CharSequence;

    .line 378
    iget-object v5, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->title:Ljava/lang/CharSequence;

    if-nez v5, :cond_6

    .line 379
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->title:Ljava/lang/CharSequence;

    goto :goto_0

    .line 382
    :cond_5
    const-string v5, ""

    iput-object v5, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->title:Ljava/lang/CharSequence;

    .line 386
    :cond_6
    :goto_0
    iget-object v5, p0, Lcom/android/launcher3/model/LoaderCursor;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    iget-object v6, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v7, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/icons/IconCache;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 387
    return-object v1
.end method

.method public getAppWidgetId()I
    .locals 1

    .line 228
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mAppWidgetIdIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getAppWidgetProvider()Ljava/lang/String;
    .locals 1

    .line 235
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mAppWidgetProviderIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppWidgetSource()I
    .locals 1

    .line 270
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mAppWidgetSourceIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getContainer()I
    .locals 1

    .line 284
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mContainerIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getIconBlob()[B
    .locals 1

    .line 214
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mIconIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getLauncherActivityInfo()Landroid/content/pm/LauncherActivityInfo;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    return-object v0
.end method

.method public getOptions()I
    .locals 1

    .line 263
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mOptionsIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getRank()I
    .locals 1

    .line 256
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mRankIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getRestoredItemInfo(Landroid/content/Intent;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 292
    new-instance v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>()V

    .line 293
    .local v0, "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iput-object v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->user:Landroid/os/UserHandle;

    .line 294
    iput-object p1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    .line 297
    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->loadIcon(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    .line 301
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 302
    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderCursor;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "title":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 304
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->title:Ljava/lang/CharSequence;

    .line 306
    .end local v1    # "title":Ljava/lang/String;
    :cond_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 307
    iget-object v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 308
    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderCursor;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->title:Ljava/lang/CharSequence;

    .line 314
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    iget-object v2, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v3, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/icons/IconCache;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 315
    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    iput v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->itemType:I

    .line 316
    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    iput v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    .line 317
    return-object v0

    .line 311
    :cond_4
    new-instance v1, Ljava/security/InvalidParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid restoreType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getScreen()I
    .locals 1

    .line 277
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mScreenIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getSpanX()I
    .locals 1

    .line 242
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mSpanXIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getSpanY()I
    .locals 1

    .line 249
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mSpanYIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 221
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mTitleIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasRestoreFlag(I)Z
    .locals 1
    .param p1, "flagMask"    # I

    .line 435
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOnWorkspaceOrHotseat()Z
    .locals 2

    .line 455
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->container:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_1

    const/16 v1, -0x65

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected loadIcon(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 199
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/model/LoaderCursor;->createIconRequestInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)Lcom/android/launcher3/model/data/IconRequestInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/data/IconRequestInfo;->loadWorkspaceIcon(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public loadSimpleWorkspaceItem()Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .locals 3

    .line 179
    new-instance v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>()V

    .line 180
    .local v0, "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    .line 182
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iput-object v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->user:Landroid/os/UserHandle;

    .line 183
    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    iput v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->itemType:I

    .line 184
    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderCursor;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->title:Ljava/lang/CharSequence;

    .line 186
    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->loadIcon(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    iget-object v2, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/icons/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 192
    :cond_0
    return-object v0
.end method

.method public markDeleted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "errorType"    # Ljava/lang/String;

    .line 403
    const-string v0, "LoaderCursor"

    invoke-static {v0, p1}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mItemsToRemove:Lcom/android/launcher3/util/IntArray;

    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->id:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 405
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mRestoreEventLogger:Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;

    if-eqz v0, :cond_0

    .line 406
    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    invoke-virtual {v0, v1, p2}, Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;->logSingleFavoritesItemRestoreFailed(ILjava/lang/String;)V

    .line 408
    :cond_0
    return-void
.end method

.method public markRestored()V
    .locals 2

    .line 428
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mRestoredRows:Lcom/android/launcher3/util/IntArray;

    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->id:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 430
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    .line 432
    :cond_0
    return-void
.end method

.method public moveToNext()Z
    .locals 4

    .line 151
    invoke-super {p0}, Landroid/database/CursorWrapper;->moveToNext()Z

    move-result v0

    .line 152
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 153
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    .line 156
    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mItemTypeIndex:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    .line 157
    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mContainerIndex:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/model/LoaderCursor;->container:I

    .line 158
    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mIdIndex:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/model/LoaderCursor;->id:I

    .line 159
    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mProfileIdIndex:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/launcher3/model/LoaderCursor;->serialNumber:J

    .line 160
    iget-object v3, p0, Lcom/android/launcher3/model/LoaderCursor;->allUsers:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    iput-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    .line 161
    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mRestoredIndex:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    .line 163
    :cond_0
    return v0
.end method

.method public parseIntent()Landroid/content/Intent;
    .locals 5

    .line 167
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mIntentIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "intentDescription":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-object v1

    .line 171
    :catch_0
    move-exception v2

    .line 172
    .local v2, "e":Ljava/net/URISyntaxException;
    const-string v3, "LoaderCursor"

    const-string v4, "Error parsing Intent"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-object v1
.end method

.method public updater()Lcom/android/launcher3/util/ContentWriter;
    .locals 6

    .line 394
    new-instance v0, Lcom/android/launcher3/util/ContentWriter;

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/launcher3/util/ContentWriter$CommitParams;

    iget-object v3, p0, Lcom/android/launcher3/model/LoaderCursor;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 395
    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lcom/android/launcher3/model/ModelDbController;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher3/model/LoaderCursor;->id:I

    .line 396
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "_id= ?"

    invoke-direct {v2, v3, v5, v4}, Lcom/android/launcher3/util/ContentWriter$CommitParams;-><init>(Lcom/android/launcher3/model/ModelDbController;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;Lcom/android/launcher3/util/ContentWriter$CommitParams;)V

    .line 394
    return-object v0
.end method
