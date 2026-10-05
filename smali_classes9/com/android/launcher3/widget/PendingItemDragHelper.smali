.class public Lcom/android/launcher3/widget/PendingItemDragHelper;
.super Lcom/android/launcher3/graphics/DragPreviewProvider;
.source "PendingItemDragHelper.java"


# static fields
.field private static final MAX_WIDGET_SCALE:F = 1.25f


# instance fields
.field private final mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

.field private mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

.field private final mEnforcedRoundedCornersForWidget:F

.field private mEstimatedCellSize:[I

.field private mRemoteViewsPreview:Landroid/widget/RemoteViews;

.field private mRemoteViewsPreviewScale:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 66
    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider;-><init>(Landroid/view/View;)V

    .line 61
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mRemoteViewsPreviewScale:F

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PendingAddItemInfo;

    iput-object v0, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    .line 68
    nop

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->computeEnforcedRadius(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mEnforcedRoundedCornersForWidget:F

    .line 70
    return-void
.end method


# virtual methods
.method protected convertPreviewToAlphaBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "preview"    # Landroid/graphics/Bitmap;

    .line 225
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mEstimatedCellSize:[I

    if-nez v0, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    const/4 v1, 0x0

    aget v2, v0, v1

    .line 230
    .local v2, "w":I
    const/4 v3, 0x1

    aget v0, v0, v3

    .line 231
    .local v0, "h":I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 232
    .local v3, "b":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v1, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 234
    .local v4, "src":Landroid/graphics/Rect;
    iget v5, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->blurSizeOutline:I

    sub-int v5, v2, v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget v6, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->blurSizeOutline:I

    sub-int v6, v0, v6

    int-to-float v6, v6

    .line 235
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 234
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 236
    .local v5, "scaleFactor":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    float-to-int v6, v6

    .line 237
    .local v6, "scaledWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v7, v7

    .line 238
    .local v7, "scaledHeight":I
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v1, v1, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, v8

    .line 241
    .local v1, "dst":Landroid/graphics/Rect;
    sub-int v8, v2, v6

    const/4 v9, 0x2

    div-int/2addr v8, v9

    sub-int v10, v0, v7

    div-int/2addr v10, v9

    invoke-virtual {v1, v8, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 242
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v9}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v8, p1, v4, v1, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 243
    return-object v3

    .line 226
    .end local v0    # "h":I
    .end local v1    # "dst":Landroid/graphics/Rect;
    .end local v2    # "w":I
    .end local v3    # "b":Landroid/graphics/Bitmap;
    .end local v4    # "src":Landroid/graphics/Rect;
    .end local v5    # "scaleFactor":F
    .end local v6    # "scaledWidth":I
    .end local v7    # "scaledHeight":I
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider;->convertPreviewToAlphaBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public setAppWidgetHostViewPreview(Lcom/android/launcher3/widget/NavigableAppWidgetHostView;)V
    .locals 0
    .param p1, "appWidgetHostViewPreview"    # Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    .line 85
    iput-object p1, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    .line 86
    return-void
.end method

.method public setRemoteViewsPreview(Landroid/widget/RemoteViews;F)V
    .locals 0
    .param p1, "remoteViewsPreview"    # Landroid/widget/RemoteViews;
    .param p2, "previewScale"    # F

    .line 78
    iput-object p1, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mRemoteViewsPreview:Landroid/widget/RemoteViews;

    .line 79
    iput p2, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mRemoteViewsPreviewScale:F

    .line 80
    return-void
.end method

.method public startDrag(Landroid/graphics/Rect;IILandroid/graphics/Point;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 31
    .param p1, "previewBounds"    # Landroid/graphics/Rect;
    .param p2, "previewBitmapWidth"    # I
    .param p3, "previewViewWidth"    # I
    .param p4, "screenPos"    # Landroid/graphics/Point;
    .param p5, "source"    # Lcom/android/launcher3/DragSource;
    .param p6, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 99
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v5, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v5

    .line 100
    .local v5, "launcher":Lcom/android/launcher3/Launcher;
    invoke-static {v5}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    .line 102
    .local v6, "app":Lcom/android/launcher3/LauncherAppState;
    const/4 v7, 0x0

    .line 108
    .local v7, "preview":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v8

    iget-object v9, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    invoke-virtual {v8, v9}, Lcom/android/launcher3/Workspace;->estimateItemSize(Lcom/android/launcher3/model/data/ItemInfo;)[I

    move-result-object v8

    iput-object v8, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mEstimatedCellSize:[I

    .line 112
    iget-object v9, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    instance-of v10, v9, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    const/4 v11, 0x1

    const/4 v13, 0x0

    if-eqz v10, :cond_7

    .line 113
    check-cast v9, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    .line 115
    .local v9, "createWidgetInfo":Lcom/android/launcher3/widget/PendingAddWidgetInfo;
    int-to-float v10, v2

    const/high16 v14, 0x3fa00000    # 1.25f

    mul-float/2addr v10, v14

    float-to-int v10, v10

    aget v8, v8, v13

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 117
    .local v8, "maxWidth":I
    new-array v10, v11, [I

    .line 119
    .local v10, "previewSizeBeforeScale":[I
    iget-object v14, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mRemoteViewsPreview:Landroid/widget/RemoteViews;

    if-eqz v14, :cond_0

    .line 120
    new-instance v14, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-direct {v14, v5}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    iput-object v14, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    .line 121
    iget-object v15, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    check-cast v15, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v15, v15, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    const/4 v11, -0x1

    invoke-virtual {v14, v11, v15}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 123
    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v11

    .line 124
    .local v11, "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    iget-object v14, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    iget-object v15, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mRemoteViewsPreview:Landroid/widget/RemoteViews;

    invoke-virtual {v14, v15}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 125
    iget-object v14, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    iget v14, v14, Lcom/android/launcher3/PendingAddItemInfo;->spanX:I

    iget-object v15, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    iget v15, v15, Lcom/android/launcher3/PendingAddItemInfo;->spanY:I

    invoke-static {v11, v14, v15}, Lcom/android/launcher3/widget/util/WidgetSizes;->getWidgetSizePx(Lcom/android/launcher3/DeviceProfile;II)Landroid/util/Size;

    move-result-object v14

    .line 126
    .local v14, "widgetSizes":Landroid/util/Size;
    iget-object v15, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    .line 127
    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 128
    move-object/from16 v19, v11

    .end local v11    # "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    .local v19, "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    invoke-virtual {v14}, Landroid/util/Size;->getHeight()I

    move-result v11

    invoke-static {v11, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 126
    invoke-virtual {v15, v12, v11}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->measure(II)V

    .line 129
    iget-object v11, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->setClipChildren(Z)V

    .line 130
    iget-object v11, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    invoke-virtual {v11, v12}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->setClipToPadding(Z)V

    .line 131
    iget-object v11, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    iget v12, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mRemoteViewsPreviewScale:F

    invoke-virtual {v11, v12}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->setScaleToFit(F)V

    .line 133
    .end local v14    # "widgetSizes":Landroid/util/Size;
    .end local v19    # "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    :cond_0
    iget-object v11, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    if-eqz v11, :cond_1

    .line 134
    invoke-virtual {v11}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getMeasuredWidth()I

    move-result v11

    const/4 v12, 0x0

    aput v11, v10, v12

    .line 135
    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v11

    new-instance v12, Lcom/android/launcher3/widget/dragndrop/AppWidgetHostViewDragListener;

    invoke-direct {v12, v5}, Lcom/android/launcher3/widget/dragndrop/AppWidgetHostViewDragListener;-><init>(Lcom/android/launcher3/Launcher;)V

    .line 136
    invoke-virtual {v11, v12}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 138
    :cond_1
    if-nez v7, :cond_3

    iget-object v11, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    if-nez v11, :cond_3

    .line 139
    new-instance v11, Lcom/android/launcher3/icons/FastBitmapDrawable;

    new-instance v12, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;

    invoke-direct {v12, v5}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;-><init>(Landroid/content/Context;)V

    iget-object v13, v9, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    .line 140
    invoke-virtual {v12, v13, v8, v10}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->generateWidgetPreview(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;I[I)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 142
    .local v11, "p":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->isRoundedCornerEnabled()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 143
    new-instance v12, Lcom/android/launcher3/icons/RoundDrawableWrapper;

    iget v13, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mEnforcedRoundedCornersForWidget:F

    invoke-direct {v12, v11, v13}, Lcom/android/launcher3/icons/RoundDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    move-object v11, v12

    .line 145
    :cond_2
    move-object v7, v11

    .line 148
    .end local v11    # "p":Landroid/graphics/drawable/Drawable;
    :cond_3
    const/4 v11, 0x0

    aget v12, v10, v11

    if-ge v12, v2, :cond_5

    .line 150
    aget v11, v10, v11

    sub-int v11, v2, v11

    div-int/lit8 v11, v11, 0x2

    .line 151
    .local v11, "padding":I
    if-le v2, v3, :cond_4

    .line 152
    mul-int v12, v11, v3

    div-int v11, v12, v2

    .line 155
    :cond_4
    iget v12, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v11

    iput v12, v1, Landroid/graphics/Rect;->left:I

    .line 156
    iget v12, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v12, v11

    iput v12, v1, Landroid/graphics/Rect;->right:I

    .line 158
    .end local v11    # "padding":I
    :cond_5
    iget-object v11, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    if-eqz v11, :cond_6

    .line 159
    invoke-virtual {v11}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getScaleX()F

    move-result v11

    .line 160
    .local v11, "previewScale":F
    iget-object v12, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    invoke-virtual {v12}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getMeasuredWidth()I

    move-result v12

    .line 161
    .local v12, "widgetWidth":I
    iget-object v13, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    invoke-virtual {v13}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getMeasuredHeight()I

    move-result v13

    .line 162
    .local v13, "widgetHeight":I
    int-to-float v14, v12

    mul-float/2addr v14, v11

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 163
    .local v14, "previewWidth":I
    int-to-float v15, v13

    mul-float/2addr v15, v11

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 165
    .local v15, "previewHeight":I
    int-to-float v2, v12

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v19, v11, v18

    mul-float v2, v2, v19

    const/high16 v17, 0x40000000    # 2.0f

    div-float v2, v2, v17

    .line 166
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v3, v13

    sub-float v18, v11, v18

    mul-float v3, v3, v18

    div-float v3, v3, v17

    .line 167
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 165
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 168
    .end local v11    # "previewScale":F
    .end local v12    # "widgetWidth":I
    .end local v13    # "widgetHeight":I
    goto :goto_0

    .line 169
    .end local v14    # "previewWidth":I
    .end local v15    # "previewHeight":I
    :cond_6
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 170
    .restart local v14    # "previewWidth":I
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    .line 172
    .restart local v15    # "previewHeight":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v14

    div-float/2addr v2, v3

    .line 173
    .local v2, "scale":F
    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v3

    new-instance v11, Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget-object v12, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mView:Landroid/view/View;

    invoke-direct {v11, v5, v12}, Lcom/android/launcher3/widget/WidgetHostViewLoader;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;)V

    invoke-virtual {v3, v11}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 175
    const/4 v3, 0x0

    .line 176
    .local v3, "dragRegion":Landroid/graphics/Rect;
    const/4 v11, 0x1

    invoke-static {v11}, Lcom/android/launcher3/dragndrop/DraggableView;->ofType(I)Lcom/android/launcher3/dragndrop/DraggableView;

    move-result-object v8

    .line 177
    .end local v9    # "createWidgetInfo":Lcom/android/launcher3/widget/PendingAddWidgetInfo;
    .end local v10    # "previewSizeBeforeScale":[I
    .local v8, "draggableView":Lcom/android/launcher3/dragndrop/DraggableView;
    goto/16 :goto_1

    .line 178
    .end local v2    # "scale":F
    .end local v3    # "dragRegion":Landroid/graphics/Rect;
    .end local v8    # "draggableView":Lcom/android/launcher3/dragndrop/DraggableView;
    .end local v14    # "previewWidth":I
    .end local v15    # "previewHeight":I
    :cond_7
    move-object v2, v9

    check-cast v2, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    .line 179
    .local v2, "createShortcutInfo":Lcom/android/launcher3/widget/PendingAddShortcutInfo;
    invoke-virtual {v2, v5}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->getActivityInfo(Landroid/content/Context;)Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    move-result-object v3

    .line 180
    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->getFullResIcon(Lcom/android/launcher3/icons/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 181
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object v8

    .line 182
    .local v8, "li":Lcom/android/launcher3/icons/LauncherIcons;
    new-instance v9, Lcom/android/launcher3/icons/FastBitmapDrawable;

    .line 183
    const/4 v10, 0x0

    invoke-virtual {v8, v3, v10}, Lcom/android/launcher3/icons/LauncherIcons;->createScaledBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-direct {v9, v11}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v7, v9

    .line 184
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 185
    .restart local v14    # "previewWidth":I
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    .line 186
    .restart local v15    # "previewHeight":I
    invoke-virtual {v8}, Lcom/android/launcher3/icons/LauncherIcons;->recycle()V

    .line 187
    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v9

    iget v9, v9, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v9, v9

    int-to-float v10, v14

    div-float/2addr v9, v10

    .line 191
    .local v9, "scale":F
    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v10

    .line 192
    .local v10, "dp":Lcom/android/launcher3/DeviceProfile;
    iget v11, v10, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 194
    .local v11, "iconSize":I
    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/android/launcher3/R$dimen;->widget_preview_shortcut_padding:I

    .line 195
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 196
    .local v12, "padding":I
    iget v13, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v12

    iput v13, v1, Landroid/graphics/Rect;->left:I

    .line 197
    iget v13, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v12

    iput v13, v1, Landroid/graphics/Rect;->top:I

    .line 199
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 200
    .local v13, "dragRegion":Landroid/graphics/Rect;
    move-object/from16 v19, v2

    .end local v2    # "createShortcutInfo":Lcom/android/launcher3/widget/PendingAddShortcutInfo;
    .local v19, "createShortcutInfo":Lcom/android/launcher3/widget/PendingAddShortcutInfo;
    iget-object v2, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mEstimatedCellSize:[I

    const/16 v18, 0x0

    aget v2, v2, v18

    sub-int/2addr v2, v11

    div-int/lit8 v2, v2, 0x2

    iput v2, v13, Landroid/graphics/Rect;->left:I

    .line 201
    iget v2, v13, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v11

    iput v2, v13, Landroid/graphics/Rect;->right:I

    .line 202
    iget-object v2, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mEstimatedCellSize:[I

    const/16 v16, 0x1

    aget v2, v2, v16

    sub-int/2addr v2, v11

    move-object/from16 v16, v3

    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .local v16, "icon":Landroid/graphics/drawable/Drawable;
    iget v3, v10, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    sub-int/2addr v2, v3

    iget v3, v10, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, v13, Landroid/graphics/Rect;->top:I

    .line 204
    iget v2, v13, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v11

    iput v2, v13, Landroid/graphics/Rect;->bottom:I

    .line 205
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/launcher3/dragndrop/DraggableView;->ofType(I)Lcom/android/launcher3/dragndrop/DraggableView;

    move-result-object v2

    move-object v8, v2

    move v2, v9

    move-object v3, v13

    .line 208
    .end local v9    # "scale":F
    .end local v10    # "dp":Lcom/android/launcher3/DeviceProfile;
    .end local v11    # "iconSize":I
    .end local v12    # "padding":I
    .end local v13    # "dragRegion":Landroid/graphics/Rect;
    .end local v16    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v19    # "createShortcutInfo":Lcom/android/launcher3/widget/PendingAddShortcutInfo;
    .local v2, "scale":F
    .local v3, "dragRegion":Landroid/graphics/Rect;
    .local v8, "draggableView":Lcom/android/launcher3/dragndrop/DraggableView;
    :goto_1
    iget v9, v4, Landroid/graphics/Point;->x:I

    iget v10, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v10

    int-to-float v10, v14

    mul-float/2addr v10, v2

    int-to-float v11, v14

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    float-to-int v10, v10

    add-int/2addr v9, v10

    .line 210
    .local v9, "dragLayerX":I
    iget v10, v4, Landroid/graphics/Point;->y:I

    iget v12, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v12

    int-to-float v12, v15

    mul-float/2addr v12, v2

    int-to-float v13, v15

    sub-float/2addr v12, v13

    div-float/2addr v12, v11

    float-to-int v11, v12

    add-int/2addr v10, v11

    .line 214
    .local v10, "dragLayerY":I
    iget-object v11, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    if-eqz v11, :cond_8

    .line 215
    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v20

    iget-object v11, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    iget-object v12, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    move-object/from16 v21, v11

    move-object/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    move-object/from16 v25, p5

    move-object/from16 v26, v12

    move-object/from16 v27, v3

    move/from16 v28, v2

    move/from16 v29, v2

    move-object/from16 v30, p6

    invoke-virtual/range {v20 .. v30}, Lcom/android/launcher3/dragndrop/DragController;->startDrag(Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    goto :goto_2

    .line 218
    :cond_8
    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v20

    iget-object v11, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    move-object/from16 v25, p5

    move-object/from16 v26, v11

    move-object/from16 v27, v3

    move/from16 v28, v2

    move/from16 v29, v2

    move-object/from16 v30, p6

    invoke-virtual/range {v20 .. v30}, Lcom/android/launcher3/dragndrop/DragController;->startDrag(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    .line 221
    :goto_2
    return-void
.end method
