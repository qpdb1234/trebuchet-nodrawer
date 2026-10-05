.class public Lcom/android/launcher3/ShortcutAndWidgetContainer;
.super Landroid/view/ViewGroup;
.source "ShortcutAndWidgetContainer.java"

# interfaces
.implements Lcom/android/launcher3/folder/FolderIcon$FolderIconParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/ShortcutAndWidgetContainer$TranslationProvider;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "ShortcutAndWidgetContainer"


# instance fields
.field private final mActivity:Lcom/android/launcher3/views/ActivityContext;

.field private mBorderSpace:Landroid/graphics/Point;

.field private mCellHeight:I

.field private mCellWidth:I

.field private final mContainerType:I

.field private mCountX:I

.field private mCountY:I

.field private mInvertIfRtl:Z

.field private final mTmpCellXY:[I

.field private mTranslationProvider:Lcom/android/launcher3/ShortcutAndWidgetContainer$TranslationProvider;

.field private final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerType"    # I

    .line 72
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mTmpCellXY:[I

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mInvertIfRtl:Z

    .line 68
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mTranslationProvider:Lcom/android/launcher3/ShortcutAndWidgetContainer$TranslationProvider;

    .line 73
    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    iput-object v1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    .line 74
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 75
    iput p2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mContainerType:I

    .line 76
    invoke-virtual {p0, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setClipChildren(Z)V

    .line 77
    return-void
.end method


# virtual methods
.method public addViewInLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .line 127
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-super {p0, p1, v0, p2, v1}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v0

    return v0
.end method

.method public cancelLongPress()V
    .locals 3

    .line 288
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 291
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 292
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 293
    invoke-virtual {p0, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 294
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->cancelLongPress()V

    .line 292
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public clearFolderLeaveBehind(Lcom/android/launcher3/folder/FolderIcon;)V
    .locals 2
    .param p1, "child"    # Lcom/android/launcher3/folder/FolderIcon;

    .line 311
    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->canReorder:Z

    .line 312
    iget v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mContainerType:I

    if-ne v0, v1, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 314
    .local v0, "cl":Lcom/android/launcher3/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->clearFolderLeaveBehind()V

    .line 316
    .end local v0    # "cl":Lcom/android/launcher3/CellLayout;
    :cond_0
    return-void
.end method

.method public drawFolderLeaveBehindForIcon(Lcom/android/launcher3/folder/FolderIcon;)V
    .locals 4
    .param p1, "child"    # Lcom/android/launcher3/folder/FolderIcon;

    .line 300
    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    .line 302
    .local v0, "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->canReorder:Z

    .line 303
    iget v1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mContainerType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    .line 305
    .local v1, "cl":Lcom/android/launcher3/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/CellLayout;->setFolderLeaveBehindCell(II)V

    .line 307
    .end local v1    # "cl":Lcom/android/launcher3/CellLayout;
    :cond_0
    return-void
.end method

.method public getCellContentHeight()I
    .locals 3

    .line 149
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    .line 150
    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mContainerType:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/DeviceProfile;->getCellContentHeight(I)I

    move-result v1

    .line 149
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 6
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I

    .line 89
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 90
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 91
    invoke-virtual {p0, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 92
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    .line 94
    .local v3, "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    invoke-virtual {v3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v4

    if-gt v4, p1, :cond_0

    invoke-virtual {v3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v4

    iget v5, v3, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge p1, v4, :cond_0

    .line 95
    invoke-virtual {v3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v4

    if-gt v4, p2, :cond_0

    invoke-virtual {v3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v4

    iget v5, v3, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    add-int/2addr v4, v5

    if-ge p2, v4, :cond_0

    .line 96
    return-object v2

    .line 90
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public invertLayoutHorizontally()Z
    .locals 1

    .line 189
    iget-boolean v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mInvertIfRtl:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public layoutChild(Landroid/view/View;)V
    .locals 18
    .param p1, "child"    # Landroid/view/View;

    .line 209
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    .line 210
    .local v8, "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    instance-of v1, v7, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    if-eqz v1, :cond_0

    .line 211
    move-object v1, v7

    check-cast v1, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    .line 214
    .local v1, "nahv":Lcom/android/launcher3/widget/NavigableAppWidgetHostView;
    iget-object v2, v0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    .line 215
    .local v2, "profile":Lcom/android/launcher3/DeviceProfile;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/DeviceProfile;->getAppWidgetScale(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/PointF;

    move-result-object v3

    .line 216
    .local v3, "appWidgetScale":Landroid/graphics/PointF;
    iget v4, v3, Landroid/graphics/PointF;->x:F

    .line 217
    .local v4, "scaleX":F
    iget v5, v3, Landroid/graphics/PointF;->y:F

    .line 219
    .local v5, "scaleY":F
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->setScaleToFit(F)V

    .line 220
    invoke-virtual {v1}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getTranslateDelegate()Lcom/android/launcher3/util/MultiTranslateDelegate;

    move-result-object v6

    iget v9, v8, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->width:I

    int-to-float v9, v9

    iget v10, v8, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->width:I

    int-to-float v10, v10

    mul-float/2addr v10, v4

    sub-float/2addr v9, v10

    neg-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iget v11, v8, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->height:I

    int-to-float v11, v11

    iget v12, v8, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->height:I

    int-to-float v12, v12

    mul-float/2addr v12, v5

    sub-float/2addr v11, v12

    neg-float v11, v11

    div-float/2addr v11, v10

    const/4 v10, 0x4

    invoke-virtual {v6, v10, v9, v11}, Lcom/android/launcher3/util/MultiTranslateDelegate;->setTranslation(IFF)V

    .line 225
    .end local v1    # "nahv":Lcom/android/launcher3/widget/NavigableAppWidgetHostView;
    .end local v2    # "profile":Lcom/android/launcher3/DeviceProfile;
    .end local v3    # "appWidgetScale":Landroid/graphics/PointF;
    .end local v4    # "scaleX":F
    .end local v5    # "scaleY":F
    :cond_0
    iget v9, v8, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->x:I

    .line 226
    .local v9, "childLeft":I
    iget v10, v8, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->y:I

    .line 232
    .local v10, "childTop":I
    instance-of v1, v7, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v1, :cond_1

    move-object v11, v7

    check-cast v11, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 233
    .local v11, "widgetView":Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    invoke-virtual {v11}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getCellChildViewPreLayoutListener()Lcom/android/launcher3/widget/LauncherAppWidgetHostView$CellChildViewPreLayoutListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 234
    invoke-virtual {v11}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getCellChildViewPreLayoutListener()Lcom/android/launcher3/widget/LauncherAppWidgetHostView$CellChildViewPreLayoutListener;

    move-result-object v1

    iget v2, v8, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->width:I

    add-int v5, v9, v2

    iget v2, v8, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->height:I

    add-int v6, v10, v2

    move-object/from16 v2, p1

    move v3, v9

    move v4, v10

    invoke-interface/range {v1 .. v6}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView$CellChildViewPreLayoutListener;->notifyBoundChangeOnPreLayout(Landroid/view/View;IIII)V

    .line 237
    .end local v11    # "widgetView":Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    :cond_1
    iget v1, v8, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->width:I

    add-int/2addr v1, v9

    iget v2, v8, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->height:I

    add-int/2addr v2, v10

    invoke-virtual {v7, v9, v10, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 238
    iget-object v1, v0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mTranslationProvider:Lcom/android/launcher3/ShortcutAndWidgetContainer$TranslationProvider;

    if-eqz v1, :cond_3

    .line 239
    invoke-interface {v1, v7}, Lcom/android/launcher3/ShortcutAndWidgetContainer$TranslationProvider;->getTranslationX(Landroid/view/View;)F

    move-result v1

    .line 240
    .local v1, "tx":F
    instance-of v2, v7, Lcom/android/launcher3/Reorderable;

    if-eqz v2, :cond_2

    .line 241
    move-object v2, v7

    check-cast v2, Lcom/android/launcher3/Reorderable;

    invoke-interface {v2}, Lcom/android/launcher3/Reorderable;->getTranslateDelegate()Lcom/android/launcher3/util/MultiTranslateDelegate;

    move-result-object v2

    .line 242
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/MultiTranslateDelegate;->getTranslationX(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v2

    .line 243
    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->setValue(F)V

    goto :goto_0

    .line 245
    :cond_2
    invoke-virtual {v7, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 249
    .end local v1    # "tx":F
    :cond_3
    :goto_0
    iget-boolean v1, v8, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->dropped:Z

    if-eqz v1, :cond_4

    .line 250
    const/4 v1, 0x0

    iput-boolean v1, v8, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->dropped:Z

    .line 252
    iget-object v2, v0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mTmpCellXY:[I

    .line 253
    .local v2, "cellXY":[I
    invoke-virtual {v0, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getLocationOnScreen([I)V

    .line 254
    iget-object v11, v0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v12

    const-string v13, "android.home.drop"

    aget v1, v2, v1

    add-int/2addr v1, v9

    iget v3, v8, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->width:I

    div-int/lit8 v3, v3, 0x2

    add-int v14, v1, v3

    const/4 v1, 0x1

    aget v1, v2, v1

    add-int/2addr v1, v10

    iget v3, v8, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->height:I

    div-int/lit8 v3, v3, 0x2

    add-int v15, v1, v3

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v11 .. v17}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 259
    .end local v2    # "cellXY":[I
    :cond_4
    return-void
.end method

.method public measureChild(Landroid/view/View;)V
    .locals 13
    .param p1, "child"    # Landroid/view/View;

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    .line 155
    .local v0, "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    iget-object v1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v11

    .line 157
    .local v11, "dp":Lcom/android/launcher3/DeviceProfile;
    instance-of v1, p1, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v11, v1}, Lcom/android/launcher3/DeviceProfile;->getAppWidgetScale(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/PointF;

    move-result-object v12

    .line 159
    .local v12, "appWidgetScale":Landroid/graphics/PointF;
    iget v2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellWidth:I

    iget v3, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellHeight:I

    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v4

    iget v5, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountX:I

    iget v6, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountY:I

    iget v7, v12, Landroid/graphics/PointF;->x:F

    iget v8, v12, Landroid/graphics/PointF;->y:F

    iget-object v9, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mBorderSpace:Landroid/graphics/Point;

    iget-object v10, v11, Lcom/android/launcher3/DeviceProfile;->widgetPadding:Landroid/graphics/Rect;

    move-object v1, v0

    invoke-virtual/range {v1 .. v10}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setup(IIZIIFFLandroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 161
    .end local v12    # "appWidgetScale":Landroid/graphics/PointF;
    goto/16 :goto_3

    .line 162
    :cond_0
    iget v2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellWidth:I

    iget v3, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellHeight:I

    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v4

    iget v5, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountX:I

    iget v6, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountY:I

    iget-object v7, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mBorderSpace:Landroid/graphics/Point;

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setup(IIZIILandroid/graphics/Point;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getCellContentHeight()I

    move-result v1

    .line 167
    .local v1, "cHeight":I
    iget v2, v11, Lcom/android/launcher3/DeviceProfile;->cellYPaddingPx:I

    const/high16 v3, 0x40000000    # 2.0f

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mContainerType:I

    if-nez v2, :cond_1

    .line 168
    iget v2, v11, Lcom/android/launcher3/DeviceProfile;->cellYPaddingPx:I

    goto :goto_0

    .line 169
    :cond_1
    iget v2, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->height:I

    sub-int/2addr v2, v1

    int-to-float v2, v2

    div-float/2addr v2, v3

    const/4 v4, 0x0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    :goto_0
    nop

    .line 172
    .local v2, "cellPaddingY":I
    iget-object v4, v11, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v4, :cond_2

    iget v4, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mContainerType:I

    if-eqz v4, :cond_5

    :cond_2
    iget-object v4, v11, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-lez v4, :cond_3

    iget v4, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mContainerType:I

    const/4 v7, 0x2

    if-eq v4, v7, :cond_5

    :cond_3
    iget v4, v11, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    if-lez v4, :cond_4

    iget v4, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mContainerType:I

    if-ne v4, v5, :cond_4

    goto :goto_1

    :cond_4
    move v5, v6

    :cond_5
    :goto_1
    move v4, v5

    .line 176
    .local v4, "noPaddingX":Z
    if-eqz v4, :cond_6

    .line 177
    move v3, v6

    goto :goto_2

    .line 178
    :cond_6
    iget v5, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mContainerType:I

    if-nez v5, :cond_7

    .line 179
    iget v3, v11, Lcom/android/launcher3/DeviceProfile;->workspaceCellPaddingXPx:I

    goto :goto_2

    .line 180
    :cond_7
    iget v5, v11, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    int-to-float v5, v5

    div-float/2addr v5, v3

    float-to-int v3, v5

    :goto_2
    nop

    .line 181
    .local v3, "cellPaddingX":I
    invoke-virtual {p1, v3, v2, v3, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 183
    .end local v1    # "cHeight":I
    .end local v2    # "cellPaddingY":I
    .end local v3    # "cellPaddingX":I
    .end local v4    # "noPaddingX":Z
    :goto_3
    iget v1, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->width:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 184
    .local v1, "childWidthMeasureSpec":I
    iget v3, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->height:I

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 185
    .local v2, "childheightMeasureSpec":I
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 186
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 264
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 266
    const/4 v0, 0x1

    return v0

    .line 268
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 194
    const-string v0, "ShortcutAndWidgetConteiner#onLayout"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 196
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 197
    invoke-virtual {p0, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 198
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 199
    invoke-virtual {p0, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->layoutChild(Landroid/view/View;)V

    .line 196
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    .end local v1    # "i":I
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 203
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 104
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 106
    .local v0, "count":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 107
    .local v1, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 108
    .local v2, "heightSpecSize":I
    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setMeasuredDimension(II)V

    .line 110
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 111
    invoke-virtual {p0, v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 112
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 113
    invoke-virtual {p0, v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    .line 110
    .end local v4    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .line 278
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 279
    if-eqz p1, :cond_0

    .line 280
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 281
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 282
    invoke-virtual {p0, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 284
    .end local v0    # "r":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public setCellDimensions(IIIILandroid/graphics/Point;)V
    .locals 0
    .param p1, "cellWidth"    # I
    .param p2, "cellHeight"    # I
    .param p3, "countX"    # I
    .param p4, "countY"    # I
    .param p5, "borderSpace"    # Landroid/graphics/Point;

    .line 81
    iput p1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellWidth:I

    .line 82
    iput p2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellHeight:I

    .line 83
    iput p3, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountX:I

    .line 84
    iput p4, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountY:I

    .line 85
    iput-object p5, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mBorderSpace:Landroid/graphics/Point;

    .line 86
    return-void
.end method

.method public setInvertIfRtl(Z)V
    .locals 0
    .param p1, "invert"    # Z

    .line 145
    iput-boolean p1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mInvertIfRtl:Z

    .line 146
    return-void
.end method

.method setTranslationProvider(Lcom/android/launcher3/ShortcutAndWidgetContainer$TranslationProvider;)V
    .locals 0
    .param p1, "provider"    # Lcom/android/launcher3/ShortcutAndWidgetContainer$TranslationProvider;

    .line 319
    iput-object p1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mTranslationProvider:Lcom/android/launcher3/ShortcutAndWidgetContainer$TranslationProvider;

    .line 320
    return-void
.end method

.method public setupLp(Landroid/view/View;)V
    .locals 13
    .param p1, "child"    # Landroid/view/View;

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    .line 132
    .local v0, "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    instance-of v1, p1, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v11

    .line 134
    .local v11, "profile":Lcom/android/launcher3/DeviceProfile;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v11, v1}, Lcom/android/launcher3/DeviceProfile;->getAppWidgetScale(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/PointF;

    move-result-object v12

    .line 135
    .local v12, "appWidgetScale":Landroid/graphics/PointF;
    iget v2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellWidth:I

    iget v3, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellHeight:I

    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v4

    iget v5, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountX:I

    iget v6, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountY:I

    iget v7, v12, Landroid/graphics/PointF;->x:F

    iget v8, v12, Landroid/graphics/PointF;->y:F

    iget-object v9, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mBorderSpace:Landroid/graphics/Point;

    iget-object v10, v11, Lcom/android/launcher3/DeviceProfile;->widgetPadding:Landroid/graphics/Rect;

    move-object v1, v0

    invoke-virtual/range {v1 .. v10}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setup(IIZIIFFLandroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 137
    .end local v11    # "profile":Lcom/android/launcher3/DeviceProfile;
    .end local v12    # "appWidgetScale":Landroid/graphics/PointF;
    goto :goto_0

    .line 138
    :cond_0
    iget v2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellWidth:I

    iget v3, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellHeight:I

    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v4

    iget v5, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountX:I

    iget v6, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountY:I

    iget-object v7, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mBorderSpace:Landroid/graphics/Point;

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setup(IIZIILandroid/graphics/Point;)V

    .line 141
    :goto_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 273
    const/4 v0, 0x0

    return v0
.end method
