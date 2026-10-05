.class public Lcom/android/launcher3/model/ModelWriter;
.super Ljava/lang/Object;
.source "ModelWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;,
        Lcom/android/launcher3/model/ModelWriter$ModelTask;,
        Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;,
        Lcom/android/launcher3/model/ModelWriter$ModelVerifier;,
        Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ModelWriter"


# instance fields
.field private final mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

.field private final mCellPosMapper:Lcom/android/launcher3/celllayout/CellPosMapper;

.field private final mContext:Landroid/content/Context;

.field private final mDeleteRunnables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/ModelWriter$ModelTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mModel:Lcom/android/launcher3/LauncherModel;

.field private final mOwner:Lcom/android/launcher3/model/BgDataModel$Callbacks;

.field private mPreparingToUndo:Z

.field private final mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

.field private final mVerifyChanges:Z


# direct methods
.method public static synthetic $r8$lambda$4LioSIOSWn6CRHMcIJmojqtd3uo(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/LauncherModel$CallbackTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/ModelWriter;->lambda$notifyOtherCallbacks$12(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9kr_xyx1UVRN4y7AqpUz_lZNcVM(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/model/ModelWriter;->lambda$deleteFolderAndContentsFromDatabase$9(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F-EScMlnlw6necQ_8L-bFvaFBXs(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;[Ljava/lang/StackTraceElement;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/model/ModelWriter;->lambda$addItemToDatabase$6(Lcom/android/launcher3/model/data/ItemInfo;[Ljava/lang/StackTraceElement;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G5X_yTLm1XYAa4kaAcC0ShW4ak8(Lcom/android/launcher3/model/ModelWriter;Ljava/util/Collection;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/model/ModelWriter;->lambda$deleteItemsFromDatabase$8(Ljava/util/Collection;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S7o_M_jAUegJIRGrgeqclNCT6TE(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ContentWriter;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/ModelWriter;->lambda$moveItemInDatabase$0(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$j15ebLgAe52HniWvtngjgs7L2p0(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ContentWriter;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/ModelWriter;->lambda$updateItemInDatabase$3(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xs1SPk-exvOGabm1PKgC7JPszq4(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ContentWriter;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/ModelWriter;->lambda$modifyItemInDatabase$2(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBgDataModel(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/model/BgDataModel;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/launcher3/model/ModelWriter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModel(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/LauncherModel;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/ModelWriter;->mModel:Lcom/android/launcher3/LauncherModel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUiExecutor(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/util/LooperExecutor;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/ModelWriter;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVerifyChanges(Lcom/android/launcher3/model/ModelWriter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/model/ModelWriter;->mVerifyChanges:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckItemInfoLocked(Lcom/android/launcher3/model/ModelWriter;ILcom/android/launcher3/model/data/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/model/ModelWriter;->checkItemInfoLocked(ILcom/android/launcher3/model/data/ItemInfo;[Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/BgDataModel;ZLcom/android/launcher3/celllayout/CellPosMapper;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "model"    # Lcom/android/launcher3/LauncherModel;
    .param p3, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p4, "verifyChanges"    # Z
    .param p5, "cellPosMapper"    # Lcom/android/launcher3/celllayout/CellPosMapper;
    .param p6, "owner"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mDeleteRunnables:Ljava/util/List;

    .line 85
    iput-object p1, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/android/launcher3/model/ModelWriter;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 87
    iput-object p3, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    .line 88
    iput-boolean p4, p0, Lcom/android/launcher3/model/ModelWriter;->mVerifyChanges:Z

    .line 89
    iput-object p6, p0, Lcom/android/launcher3/model/ModelWriter;->mOwner:Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 90
    iput-object p5, p0, Lcom/android/launcher3/model/ModelWriter;->mCellPosMapper:Lcom/android/launcher3/celllayout/CellPosMapper;

    .line 91
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iput-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    .line 92
    return-void
.end method

.method private checkItemInfoLocked(ILcom/android/launcher3/model/data/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 4
    .param p1, "itemId"    # I
    .param p2, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "stackTrace"    # [Ljava/lang/StackTraceElement;

    .line 121
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/IntSparseArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    .line 122
    .local v0, "modelItem":Lcom/android/launcher3/model/data/ItemInfo;
    if-eqz v0, :cond_4

    if-eq p2, v0, :cond_4

    .line 124
    instance-of v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v1, :cond_0

    instance-of v1, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-ne v1, v2, :cond_0

    .line 138
    return-void

    .line 145
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "null"

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "modelItem: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 147
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Error: ItemInfo passed to checkItemInfo doesn\'t match original"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 150
    .local v2, "e":Ljava/lang/RuntimeException;
    if-eqz p3, :cond_3

    .line 151
    invoke-virtual {v2, p3}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 153
    :cond_3
    throw v2

    .line 155
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_4
    return-void
.end method

.method private enqueueDeleteRunnable(Lcom/android/launcher3/model/ModelWriter$ModelTask;)V
    .locals 1
    .param p1, "r"    # Lcom/android/launcher3/model/ModelWriter$ModelTask;

    .line 362
    iget-boolean v0, p0, Lcom/android/launcher3/model/ModelWriter;->mPreparingToUndo:Z

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mDeleteRunnables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 365
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/model/ModelWriter$ModelTask;->executeOnModelThread()V

    .line 367
    :goto_0
    return-void
.end method

.method static synthetic lambda$addItemToDatabase$5(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 2
    .param p0, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p1, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 245
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindItems(Ljava/util/List;Z)V

    return-void
.end method

.method private synthetic lambda$addItemToDatabase$6(Lcom/android/launcher3/model/data/ItemInfo;[Ljava/lang/StackTraceElement;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V
    .locals 5
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "stackTrace"    # [Ljava/lang/StackTraceElement;
    .param p3, "verifier"    # Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    .line 252
    new-instance v0, Lcom/android/launcher3/util/ContentWriter;

    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;)V

    .line 253
    .local v0, "writer":Lcom/android/launcher3/util/ContentWriter;
    invoke-virtual {p1, v0}, Lcom/android/launcher3/model/data/ItemInfo;->onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V

    .line 254
    const-string v1, "_id"

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    .line 256
    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lcom/android/launcher3/model/ModelDbController;

    move-result-object v1

    const-string v2, "favorites"

    iget-object v3, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/ContentWriter;->getValues(Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/model/ModelDbController;->insert(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 257
    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v1

    .line 258
    :try_start_0
    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-direct {p0, v2, p1, p2}, Lcom/android/launcher3/model/ModelWriter;->checkItemInfoLocked(ILcom/android/launcher3/model/data/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 259
    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p1, v4}, Lcom/android/launcher3/model/BgDataModel;->addItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Z)V

    .line 260
    invoke-virtual {p3}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->verifyModel()V

    .line 261
    monitor-exit v1

    .line 262
    return-void

    .line 261
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private synthetic lambda$deleteFolderAndContentsFromDatabase$9(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V
    .locals 5
    .param p1, "info"    # Lcom/android/launcher3/model/data/FolderInfo;
    .param p2, "verifier"    # Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    .line 310
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lcom/android/launcher3/model/ModelDbController;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/launcher3/model/data/FolderInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "favorites"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/launcher3/model/ModelDbController;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 312
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    iget-object v4, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;Ljava/lang/Iterable;)V

    .line 313
    iget-object v0, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 315
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lcom/android/launcher3/model/ModelDbController;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p1, Lcom/android/launcher3/model/data/FolderInfo;->id:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/launcher3/model/ModelDbController;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 318
    invoke-virtual {p2}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->verifyModel()V

    .line 319
    return-void
.end method

.method static synthetic lambda$deleteItemsFromDatabase$7(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 288
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 288
    :goto_0
    return-object v0
.end method

.method private synthetic lambda$deleteItemsFromDatabase$8(Ljava/util/Collection;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V
    .locals 6
    .param p1, "items"    # Ljava/util/Collection;
    .param p2, "verifier"    # Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    .line 294
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    .line 295
    .local v1, "item":Lcom/android/launcher3/model/data/ItemInfo;
    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lcom/android/launcher3/model/ModelDbController;

    move-result-object v2

    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {v3}, Lcom/android/launcher3/provider/LauncherDbUtils;->itemIdMatch(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "favorites"

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/launcher3/model/ModelDbController;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 296
    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 297
    invoke-virtual {p2}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->verifyModel()V

    .line 298
    .end local v1    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    goto :goto_0

    .line 299
    :cond_0
    return-void
.end method

.method static synthetic lambda$deleteWidgetInfo$10(Lcom/android/launcher3/widget/LauncherWidgetHolder;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .locals 1
    .param p0, "holder"    # Lcom/android/launcher3/widget/LauncherWidgetHolder;
    .param p1, "info"    # Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 331
    iget v0, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->deleteAppWidgetId(I)V

    return-void
.end method

.method private synthetic lambda$modifyItemInDatabase$2(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ContentWriter;
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 209
    new-instance v0, Lcom/android/launcher3/util/ContentWriter;

    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;)V

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    .line 210
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "container"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    .line 211
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cellX"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    .line 212
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cellY"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    .line 213
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rank"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    .line 214
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "spanX"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    .line 215
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "spanY"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    .line 216
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "screen"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    .line 209
    return-object v0
.end method

.method private synthetic lambda$moveItemInDatabase$0(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ContentWriter;
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 166
    new-instance v0, Lcom/android/launcher3/util/ContentWriter;

    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;)V

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    .line 167
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "container"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    .line 168
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cellX"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    .line 169
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cellY"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    .line 170
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rank"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    .line 171
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "screen"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    .line 166
    return-object v0
.end method

.method static synthetic lambda$moveItemsInDatabase$1(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0
    .param p0, "items"    # Ljava/util/ArrayList;
    .param p1, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 181
    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindItemsModified(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$notifyDelete$11(Ljava/util/Collection;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 1
    .param p0, "items"    # Ljava/util/Collection;
    .param p1, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 337
    invoke-static {p0}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofItems(Ljava/util/Collection;)Ljava/util/function/Predicate;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindWorkspaceComponentsRemoved(Ljava/util/function/Predicate;)V

    return-void
.end method

.method static synthetic lambda$notifyItemModified$4(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 1
    .param p0, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p1, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 233
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindItemsModified(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$notifyOtherCallbacks$12(Lcom/android/launcher3/LauncherModel$CallbackTask;)V
    .locals 5
    .param p1, "task"    # Lcom/android/launcher3/LauncherModel$CallbackTask;

    .line 392
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getCallbacks()[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 393
    .local v3, "c":Lcom/android/launcher3/model/BgDataModel$Callbacks;
    iget-object v4, p0, Lcom/android/launcher3/model/ModelWriter;->mOwner:Lcom/android/launcher3/model/BgDataModel$Callbacks;

    if-eq v3, v4, :cond_0

    .line 394
    invoke-interface {p1, v3}, Lcom/android/launcher3/LauncherModel$CallbackTask;->execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    .line 392
    .end local v3    # "c":Lcom/android/launcher3/model/BgDataModel$Callbacks;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 397
    :cond_1
    return-void
.end method

.method private synthetic lambda$updateItemInDatabase$3(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ContentWriter;
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 226
    new-instance v0, Lcom/android/launcher3/util/ContentWriter;

    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;)V

    .line 227
    .local v0, "writer":Lcom/android/launcher3/util/ContentWriter;
    invoke-virtual {p1, v0}, Lcom/android/launcher3/model/data/ItemInfo;->onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V

    .line 228
    return-object v0
.end method

.method private newModelTask(Ljava/lang/Runnable;)Lcom/android/launcher3/model/ModelWriter$ModelTask;
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 519
    new-instance v0, Lcom/android/launcher3/model/ModelWriter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/model/ModelWriter$1;-><init>(Lcom/android/launcher3/model/ModelWriter;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private notifyDelete(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 337
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v0, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda5;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/ModelWriter;->notifyOtherCallbacks(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 338
    return-void
.end method

.method private notifyItemModified(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 233
    new-instance v0, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda7;-><init>(Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/ModelWriter;->notifyOtherCallbacks(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 234
    return-void
.end method

.method private notifyOtherCallbacks(Lcom/android/launcher3/LauncherModel$CallbackTask;)V
    .locals 2
    .param p1, "task"    # Lcom/android/launcher3/LauncherModel$CallbackTask;

    .line 387
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mOwner:Lcom/android/launcher3/model/BgDataModel$Callbacks;

    if-nez v0, :cond_0

    .line 389
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda10;-><init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 398
    return-void
.end method

.method private updateItemInfoProps(Lcom/android/launcher3/model/data/ItemInfo;IIII)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "container"    # I
    .param p3, "screenId"    # I
    .param p4, "cellX"    # I
    .param p5, "cellY"    # I

    .line 96
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mCellPosMapper:Lcom/android/launcher3/celllayout/CellPosMapper;

    invoke-virtual {v0, p4, p5, p3, p2}, Lcom/android/launcher3/celllayout/CellPosMapper;->mapPresenterToModel(IIII)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    move-result-object v0

    .line 98
    .local v0, "modelPos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    iput p2, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    .line 99
    iget v1, v0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellX:I

    iput v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    .line 100
    iget v1, v0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellY:I

    iput v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    .line 101
    iget v1, v0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    iput v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    .line 103
    return-void
.end method


# virtual methods
.method public abortDelete()V
    .locals 1

    .line 379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/model/ModelWriter;->mPreparingToUndo:Z

    .line 380
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mDeleteRunnables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 383
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    .line 384
    return-void
.end method

.method public addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "container"    # I
    .param p3, "screenId"    # I
    .param p4, "cellX"    # I
    .param p5, "cellY"    # I

    .line 242
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/model/ModelWriter;->updateItemInfoProps(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 244
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lcom/android/launcher3/model/ModelDbController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/model/ModelDbController;->generateNewItemId()I

    move-result v0

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    .line 245
    new-instance v0, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda11;-><init>(Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/ModelWriter;->notifyOtherCallbacks(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 247
    new-instance v0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;-><init>(Lcom/android/launcher3/model/ModelWriter;)V

    .line 248
    .local v0, "verifier":Lcom/android/launcher3/model/ModelWriter$ModelVerifier;
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 249
    .local v1, "stackTrace":[Ljava/lang/StackTraceElement;
    new-instance v2, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda12;-><init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;[Ljava/lang/StackTraceElement;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V

    invoke-direct {p0, v2}, Lcom/android/launcher3/model/ModelWriter;->newModelTask(Ljava/lang/Runnable;)Lcom/android/launcher3/model/ModelWriter$ModelTask;

    move-result-object v2

    .line 262
    invoke-virtual {v2}, Lcom/android/launcher3/model/ModelWriter$ModelTask;->executeOnModelThread()V

    .line 263
    return-void
.end method

.method public addOrMoveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "container"    # I
    .param p3, "screenId"    # I
    .param p4, "cellX"    # I
    .param p5, "cellY"    # I

    .line 111
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 113
    invoke-virtual/range {p0 .. p5}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/launcher3/model/ModelWriter;->moveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 118
    :goto_0
    return-void
.end method

.method public commitDelete()V
    .locals 2

    .line 370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/model/ModelWriter;->mPreparingToUndo:Z

    .line 371
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mDeleteRunnables:Ljava/util/List;

    new-instance v1, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 372
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mDeleteRunnables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 373
    return-void
.end method

.method public deleteFolderAndContentsFromDatabase(Lcom/android/launcher3/model/data/FolderInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/FolderInfo;

    .line 306
    new-instance v0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;-><init>(Lcom/android/launcher3/model/ModelWriter;)V

    .line 307
    .local v0, "verifier":Lcom/android/launcher3/model/ModelWriter$ModelVerifier;
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/model/ModelWriter;->notifyDelete(Ljava/util/Collection;)V

    .line 309
    new-instance v1, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda13;-><init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V

    invoke-direct {p0, v1}, Lcom/android/launcher3/model/ModelWriter;->newModelTask(Ljava/lang/Runnable;)Lcom/android/launcher3/model/ModelWriter$ModelTask;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/model/ModelWriter;->enqueueDeleteRunnable(Lcom/android/launcher3/model/ModelWriter$ModelTask;)V

    .line 320
    return-void
.end method

.method public deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "reason"    # Ljava/lang/String;

    .line 269
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/model/ModelWriter;->deleteItemsFromDatabase(Ljava/util/Collection;Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public deleteItemsFromDatabase(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 4
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 286
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;-><init>(Lcom/android/launcher3/model/ModelWriter;)V

    .line 287
    .local v0, "verifier":Lcom/android/launcher3/model/ModelWriter$ModelVerifier;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removing items from db "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 290
    const-string v3, ","

    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    .line 289
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Reason: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 291
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "unknown"

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 287
    const-string v2, "ModelWriter"

    invoke-static {v2, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-direct {p0, p1}, Lcom/android/launcher3/model/ModelWriter;->notifyDelete(Ljava/util/Collection;)V

    .line 293
    new-instance v1, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/model/ModelWriter;Ljava/util/Collection;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V

    invoke-direct {p0, v1}, Lcom/android/launcher3/model/ModelWriter;->newModelTask(Ljava/lang/Runnable;)Lcom/android/launcher3/model/ModelWriter$ModelTask;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/model/ModelWriter;->enqueueDeleteRunnable(Lcom/android/launcher3/model/ModelWriter$ModelTask;)V

    .line 300
    return-void
.end method

.method public deleteItemsFromDatabase(Ljava/util/function/Predicate;Ljava/lang/String;)V
    .locals 2
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 277
    .local p1, "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSparseArrayMap;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    .line 278
    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 277
    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/model/ModelWriter;->deleteItemsFromDatabase(Ljava/util/Collection;Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public deleteWidgetInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/widget/LauncherWidgetHolder;Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .param p2, "holder"    # Lcom/android/launcher3/widget/LauncherWidgetHolder;
    .param p3, "reason"    # Ljava/lang/String;

    .line 327
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/ModelWriter;->notifyDelete(Ljava/util/Collection;)V

    .line 328
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->isCustomWidget()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->isWidgetIdAllocated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    new-instance v0, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2, p1}, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/widget/LauncherWidgetHolder;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/ModelWriter;->newModelTask(Ljava/lang/Runnable;)Lcom/android/launcher3/model/ModelWriter$ModelTask;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/ModelWriter;->enqueueDeleteRunnable(Lcom/android/launcher3/model/ModelWriter$ModelTask;)V

    .line 333
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public modifyItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIIIII)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "container"    # I
    .param p3, "screenId"    # I
    .param p4, "cellX"    # I
    .param p5, "cellY"    # I
    .param p6, "spanX"    # I
    .param p7, "spanY"    # I

    .line 204
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/model/ModelWriter;->updateItemInfoProps(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 205
    iput p6, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    .line 206
    iput p7, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    .line 207
    invoke-direct {p0, p1}, Lcom/android/launcher3/model/ModelWriter;->notifyItemModified(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 208
    new-instance v0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;

    new-instance v1, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda6;-><init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;-><init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/function/Supplier;)V

    .line 217
    invoke-virtual {v0}, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->executeOnModelThread()V

    .line 218
    return-void
.end method

.method public moveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "container"    # I
    .param p3, "screenId"    # I
    .param p4, "cellX"    # I
    .param p5, "cellY"    # I

    .line 162
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/model/ModelWriter;->updateItemInfoProps(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 163
    invoke-direct {p0, p1}, Lcom/android/launcher3/model/ModelWriter;->notifyItemModified(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 165
    new-instance v0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;

    new-instance v1, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda9;-><init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;-><init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/function/Supplier;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/ModelWriter;->enqueueDeleteRunnable(Lcom/android/launcher3/model/ModelWriter$ModelTask;)V

    .line 172
    return-void
.end method

.method public moveItemsInDatabase(Ljava/util/ArrayList;II)V
    .locals 10
    .param p2, "container"    # I
    .param p3, "screen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;II)V"
        }
    .end annotation

    .line 179
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v0, "contentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 181
    .local v1, "count":I
    new-instance v2, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1}, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda4;-><init>(Ljava/util/ArrayList;)V

    invoke-direct {p0, v2}, Lcom/android/launcher3/model/ModelWriter;->notifyOtherCallbacks(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 183
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 184
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    .line 185
    .local v3, "item":Lcom/android/launcher3/model/data/ItemInfo;
    iget v8, v3, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v9, v3, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    move-object v4, p0

    move-object v5, v3

    move v6, p2

    move v7, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/model/ModelWriter;->updateItemInfoProps(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 187
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 188
    .local v4, "values":Landroid/content/ContentValues;
    iget v5, v3, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "container"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 189
    iget v5, v3, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "cellX"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 190
    iget v5, v3, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "cellY"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    iget v5, v3, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "rank"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 192
    iget v5, v3, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "screen"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 194
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .end local v3    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v4    # "values":Landroid/content/ContentValues;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;-><init>(Lcom/android/launcher3/model/ModelWriter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {p0, v2}, Lcom/android/launcher3/model/ModelWriter;->enqueueDeleteRunnable(Lcom/android/launcher3/model/ModelWriter$ModelTask;)V

    .line 197
    return-void
.end method

.method public prepareToUndoDelete()V
    .locals 1

    .line 347
    iget-boolean v0, p0, Lcom/android/launcher3/model/ModelWriter;->mPreparingToUndo:Z

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mDeleteRunnables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 351
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mDeleteRunnables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/model/ModelWriter;->mPreparingToUndo:Z

    .line 354
    :cond_0
    return-void
.end method

.method public updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 224
    invoke-direct {p0, p1}, Lcom/android/launcher3/model/ModelWriter;->notifyItemModified(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 225
    new-instance v0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;

    new-instance v1, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda8;-><init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;-><init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/function/Supplier;)V

    .line 229
    invoke-virtual {v0}, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->executeOnModelThread()V

    .line 230
    return-void
.end method
