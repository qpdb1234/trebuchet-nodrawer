.class public Lcom/android/launcher3/PendingAddItemInfo;
.super Lcom/android/launcher3/model/data/ItemInfoWithIcon;
.source "PendingAddItemInfo.java"


# instance fields
.field public componentName:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/PendingAddItemInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/PendingAddItemInfo;

    .line 42
    invoke-direct {p0, p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;-><init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    .line 43
    iget-object v0, p1, Lcom/android/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    .line 44
    return-void
.end method


# virtual methods
.method public clone()Lcom/android/launcher3/PendingAddItemInfo;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/android/launcher3/PendingAddItemInfo;->makeShallowCopy()Lcom/android/launcher3/PendingAddItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/android/launcher3/PendingAddItemInfo;->clone()Lcom/android/launcher3/PendingAddItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lcom/android/launcher3/PendingAddItemInfo;->clone()Lcom/android/launcher3/PendingAddItemInfo;

    move-result-object v0

    return-object v0
.end method

.method protected dumpProperties()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->dumpProperties()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " componentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTargetComponent()Landroid/content/ComponentName;
    .locals 2

    .line 71
    invoke-super {p0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    return-object v0
.end method

.method public makeShallowCopy()Lcom/android/launcher3/PendingAddItemInfo;
    .locals 2

    .line 57
    new-instance v0, Lcom/android/launcher3/PendingAddItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/PendingAddItemInfo;-><init>()V

    .line 58
    .local v0, "itemInfo":Lcom/android/launcher3/PendingAddItemInfo;
    invoke-virtual {v0, p0}, Lcom/android/launcher3/PendingAddItemInfo;->copyFrom(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 59
    iget-object v1, p0, Lcom/android/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    iput-object v1, v0, Lcom/android/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    .line 60
    return-object v0
.end method

.method public bridge synthetic makeShallowCopy()Lcom/android/launcher3/model/data/ItemInfo;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/android/launcher3/PendingAddItemInfo;->makeShallowCopy()Lcom/android/launcher3/PendingAddItemInfo;

    move-result-object v0

    return-object v0
.end method
