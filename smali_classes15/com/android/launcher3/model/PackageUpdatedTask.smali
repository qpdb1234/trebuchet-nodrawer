.class public Lcom/android/launcher3/model/PackageUpdatedTask;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "PackageUpdatedTask.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final OP_ADD:I = 0x1

.field public static final OP_NONE:I = 0x0

.field public static final OP_REMOVE:I = 0x3

.field public static final OP_SUSPEND:I = 0x5

.field public static final OP_UNAVAILABLE:I = 0x4

.field public static final OP_UNSUSPEND:I = 0x6

.field public static final OP_UPDATE:I = 0x2

.field public static final OP_USER_AVAILABILITY_CHANGE:I = 0x7

.field private static final TAG:Ljava/lang/String; = "PackageUpdatedTask"


# instance fields
.field private final mOp:I

.field private final mPackages:[Ljava/lang/String;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public static synthetic $r8$lambda$Qykg-uMtrd-Avt37qk-5jJ34Yd4(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VuMsR88N1HlFu6g0tnmbtsiM-r0(Lcom/android/launcher3/model/PackageUpdatedTask;Ljava/util/function/Predicate;Lcom/android/launcher3/util/IntSet;ZLandroid/content/Context;Lcom/android/launcher3/util/IntSet;Ljava/util/HashSet;Ljava/util/HashMap;Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/util/FlagOp;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Lcom/android/launcher3/model/PackageUpdatedTask;->lambda$execute$1(Ljava/util/function/Predicate;Lcom/android/launcher3/util/IntSet;ZLandroid/content/Context;Lcom/android/launcher3/util/IntSet;Ljava/util/HashSet;Ljava/util/HashMap;Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/util/FlagOp;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rPWoHv_C6YQE8oHHaw5l91B4p4o(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public varargs constructor <init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V
    .locals 0
    .param p1, "op"    # I
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "packages"    # [Ljava/lang/String;

    .line 99
    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    .line 100
    iput p1, p0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    .line 101
    iput-object p2, p0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    .line 102
    iput-object p3, p0, Lcom/android/launcher3/model/PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 103
    return-void
.end method

.method static synthetic lambda$execute$0(Ljava/util/HashSet;Lcom/android/launcher3/model/data/AppInfo;)V
    .locals 1
    .param p0, "removedComponents"    # Ljava/util/HashSet;
    .param p1, "a"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 137
    iget-object v0, p1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$execute$1(Ljava/util/function/Predicate;Lcom/android/launcher3/util/IntSet;ZLandroid/content/Context;Lcom/android/launcher3/util/IntSet;Ljava/util/HashSet;Ljava/util/HashMap;Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/util/FlagOp;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 17
    .param p1, "matcher"    # Ljava/util/function/Predicate;
    .param p2, "forceKeepShortcuts"    # Lcom/android/launcher3/util/IntSet;
    .param p3, "isNewApkAvailable"    # Z
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "removedShortcuts"    # Lcom/android/launcher3/util/IntSet;
    .param p6, "removedComponents"    # Ljava/util/HashSet;
    .param p7, "activitiesLists"    # Ljava/util/HashMap;
    .param p8, "iconCache"    # Lcom/android/launcher3/icons/IconCache;
    .param p9, "flagOp"    # Lcom/android/launcher3/util/FlagOp;
    .param p10, "updatedWorkspaceItems"    # Ljava/util/ArrayList;
    .param p11, "si"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 212
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p11

    const/4 v4, 0x0

    .line 213
    .local v4, "infoUpdated":Z
    const/4 v5, 0x0

    .line 215
    .local v5, "shortcutUpdated":Z
    invoke-virtual/range {p11 .. p11}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 216
    .local v6, "cn":Landroid/content/ComponentName;
    if-eqz v6, :cond_14

    move-object/from16 v7, p1

    invoke-interface {v7, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 217
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 219
    .local v8, "packageName":Ljava/lang/String;
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result v9

    const/4 v10, 0x3

    if-eqz v9, :cond_0

    .line 220
    iget v9, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->id:I

    move-object/from16 v11, p2

    invoke-virtual {v11, v9}, Lcom/android/launcher3/util/IntSet;->add(I)V

    .line 221
    iget v9, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    if-ne v9, v10, :cond_1

    .line 222
    return-void

    .line 219
    :cond_0
    move-object/from16 v11, p2

    .line 226
    :cond_1
    invoke-virtual/range {p11 .. p11}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isPromise()Z

    move-result v9

    const/4 v12, 0x2

    const/4 v13, 0x0

    if-eqz v9, :cond_a

    if-eqz p3, :cond_a

    .line 227
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    const-string v14, "."

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    .line 229
    .local v9, "isTargetValid":Z
    iget v14, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->itemType:I

    const/4 v15, 0x6

    if-ne v14, v15, :cond_3

    .line 230
    new-instance v14, Lcom/android/launcher3/shortcuts/ShortcutRequest;

    iget-object v15, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-direct {v14, v1, v15}, Lcom/android/launcher3/shortcuts/ShortcutRequest;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    .line 232
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 233
    invoke-virtual/range {p11 .. p11}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v16

    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    move-result-object v10

    .line 232
    invoke-virtual {v14, v15, v10}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->forPackage(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/launcher3/shortcuts/ShortcutRequest;

    move-result-object v10

    .line 234
    invoke-virtual {v10, v12}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    move-result-object v10

    .line 235
    .local v10, "shortcut":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 236
    const/4 v9, 0x0

    goto :goto_0

    .line 238
    :cond_2
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v3, v14, v1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->updateFromDeepShortcutInfo(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    .line 239
    const/4 v4, 0x1

    goto :goto_0

    .line 241
    .end local v10    # "shortcut":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :cond_3
    if-eqz v9, :cond_4

    .line 242
    const-class v10, Landroid/content/pm/LauncherApps;

    invoke-virtual {v1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/LauncherApps;

    iget-object v14, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    .line 243
    invoke-virtual {v10, v6, v14}, Landroid/content/pm/LauncherApps;->isActivityEnabled(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v9

    goto :goto_1

    .line 241
    :cond_4
    :goto_0
    nop

    .line 245
    :goto_1
    if-nez v9, :cond_7

    const/4 v10, 0x3

    invoke-virtual {v3, v10}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result v10

    if-nez v10, :cond_5

    .line 247
    invoke-virtual/range {p11 .. p11}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isArchived()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 248
    :cond_5
    invoke-direct {v0, v1, v3, v8}, Lcom/android/launcher3/model/PackageUpdatedTask;->updateWorkspaceItemIntent(Landroid/content/Context;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 249
    const/4 v4, 0x1

    goto :goto_2

    .line 250
    :cond_6
    invoke-virtual/range {p11 .. p11}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasPromiseIconUi()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 251
    iget v10, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->id:I

    invoke-virtual {v2, v10}, Lcom/android/launcher3/util/IntSet;->add(I)V

    .line 252
    return-void

    .line 254
    :cond_7
    if-nez v9, :cond_8

    .line 255
    iget v10, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->id:I

    invoke-virtual {v2, v10}, Lcom/android/launcher3/util/IntSet;->add(I)V

    .line 256
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Restored shortcut no longer valid "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 257
    invoke-virtual/range {p11 .. p11}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 256
    const-string v12, "PackageUpdatedTask"

    invoke-static {v12, v10}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return-void

    .line 260
    :cond_8
    iput v13, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    .line 261
    const/4 v4, 0x1

    .line 263
    .end local v9    # "isTargetValid":Z
    :cond_9
    :goto_2
    move-object/from16 v9, p6

    goto :goto_3

    :cond_a
    if-eqz p3, :cond_b

    move-object/from16 v9, p6

    invoke-virtual {v9, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 264
    invoke-direct {v0, v1, v3, v8}, Lcom/android/launcher3/model/PackageUpdatedTask;->updateWorkspaceItemIntent(Landroid/content/Context;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 265
    const/4 v4, 0x1

    goto :goto_3

    .line 263
    :cond_b
    move-object/from16 v9, p6

    .line 269
    :cond_c
    :goto_3
    if-eqz p3, :cond_13

    .line 270
    move-object/from16 v10, p7

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 272
    .local v14, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    nop

    .line 273
    if-eqz v14, :cond_e

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_d

    goto :goto_4

    .line 275
    :cond_d
    nop

    .line 276
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/LauncherActivityInfo;

    .line 275
    invoke-static {v15}, Lcom/android/launcher3/util/PackageManagerHelper;->getLoadingProgress(Landroid/content/pm/LauncherActivityInfo;)I

    move-result v15

    goto :goto_5

    .line 274
    :cond_e
    :goto_4
    const/16 v15, 0x64

    .line 275
    :goto_5
    nop

    .line 272
    invoke-virtual {v3, v15, v12}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->setProgressLevel(II)V

    .line 280
    invoke-static {}, Lcom/android/launcher3/Utilities;->enableSupportForArchiving()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_f

    .line 281
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/LauncherActivityInfo;

    .line 282
    invoke-virtual {v12}, Landroid/content/pm/LauncherActivityInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v12

    iget-boolean v12, v12, Landroid/content/pm/ActivityInfo;->isArchived:Z

    .line 283
    .local v12, "newArchivalState":Z
    invoke-virtual/range {p11 .. p11}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isArchived()Z

    move-result v15

    if-eq v12, v15, :cond_f

    .line 284
    iget v15, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    xor-int/lit16 v15, v15, 0x4000

    iput v15, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    .line 285
    const/4 v4, 0x1

    .line 288
    .end local v12    # "newArchivalState":Z
    :cond_f
    iget v12, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->itemType:I

    if-nez v12, :cond_12

    .line 289
    if-eqz v14, :cond_11

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_11

    .line 290
    nop

    .line 291
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/LauncherActivityInfo;

    invoke-static {v12}, Lcom/android/launcher3/uioverrides/ApiWrapper;->isNonResizeableActivity(Landroid/content/pm/LauncherActivityInfo;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 292
    iget v12, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    or-int/lit8 v12, v12, 0x20

    goto :goto_6

    .line 293
    :cond_10
    iget v12, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    and-int/lit8 v12, v12, -0x21

    :goto_6
    iput v12, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    .line 295
    :cond_11
    invoke-virtual/range {p11 .. p11}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->usingLowResIcon()Z

    move-result v12

    move-object/from16 v13, p8

    invoke-virtual {v13, v3, v12}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    .line 296
    const/4 v4, 0x1

    goto :goto_7

    .line 288
    :cond_12
    move-object/from16 v13, p8

    goto :goto_7

    .line 269
    .end local v14    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    :cond_13
    move-object/from16 v10, p7

    move-object/from16 v13, p8

    .line 300
    :goto_7
    iget v12, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    .line 301
    .local v12, "oldRuntimeFlags":I
    iget v14, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    move-object/from16 v15, p9

    invoke-interface {v15, v14}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    move-result v14

    iput v14, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    .line 302
    iget v14, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    if-eq v14, v12, :cond_16

    .line 303
    const/4 v5, 0x1

    goto :goto_8

    .line 216
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v12    # "oldRuntimeFlags":I
    :cond_14
    move-object/from16 v7, p1

    :cond_15
    move-object/from16 v11, p2

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v13, p8

    move-object/from16 v15, p9

    .line 307
    :cond_16
    :goto_8
    if-nez v4, :cond_17

    if-eqz v5, :cond_18

    .line 308
    :cond_17
    invoke-virtual/range {p10 .. p11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_18
    if-eqz v4, :cond_19

    iget v8, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->id:I

    const/4 v12, -0x1

    if-eq v8, v12, :cond_19

    .line 311
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/PackageUpdatedTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 313
    :cond_19
    return-void
.end method

.method static synthetic lambda$execute$2(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0
    .param p0, "widgets"    # Ljava/util/ArrayList;
    .param p1, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 343
    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindWidgetsRestored(Ljava/util/ArrayList;)V

    return-void
.end method

.method private updateWorkspaceItemIntent(Landroid/content/Context;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/lang/String;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "si"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 410
    iget v0, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->itemType:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 413
    return v2

    .line 416
    :cond_0
    new-instance v0, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {v0, p1}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, p3, v1}, Lcom/android/launcher3/util/PackageManagerHelper;->getAppLaunchIntent(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v0

    .line 417
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 418
    iput-object v0, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    .line 419
    iput v2, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    .line 420
    const/4 v1, 0x1

    return v1

    .line 422
    :cond_1
    return v2
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .locals 29
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p3, "appsList"    # Lcom/android/launcher3/model/AllAppsList;

    .line 108
    move-object/from16 v13, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 109
    .local v12, "context":Landroid/content/Context;
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v11

    .line 111
    .local v11, "iconCache":Lcom/android/launcher3/icons/IconCache;
    iget-object v10, v13, Lcom/android/launcher3/model/PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 112
    .local v10, "packages":[Ljava/lang/String;
    array-length v9, v10

    .line 114
    .local v9, "N":I
    new-instance v0, Ljava/util/HashSet;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v8, v0

    .line 115
    .local v8, "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget v0, v13, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 116
    iget-object v0, v13, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-static {v0}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofUser(Landroid/os/UserHandle;)Ljava/util/function/Predicate;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, v13, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-static {v8, v0}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofPackages(Ljava/util/Set;Landroid/os/UserHandle;)Ljava/util/function/Predicate;

    move-result-object v0

    :goto_0
    move-object v6, v0

    .line 118
    .local v6, "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v3, v0

    .line 119
    .local v3, "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    .line 121
    .local v2, "activitiesLists":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;>;"
    iget v0, v13, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    packed-switch v0, :pswitch_data_0

    .line 192
    const/4 v1, 0x2

    sget-object v5, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    .local v5, "flagOp":Lcom/android/launcher3/util/FlagOp;
    goto/16 :goto_a

    .line 170
    .end local v5    # "flagOp":Lcom/android/launcher3/util/FlagOp;
    :pswitch_0
    new-instance v0, Lcom/android/launcher3/model/UserManagerState;

    invoke-direct {v0}, Lcom/android/launcher3/model/UserManagerState;-><init>()V

    .line 171
    .local v0, "ums":Lcom/android/launcher3/model/UserManagerState;
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v12, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 172
    .local v1, "userManager":Landroid/os/UserManager;
    sget-object v7, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v7, v12}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v0, v7, v1}, Lcom/android/launcher3/model/UserManagerState;->init(Lcom/android/launcher3/pm/UserCache;Landroid/os/UserManager;)V

    .line 173
    iget-object v7, v13, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v7}, Lcom/android/launcher3/model/UserManagerState;->isUserQuiet(Landroid/os/UserHandle;)Z

    move-result v7

    .line 174
    .local v7, "isUserQuiet":Z
    sget-object v5, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    const/16 v4, 0x8

    invoke-interface {v5, v4, v7}, Lcom/android/launcher3/util/FlagOp;->setFlag(IZ)Lcom/android/launcher3/util/FlagOp;

    move-result-object v5

    .line 176
    .restart local v5    # "flagOp":Lcom/android/launcher3/util/FlagOp;
    invoke-virtual {v15, v6, v5}, Lcom/android/launcher3/model/AllAppsList;->updateDisabledFlags(Ljava/util/function/Predicate;Lcom/android/launcher3/util/FlagOp;)V

    .line 178
    invoke-static {}, Lcom/android/launcher3/Flags;->enablePrivateSpace()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 179
    sget-object v4, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v4, v12}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/pm/UserCache;

    .line 180
    .local v4, "userCache":Lcom/android/launcher3/pm/UserCache;
    move-object/from16 v21, v1

    .end local v1    # "userManager":Landroid/os/UserManager;
    .local v21, "userManager":Landroid/os/UserManager;
    iget-object v1, v13, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4, v1}, Lcom/android/launcher3/pm/UserCache;->getUserInfo(Landroid/os/UserHandle;)Lcom/android/launcher3/util/UserIconInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/UserIconInfo;->isWork()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    const/16 v1, 0x8

    invoke-virtual {v15, v1, v7}, Lcom/android/launcher3/model/AllAppsList;->setFlags(IZ)V

    goto :goto_1

    .line 182
    :cond_1
    iget-object v1, v13, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4, v1}, Lcom/android/launcher3/pm/UserCache;->getUserInfo(Landroid/os/UserHandle;)Lcom/android/launcher3/util/UserIconInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/UserIconInfo;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    const/16 v1, 0x10

    invoke-virtual {v15, v1, v7}, Lcom/android/launcher3/model/AllAppsList;->setFlags(IZ)V

    .line 185
    .end local v4    # "userCache":Lcom/android/launcher3/pm/UserCache;
    :cond_2
    :goto_1
    goto :goto_2

    .line 187
    .end local v21    # "userManager":Landroid/os/UserManager;
    .restart local v1    # "userManager":Landroid/os/UserManager;
    :cond_3
    move-object/from16 v21, v1

    .end local v1    # "userManager":Landroid/os/UserManager;
    .restart local v21    # "userManager":Landroid/os/UserManager;
    invoke-virtual {v0}, Lcom/android/launcher3/model/UserManagerState;->isAnyProfileQuietModeEnabled()Z

    move-result v1

    const/4 v4, 0x2

    invoke-virtual {v15, v4, v1}, Lcom/android/launcher3/model/AllAppsList;->setFlags(IZ)V

    .line 189
    nop

    .line 196
    .end local v0    # "ums":Lcom/android/launcher3/model/UserManagerState;
    .end local v7    # "isUserQuiet":Z
    .end local v21    # "userManager":Landroid/os/UserManager;
    :goto_2
    const/4 v1, 0x2

    goto/16 :goto_a

    .line 164
    .end local v5    # "flagOp":Lcom/android/launcher3/util/FlagOp;
    :pswitch_1
    sget-object v0, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    iget v1, v13, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v4, 0x5

    if-ne v1, v4, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    const/4 v5, 0x4

    invoke-interface {v0, v5, v1}, Lcom/android/launcher3/util/FlagOp;->setFlag(IZ)Lcom/android/launcher3/util/FlagOp;

    move-result-object v0

    .line 166
    .local v0, "flagOp":Lcom/android/launcher3/util/FlagOp;
    const-string v1, "PackageUpdatedTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAllAppsList.(un)suspend "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {v15, v6, v0}, Lcom/android/launcher3/model/AllAppsList;->updateDisabledFlags(Ljava/util/function/Predicate;Lcom/android/launcher3/util/FlagOp;)V

    .line 168
    move-object v5, v0

    const/4 v1, 0x2

    goto/16 :goto_a

    .line 121
    .end local v0    # "flagOp":Lcom/android/launcher3/util/FlagOp;
    :pswitch_2
    const/4 v5, 0x4

    goto :goto_5

    .line 149
    :pswitch_3
    const/4 v5, 0x4

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, v9, :cond_5

    .line 150
    const-string v1, "PackageUpdatedTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing app icon: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v7, v10, v0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    aget-object v1, v10, v0

    iget-object v4, v13, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v11, v1, v4}, Lcom/android/launcher3/icons/IconCache;->removeIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 156
    .end local v0    # "i":I
    :cond_5
    :goto_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    if-ge v0, v9, :cond_6

    .line 157
    const-string v1, "PackageUpdatedTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAllAppsList.removePackage "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v7, v10, v0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    aget-object v1, v10, v0

    iget-object v4, v13, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v15, v1, v4}, Lcom/android/launcher3/model/AllAppsList;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 160
    .end local v0    # "i":I
    :cond_6
    sget-object v0, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/launcher3/util/FlagOp;->addFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v0

    .line 161
    .local v0, "flagOp":Lcom/android/launcher3/util/FlagOp;
    move-object v5, v0

    const/4 v1, 0x2

    goto/16 :goto_a

    .line 136
    .end local v0    # "flagOp":Lcom/android/launcher3/util/FlagOp;
    :pswitch_4
    const/4 v5, 0x4

    new-instance v0, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda0;

    invoke-direct {v0, v3}, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda0;-><init>(Ljava/util/HashSet;)V

    .line 137
    invoke-virtual {v15, v0}, Lcom/android/launcher3/model/AllAppsList;->trackRemoves(Ljava/util/function/Consumer;)Lcom/android/launcher3/util/SafeCloseable;

    move-result-object v1

    .line 138
    .local v1, "t":Lcom/android/launcher3/util/SafeCloseable;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v9, :cond_8

    .line 139
    :try_start_0
    const-string v4, "PackageUpdatedTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAllAppsList.updatePackage "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v10, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    aget-object v4, v10, v0

    iget-object v5, v13, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v11, v4, v5}, Lcom/android/launcher3/icons/IconCache;->updateIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 141
    aget-object v4, v10, v0

    aget-object v5, v10, v0

    iget-object v7, v13, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    .line 142
    invoke-virtual {v15, v12, v5, v7}, Lcom/android/launcher3/model/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v5

    .line 141
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    add-int/lit8 v0, v0, 0x1

    const/4 v5, 0x4

    goto :goto_7

    .line 136
    .end local v0    # "i":I
    :catchall_0
    move-exception v0

    move-object v4, v0

    if-eqz v1, :cond_7

    :try_start_1
    invoke-interface {v1}, Lcom/android/launcher3/util/SafeCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_8
    throw v4

    .line 144
    :cond_8
    if-eqz v1, :cond_9

    invoke-interface {v1}, Lcom/android/launcher3/util/SafeCloseable;->close()V

    .line 146
    .end local v1    # "t":Lcom/android/launcher3/util/SafeCloseable;
    :cond_9
    sget-object v0, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/launcher3/util/FlagOp;->removeFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v5

    .line 147
    .restart local v5    # "flagOp":Lcom/android/launcher3/util/FlagOp;
    const/4 v1, 0x2

    goto :goto_a

    .line 123
    .end local v5    # "flagOp":Lcom/android/launcher3/util/FlagOp;
    :pswitch_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_9
    if-ge v0, v9, :cond_b

    .line 124
    const-string v1, "PackageUpdatedTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAllAppsList.addPackage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v10, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    aget-object v1, v10, v0

    iget-object v4, v13, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v11, v1, v4}, Lcom/android/launcher3/icons/IconCache;->updateIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 126
    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->PROMISE_APPS_IN_ALL_APPS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 127
    aget-object v1, v10, v0

    iget-object v4, v13, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v15, v1, v4}, Lcom/android/launcher3/model/AllAppsList;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 129
    :cond_a
    aget-object v1, v10, v0

    aget-object v4, v10, v0

    iget-object v5, v13, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    .line 130
    invoke-virtual {v15, v12, v4, v5}, Lcom/android/launcher3/model/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    .line 129
    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 132
    .end local v0    # "i":I
    :cond_b
    sget-object v0, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/launcher3/util/FlagOp;->removeFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v5

    .line 133
    .restart local v5    # "flagOp":Lcom/android/launcher3/util/FlagOp;
    nop

    .line 196
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/PackageUpdatedTask;->bindApplicationsIfNeeded()V

    .line 198
    new-instance v7, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v7}, Lcom/android/launcher3/util/IntSet;-><init>()V

    const/4 v0, 0x1

    .line 200
    .local v7, "removedShortcuts":Lcom/android/launcher3/util/IntSet;
    new-instance v4, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v4}, Lcom/android/launcher3/util/IntSet;-><init>()V

    .line 203
    .local v4, "forceKeepShortcuts":Lcom/android/launcher3/util/IntSet;
    iget v1, v13, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    if-eq v1, v0, :cond_d

    sget-object v1, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    if-eq v5, v1, :cond_c

    goto :goto_b

    :cond_c
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    move-object/from16 v23, v6

    move-object v6, v8

    move/from16 v25, v9

    move-object/from16 v26, v10

    move-object/from16 v27, v11

    move-object/from16 v28, v12

    const/4 v2, 0x2

    goto/16 :goto_10

    .line 204
    :cond_d
    :goto_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v1, "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v20, v17

    .line 208
    .local v20, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    move-object/from16 v17, v1

    .end local v1    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .local v17, "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    iget v1, v13, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    if-eq v1, v0, :cond_f

    const/4 v0, 0x2

    if-ne v1, v0, :cond_e

    goto :goto_c

    :cond_e
    const/16 v16, 0x0

    goto :goto_d

    :cond_f
    const/4 v0, 0x2

    :goto_c
    const/16 v16, 0x1

    :goto_d
    move-object/from16 v18, v5

    const/16 v19, 0x4

    .end local v5    # "flagOp":Lcom/android/launcher3/util/FlagOp;
    .local v18, "flagOp":Lcom/android/launcher3/util/FlagOp;
    move/from16 v5, v16

    .line 209
    .local v5, "isNewApkAvailable":Z
    monitor-enter p2

    .line 210
    :try_start_2
    iget-object v1, v13, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    new-instance v0, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda1;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    move-object v15, v1

    move-object/from16 v22, v17

    .end local v17    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .local v22, "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    move-object v1, v0

    move-object/from16 v16, v2

    .end local v2    # "activitiesLists":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;>;"
    .local v16, "activitiesLists":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;>;"
    move-object/from16 v2, p0

    move-object/from16 v17, v3

    .end local v3    # "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .local v17, "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    move-object v3, v6

    move-object/from16 v23, v6

    .end local v6    # "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .local v23, "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    move-object v6, v12

    move-object/from16 v24, v8

    .end local v8    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v24, "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v8, v17

    move/from16 v25, v9

    .end local v9    # "N":I
    .local v25, "N":I
    move-object/from16 v9, v16

    move-object/from16 v26, v10

    .end local v10    # "packages":[Ljava/lang/String;
    .local v26, "packages":[Ljava/lang/String;
    move-object v10, v11

    move-object/from16 v27, v11

    .end local v11    # "iconCache":Lcom/android/launcher3/icons/IconCache;
    .local v27, "iconCache":Lcom/android/launcher3/icons/IconCache;
    move-object/from16 v11, v18

    move-object/from16 v28, v12

    .end local v12    # "context":Landroid/content/Context;
    .local v28, "context":Landroid/content/Context;
    move-object/from16 v12, v22

    :try_start_3
    invoke-direct/range {v1 .. v12}, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/model/PackageUpdatedTask;Ljava/util/function/Predicate;Lcom/android/launcher3/util/IntSet;ZLandroid/content/Context;Lcom/android/launcher3/util/IntSet;Ljava/util/HashSet;Ljava/util/HashMap;Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/util/FlagOp;Ljava/util/ArrayList;)V

    invoke-virtual {v14, v15, v0}, Lcom/android/launcher3/model/BgDataModel;->forAllWorkspaceItemInfos(Landroid/os/UserHandle;Ljava/util/function/Consumer;)V

    .line 315
    iget-object v0, v14, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    if-eqz v1, :cond_13

    :try_start_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 316
    .local v1, "widgetInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    iget-object v2, v13, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    iget-object v3, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 317
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 319
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object/from16 v6, v24

    .end local v24    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v6, "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :try_start_5
    invoke-virtual {v6, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 320
    iget v3, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v3, v3, -0xb

    iput v3, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    .line 327
    iget v3, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 329
    move-object/from16 v3, v20

    .end local v20    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .local v3, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    :try_start_6
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/PackageUpdatedTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_f

    .line 333
    .end local v1    # "widgetInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    :catchall_2
    move-exception v0

    move-object/from16 v11, p1

    move-object/from16 v10, v17

    move-object/from16 v1, v22

    move/from16 v9, v25

    move-object/from16 v8, v26

    move-object/from16 v2, v28

    goto/16 :goto_17

    .line 319
    .end local v3    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .restart local v1    # "widgetInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .restart local v20    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    :cond_10
    move-object/from16 v3, v20

    .end local v20    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .restart local v3    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    goto :goto_f

    .line 333
    .end local v1    # "widgetInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .end local v3    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .restart local v20    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    :catchall_3
    move-exception v0

    move-object/from16 v3, v20

    move-object/from16 v11, p1

    move-object/from16 v10, v17

    move-object/from16 v1, v22

    move/from16 v9, v25

    move-object/from16 v8, v26

    move-object/from16 v2, v28

    .end local v20    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .restart local v3    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    goto/16 :goto_17

    .line 317
    .end local v3    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .end local v6    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v1    # "widgetInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .restart local v20    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .restart local v24    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_11
    move-object/from16 v3, v20

    move-object/from16 v6, v24

    .end local v20    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .end local v24    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v3    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .restart local v6    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_f

    .line 316
    .end local v3    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .end local v6    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v20    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .restart local v24    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_12
    move-object/from16 v3, v20

    move-object/from16 v6, v24

    const/4 v2, 0x2

    .line 332
    .end local v1    # "widgetInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .end local v20    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .end local v24    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v3    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .restart local v6    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_f
    move-object/from16 v20, v3

    move-object/from16 v24, v6

    goto :goto_e

    .line 333
    .end local v3    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .end local v6    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v20    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .restart local v24    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_4
    move-exception v0

    move-object/from16 v3, v20

    move-object/from16 v6, v24

    move-object/from16 v11, p1

    move-object/from16 v10, v17

    move-object/from16 v1, v22

    move/from16 v9, v25

    move-object/from16 v8, v26

    move-object/from16 v2, v28

    .end local v20    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .end local v24    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v3    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .restart local v6    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto/16 :goto_17

    .end local v3    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .end local v6    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v20    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .restart local v24    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_13
    move-object/from16 v3, v20

    move-object/from16 v6, v24

    const/4 v2, 0x2

    .end local v20    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .end local v24    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v3    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .restart local v6    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :try_start_7
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 335
    move-object/from16 v1, v22

    .end local v22    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .local v1, "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    invoke-virtual {v13, v1}, Lcom/android/launcher3/model/PackageUpdatedTask;->bindUpdatedWorkspaceItems(Ljava/util/List;)V

    .line 336
    invoke-virtual {v7}, Lcom/android/launcher3/util/IntSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 337
    nop

    .line 338
    invoke-static {v7}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofItemIds(Lcom/android/launcher3/util/IntSet;)Ljava/util/function/Predicate;

    move-result-object v0

    const-string v8, "removed because the target component is invalid"

    .line 337
    invoke-virtual {v13, v0, v8}, Lcom/android/launcher3/model/PackageUpdatedTask;->deleteAndBindComponentsRemoved(Ljava/util/function/Predicate;Ljava/lang/String;)V

    .line 342
    :cond_14
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 343
    new-instance v0, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda2;

    invoke-direct {v0, v3}, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda2;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v13, v0}, Lcom/android/launcher3/model/PackageUpdatedTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 347
    .end local v1    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .end local v3    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .end local v5    # "isNewApkAvailable":Z
    :cond_15
    :goto_10
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 348
    .local v0, "removedPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget v1, v13, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_16

    .line 350
    move-object/from16 v8, v26

    .end local v26    # "packages":[Ljava/lang/String;
    .local v8, "packages":[Ljava/lang/String;
    invoke-static {v0, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move/from16 v9, v25

    move-object/from16 v2, v28

    goto :goto_12

    .line 354
    .end local v8    # "packages":[Ljava/lang/String;
    .restart local v26    # "packages":[Ljava/lang/String;
    :cond_16
    move-object/from16 v8, v26

    .end local v26    # "packages":[Ljava/lang/String;
    .restart local v8    # "packages":[Ljava/lang/String;
    if-ne v1, v2, :cond_18

    .line 356
    const-class v1, Landroid/content/pm/LauncherApps;

    move-object/from16 v2, v28

    .end local v28    # "context":Landroid/content/Context;
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps;

    .line 357
    .local v1, "launcherApps":Landroid/content/pm/LauncherApps;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    move/from16 v9, v25

    .end local v25    # "N":I
    .restart local v9    # "N":I
    if-ge v3, v9, :cond_19

    .line 358
    aget-object v5, v8, v3

    iget-object v10, v13, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1, v5, v10}, Landroid/content/pm/LauncherApps;->isPackageEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 359
    aget-object v5, v8, v3

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 357
    :cond_17
    add-int/lit8 v3, v3, 0x1

    move/from16 v25, v9

    goto :goto_11

    .line 354
    .end local v1    # "launcherApps":Landroid/content/pm/LauncherApps;
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "i":I
    .end local v9    # "N":I
    .restart local v25    # "N":I
    .restart local v28    # "context":Landroid/content/Context;
    :cond_18
    move/from16 v9, v25

    move-object/from16 v2, v28

    .line 364
    .end local v25    # "N":I
    .end local v28    # "context":Landroid/content/Context;
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v9    # "N":I
    :cond_19
    :goto_12
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_13

    :cond_1a
    move-object/from16 v10, v17

    goto/16 :goto_14

    .line 367
    :cond_1b
    :goto_13
    iget-object v1, v13, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    .line 368
    invoke-static {v0, v1}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofPackages(Ljava/util/Set;Landroid/os/UserHandle;)Ljava/util/function/Predicate;

    move-result-object v1

    iget-object v3, v13, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    .line 369
    move-object/from16 v10, v17

    .end local v17    # "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .local v10, "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    invoke-static {v10, v3}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofComponents(Ljava/util/HashSet;Landroid/os/UserHandle;)Ljava/util/function/Predicate;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/function/Predicate;->or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v1

    .line 370
    invoke-static {v4}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofItemIds(Lcom/android/launcher3/util/IntSet;)Ljava/util/function/Predicate;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/function/Predicate;->negate()Ljava/util/function/Predicate;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/function/Predicate;->and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v1

    .line 373
    .local v1, "removeAppMatch":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    nop

    .line 374
    invoke-static {v1}, Lcom/android/launcher3/util/ItemInfoMatcher;->forAppPairMatch(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v3

    .line 375
    .local v3, "removeAppPairMatch":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-interface {v1, v3}, Ljava/util/function/Predicate;->or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v5

    .line 376
    .local v5, "removeMatch":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "removed because the corresponding package or component is removed. mOp="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v13, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " removedPackages="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 378
    invoke-virtual {v0}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v12

    const-string v15, ","

    move-object/from16 v17, v1

    .end local v1    # "removeAppMatch":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .local v17, "removeAppMatch":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    const-string v1, "["

    move-object/from16 v19, v3

    .end local v3    # "removeAppPairMatch":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .local v19, "removeAppPairMatch":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    const-string v3, "]"

    .line 379
    invoke-static {v15, v1, v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    .line 378
    invoke-interface {v12, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " removedComponents="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 380
    invoke-virtual {v10}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v11, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda3;

    invoke-direct {v11}, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda3;-><init>()V

    .line 381
    invoke-interface {v3, v11}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v11, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda4;

    invoke-direct {v11}, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v3, v11}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    const-string v11, ","

    const-string v12, "["

    const-string v15, "]"

    .line 382
    invoke-static {v11, v12, v15}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 376
    invoke-virtual {v13, v5, v1}, Lcom/android/launcher3/model/PackageUpdatedTask;->deleteAndBindComponentsRemoved(Ljava/util/function/Predicate;Ljava/lang/String;)V

    .line 385
    sget-object v1, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/ItemInstallQueue;

    iget-object v3, v13, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    .line 386
    invoke-virtual {v1, v0, v3}, Lcom/android/launcher3/model/ItemInstallQueue;->removeFromInstallQueue(Ljava/util/HashSet;Landroid/os/UserHandle;)V

    .line 389
    .end local v5    # "removeMatch":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .end local v17    # "removeAppMatch":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .end local v19    # "removeAppPairMatch":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    :goto_14
    iget v1, v13, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1d

    .line 392
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    if-ge v1, v9, :cond_1c

    .line 393
    iget-object v3, v14, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    new-instance v5, Lcom/android/launcher3/util/PackageUserKey;

    aget-object v11, v8, v1

    iget-object v12, v13, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-direct {v5, v11, v12}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    move-object/from16 v11, p1

    invoke-virtual {v3, v11, v5}, Lcom/android/launcher3/model/WidgetsModel;->update(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    .line 392
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_1c
    move-object/from16 v11, p1

    .line 395
    .end local v1    # "i":I
    invoke-virtual {v13, v14}, Lcom/android/launcher3/model/PackageUpdatedTask;->bindUpdatedWidgets(Lcom/android/launcher3/model/BgDataModel;)V

    .line 399
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    new-instance v3, Lcom/android/launcher3/model/AllAppsToWorkspaceTask;

    invoke-direct {v3}, Lcom/android/launcher3/model/AllAppsToWorkspaceTask;-><init>()V

    invoke-virtual {v1, v3}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    goto :goto_16

    .line 389
    :cond_1d
    move-object/from16 v11, p1

    .line 402
    :goto_16
    return-void

    .line 333
    .end local v0    # "removedPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v2    # "context":Landroid/content/Context;
    .end local v8    # "packages":[Ljava/lang/String;
    .end local v9    # "N":I
    .end local v10    # "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .local v3, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .local v5, "isNewApkAvailable":Z
    .local v17, "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .restart local v22    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .restart local v25    # "N":I
    .restart local v26    # "packages":[Ljava/lang/String;
    .restart local v28    # "context":Landroid/content/Context;
    :catchall_5
    move-exception v0

    move-object/from16 v11, p1

    move-object/from16 v10, v17

    move-object/from16 v1, v22

    move/from16 v9, v25

    move-object/from16 v8, v26

    move-object/from16 v2, v28

    .end local v17    # "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .end local v22    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .end local v25    # "N":I
    .end local v26    # "packages":[Ljava/lang/String;
    .end local v28    # "context":Landroid/content/Context;
    .local v1, "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v8    # "packages":[Ljava/lang/String;
    .restart local v9    # "N":I
    .restart local v10    # "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    goto :goto_17

    .end local v1    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .end local v6    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v8    # "packages":[Ljava/lang/String;
    .end local v9    # "N":I
    .end local v10    # "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .restart local v17    # "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .restart local v20    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .restart local v22    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .restart local v24    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v25    # "N":I
    .restart local v26    # "packages":[Ljava/lang/String;
    .restart local v28    # "context":Landroid/content/Context;
    :catchall_6
    move-exception v0

    move-object/from16 v11, p1

    move-object/from16 v10, v17

    move-object/from16 v3, v20

    move-object/from16 v1, v22

    move-object/from16 v6, v24

    move/from16 v9, v25

    move-object/from16 v8, v26

    move-object/from16 v2, v28

    .end local v17    # "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .end local v20    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .end local v22    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .end local v24    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v25    # "N":I
    .end local v26    # "packages":[Ljava/lang/String;
    .end local v28    # "context":Landroid/content/Context;
    .restart local v1    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v3    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .restart local v6    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v8    # "packages":[Ljava/lang/String;
    .restart local v9    # "N":I
    .restart local v10    # "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    goto :goto_17

    .end local v1    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .end local v16    # "activitiesLists":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;>;"
    .end local v23    # "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .end local v27    # "iconCache":Lcom/android/launcher3/icons/IconCache;
    .local v2, "activitiesLists":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;>;"
    .local v3, "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .local v6, "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .local v8, "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v10, "packages":[Ljava/lang/String;
    .restart local v11    # "iconCache":Lcom/android/launcher3/icons/IconCache;
    .restart local v12    # "context":Landroid/content/Context;
    .local v17, "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .restart local v20    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    :catchall_7
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v23, v6

    move-object v6, v8

    move-object v8, v10

    move-object/from16 v27, v11

    move-object v2, v12

    move-object/from16 v1, v17

    move-object/from16 v11, p1

    move-object v10, v3

    move-object/from16 v3, v20

    .end local v11    # "iconCache":Lcom/android/launcher3/icons/IconCache;
    .end local v12    # "context":Landroid/content/Context;
    .end local v17    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .end local v20    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .restart local v1    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .local v2, "context":Landroid/content/Context;
    .local v3, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .local v6, "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v8, "packages":[Ljava/lang/String;
    .local v10, "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .restart local v16    # "activitiesLists":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;>;"
    .restart local v23    # "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .restart local v27    # "iconCache":Lcom/android/launcher3/icons/IconCache;
    :goto_17
    :try_start_8
    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw v0

    :catchall_8
    move-exception v0

    goto :goto_17

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
