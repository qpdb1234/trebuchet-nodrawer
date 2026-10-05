.class Lcom/android/launcher3/lineage/trust/TrustAppsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "TrustAppsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$Listener;,
        Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$Callback;,
        Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mHasSecureKeyguard:Z

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/lineage/trust/db/TrustComponent;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$Listener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmList(Lcom/android/launcher3/lineage/trust/TrustAppsAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter;->mList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/android/launcher3/lineage/trust/TrustAppsAdapter;)Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$Listener;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter;->mListener:Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$Listener;

    return-object p0
.end method

.method constructor <init>(Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$Listener;Z)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$Listener;
    .param p2, "hasSecureKeyguard"    # Z

    .line 43
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter;->mList:Ljava/util/List;

    .line 44
    iput-object p1, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter;->mListener:Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$Listener;

    .line 45
    iput-boolean p2, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter;->mHasSecureKeyguard:Z

    .line 46
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 38
    check-cast p1, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter;->onBindViewHolder(Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;I)V
    .locals 2
    .param p1, "viewHolder"    # Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;
    .param p2, "i"    # I

    .line 63
    iget-object v0, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/lineage/trust/db/TrustComponent;

    iget-boolean v1, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter;->mHasSecureKeyguard:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;->bind(Lcom/android/launcher3/lineage/trust/db/TrustComponent;Z)V

    .line 64
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "type"    # I

    .line 57
    new-instance v0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$layout;->item_hidden_app:I

    .line 58
    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$ViewHolder;-><init>(Lcom/android/launcher3/lineage/trust/TrustAppsAdapter;Landroid/view/View;)V

    .line 57
    return-object v0
.end method

.method public update(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/lineage/trust/db/TrustComponent;",
            ">;)V"
        }
    .end annotation

    .line 49
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/lineage/trust/db/TrustComponent;>;"
    new-instance v0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$Callback;

    iget-object v1, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter;->mList:Ljava/util/List;

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter$Callback;-><init>(Ljava/util/List;Ljava/util/List;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v0

    .line 50
    .local v0, "result":Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    iput-object p1, p0, Lcom/android/launcher3/lineage/trust/TrustAppsAdapter;->mList:Ljava/util/List;

    .line 51
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 52
    return-void
.end method
