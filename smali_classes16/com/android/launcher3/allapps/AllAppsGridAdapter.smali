.class public Lcom/android/launcher3/allapps/AllAppsGridAdapter;
.super Lcom/android/launcher3/allapps/BaseAllAppsAdapter;
.source "AllAppsGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;,
        Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;,
        Lcom/android/launcher3/allapps/AllAppsGridAdapter$OnLayoutCompletedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AppsGridAdapter"


# instance fields
.field private final mGridLayoutMgr:Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/AllAppsGridAdapter<",
            "TT;>.AppsGrid",
            "LayoutManager;"
        }
    .end annotation
.end field

.field private final mOnLayoutCompletedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/launcher3/allapps/AllAppsGridAdapter$OnLayoutCompletedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmGridLayoutMgr(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnLayoutCompletedListeners(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mOnLayoutCompletedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/launcher3/allapps/AlphabeticalAppsList;Lcom/android/launcher3/allapps/search/SearchAdapterProvider;Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;)V
    .locals 2
    .param p2, "inflater"    # Landroid/view/LayoutInflater;
    .param p3, "apps"    # Lcom/android/launcher3/allapps/AlphabeticalAppsList;
    .param p5, "privateSpaceHeaderViewController"    # Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/LayoutInflater;",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList;",
            "Lcom/android/launcher3/allapps/search/SearchAdapterProvider<",
            "*>;",
            "Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;",
            ")V"
        }
    .end annotation

    .line 78
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsGridAdapter;, "Lcom/android/launcher3/allapps/AllAppsGridAdapter<TT;>;"
    .local p1, "activityContext":Landroid/content/Context;, "TT;"
    .local p4, "adapterProvider":Lcom/android/launcher3/allapps/search/SearchAdapterProvider;, "Lcom/android/launcher3/allapps/search/SearchAdapterProvider<*>;"
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/launcher3/allapps/AlphabeticalAppsList;Lcom/android/launcher3/allapps/search/SearchAdapterProvider;Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;)V

    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mOnLayoutCompletedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 79
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mActivityContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;-><init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;

    .line 80
    new-instance v1, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;-><init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 81
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->setAppsPerRow(I)V

    .line 82
    return-void
.end method


# virtual methods
.method public addOnLayoutCompletedListener(Lcom/android/launcher3/allapps/AllAppsGridAdapter$OnLayoutCompletedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/allapps/AllAppsGridAdapter$OnLayoutCompletedListener;

    .line 63
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsGridAdapter;, "Lcom/android/launcher3/allapps/AllAppsGridAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mOnLayoutCompletedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public bridge synthetic getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 1

    .line 43
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsGridAdapter;, "Lcom/android/launcher3/allapps/AllAppsGridAdapter<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->getLayoutManager()Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutManager()Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/allapps/AllAppsGridAdapter<",
            "TT;>.AppsGrid",
            "LayoutManager;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsGridAdapter;, "Lcom/android/launcher3/allapps/AllAppsGridAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;

    return-object v0
.end method

.method public getSpanIndex(I)I
    .locals 3
    .param p1, "adapterIndex"    # I

    .line 93
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsGridAdapter;, "Lcom/android/launcher3/allapps/AllAppsGridAdapter<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->getLayoutManager()Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;

    move-result-object v0

    .line 94
    .local v0, "lm":Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;, "Lcom/android/launcher3/allapps/AllAppsGridAdapter<TT;>.AppsGridLayoutManager;"
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->getSpanCount()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v1

    return v1
.end method

.method public removeOnLayoutCompletedListener(Lcom/android/launcher3/allapps/AllAppsGridAdapter$OnLayoutCompletedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/allapps/AllAppsGridAdapter$OnLayoutCompletedListener;

    .line 71
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsGridAdapter;, "Lcom/android/launcher3/allapps/AllAppsGridAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mOnLayoutCompletedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public setAppsPerRow(I)V
    .locals 6
    .param p1, "appsPerRow"    # I

    .line 184
    .local p0, "this":Lcom/android/launcher3/allapps/AllAppsGridAdapter;, "Lcom/android/launcher3/allapps/AllAppsGridAdapter<TT;>;"
    iput p1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mAppsPerRow:I

    .line 185
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mAppsPerRow:I

    .line 186
    .local v0, "totalSpans":I
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mAdapterProvider:Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/search/SearchAdapterProvider;->getSupportedItemsPerRowArray()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 187
    .local v4, "itemPerRow":I
    rem-int v5, v0, v4

    if-eqz v5, :cond_0

    .line 188
    mul-int/2addr v0, v4

    .line 186
    .end local v4    # "itemPerRow":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->setSpanCount(I)V

    .line 192
    return-void
.end method
