.class public final Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;
.super Ljava/lang/Object;
.source "WidgetsListTableViewHolderBinder.java"

# interfaces
.implements Lcom/android/launcher3/recyclerview/ViewHolderBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/recyclerview/ViewHolderBinder<",
        "Lcom/android/launcher3/widget/model/WidgetsListContentEntry;",
        "Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WidgetsListRowViewHolderBinder"


# instance fields
.field private final mActivityContext:Lcom/android/launcher3/views/ActivityContext;

.field private final mCellPadding:I

.field private final mContext:Landroid/content/Context;

.field private final mIconClickListener:Landroid/view/View$OnClickListener;

.field private final mIconLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p3, "iconClickListener"    # Landroid/view/View$OnClickListener;
    .param p4, "iconLongClickListener"    # Landroid/view/View$OnLongClickListener;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p2, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 68
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->mContext:Landroid/content/Context;

    .line 69
    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->widget_cell_horizontal_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->mCellPadding:I

    .line 72
    iput-object p3, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->mIconClickListener:Landroid/view/View$OnClickListener;

    .line 73
    iput-object p4, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 74
    return-void
.end method

.method static synthetic lambda$bindViewHolder$0(Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;Lcom/android/launcher3/model/WidgetItem;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "holder"    # Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;
    .param p1, "widgetItem"    # Lcom/android/launcher3/model/WidgetItem;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 125
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;->onPreviewLoaded(Landroid/util/Pair;)V

    return-void
.end method

.method private recycleTableBeforeBinding(Landroid/widget/TableLayout;Ljava/util/List;)V
    .locals 9
    .param p1, "table"    # Landroid/widget/TableLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TableLayout;",
            "Ljava/util/List<",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;>;)V"
        }
    .end annotation

    .line 142
    .local p2, "widgetItemsTable":Ljava/util/List;, "Ljava/util/List<Ljava/util/ArrayList<Lcom/android/launcher3/model/WidgetItem;>;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v1

    const/16 v2, 0x8

    if-ge v0, v1, :cond_0

    .line 143
    invoke-virtual {p1, v0}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 147
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 149
    .local v1, "widgetItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    invoke-virtual {p1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 150
    invoke-virtual {p1, v0}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TableRow;

    .local v3, "tableRow":Landroid/widget/TableRow;
    goto :goto_3

    .line 152
    .end local v3    # "tableRow":Landroid/widget/TableRow;
    :cond_1
    new-instance v3, Landroid/widget/TableRow;

    invoke-virtual {p1}, Landroid/widget/TableLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 153
    .restart local v3    # "tableRow":Landroid/widget/TableRow;
    invoke-static {}, Lcom/android/launcher3/Flags;->enableCategorizedWidgetSuggestions()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 156
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/TableRow;->setGravity(I)V

    goto :goto_2

    .line 158
    :cond_2
    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Landroid/widget/TableRow;->setGravity(I)V

    .line 160
    :goto_2
    invoke-virtual {p1, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 162
    :goto_3
    invoke-virtual {v3}, Landroid/widget/TableRow;->getChildCount()I

    move-result v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-le v4, v5, :cond_4

    .line 163
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "j":I
    :goto_4
    invoke-virtual {v3}, Landroid/widget/TableRow;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 164
    invoke-virtual {v3, v4}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 163
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .end local v4    # "j":I
    :cond_3
    goto :goto_6

    .line 167
    :cond_4
    invoke-virtual {v3}, Landroid/widget/TableRow;->getChildCount()I

    move-result v4

    .restart local v4    # "j":I
    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 168
    iget-object v5, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v6, Lcom/android/launcher3/R$layout;->widget_cell:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/widget/WidgetCell;

    .line 171
    .local v5, "widget":Lcom/android/launcher3/widget/WidgetCell;
    sget v6, Lcom/android/launcher3/R$id;->widget_preview_container:I

    invoke-virtual {v5, v6}, Lcom/android/launcher3/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 172
    .local v6, "preview":Landroid/view/View;
    iget-object v8, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v8, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 174
    invoke-virtual {v5, v7}, Lcom/android/launcher3/widget/WidgetCell;->setAnimatePreview(Z)V

    .line 175
    invoke-virtual {v3, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 167
    .end local v5    # "widget":Lcom/android/launcher3/widget/WidgetCell;
    .end local v6    # "preview":Landroid/view/View;
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 146
    .end local v1    # "widgetItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    .end local v3    # "tableRow":Landroid/widget/TableRow;
    .end local v4    # "j":I
    :cond_5
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 179
    .end local v0    # "i":I
    :cond_6
    return-void
.end method


# virtual methods
.method public bridge synthetic bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;ILjava/util/List;)V
    .locals 0

    .line 50
    check-cast p1, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;

    check-cast p2, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->bindViewHolder(Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;Lcom/android/launcher3/widget/model/WidgetsListContentEntry;ILjava/util/List;)V

    return-void
.end method

.method public bindViewHolder(Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;Lcom/android/launcher3/widget/model/WidgetsListContentEntry;ILjava/util/List;)V
    .locals 15
    .param p1, "holder"    # Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;
    .param p2, "entry"    # Lcom/android/launcher3/widget/model/WidgetsListContentEntry;
    .param p3, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;",
            "Lcom/android/launcher3/widget/model/WidgetsListContentEntry;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 89
    .local p4, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object v0, p0

    move-object/from16 v1, p1

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 90
    .local v3, "payload":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Landroid/util/Pair;

    .line 91
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/model/WidgetItem;Landroid/graphics/Bitmap;>;"
    iget-object v5, v1, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;->previewCache:Ljava/util/Map;

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/android/launcher3/model/WidgetItem;

    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Landroid/graphics/Bitmap;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .end local v3    # "payload":Ljava/lang/Object;
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/model/WidgetItem;Landroid/graphics/Bitmap;>;"
    goto :goto_0

    .line 94
    :cond_0
    iget-object v2, v1, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;->tableContainer:Lcom/android/launcher3/widget/picker/WidgetsListTableView;

    .line 99
    .local v2, "table":Lcom/android/launcher3/widget/picker/WidgetsListTableView;
    and-int/lit8 v3, p3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    and-int/lit8 v6, p3, 0x2

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    move v5, v4

    .line 100
    :goto_2
    invoke-static {v3, v5}, Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;->obtain(ZZ)Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;

    move-result-object v3

    .line 99
    invoke-virtual {v2, v3}, Lcom/android/launcher3/widget/picker/WidgetsListTableView;->setListDrawableState(Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;)V

    .line 104
    move-object/from16 v3, p2

    iget-object v5, v3, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;->mWidgets:Ljava/util/List;

    iget-object v6, v0, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->mContext:Landroid/content/Context;

    iget-object v7, v0, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    .line 107
    invoke-interface {v7}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v7

    .line 108
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;->getMaxSpanSize()I

    move-result v8

    iget v9, v0, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->mCellPadding:I

    .line 105
    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/launcher3/widget/util/WidgetsTableUtils;->groupWidgetItemsUsingRowPxWithReordering(Ljava/util/List;Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;II)Ljava/util/List;

    move-result-object v5

    .line 110
    .local v5, "widgetItemsTable":Ljava/util/List;, "Ljava/util/List<Ljava/util/ArrayList<Lcom/android/launcher3/model/WidgetItem;>;>;"
    invoke-direct {p0, v2, v5}, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->recycleTableBeforeBinding(Landroid/widget/TableLayout;Ljava/util/List;)V

    .line 113
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 114
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 115
    .local v7, "widgetItemsPerRow":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 116
    invoke-virtual {v2, v6}, Lcom/android/launcher3/widget/picker/WidgetsListTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TableRow;

    .line 117
    .local v9, "row":Landroid/widget/TableRow;
    invoke-virtual {v9, v4}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 118
    invoke-virtual {v9, v8}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/widget/WidgetCell;

    .line 119
    .local v10, "widget":Lcom/android/launcher3/widget/WidgetCell;
    invoke-virtual {v10}, Lcom/android/launcher3/widget/WidgetCell;->clear()V

    .line 120
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/model/WidgetItem;

    .line 121
    .local v11, "widgetItem":Lcom/android/launcher3/model/WidgetItem;
    invoke-virtual {v10, v4}, Lcom/android/launcher3/widget/WidgetCell;->setVisibility(I)V

    .line 124
    new-instance v12, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder$$ExternalSyntheticLambda0;

    invoke-direct {v12, v1, v11}, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;Lcom/android/launcher3/model/WidgetItem;)V

    iget-object v13, v1, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;->previewCache:Ljava/util/Map;

    .line 126
    invoke-interface {v13, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Bitmap;

    .line 124
    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11, v14, v12, v13}, Lcom/android/launcher3/widget/WidgetCell;->applyFromCellItem(Lcom/android/launcher3/model/WidgetItem;FLjava/util/function/Consumer;Landroid/graphics/Bitmap;)V

    .line 127
    invoke-virtual {v10}, Lcom/android/launcher3/widget/WidgetCell;->requestLayout()V

    .line 115
    .end local v9    # "row":Landroid/widget/TableRow;
    .end local v10    # "widget":Lcom/android/launcher3/widget/WidgetCell;
    .end local v11    # "widgetItem":Lcom/android/launcher3/model/WidgetItem;
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 113
    .end local v7    # "widgetItemsPerRow":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    .end local v8    # "j":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 130
    .end local v6    # "i":I
    :cond_4
    return-void
