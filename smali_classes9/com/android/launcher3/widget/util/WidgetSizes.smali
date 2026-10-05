.class public final Lcom/android/launcher3/widget/util/WidgetSizes;
.super Ljava/lang/Object;
.source "WidgetSizes.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMinMaxSizes(Ljava/util/List;)Landroid/graphics/Rect;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/SizeF;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .line 154
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/SizeF;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0

    .line 157
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SizeF;

    .line 158
    .local v0, "first":Landroid/util/SizeF;
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0}, Landroid/util/SizeF;->getHeight()F

    move-result v3

    float-to-int v3, v3

    .line 159
    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0}, Landroid/util/SizeF;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 160
    .local v1, "result":Landroid/graphics/Rect;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 161
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SizeF;

    invoke-virtual {v3}, Landroid/util/SizeF;->getWidth()F

    move-result v3

    float-to-int v3, v3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SizeF;

    invoke-virtual {v4}, Landroid/util/SizeF;->getHeight()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->union(II)V

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public static getWidgetItemSizePx(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/model/WidgetItem;)Landroid/util/Size;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "profile"    # Lcom/android/launcher3/DeviceProfile;
    .param p2, "widgetItem"    # Lcom/android/launcher3/model/WidgetItem;

    .line 81
    invoke-virtual {p2}, Lcom/android/launcher3/model/WidgetItem;->isShortcut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$dimen;->widget_preview_shortcut_padding:I

    .line 83
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 84
    .local v0, "dimension":I
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, v0}, Landroid/util/Size;-><init>(II)V

    return-object v1

    .line 86
    .end local v0    # "dimension":I
    :cond_0
    iget v0, p2, Lcom/android/launcher3/model/WidgetItem;->spanX:I

    iget v1, p2, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/widget/util/WidgetSizes;->getWidgetSizePx(Lcom/android/launcher3/DeviceProfile;II)Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public static getWidgetSizeOptions(Landroid/content/Context;Landroid/content/ComponentName;II)Landroid/os/Bundle;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "provider"    # Landroid/content/ComponentName;
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I

    .line 131
    invoke-static {p0, p2, p3}, Lcom/android/launcher3/widget/util/WidgetSizes;->getWidgetSizesDp(Landroid/content/Context;II)Ljava/util/ArrayList;

    move-result-object v0

    .line 133
    .local v0, "paddedSizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/SizeF;>;"
    invoke-static {v0}, Lcom/android/launcher3/widget/util/WidgetSizes;->getMinMaxSizes(Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object v1

    .line 134
    .local v1, "rect":Landroid/graphics/Rect;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 135
    .local v2, "options":Landroid/os/Bundle;
    const-string v3, "appWidgetMinWidth"

    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 136
    const-string v3, "appWidgetMinHeight"

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    const-string v3, "appWidgetMaxWidth"

    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    const-string v3, "appWidgetMaxHeight"

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    const-string v3, "appWidgetSizes"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", paddedSizes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", getMinMaxSizes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "b/267448330"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-object v2
.end method

.method public static getWidgetSizePx(Lcom/android/launcher3/DeviceProfile;II)Landroid/util/Size;
    .locals 8
    .param p0, "profile"    # Lcom/android/launcher3/DeviceProfile;
    .param p1, "spanX"    # I
    .param p2, "spanY"    # I

    .line 60
    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v0, v1

    .line 61
    .local v0, "hBorderSpacing":I
    add-int/lit8 v1, p2, -0x1

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    mul-int/2addr v1, v2

    .line 63
    .local v1, "vBorderSpacing":I
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v2

    .line 64
    .local v2, "cellSize":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->widgetPadding:Landroid/graphics/Rect;

    .line 66
    .local v3, "padding":Landroid/graphics/Rect;
    new-instance v4, Landroid/util/Size;

    iget v5, v2, Landroid/graphics/Point;->x:I

    mul-int/2addr v5, p1

    add-int/2addr v5, v0

    iget v6, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget v6, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    iget v6, v2, Landroid/graphics/Point;->y:I

    mul-int/2addr v6, p2

    add-int/2addr v6, v1

    iget v7, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    invoke-direct {v4, v5, v6}, Landroid/util/Size;-><init>(II)V

    return-object v4
.end method

.method public static getWidgetSizesDp(Landroid/content/Context;II)Ljava/util/ArrayList;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spanX"    # I
    .param p2, "spanY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/ArrayList<",
            "Landroid/util/SizeF;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    .local v0, "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/SizeF;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 50
    .local v1, "density":F
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/DeviceProfile;

    .line 51
    .local v3, "profile":Lcom/android/launcher3/DeviceProfile;
    invoke-static {v3, p1, p2}, Lcom/android/launcher3/widget/util/WidgetSizes;->getWidgetSizePx(Lcom/android/launcher3/DeviceProfile;II)Landroid/util/Size;

    move-result-object v4

    .line 52
    .local v4, "widgetSizePx":Landroid/util/Size;
    new-instance v5, Landroid/util/SizeF;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v1

    .line 53
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v1

    invoke-direct {v5, v6, v7}, Landroid/util/SizeF;-><init>(FF)V

    .line 52
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .end local v3    # "profile":Lcom/android/launcher3/DeviceProfile;
    .end local v4    # "widgetSizePx":Landroid/util/Size;
    goto :goto_0

    .line 55
    :cond_0
    return-object v0
.end method

.method static synthetic lambda$updateWidgetSizeRangesAsync$0(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;III)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I
    .param p4, "widgetId"    # I

    .line 114
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 115
    .local v0, "widgetManager":Landroid/appwidget/AppWidgetManager;
    iget-object v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-static {p0, v1, p2, p3}, Lcom/android/launcher3/widget/util/WidgetSizes;->getWidgetSizeOptions(Landroid/content/Context;Landroid/content/ComponentName;II)Landroid/os/Bundle;

    move-result-object v1

    .line 116
    .local v1, "sizeOptions":Landroid/os/Bundle;
    const-string v2, "appWidgetSizes"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 118
    invoke-virtual {v0, p4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 117
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    return-void

    .line 122
    :cond_0
    invoke-virtual {v0, p4, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidgetOptions(ILandroid/os/Bundle;)V

    .line 123
    return-void
.end method

.method public static updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Landroid/content/Context;II)V
    .locals 2
    .param p0, "widgetView"    # Landroid/appwidget/AppWidgetHostView;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I

    .line 97
    nop

    .line 98
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 97
    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/launcher3/widget/util/WidgetSizes;->updateWidgetSizeRangesAsync(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/content/Context;II)V

    .line 99
    return-void
.end method

.method public static updateWidgetSizeRangesAsync(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/content/Context;II)V
    .locals 8
    .param p0, "widgetId"    # I
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I

    .line 109
    if-lez p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v7, Lcom/android/launcher3/widget/util/WidgetSizes$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move v5, p4

    move v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/widget/util/WidgetSizes$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;III)V

    invoke-virtual {v0, v7}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 124
    return-void

    .line 110
    :cond_1
    :goto_0
    return-void
.end method
