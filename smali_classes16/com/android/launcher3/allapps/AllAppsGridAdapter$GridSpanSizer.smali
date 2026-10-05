.class public Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "AllAppsGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/AllAppsGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GridSpanSizer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    .line 199
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;, "Lcom/android/launcher3/allapps/AllAppsGridAdapter<TT;>.GridSpanSizer;"
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    .line 200
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    .line 201
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;->setSpanIndexCacheEnabled(Z)V

    .line 202
    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 5
    .param p1, "position"    # I

    .line 206
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;, "Lcom/android/launcher3/allapps/AllAppsGridAdapter<TT;>.GridSpanSizer;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->-$$Nest$fgetmGridLayoutMgr(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->getSpanCount()I

    move-result v0

    .line 207
    .local v0, "totalSpans":I
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v1, v1, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v1

    .line 208
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_0

    .line 209
    return v0

    .line 211
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    iget v2, v2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    .line 212
    .local v2, "viewType":I
    invoke-static {v2}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->isIconViewType(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 213
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget v3, v3, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mAppsPerRow:I

    div-int v3, v0, v3

    return v3

    .line 215
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v3, v3, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mAdapterProvider:Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/allapps/search/SearchAdapterProvider;->isViewSupported(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 216
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v3, v3, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mAdapterProvider:Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget v4, v4, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mAppsPerRow:I

    invoke-virtual {v3, v2, v4}, Lcom/android/launcher3/allapps/search/SearchAdapterProvider;->getItemsPerRow(II)I

    move-result v3

    div-int v3, v0, v3

    return v3

    .line 220
    :cond_2
    return v0
.end method
