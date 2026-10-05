.class public Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;
.super Ljava/lang/Object;
.source "AllAppsSearchUiDelegate.java"


# instance fields
.field protected final mActivityContext:Lcom/android/launcher3/views/ActivityContext;

.field protected final mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "*>;)V"
        }
    .end annotation

    .line 37
    .local p1, "appsView":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    .line 39
    invoke-virtual {p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    iput-object v0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    .line 40
    return-void
.end method


# virtual methods
.method public createMainAdapterProvider()Lcom/android/launcher3/allapps/search/SearchAdapterProvider;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/allapps/search/SearchAdapterProvider<",
            "*>;"
        }
    .end annotation

    .line 84
    new-instance v0, Lcom/android/launcher3/allapps/search/DefaultSearchAdapterProvider;

    iget-object v1, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/search/DefaultSearchAdapterProvider;-><init>(Lcom/android/launcher3/views/ActivityContext;)V

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public inflateSearchBar()Landroid/view/View;
    .locals 4

    .line 74
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$layout;->search_container_all_apps:I

    iget-object v2, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchUiDelegate;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isSearchBarFloating()Z
    .locals 1

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimateToSearchStateCompleted()V
    .locals 0

    .line 55
    return-void
.end method

.method public onDestroySearchBar()V
    .locals 0

    .line 65
    return-void
.end method

.method public onInitializeRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1, "rv"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 45
    return-void
.end method

.method public onInitializeSearchBar()V
    .locals 0

    .line 60
    return-void
.end method

.method public onSearchResultsChanged(Ljava/util/List;I)V
    .locals 0
    .param p2, "searchResultCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;I)V"
        }
    .end annotation

    .line 50
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;>;"
    return-void
.end method
