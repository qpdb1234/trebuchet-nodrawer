.class public abstract Lcom/android/launcher3/allapps/search/SearchAdapterProvider;
.super Ljava/lang/Object;
.source "SearchAdapterProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final mLauncher:Lcom/android/launcher3/views/ActivityContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/views/ActivityContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 37
    .local p0, "this":Lcom/android/launcher3/allapps/search/SearchAdapterProvider;, "Lcom/android/launcher3/allapps/search/SearchAdapterProvider<TT;>;"
    .local p1, "launcher":Lcom/android/launcher3/views/ActivityContext;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/launcher3/allapps/search/SearchAdapterProvider;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    .line 39
    return-void
.end method


# virtual methods
.method public abstract clearHighlightedItem()V
.end method

.method public abstract getDecorator()Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.end method

.method public abstract getHighlightedItem()Landroid/view/View;
.end method

.method public getItemsPerRow(II)I
    .locals 0
    .param p1, "viewType"    # I
    .param p2, "appsPerRow"    # I

    .line 89
    .local p0, "this":Lcom/android/launcher3/allapps/search/SearchAdapterProvider;, "Lcom/android/launcher3/allapps/search/SearchAdapterProvider<TT;>;"
    return p2
.end method

.method public getSupportedItemsPerRowArray()[I
    .locals 1

    .line 82
    .local p0, "this":Lcom/android/launcher3/allapps/search/SearchAdapterProvider;, "Lcom/android/launcher3/allapps/search/SearchAdapterProvider<TT;>;"
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public abstract isViewSupported(I)Z
.end method

.method public abstract launchHighlightedItem()Z
.end method

.method public abstract onBindView(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;I)V
.end method

.method public abstract onCreateViewHolder(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;
.end method
