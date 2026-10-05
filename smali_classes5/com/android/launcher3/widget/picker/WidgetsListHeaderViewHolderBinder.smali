.class public final Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;
.super Ljava/lang/Object;
.source "WidgetsListHeaderViewHolderBinder.java"

# interfaces
.implements Lcom/android/launcher3/recyclerview/ViewHolderBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/recyclerview/ViewHolderBinder<",
        "Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;",
        "Lcom/android/launcher3/widget/picker/WidgetsListHeaderHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mIsTwoPane:Z

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mOnHeaderClickListener:Lcom/android/launcher3/widget/picker/OnHeaderClickListener;


# direct methods
.method public static synthetic $r8$lambda$eVzW0zd-UV_MW96MrtQpRiuOszc(Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;Lcom/android/launcher3/widget/picker/WidgetsListHeader;Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;->lambda$bindViewHolder$0(Lcom/android/launcher3/widget/picker/WidgetsListHeader;Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Lcom/android/launcher3/widget/picker/OnHeaderClickListener;Z)V
    .locals 0
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "onHeaderClickListener"    # Lcom/android/launcher3/widget/picker/OnHeaderClickListener;
    .param p3, "isTwoPane"    # Z

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 40
    iput-object p2, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;->mOnHeaderClickListener:Lcom/android/launcher3/widget/picker/OnHeaderClickListener;

    .line 41
    iput-boolean p3, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;->mIsTwoPane:Z

    .line 42
    return-void
.end method

.method private synthetic lambda$bindViewHolder$0(Lcom/android/launcher3/widget/picker/WidgetsListHeader;Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;Landroid/view/View;)V
    .locals 3
    .param p1, "widgetsListHeader"    # Lcom/android/launcher3/widget/picker/WidgetsListHeader;
    .param p2, "data"    # Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;
    .param p3, "view"    # Landroid/view/View;

    .line 65
    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;->mIsTwoPane:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setExpanded(Z)V

    .line 66
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;->mOnHeaderClickListener:Lcom/android/launcher3/widget/picker/OnHeaderClickListener;

    invoke-virtual {p1}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->isExpanded()Z

    move-result v1

    iget-object v2, p2, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    .line 67
    invoke-static {v2}, Lcom/android/launcher3/util/PackageUserKey;->fromPackageItemInfo(Lcom/android/launcher3/model/data/PackageItemInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v2

    .line 66
    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/widget/picker/OnHeaderClickListener;->onHeaderClicked(ZLcom/android/launcher3/util/PackageUserKey;)V

    .line 68
    return-void
.end method


# virtual methods
.method public bridge synthetic bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;ILjava/util/List;)V
    .locals 0

    .line 31
    check-cast p1, Lcom/android/launcher3/widget/picker/WidgetsListHeaderHolder;

    check-cast p2, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;->bindViewHolder(Lcom/android/launcher3/widget/picker/WidgetsListHeaderHolder;Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;ILjava/util/List;)V

    return-void
.end method

.method public bindViewHolder(Lcom/android/launcher3/widget/picker/WidgetsListHeaderHolder;Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;ILjava/util/List;)V
    .locals 5
    .param p1, "viewHolder"    # Lcom/android/launcher3/widget/picker/WidgetsListHeaderHolder;
    .param p2, "data"    # Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;
    .param p3, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/widget/picker/WidgetsListHeaderHolder;",
            "Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 57
    .local p4, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v0, p1, Lcom/android/launcher3/widget/picker/WidgetsListHeaderHolder;->mWidgetsListHeader:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    .line 58
    .local v0, "widgetsListHeader":Lcom/android/launcher3/widget/picker/WidgetsListHeader;
    invoke-virtual {v0, p2}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->applyFromItemInfoWithIcon(Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;)V

    .line 59
    invoke-virtual {p2}, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->isWidgetListShown()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setExpanded(Z)V

    .line 60
    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    and-int/lit8 v4, p3, 0x2

    if-eqz v4, :cond_1

    move v2, v3

    .line 61
    :cond_1
    invoke-static {v1, v2}, Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;->obtain(ZZ)Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;

    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setListDrawableState(Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;)V

    .line 64
    new-instance v1, Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;Lcom/android/launcher3/widget/picker/WidgetsListHeader;Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method

.method public bridge synthetic newViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;->newViewHolder(Landroid/view/ViewGroup;)Lcom/android/launcher3/widget/picker/WidgetsListHeaderHolder;

    move-result-object p1

    return-object p1
.end method

.method public newViewHolder(Landroid/view/ViewGroup;)Lcom/android/launcher3/widget/picker/WidgetsListHeaderHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 46
    new-instance v0, Lcom/android/launcher3/widget/picker/WidgetsListHeaderHolder;

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 47
    iget-boolean v2, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;->mIsTwoPane:Z

    if-eqz v2, :cond_0

    .line 48
    sget v2, Lcom/android/launcher3/R$layout;->widgets_list_row_header_two_pane:I

    goto :goto_0

    .line 49
    :cond_0
    sget v2, Lcom/android/launcher3/R$layout;->widgets_list_row_header:I

    :goto_0
    nop

    .line 46
    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsListHeaderHolder;-><init>(Lcom/android/launcher3/widget/picker/WidgetsListHeader;)V

    return-object v0
.end method
