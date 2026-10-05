.class public Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
.super Landroid/appwidget/AppWidgetProviderInfo;
.source "LauncherAppWidgetProviderInfo.java"

# interfaces
.implements Lcom/android/launcher3/icons/ComponentWithLabelAndIcon;


# static fields
.field public static final CLS_CUSTOM_WIDGET_PREFIX:Ljava/lang/String; = "#custom-widget-"


# instance fields
.field protected mIsMinSizeFulfilled:Z

.field public maxSpanX:I

.field public maxSpanY:I

.field public minSpanX:I

.field public minSpanY:I

.field public spanX:I

.field public spanY:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 95
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetProviderInfo;-><init>(Landroid/os/Parcel;)V

    .line 96
    return-void
.end method

.method public static fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    .line 74
    instance-of v0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_0

    .line 75
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    .local v0, "launcherInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    goto :goto_0

    .line 82
    .end local v0    # "launcherInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 83
    .local v0, "p":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 84
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 85
    new-instance v1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    invoke-direct {v1, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;-><init>(Landroid/os/Parcel;)V

    .line 86
    .local v1, "launcherInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    move-object v0, v1

    .line 88
    .end local v1    # "launcherInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    .local v0, "launcherInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    :goto_0
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->initSpans(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V

    .line 89
    return-object v0
.end method

.method private getSpan(IIIF)I
    .locals 2
    .param p1, "widgetPadding"    # I
    .param p2, "widgetSize"    # I
    .param p3, "cellSpacing"    # I
    .param p4, "cellSize"    # F

    .line 190
    add-int v0, p2, p1

    add-int/2addr v0, p3

    int-to-float v0, v0

    int-to-float v1, p3

    add-float/2addr v1, p4

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getSpanX(Landroid/graphics/Rect;IIF)I
    .locals 2
    .param p1, "widgetPadding"    # Landroid/graphics/Rect;
    .param p2, "widgetWidth"    # I
    .param p3, "cellSpacing"    # I
    .param p4, "cellWidth"    # F

    .line 176
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getSpan(IIIF)I

    move-result v0

    return v0
.end method

.method private getSpanY(Landroid/graphics/Rect;IIF)I
    .locals 2
    .param p1, "widgetPadding"    # Landroid/graphics/Rect;
    .param p2, "widgetHeight"    # I
    .param p3, "cellSpacing"    # I
    .param p4, "cellHeight"    # F

    .line 181
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getSpan(IIIF)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final getComponent()Landroid/content/ComponentName;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getFullResIcon(Lcom/android/launcher3/icons/IconCache;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "cache"    # Lcom/android/launcher3/icons/IconCache;

    .line 233
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->icon:I

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/icons/IconCache;->getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 1
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 195
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinSpans()Landroid/graphics/Point;
    .locals 4

    .line 199
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    goto :goto_0

    :cond_0
    move v1, v2

    .line 200
    :goto_0
    iget v3, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    iget v2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    :cond_1
    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 199
    return-object v0
.end method

.method public final getUser()Landroid/os/UserHandle;
    .locals 1

    .line 228
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetFeatures()I
    .locals 1

    .line 208
    iget v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->widgetFeatures:I

    return v0
.end method

.method public initSpans(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "idp"    # Lcom/android/launcher3/InvariantDeviceProfile;

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "minSpanX":I
    const/4 v1, 0x0

    .line 101
    .local v1, "minSpanY":I
    iget v2, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 102
    .local v2, "maxSpanX":I
    iget v3, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    .line 103
    .local v3, "maxSpanY":I
    const/4 v4, 0x0

    .line 104
    .local v4, "spanX":I
    const/4 v5, 0x0

    .line 107
    .local v5, "spanY":I
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 108
    .local v6, "cellSize":Landroid/graphics/Point;
    iget-object v7, p2, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/DeviceProfile;

    .line 109
    .local v8, "dp":Lcom/android/launcher3/DeviceProfile;
    invoke-virtual {v8, v6}, Lcom/android/launcher3/DeviceProfile;->getCellSize(Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 110
    iget-object v9, v8, Lcom/android/launcher3/DeviceProfile;->widgetPadding:Landroid/graphics/Rect;

    .line 112
    .local v9, "widgetPadding":Landroid/graphics/Rect;
    iget v10, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minResizeWidth:I

    iget-object v11, v8, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    iget v12, v6, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    .line 113
    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getSpanX(Landroid/graphics/Rect;IIF)I

    move-result v10

    .line 112
    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 115
    iget v10, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minResizeHeight:I

    iget-object v11, v8, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    iget v12, v6, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    .line 116
    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getSpanY(Landroid/graphics/Rect;IIF)I

    move-result v10

    .line 115
    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 119
    sget-boolean v10, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v10, :cond_1

    .line 120
    iget v10, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->maxResizeWidth:I

    if-lez v10, :cond_0

    .line 121
    iget v10, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->maxResizeWidth:I

    iget-object v11, v8, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    iget v12, v6, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getSpanX(Landroid/graphics/Rect;IIF)I

    move-result v10

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 124
    :cond_0
    iget v10, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->maxResizeHeight:I

    if-lez v10, :cond_1

    .line 125
    iget v10, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->maxResizeHeight:I

    iget-object v11, v8, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    iget v12, v6, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getSpanY(Landroid/graphics/Rect;IIF)I

    move-result v10

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 130
    :cond_1
    iget v10, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minWidth:I

    iget-object v11, v8, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    iget v12, v6, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    .line 131
    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getSpanX(Landroid/graphics/Rect;IIF)I

    move-result v10

    .line 130
    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 133
    iget v10, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minHeight:I

    iget-object v11, v8, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    iget v12, v6, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    .line 134
    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getSpanY(Landroid/graphics/Rect;IIF)I

    move-result v10

    .line 133
    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 136
    .end local v8    # "dp":Lcom/android/launcher3/DeviceProfile;
    .end local v9    # "widgetPadding":Landroid/graphics/Rect;
    goto/16 :goto_0

    .line 138
    :cond_2
    sget-boolean v7, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v7, :cond_3

    .line 140
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 141
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 145
    iget v7, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->targetCellWidth:I

    if-lt v7, v0, :cond_3

    iget v7, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->targetCellWidth:I

    if-gt v7, v2, :cond_3

    iget v7, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->targetCellHeight:I

    if-lt v7, v1, :cond_3

    iget v7, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->targetCellHeight:I

    if-gt v7, v3, :cond_3

    .line 147
    iget v4, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->targetCellWidth:I

    .line 148
    iget v5, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->targetCellHeight:I

    .line 155
    :cond_3
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    .line 156
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    .line 157
    iput v2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->maxSpanX:I

    .line 158
    iput v3, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->maxSpanY:I

    .line 159
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget v8, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    if-gt v7, v8, :cond_4

    .line 160
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget v8, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    if-gt v7, v8, :cond_4

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    iput-boolean v7, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->mIsMinSizeFulfilled:Z

    .line 162
    iget v7, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanX:I

    .line 163
    iget v7, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanY:I

    .line 164
    return-void
.end method

.method public isConfigurationOptional()Z
    .locals 1

    .line 216
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->isReconfigurable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getWidgetFeatures()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 216
    :goto_0
    return v0
.end method

.method public isCustomWidget()Z
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#custom-widget-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMinSizeFulfilled()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->mIsMinSizeFulfilled:Z

    return v0
.end method

.method public isReconfigurable()Z
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getWidgetFeatures()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
