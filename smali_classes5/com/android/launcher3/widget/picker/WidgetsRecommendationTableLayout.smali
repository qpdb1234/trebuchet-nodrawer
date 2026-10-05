.class public final Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;
.super Landroid/widget/TableLayout;
.source "WidgetsRecommendationTableLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;
    }
.end annotation


# static fields
.field private static final DOWN_SCALE_RATIO:F = 0.9f

.field private static final MAX_DOWN_SCALE_RATIO:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "WidgetsRecommendationTableLayout"


# instance fields
.field private mRecommendationTableMaxHeight:F

.field private mWidgetCellOnClickListener:Landroid/view/View$OnClickListener;

.field private mWidgetCellOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mWidgetCellTextViewsHeight:F

.field private final mWidgetCellVerticalPadding:F

.field private final mWidgetsRecommendationTableVerticalPadding:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->mRecommendationTableMaxHeight:F

    .line 63
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->widget_recommendations_table_vertical_padding:I

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->mWidgetsRecommendationTableVerticalPadding:F

    .line 65
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->widget_cell_vertical_padding:I

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->mWidgetCellVerticalPadding:F

    .line 67
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->widget_cell_font_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->mWidgetCellTextViewsHeight:F

    .line 68
    return-void
.end method

.method private addItemCell(Landroid/view/ViewGroup;)Lcom/android/launcher3/widget/WidgetCell;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 134
    nop

    .line 135
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 134
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$layout;->widget_cell:I

    .line 135
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/WidgetCell;

    .line 137
    .local v0, "widget":Lcom/android/launcher3/widget/WidgetCell;
    sget v1, Lcom/android/launcher3/R$id;->widget_preview_container:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 138
    .local v1, "previewContainer":Landroid/view/View;
    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->mWidgetCellOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->mWidgetCellOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 140
    invoke-virtual {v0, v2}, Lcom/android/launcher3/widget/WidgetCell;->setAnimatePreview(Z)V

    .line 141
    const/16 v2, -0x6f

    invoke-virtual {v0, v2}, Lcom/android/launcher3/widget/WidgetCell;->setSourceContainer(I)V

    .line 143
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 144
    return-object v0
.end method

