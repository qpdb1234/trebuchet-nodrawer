.class public Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;
.super Ljava/lang/Object;
.source "ActivityAllAppsContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterHolder"
.end annotation


# static fields
.field public static final MAIN:I = 0x0

.field public static final SEARCH:I = 0x2

.field public static final WORK:I = 0x1


# instance fields
.field public final mAdapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mAppsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field private mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field final mPadding:Landroid/graphics/Rect;

.field mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

.field private final mType:I

.field final synthetic this$0:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmOnFocusChangeListener(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;)Landroid/view/View$OnFocusChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object p0
.end method

.method constructor <init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;ILcom/android/launcher3/allapps/AlphabeticalAppsList;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList<",
            "TT;>;)V"
        }
    .end annotation

    .line 1541
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>.AdapterHolder;"
    .local p3, "appsList":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<TT;>;"
    iput-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->this$0:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1537
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    .line 1542
    iput p2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mType:I

    .line 1543
    iput-object p3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mAppsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    .line 1544
    invoke-virtual {p1, p3}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->createAdapter(Lcom/android/launcher3/allapps/AlphabeticalAppsList;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mAdapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    .line 1545
    invoke-virtual {p3, v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setAdapter(Lcom/android/launcher3/allapps/BaseAllAppsAdapter;)V

    .line 1546
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 1547
    return-void
.end method

.method private isSearch()Z
    .locals 2

    .line 1591
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>.AdapterHolder;"
    iget v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWork()Z
    .locals 2

    .line 1587
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>.AdapterHolder;"
    iget v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method applyPadding()V
    .locals 6

    .line 1573
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>.AdapterHolder;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v0, :cond_2

    .line 1574
    const/4 v0, 0x0

    .line 1575
    .local v0, "bottomOffset":I
    invoke-direct {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->isWork()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->this$0:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iget-object v1, v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/WorkProfileManager;->getWorkModeSwitch()Lcom/android/launcher3/allapps/WorkModeSwitch;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1576
    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->this$0:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-static {v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->-$$Nest$fgetmInsets(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->this$0:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iget-object v2, v2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/WorkProfileManager;->getWorkModeSwitch()Lcom/android/launcher3/allapps/WorkModeSwitch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/WorkModeSwitch;->getHeight()I

    move-result v2

    add-int v0, v1, v2

    .line 1578
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->this$0:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearchBarFloating()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1579
    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->this$0:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iget-object v1, v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 1581
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setPadding(IIII)V

    .line 1584
    .end local v0    # "bottomOffset":I
    :cond_2
    return-void
.end method

.method setup(Landroid/view/View;Ljava/util/function/Predicate;)V
    .locals 3
    .param p1, "rv"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 1550
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>.AdapterHolder;"
    .local p2, "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mAppsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->updateItemFilter(Ljava/util/function/Predicate;)V

    .line 1551
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    .line 1552
    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->this$0:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iget-object v1, v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mFastScroller:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->bindFastScrollbar(Lcom/android/launcher3/views/RecyclerViewFastScroller;)V

    .line 1553
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->this$0:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->createEdgeEffectFactory()Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setEdgeEffectFactory(Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;)V

    .line 1554
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mAppsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setApps(Lcom/android/launcher3/allapps/AlphabeticalAppsList;)V

    .line 1555
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1556
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mAdapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1557
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setHasFixedSize(Z)V

    .line 1559
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1560
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->this$0:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->onInitializeRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1563
    invoke-direct {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->isSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/launcher3/keyboard/FocusedItemDecorator;

    new-instance v1, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-direct {v1, v2}, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;-><init>(Landroid/view/View;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/keyboard/FocusedItemDecorator;-><init>(Lcom/android/launcher3/keyboard/FocusIndicatorHelper;)V

    goto :goto_0

    .line 1564
    :cond_0
    new-instance v0, Lcom/android/launcher3/keyboard/FocusedItemDecorator;

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-direct {v0, v1}, Lcom/android/launcher3/keyboard/FocusedItemDecorator;-><init>(Landroid/view/View;)V

    :goto_0
    nop

    .line 1566
    .local v0, "focusedItemDecorator":Lcom/android/launcher3/keyboard/FocusedItemDecorator;
    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 1567
    invoke-virtual {v0}, Lcom/android/launcher3/keyboard/FocusedItemDecorator;->getFocusListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 1568
    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mAdapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->setIconFocusListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1569
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->applyPadding()V

    .line 1570
    return-void
.end method
