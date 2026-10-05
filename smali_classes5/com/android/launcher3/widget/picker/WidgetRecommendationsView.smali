.class public final Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;
.super Lcom/android/launcher3/PagedView;
.source "WidgetRecommendationsView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/PagedView<",
        "Lcom/android/launcher3/pageindicators/PageIndicatorDots;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_CATEGORIES:I = 0x3


# instance fields
.field private mAvailableHeight:F

.field private final mCategoryTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecommendationPageTitle:Landroid/widget/TextView;

.field private mWidgetCellOnClickListener:Landroid/view/View$OnClickListener;

.field private mWidgetCellOnLongClickListener:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->mAvailableHeight:F

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->mCategoryTitles:Ljava/util/List;

    .line 68
    return-void
.end method

.method private maybeDisplayInTable(Ljava/util/List;Lcom/android/launcher3/DeviceProfile;II)Z
    .locals 5
    .param p2, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;
    .param p3, "availableWidth"    # I
    .param p4, "cellPadding"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;",
            "Lcom/android/launcher3/DeviceProfile;",
            "II)Z"
        }
    .end annotation

    .line 234
    .local p1, "recommendedWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 235
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 237
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-static {p1, v0, p2, p3, p4}, Lcom/android/launcher3/widget/util/WidgetsTableUtils;->groupWidgetItemsUsingRowPxWithoutReordering(Ljava/util/List;Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;II)Ljava/util/List;

    move-result-object v2

    .line 244
    .local v2, "rows":Ljava/util/List;, "Ljava/util/List<Ljava/util/ArrayList<Lcom/android/launcher3/model/WidgetItem;>;>;"
    sget v3, Lcom/android/launcher3/R$layout;->widget_recommendations_table:I

    .line 245
    const/4 v4, 0x0

    invoke-virtual {v1, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;

    .line 249
    .local v3, "recommendationsTable":Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;
    iget-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->mWidgetCellOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->setWidgetCellOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->mWidgetCellOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->setWidgetCellLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 252
    iget v4, p0, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->mAvailableHeight:F

    invoke-virtual {v3, v2, p2, v4}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->setRecommendedWidgets(Ljava/util/List;Lcom/android/launcher3/DeviceProfile;F)Z

    move-result v4

    .line 254
    .local v4, "displayedAtLeastOne":Z
    if-eqz v4, :cond_0

    .line 255
    invoke-virtual {p0, v3}, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->addView(Landroid/view/View;)V

    .line 258
    :cond_0
    return v4
.end method

.method private updateTitleAndIndicator()V
    .locals 5

    .line 158
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->getPageCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    move v0, v2

    .line 159
    .local v0, "showPaginatedView":Z
    if-eqz v0, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    .line 160
    .local v2, "titleAndIndicatorVisibility":I
    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->mRecommendationPageTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->mPageIndicator:Landroid/view/View;

    check-cast v3, Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->setVisibility(I)V

    .line 162
    if-eqz v0, :cond_2

    .line 163
    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->mPageIndicator:Landroid/view/View;

    check-cast v3, Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->setActiveMarker(I)V

    .line 164
    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->setCurrentPage(I)V

    .line 165
    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->mRecommendationPageTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->mCategoryTitles:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :cond_2
    return-void
.end method


# virtual methods
.method protected canScroll(FF)Z
    .locals 1
    .param p1, "absVScroll"    # F
    .param p2, "absHScroll"    # F

    .line 182
    cmpl-float v0, p2, p1

    if-lez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->canScroll(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getViewForEducationTip()Landroid/view/View;
    .locals 2

    .line 263
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 265
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 267
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public initParentViews(Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;

    .line 72
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->initParentViews(Landroid/view/View;)V

    .line 73
    sget v0, Lcom/android/launcher3/R$id;->recommendations_page_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->mRecommendationPageTitle:Landroid/widget/TextView;

    .line 74
    return-void
.end method

.method protected notifyPageSwitchListener(I)V
    .locals 3
    .param p1, "prevPage"    # I

    .line 171
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->mRecommendationPageTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->mCategoryTitles:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->getNextPage()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->notifyPageSwitchListener(I)V

    .line 175
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->requestLayout()V

    .line 177
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 193
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 195
    .local v0, "hasMultiplePages":Z
    :goto_0
    if-eqz v0, :cond_4

    .line 196
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 197
    .local v2, "finalWidth":I
    const/4 v3, 0x0

    .line 199
    .local v3, "desiredHeight":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 200
    invoke-virtual {p0, v4}, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 201
    .local v5, "child":Landroid/view/View;
    invoke-virtual {p0, v5, p1, p2}, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->measureChild(Landroid/view/View;II)V

    .line 202
    iget v6, p0, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->mAvailableHeight:F

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    .line 209
    iget v6, p0, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->mCurrentPage:I

    if-ne v4, v6, :cond_2

    .line 210
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 211
    .local v6, "parentHeight":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 212
    .end local v6    # "parentHeight":I
    goto :goto_2

    .line 215
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 199
    .end local v5    # "child":Landroid/view/View;
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 219
    .end local v4    # "i":I
    :cond_3
    invoke-static {v3, p2, v1}, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->resolveSizeAndState(III)I

    move-result v1

    .line 220
    .local v1, "finalHeight":I
    invoke-virtual {p0, v2, v1}, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->setMeasuredDimension(II)V

    .line 221
    .end local v1    # "finalHeight":I
    .end local v2    # "finalWidth":I
    .end local v3    # "desiredHeight":I
    goto :goto_3

    .line 222
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->onMeasure(II)V

    .line 224
    :goto_3
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .line 187
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/PagedView;->onScrollChanged(IIII)V

    .line 188
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->mPageIndicator:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    iget v1, p0, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->mMaxScroll:I

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->setScroll(II)V

    .line 189
    return-void
.end method

.method public setRecommendations(Ljava/util/List;Lcom/android/launcher3/DeviceProfile;FII)Z
    .locals 1
    .param p2, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;
    .param p3, "availableHeight"    # F
    .param p4, "availableWidth"    # I
    .param p5, "cellPadding"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;",
            "Lcom/android/launcher3/DeviceProfile;",
            "FII)Z"
        }
    .end annotation

    .line 102
    .local p1, "recommendedWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    iput p3, p0, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->mAvailableHeight:F

    .line 103
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->removeAllViews()V

    .line 105
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->maybeDisplayInTable(Ljava/util/List;Lcom/android/launcher3/DeviceProfile;II)Z

    .line 106
    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->updateTitleAndIndicator()V

    .line 107
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setRecommendations(Ljava/util/Map;Lcom/android/launcher3/DeviceProfile;FII)Z
    .locals 8
    .param p2, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;
    .param p3, "availableHeight"    # F
    .param p4, "availableWidth"    # I
    .param p5, "cellPadding"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/widget/picker/WidgetRecommendationCategory;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;>;",
            "Lcom/android/launcher3/DeviceProfile;",
            "FII)Z"
        }
    .end annotation

    .line 128
    .local p1, "recommendations":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/widget/picker/WidgetRecommendationCategory;Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;>;"
    iput p3, p0, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->mAvailableHeight:F

    .line 129
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 130
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->mPageIndicator:Landroid/view/View;

    check-cast v1, Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    iget-boolean v2, p2, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->setPauseScroll(ZZ)V

    .line 131
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->removeAllViews()V

    .line 133
    const/4 v1, 0x0

    .line 137
    .local v1, "displayedCategories":I
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 140
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/launcher3/widget/picker/WidgetRecommendationCategory;Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-direct {p0, v5, p2, p4, p5}, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->maybeDisplayInTable(Ljava/util/List;Lcom/android/launcher3/DeviceProfile;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 141
    iget-object v5, p0, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->mCategoryTitles:Ljava/util/List;

    .line 142
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/widget/picker/WidgetRecommendationCategory;

    iget v7, v7, Lcom/android/launcher3/widget/picker/WidgetRecommendationCategory;->categoryTitleRes:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 141
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v1, v1, 0x1

    .line 146
    :cond_0
    const/4 v5, 0x3

    if-ne v1, v5, :cond_1

    .line 147
    goto :goto_1

    .line 149
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/launcher3/widget/picker/WidgetRecommendationCategory;Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;>;"
    :cond_1
    goto :goto_0

    .line 151
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->updateTitleAndIndicator()V

    .line 152
    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->mPageIndicator:Landroid/view/View;

    check-cast v2, Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    iget-boolean v4, p2, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->setPauseScroll(ZZ)V

    .line 153
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_3

    goto :goto_2

    :cond_3
    move v3, v5

    :goto_2
    return v3
.end method

.method public setWidgetCellLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1, "onLongClickListener"    # Landroid/view/View$OnLongClickListener;

    .line 78
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->mWidgetCellOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 79
    return-void
.end method

.method public setWidgetCellOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "widgetCellOnClickListener"    # Landroid/view/View$OnClickListener;

    .line 83
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetRecommendationsView;->mWidgetCellOnClickListener:Landroid/view/View$OnClickListener;

    .line 84
    return-void
.end method