.method private bindData(Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;)V
    .locals 8
    .param p1, "data"    # Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;

    .line 102
    invoke-static {p1}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;->-$$Nest$fgetmRecommendationTable(Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->setVisibility(I)V

    .line 104
    return-void

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->removeAllViews()V

    .line 109
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {p1}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;->-$$Nest$fgetmRecommendationTable(Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_4

    .line 110
    invoke-static {p1}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;->-$$Nest$fgetmRecommendationTable(Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 111
    .local v1, "widgetItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    new-instance v3, Landroid/widget/TableRow;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 112
    .local v3, "tableRow":Landroid/widget/TableRow;
    invoke-static {}, Lcom/android/launcher3/Flags;->enableCategorizedWidgetSuggestions()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 115
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/TableRow;->setGravity(I)V

    goto :goto_1

    .line 117
    :cond_1
    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Landroid/widget/TableRow;->setGravity(I)V

    .line 119
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/WidgetItem;

    .line 120
    .local v5, "widgetItem":Lcom/android/launcher3/model/WidgetItem;
    invoke-direct {p0, v3}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->addItemCell(Landroid/view/ViewGroup;)Lcom/android/launcher3/widget/WidgetCell;

    move-result-object v6

    .line 121
    .local v6, "widgetCell":Lcom/android/launcher3/widget/WidgetCell;
    invoke-static {p1}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;->-$$Nest$fgetmPreviewScale(Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;)F

    move-result v7

    invoke-virtual {v6, v5, v7}, Lcom/android/launcher3/widget/WidgetCell;->applyFromCellItem(Lcom/android/launcher3/model/WidgetItem;F)V

    .line 122
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/launcher3/widget/WidgetCell;->showAppIconInWidgetTitle(Z)V

    .line 123
    invoke-virtual {v6}, Lcom/android/launcher3/widget/WidgetCell;->showBadge()V

    .line 124
    invoke-static {}, Lcom/android/launcher3/Flags;->enableCategorizedWidgetSuggestions()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 125
    invoke-virtual {v6, v2}, Lcom/android/launcher3/widget/WidgetCell;->showDescription(Z)V

    .line 127
    .end local v5    # "widgetItem":Lcom/android/launcher3/model/WidgetItem;
    .end local v6    # "widgetCell":Lcom/android/launcher3/widget/WidgetCell;
    :cond_2
    goto :goto_2

    .line 128
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->addView(Landroid/view/View;)V

    .line 109
    .end local v1    # "widgetItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    .end local v3    # "tableRow":Landroid/widget/TableRow;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    .end local v0    # "i":I
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->setVisibility(I)V

    .line 131
    return-void
.end method

.method private fitRecommendedWidgetsToTableSpace(FLcom/android/launcher3/DeviceProfile;Ljava/util/List;)Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;
    .locals 10
    .param p1, "previewScale"    # F
    .param p2, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lcom/android/launcher3/DeviceProfile;",
            "Ljava/util/List<",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;>;)",
            "Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;"
        }
    .end annotation

    .line 151
    .local p3, "recommendedWidgetsInTable":Ljava/util/List;, "Ljava/util/List<Ljava/util/ArrayList<Lcom/android/launcher3/model/WidgetItem;>;>;"
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hide recommended widgets. Can\'t down scale previews to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WidgetsRecommendationTableLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance v0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;-><init>(Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;Ljava/util/List;F)V

    return-object v0

    .line 156
    :cond_0
    iget v0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->mWidgetsRecommendationTableVerticalPadding:F

    .line 157
    .local v0, "totalHeight":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 158
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 159
    .local v2, "widgetItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    const/4 v3, 0x0

    .line 160
    .local v3, "rowHeight":F
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 161
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/WidgetItem;

    .line 162
    .local v5, "widgetItem":Lcom/android/launcher3/model/WidgetItem;
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p2, v5}, Lcom/android/launcher3/widget/util/WidgetSizes;->getWidgetItemSizePx(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/model/WidgetItem;)Landroid/util/Size;

    move-result-object v6

    .line 164
    .local v6, "widgetSize":Landroid/util/Size;
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, p1

    .line 165
    .local v7, "previewHeight":F
    iget v8, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->mWidgetCellTextViewsHeight:F

    add-float/2addr v8, v7

    iget v9, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->mWidgetCellVerticalPadding:F

    add-float/2addr v8, v9

    invoke-static {v3, v8}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 160
    .end local v5    # "widgetItem":Lcom/android/launcher3/model/WidgetItem;
    .end local v6    # "widgetSize":Landroid/util/Size;
    .end local v7    # "previewHeight":F
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 168
    .end local v4    # "j":I
    :cond_1
    add-float/2addr v0, v3

    .line 157
    .end local v2    # "widgetItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    .end local v3    # "rowHeight":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .end local v1    # "i":I
    :cond_2
    iget v1, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->mRecommendationTableMaxHeight:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    .line 172
    new-instance v1, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;

    invoke-direct {v1, p0, p3, p1}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;-><init>(Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;Ljava/util/List;F)V

    return-object v1

    .line 175
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    .line 178
    nop

    .line 182
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .line 181
    const/4 v2, 0x0

    invoke-interface {p3, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 178
    invoke-direct {p0, p1, p2, v1}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->fitRecommendedWidgetsToTableSpace(FLcom/android/launcher3/DeviceProfile;Ljava/util/List;)Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;

    move-result-object v1

    return-object v1

    .line 185
    :cond_4
    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v1, p1

    .line 186
    .local v1, "nextPreviewScale":F
    invoke-direct {p0, v1, p2, p3}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->fitRecommendedWidgetsToTableSpace(FLcom/android/launcher3/DeviceProfile;Ljava/util/List;)Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public setRecommendedWidgets(Ljava/util/List;Lcom/android/launcher3/DeviceProfile;F)Z
    .locals 2
    .param p2, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;
    .param p3, "recommendationTableMaxHeight"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;>;",
            "Lcom/android/launcher3/DeviceProfile;",
            "F)Z"
        }
    .end annotation

    .line 93
    .local p1, "recommendedWidgets":Ljava/util/List;, "Ljava/util/List<Ljava/util/ArrayList<Lcom/android/launcher3/model/WidgetItem;>;>;"
    iput p3, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->mRecommendationTableMaxHeight:F

    .line 94
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, p2, p1}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->fitRecommendedWidgetsToTableSpace(FLcom/android/launcher3/DeviceProfile;Ljava/util/List;)Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;

    move-result-object v0

    .line 97
    .local v0, "data":Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;
    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->bindData(Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;)V

    .line 98
    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;->-$$Nest$fgetmRecommendationTable(Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public setWidgetCellLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1, "onLongClickListener"    # Landroid/view/View$OnLongClickListener;

    .line 72
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->mWidgetCellOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 73
    return-void
.end method

.method public setWidgetCellOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "widgetCellOnClickListener"    # Landroid/view/View$OnClickListener;

    .line 77
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->mWidgetCellOnClickListener:Landroid/view/View$OnClickListener;

    .line 78
    return-void
.end method
