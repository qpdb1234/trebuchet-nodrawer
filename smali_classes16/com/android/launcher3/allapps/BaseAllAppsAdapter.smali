.class public abstract Lcom/android/launcher3/allapps/BaseAllAppsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BaseAllAppsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;,
        Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final NEXT_ID:I = 0x8

.field public static final TAG:Ljava/lang/String; = "BaseAllAppsAdapter"

.field public static final VIEW_TYPE_ALL_APPS_DIVIDER:I = 0x8

.field public static final VIEW_TYPE_EMPTY_SEARCH:I = 0x4

.field public static final VIEW_TYPE_ICON:I = 0x2

.field public static final VIEW_TYPE_MASK_DIVIDER:I = 0x8

.field public static final VIEW_TYPE_MASK_ICON:I = 0x2

.field public static final VIEW_TYPE_MASK_PRIVATE_SPACE_HEADER:I = 0x40

.field public static final VIEW_TYPE_MASK_PRIVATE_SPACE_SYS_APPS_DIVIDER:I = 0x80

.field public static final VIEW_TYPE_PRIVATE_SPACE_HEADER:I = 0x40

.field public static final VIEW_TYPE_PRIVATE_SPACE_SYS_APPS_DIVIDER:I = 0x80

.field public static final VIEW_TYPE_WORK_DISABLED_CARD:I = 0x20

.field public static final VIEW_TYPE_WORK_EDU_CARD:I = 0x10


# instance fields
.field protected final mActivityContext:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final mAdapterProvider:Lcom/android/launcher3/allapps/search/SearchAdapterProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/search/SearchAdapterProvider<",
            "*>;"
        }
    .end annotation
.end field

.field protected final mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected mAppsPerRow:I

.field protected mIconFocusListener:Landroid/view/View$OnFocusChangeListener;

.field protected final mLayoutInflater:Landroid/view/LayoutInflater;

.field protected final mOnIconClickListener:Landroid/view/View$OnClickListener;

.field protected final mOnIconLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mPrivateSpaceHeaderViewController:Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/launcher3/allapps/AlphabeticalAppsList;Lcom/android/launcher3/allapps/search/SearchAdapterProvider;)V
    .locals 6
    .param p2, "inflater"    # Landroid/view/LayoutInflater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/LayoutInflater;",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList<",
            "TT;>;",
            "Lcom/android/launcher3/allapps/search/SearchAdapterProvider<",
            "*>;)V"
        }
    .end annotation

    .line 176
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    .local p1, "activityContext":Landroid/content/Context;, "TT;"
    .local p3, "apps":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<TT;>;"
    .local p4, "adapterProvider":Lcom/android/launcher3/allapps/search/SearchAdapterProvider;, "Lcom/android/launcher3/allapps/search/SearchAdapterProvider<*>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/launcher3/allapps/AlphabeticalAppsList;Lcom/android/launcher3/allapps/search/SearchAdapterProvider;Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;)V

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/launcher3/allapps/AlphabeticalAppsList;Lcom/android/launcher3/allapps/search/SearchAdapterProvider;Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;)V
    .locals 1
    .param p2, "inflater"    # Landroid/view/LayoutInflater;
    .param p5, "privateSpaceHeaderViewController"    # Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/LayoutInflater;",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList<",
            "TT;>;",
            "Lcom/android/launcher3/allapps/search/SearchAdapterProvider<",
            "*>;",
            "Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;",
            ")V"
        }
    .end annotation

    .line 181
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    .local p1, "activityContext":Landroid/content/Context;, "TT;"
    .local p3, "apps":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<TT;>;"
    .local p4, "adapterProvider":Lcom/android/launcher3/allapps/search/SearchAdapterProvider;, "Lcom/android/launcher3/allapps/search/SearchAdapterProvider<*>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 182
    iput-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    .line 183
    iput-object p3, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    .line 184
    iput-object p2, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 186
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getItemOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mOnIconClickListener:Landroid/view/View$OnClickListener;

    .line 187
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAllAppsItemLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mOnIconLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 189
    iput-object p4, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mAdapterProvider:Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    .line 190
    iput-object p5, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mPrivateSpaceHeaderViewController:Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;

    .line 191
    return-void