.end method

.method public bridge synthetic newViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->newViewHolder(Landroid/view/ViewGroup;)Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public newViewHolder(Landroid/view/ViewGroup;)Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 82
    new-instance v0, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/android/launcher3/R$layout;->widgets_table_container:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic unbindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 50
    check-cast p1, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->unbindViewHolder(Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;)V

    return-void
.end method

.method public unbindViewHolder(Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;)V
    .locals 6
    .param p1, "holder"    # Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;

    .line 183
    iget-object v0, p1, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;->tableContainer:Lcom/android/launcher3/widget/picker/WidgetsListTableView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsListTableView;->getChildCount()I

    move-result v0

    .line 184
    .local v0, "numOfRows":I
    iget-object v1, p1, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;->previewCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 185
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 186
    iget-object v2, p1, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;->tableContainer:Lcom/android/launcher3/widget/picker/WidgetsListTableView;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/widget/picker/WidgetsListTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableRow;

    .line 187
    .local v2, "tableRow":Landroid/widget/TableRow;
    invoke-virtual {v2}, Landroid/widget/TableRow;->getChildCount()I

    move-result v3

    .line 188
    .local v3, "numOfCols":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v3, :cond_0

    .line 189
    invoke-virtual {v2, v4}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/widget/WidgetCell;

    .line 190
    .local v5, "widget":Lcom/android/launcher3/widget/WidgetCell;
    invoke-virtual {v5}, Lcom/android/launcher3/widget/WidgetCell;->clear()V

    .line 188
    .end local v5    # "widget":Lcom/android/launcher3/widget/WidgetCell;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 185
    .end local v2    # "tableRow":Landroid/widget/TableRow;
    .end local v3    # "numOfCols":I
    .end local v4    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
