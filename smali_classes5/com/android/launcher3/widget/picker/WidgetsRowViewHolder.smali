.class public final Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "WidgetsRowViewHolder.java"


# instance fields
.field mDataCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/util/Pair<",
            "Lcom/android/launcher3/model/WidgetItem;",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field public final previewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/launcher3/model/WidgetItem;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public final tableContainer:Lcom/android/launcher3/widget/picker/WidgetsListTableView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 39
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;->previewCache:Ljava/util/Map;

    .line 41
    sget v0, Lcom/android/launcher3/R$id;->widgets_table:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsListTableView;

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;->tableContainer:Lcom/android/launcher3/widget/picker/WidgetsListTableView;

    .line 42
    return-void
.end method


# virtual methods
.method public onPreviewLoaded(Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/android/launcher3/model/WidgetItem;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p1, "data":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/model/WidgetItem;Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;->mDataCallback:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;->getBindingAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 57
    :cond_1
    return-void
.end method