.end method

.method public static isDividerViewType(I)Z
    .locals 1
    .param p0, "viewType"    # I

    .line 195
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->isViewType(II)Z

    move-result v0

    return v0
.end method

.method public static isIconViewType(I)Z
    .locals 1
    .param p0, "viewType"    # I

    .line 200
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->isViewType(II)Z

    move-result v0

    return v0
.end method

.method public static isPrivateSpaceHeaderView(I)Z
    .locals 1
    .param p0, "viewType"    # I

    .line 205
    const/16 v0, 0x40

    invoke-static {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->isViewType(II)Z

    move-result v0

    return v0
.end method

.method public static isPrivateSpaceSysAppsDividerView(I)Z
    .locals 1
    .param p0, "viewType"    # I

    .line 210
    const/16 v0, 0x80

    invoke-static {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->isViewType(II)Z

    move-result v0

    return v0
.end method

.method protected static isViewType(II)Z
    .locals 1
    .param p0, "viewType"    # I
    .param p1, "viewTypeMask"    # I

    .line 336
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 326
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .line 331
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    .line 332
    .local v0, "item":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    iget v1, v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    return v1
.end method

.method public abstract getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 52
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    check-cast p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->onBindViewHolder(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;I)V
    .locals 6
    .param p1, "holder"    # Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 265
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    iget-object v0, p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 266
    invoke-virtual {p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;->getItemViewType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 312
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mAdapterProvider:Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;->getItemViewType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/search/SearchAdapterProvider;->isViewSupported(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 313
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mAdapterProvider:Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/allapps/search/SearchAdapterProvider;->onBindView(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;I)V

    goto/16 :goto_0

    .line 300
    :sswitch_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    .line 301
    .local v0, "adapterItem":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    new-instance v2, Lcom/android/launcher3/allapps/SectionDecorationInfo;

    iget-object v3, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v1, v4}, Lcom/android/launcher3/allapps/SectionDecorationInfo;-><init>(Landroid/content/Context;IZ)V

    iput-object v2, v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->decorationInfo:Lcom/android/launcher3/allapps/SectionDecorationInfo;

    .line 303
    goto/16 :goto_0

    .line 284
    .end local v0    # "adapterItem":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    :sswitch_1
    iget-object v0, p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/android/launcher3/R$id;->ps_header_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 286
    .local v0, "psHeaderLayout":Landroid/widget/RelativeLayout;
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mPrivateSpaceHeaderViewController:Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;

    if-eqz v2, :cond_2

    .line 287
    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {v2, v0}, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->addPrivateSpaceHeaderViewElements(Landroid/widget/RelativeLayout;)V

    .line 289
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    .line 290
    .local v2, "adapterItem":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    const/4 v3, 0x6

    .line 291
    .local v3, "roundRegions":I
    iget-object v4, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mPrivateSpaceHeaderViewController:Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/PrivateSpaceHeaderViewController;->getPrivateProfileManager()Lcom/android/launcher3/allapps/PrivateProfileManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/PrivateProfileManager;->getCurrentState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 293
    or-int/lit8 v3, v3, 0x18

    .line 295
    :cond_0
    new-instance v4, Lcom/android/launcher3/allapps/SectionDecorationInfo;

    iget-object v5, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    invoke-direct {v4, v5, v3, v1}, Lcom/android/launcher3/allapps/SectionDecorationInfo;-><init>(Landroid/content/Context;IZ)V

    iput-object v4, v2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->decorationInfo:Lcom/android/launcher3/allapps/SectionDecorationInfo;

    .line 298
    goto :goto_0

    .line 287
    .end local v2    # "adapterItem":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    .end local v3    # "roundRegions":I
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 286
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 309
    .end local v0    # "psHeaderLayout":Landroid/widget/RelativeLayout;
    :sswitch_2
    iget-object v0, p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/allapps/WorkEduCard;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/allapps/WorkEduCard;->setPosition(I)V

    .line 310
    goto :goto_0

    .line 307
    :sswitch_3
    goto :goto_0

    .line 276
    :sswitch_4
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    iget-object v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    .line 277
    .local v0, "info":Lcom/android/launcher3/model/data/AppInfo;
    if-eqz v0, :cond_3

    .line 278
    iget-object v1, p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    sget v3, Lcom/android/launcher3/R$string;->all_apps_no_search_results:I

    iget-object v4, v0, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 268
    .end local v0    # "info":Lcom/android/launcher3/model/data/AppInfo;
    :sswitch_5
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    .line 269
    .local v0, "adapterItem":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    iget-object v1, p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    .line 270
    .local v1, "icon":Lcom/android/launcher3/BubbleTextView;
    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->reset()V

    .line 271
    iget-object v2, v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/BubbleTextView;->applyFromApplicationInfo(Lcom/android/launcher3/model/data/AppInfo;)V

    .line 272
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mIconFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/BubbleTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 273
    nop

    .line 316
    .end local v0    # "adapterItem":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    .end local v1    # "icon":Lcom/android/launcher3/BubbleTextView;
    :cond_3
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_5
        0x4 -> :sswitch_4
        0x8 -> :sswitch_3
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x40 -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 52
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 224
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    const/4 v0, 0x0

    sparse-switch p2, :sswitch_data_0

    .line 256
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mAdapterProvider:Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/allapps/search/SearchAdapterProvider;->isViewSupported(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mAdapterProvider:Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/launcher3/allapps/search/SearchAdapterProvider;->onCreateViewHolder(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    move-result-object v0

    return-object v0

    .line 253
    :sswitch_0
    new-instance v1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/android/launcher3/R$layout;->private_space_header:I

    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 250
    :sswitch_1
    new-instance v1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/android/launcher3/R$layout;->work_apps_paused:I

    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 247
    :sswitch_2
    new-instance v1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/android/launcher3/R$layout;->work_apps_edu:I

    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 244
    :sswitch_3
    new-instance v1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/android/launcher3/R$layout;->private_space_divider:I

    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 241
    :sswitch_4
    new-instance v1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/android/launcher3/R$layout;->all_apps_empty_search:I

    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 226
    :sswitch_5
    invoke-static {}, Lcom/android/launcher3/Flags;->enableTwolineToggle()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher3/LauncherPrefs;->ENABLE_TWOLINE_ALLAPPS_TOGGLE:Lcom/android/launcher3/ConstantItem;

    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    .line 228
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 227
    invoke-virtual {v1, v2}, Lcom/android/launcher3/ConstantItem;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    sget v1, Lcom/android/launcher3/R$layout;->all_apps_icon_twoline:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/launcher3/R$layout;->all_apps_icon:I

    .line 230
    .local v1, "layout":I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .line 232
    .local v0, "icon":Lcom/android/launcher3/BubbleTextView;
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BubbleTextView;->setLongPressTimeoutFactor(F)V

    .line 233
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mIconFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BubbleTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 234
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mOnIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mOnIconLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BubbleTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 237
    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher3/views/ActivityContext;

    .line 238
    invoke-interface {v3}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 239
    new-instance v2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    invoke-direct {v2, v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v2

    .line 259
    .end local v0    # "icon":Lcom/android/launcher3/BubbleTextView;
    .end local v1    # "layout":I
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected view type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_5
        0x4 -> :sswitch_4
        0x8 -> :sswitch_3
        0x10 -> :sswitch_2
        0x20 -> :sswitch_1
        0x40 -> :sswitch_0
        0x80 -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 52
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    check-cast p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->onFailedToRecycleView(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;)Z

    move-result p1

    return p1
.end method

.method public onFailedToRecycleView(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    .line 321
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public abstract setAppsPerRow(I)V
.end method

.method public setIconFocusListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "focusListener"    # Landroid/view/View$OnFocusChangeListener;

    .line 214
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    iput-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mIconFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 215
    return-void
.end method
