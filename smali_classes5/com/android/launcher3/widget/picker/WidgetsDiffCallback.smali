.class public Lcom/android/launcher3/widget/picker/WidgetsDiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "WidgetsDiffCallback.java"


# instance fields
.field private final mNewEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mOldEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
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
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;)V"
        }
    .end annotation

    .line 35
    .local p1, "oldEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;>;"
    .local p2, "newEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsDiffCallback;->mOldEntries:Ljava/util/List;

    .line 37
    iput-object p2, p0, Lcom/android/launcher3/widget/picker/WidgetsDiffCallback;->mNewEntries:Ljava/util/List;

    .line 38
    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 1
    .param p1, "oldItemPosition"    # I
    .param p2, "newItemPosition"    # I

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public areItemsTheSame(II)Z
    .locals 4
    .param p1, "oldItemPosition"    # I
    .param p2, "newItemPosition"    # I

    .line 53
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsDiffCallback;->mOldEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    .line 54
    .local v0, "oldItem":Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsDiffCallback;->mNewEntries:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    .line 55
    .local v1, "newItem":Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v3, v1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    .line 56
    invoke-virtual {v2, v3}, Lcom/android/launcher3/model/data/PackageItemInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 55
    :goto_0
    return v2
.end method

.method public getNewListSize()I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsDiffCallback;->mNewEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsDiffCallback;->mOldEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
