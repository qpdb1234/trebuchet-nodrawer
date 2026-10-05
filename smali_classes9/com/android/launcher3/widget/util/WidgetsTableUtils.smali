.class public final Lcom/android/launcher3/widget/util/WidgetsTableUtils;
.super Ljava/lang/Object;
.source "WidgetsTableUtils.java"


# static fields
.field private static final WIDGET_SHORTCUT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/android/launcher3/widget/util/WidgetsTableUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/widget/util/WidgetsTableUtils$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/launcher3/widget/util/WidgetsTableUtils;->WIDGET_SHORTCUT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static groupWidgetItemsUsingRowPxWithReordering(Ljava/util/List;Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;II)Ljava/util/List;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .param p3, "rowPx"    # I
    .param p4, "cellPadding"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/DeviceProfile;",
            "II)",
            "Ljava/util/List<",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;>;"
        }
    .end annotation

    .line 60
    .local p0, "widgetItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/widget/util/WidgetsTableUtils;->WIDGET_SHORTCUT_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 61
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 62
    .local v0, "sortedWidgetItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/launcher3/widget/util/WidgetsTableUtils;->groupWidgetItemsUsingRowPxWithoutReordering(Ljava/util/List;Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;II)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static groupWidgetItemsUsingRowPxWithoutReordering(Ljava/util/List;Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;II)Ljava/util/List;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .param p3, "rowPx"    # I
    .param p4, "cellPadding"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/DeviceProfile;",
            "II)",
            "Ljava/util/List<",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;>;"
        }
    .end annotation

    .line 93
    .local p0, "widgetItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v0, "widgetItemsTable":Ljava/util/List;, "Ljava/util/List<Ljava/util/ArrayList<Lcom/android/launcher3/model/WidgetItem;>;>;"
    const/4 v1, 0x0

    .line 95
    .local v1, "widgetItemsAtRow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/WidgetItem;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/WidgetItem;

    .line 96
    .local v3, "widgetItem":Lcom/android/launcher3/model/WidgetItem;
    if-nez v1, :cond_0

    .line 97
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 98
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 101
    .local v4, "numOfWidgetItems":I
    add-int/lit8 v5, v4, 0x1

    div-int v5, p3, v5

    mul-int/lit8 v6, p4, 0x2

    sub-int/2addr v5, v6

    .line 102
    .local v5, "individualSpan":I
    if-nez v4, :cond_1

    .line 103
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 104
    :cond_1
    add-int/lit8 v6, v4, -0x1

    .line 108
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/WidgetItem;

    invoke-virtual {v3, v6}, Lcom/android/launcher3/model/WidgetItem;->hasSameType(Lcom/android/launcher3/model/WidgetItem;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 109
    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/launcher3/widget/util/WidgetsTableUtils$$ExternalSyntheticLambda0;

    invoke-direct {v7, p1, p2, v5}, Lcom/android/launcher3/widget/util/WidgetsTableUtils$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;I)V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 112
    invoke-static {p1, p2, v3}, Lcom/android/launcher3/widget/util/WidgetSizes;->getWidgetItemSizePx(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/model/WidgetItem;)Landroid/util/Size;

    move-result-object v6

    .line 113
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    if-gt v6, v5, :cond_2

    .line 123
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 125
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v6

    .line 126
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .end local v3    # "widgetItem":Lcom/android/launcher3/model/WidgetItem;
    .end local v4    # "numOfWidgetItems":I
    .end local v5    # "individualSpan":I
    :goto_1
    goto :goto_0

    .line 130
    :cond_3
    return-object v0
.end method

.method static synthetic lambda$groupWidgetItemsUsingRowPxWithoutReordering$1(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;ILcom/android/launcher3/model/WidgetItem;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .param p2, "individualSpan"    # I
    .param p3, "item"    # Lcom/android/launcher3/model/WidgetItem;

    .line 110
    invoke-static {p0, p1, p3}, Lcom/android/launcher3/widget/util/WidgetSizes;->getWidgetItemSizePx(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/model/WidgetItem;)Landroid/util/Size;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-gt v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 110
    :goto_0
    return v0
.end method

.method static synthetic lambda$static$0(Lcom/android/launcher3/model/WidgetItem;Lcom/android/launcher3/model/WidgetItem;)I
    .locals 4
    .param p0, "item"    # Lcom/android/launcher3/model/WidgetItem;
    .param p1, "otherItem"    # Lcom/android/launcher3/model/WidgetItem;

    .line 43
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-nez v0, :cond_0

    return v1

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_1

    return v2

    .line 46
    :cond_1
    iget v0, p0, Lcom/android/launcher3/model/WidgetItem;->spanX:I

    iget v3, p1, Lcom/android/launcher3/model/WidgetItem;->spanX:I

    if-ne v0, v3, :cond_4

    .line 47
    iget v0, p0, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    iget v3, p1, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    if-ne v0, v3, :cond_2

    const/4 v0, 0x0

    return v0

    .line 48
    :cond_2
    iget v0, p0, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    iget v3, p1, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    if-le v0, v3, :cond_3

    move v1, v2

    :cond_3
    return v1

    .line 50
    :cond_4
    iget v0, p0, Lcom/android/launcher3/model/WidgetItem;->spanX:I

    iget v3, p1, Lcom/android/launcher3/model/WidgetItem;->spanX:I

    if-le v0, v3, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method
