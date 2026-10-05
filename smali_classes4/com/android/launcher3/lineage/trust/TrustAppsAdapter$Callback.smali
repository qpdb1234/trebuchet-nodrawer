.class Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$Callback;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "TrustAppsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/lineage/trust/TrustAppsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Callback"
.end annotation


# instance fields
.field mNewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/lineage/trust/db/TrustComponent;",
            ">;"
        }
    .end annotation
.end field

.field mOldList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/lineage/trust/db/TrustComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/lineage/trust/db/TrustComponent;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/lineage/trust/db/TrustComponent;",
            ">;)V"
        }
    .end annotation

    .line 169
    .local p1, "oldList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/lineage/trust/db/TrustComponent;>;"
    .local p2, "newList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/lineage/trust/db/TrustComponent;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$Callback;->mOldList:Ljava/util/List;

    .line 171
    iput-object p2, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$Callback;->mNewList:Ljava/util/List;

    .line 172
    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 2
    .param p1, "iOld"    # I
    .param p2, "iNew"    # I

    .line 194
    iget-object v0, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$Callback;->mOldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/lineage/trust/db/TrustComponent;

    iget-object v1, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$Callback;->mNewList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/lineage/trust/db/TrustComponent;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public areItemsTheSame(II)Z
    .locals 3
    .param p1, "iOld"    # I
    .param p2, "iNew"    # I

    .line 187
    iget-object v0, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$Callback;->mOldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/lineage/trust/db/TrustComponent;

    invoke-virtual {v0}, Lcom/android/launcher3/lineage/trust/db/TrustComponent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "oldPkg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$Callback;->mNewList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/lineage/trust/db/TrustComponent;

    invoke-virtual {v1}, Lcom/android/launcher3/lineage/trust/db/TrustComponent;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "newPkg":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public getNewListSize()I
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$Callback;->mNewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$Callback;->mOldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
