.class public Lcom/android/launcher3/graphics/LauncherPreviewRenderer;
.super Landroid/content/ContextWrapper;
.source "LauncherPreviewRenderer.java"

# interfaces
.implements Lcom/android/launcher3/views/ActivityContext;
.implements Lcom/android/launcher3/WorkspaceLayoutManager;
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;,
        Lcom/android/launcher3/graphics/LauncherPreviewRenderer$LauncherPreviewAppWidgetHost;,
        Lcom/android/launcher3/graphics/LauncherPreviewRenderer$LauncherPreviewLayout;,
        Lcom/android/launcher3/graphics/LauncherPreviewRenderer$LauncherPreviewAppWidgetHostView;
    }
.end annotation


# instance fields
.field private final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private final mContext:Landroid/content/Context;

.field private final mDp:Lcom/android/launcher3/DeviceProfile;

.field private final mDpChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mDpOrig:Lcom/android/launcher3/DeviceProfile;

.field private final mHomeElementInflater:Landroid/view/LayoutInflater;

.field private final mHotseat:Lcom/android/launcher3/Hotseat;

.field private final mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

.field private final mInsets:Landroid/graphics/Rect;

.field private final mLauncherWidgetSpanInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private final mRootView:Lcom/android/launcher3/InsettableFrameLayout;

.field private final mUiHandler:Landroid/os/Handler;

.field private final mWallpaperColorResources:Landroid/util/SparseIntArray;

.field private final mWorkspaceScreens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher3/CellLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$2J-RdxbFQGiF5Zeg6TuL9QtKRT0(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/PointF;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->getAppWidgetScale(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SeT6D7FEkh5F11tp6hIs8vVMtyU(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->lambda$hideBottomRow$0(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmUiHandler(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mUiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Landroid/app/WallpaperColors;Landroid/util/SparseArray;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "idp"    # Lcom/android/launcher3/InvariantDeviceProfile;
    .param p3, "wallpaperColorsOverride"    # Landroid/app/WallpaperColors;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/InvariantDeviceProfile;",
            "Landroid/app/WallpaperColors;",
            "Landroid/util/SparseArray<",
            "Landroid/util/Size;",
            ">;)V"
        }
    .end annotation

    .line 194
    .local p4, "launcherWidgetSpanInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Size;>;"
    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 174
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDpChangeListeners:Ljava/util/List;

    .line 184
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mWorkspaceScreens:Ljava/util/Map;

    .line 195
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mUiHandler:Landroid/os/Handler;

    .line 196
    iput-object v1, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mContext:Landroid/content/Context;

    .line 197
    move-object/from16 v3, p2

    iput-object v3, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 198
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->getDeviceProfileForPreview(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/launcher3/DeviceProfile;->toBuilder(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/DeviceProfile$Builder;->setViewScaleProvider(Lcom/android/launcher3/DeviceProfile$ViewScaleProvider;)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v4

    .line 199
    invoke-virtual {v4}, Lcom/android/launcher3/DeviceProfile$Builder;->build()Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    iput-object v4, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDp:Lcom/android/launcher3/DeviceProfile;

    .line 200
    instance-of v5, v1, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    if-eqz v5, :cond_0

    .line 201
    move-object v5, v1

    check-cast v5, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    invoke-virtual {v5}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    .line 202
    .local v5, "tempContext":Landroid/content/Context;
    new-instance v6, Lcom/android/launcher3/InvariantDeviceProfile;

    .line 203
    invoke-static {v5}, Lcom/android/launcher3/InvariantDeviceProfile;->getCurrentGridName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v6

    .line 204
    invoke-virtual {v6, v5}, Lcom/android/launcher3/DeviceProfile;->copy(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v6

    iput-object v6, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDpOrig:Lcom/android/launcher3/DeviceProfile;

    .line 205
    .end local v5    # "tempContext":Landroid/content/Context;
    goto :goto_0

    .line 206
    :cond_0
    iput-object v4, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDpOrig:Lcom/android/launcher3/DeviceProfile;

    .line 208
    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->getInsets(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v5

    iput-object v5, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mInsets:Landroid/graphics/Rect;

    .line 209
    invoke-virtual {v4, v5}, Lcom/android/launcher3/DeviceProfile;->updateInsets(Landroid/graphics/Rect;)V

    .line 211
    new-instance v6, Landroid/view/ContextThemeWrapper;

    sget v7, Lcom/android/launcher3/R$style;->HomeScreenElementTheme:I

    invoke-direct {v6, p0, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    iput-object v6, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mHomeElementInflater:Landroid/view/LayoutInflater;

    .line 213
    invoke-virtual {v6, p0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 215
    iget-boolean v7, v4, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v7, :cond_1

    sget v7, Lcom/android/launcher3/R$layout;->launcher_preview_two_panel_layout:I

    goto :goto_1

    .line 216
    :cond_1
    sget v7, Lcom/android/launcher3/R$layout;->launcher_preview_layout:I

    :goto_1
    nop

    .line 217
    .local v7, "layoutRes":I
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/InsettableFrameLayout;

    iput-object v6, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mRootView:Lcom/android/launcher3/InsettableFrameLayout;

    .line 219
    invoke-virtual {v6, v5}, Lcom/android/launcher3/InsettableFrameLayout;->setInsets(Landroid/graphics/Rect;)V

    .line 220
    iget v5, v4, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v10, v4, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-static {v6, v5, v10}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->measureView(Landroid/view/View;II)V

    .line 222
    sget v5, Lcom/android/launcher3/R$id;->hotseat:I

    invoke-virtual {v6, v5}, Lcom/android/launcher3/InsettableFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/Hotseat;

    iput-object v5, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mHotseat:Lcom/android/launcher3/Hotseat;

    .line 223
    invoke-virtual {v5, v9}, Lcom/android/launcher3/Hotseat;->resetLayout(Z)V

    .line 225
    if-nez p4, :cond_2

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    goto :goto_2

    .line 226
    :cond_2
    move-object/from16 v5, p4

    :goto_2
    iput-object v5, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mLauncherWidgetSpanInfo:Landroid/util/SparseArray;

    .line 228
    sget v5, Lcom/android/launcher3/R$id;->workspace:I

    invoke-virtual {v6, v5}, Lcom/android/launcher3/InsettableFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/CellLayout;

    .line 229
    .local v5, "firstScreen":Lcom/android/launcher3/CellLayout;
    iget-object v10, v4, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, v4, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v11

    iget-object v11, v4, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, v4, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v12

    .line 231
    iget-boolean v12, v4, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v12, :cond_3

    iget-object v12, v4, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    div-int/lit8 v12, v12, 0x2

    goto :goto_3

    .line 232
    :cond_3
    iget-object v12, v4, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    :goto_3
    iget-object v13, v4, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    iget-object v13, v4, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    iget-object v14, v4, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v14

    .line 229
    invoke-virtual {v5, v10, v11, v12, v13}, Lcom/android/launcher3/CellLayout;->setPadding(IIII)V

    .line 235
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-boolean v9, v4, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    const/4 v10, 0x1

    if-eqz v9, :cond_4

    .line 238
    sget v9, Lcom/android/launcher3/R$id;->workspace_right:I

    invoke-virtual {v6, v9}, Lcom/android/launcher3/InsettableFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/CellLayout;

    .line 239
    .local v6, "rightPanel":Lcom/android/launcher3/CellLayout;
    iget-object v9, v4, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    div-int/lit8 v9, v9, 0x2

    iget-object v11, v4, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v11

    iget-object v11, v4, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, v4, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v12

    iget-object v12, v4, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    iget-object v13, v4, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    iget-object v13, v4, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    iget-object v4, v4, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v4

    invoke-virtual {v6, v9, v11, v12, v13}, Lcom/android/launcher3/CellLayout;->setPadding(IIII)V

    .line 245
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .end local v6    # "rightPanel":Lcom/android/launcher3/CellLayout;
    :cond_4
    sget-boolean v2, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v2, :cond_7

    .line 249
    if-eqz p3, :cond_5

    .line 250
    move-object/from16 v2, p3

    goto :goto_4

    .line 251
    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object v2

    :goto_4
    nop

    .line 252
    .local v2, "wallpaperColors":Landroid/app/WallpaperColors;
    if-eqz v2, :cond_6

    .line 253
    nop

    .line 252
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/widget/LocalColorExtractor;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/widget/LocalColorExtractor;

    move-result-object v4

    .line 253
    invoke-virtual {v4, v2}, Lcom/android/launcher3/widget/LocalColorExtractor;->generateColorsOverride(Landroid/app/WallpaperColors;)Landroid/util/SparseIntArray;

    move-result-object v4

    goto :goto_5

    :cond_6
    move-object v4, v8

    :goto_5
    iput-object v4, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mWallpaperColorResources:Landroid/util/SparseIntArray;

    .line 254
    .end local v2    # "wallpaperColors":Landroid/app/WallpaperColors;
    goto :goto_6

    .line 255
    :cond_7
    iput-object v8, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mWallpaperColorResources:Landroid/util/SparseIntArray;

    .line 257
    :goto_6
    new-instance v2, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$LauncherPreviewAppWidgetHost;

    invoke-direct {v2, p0, v1, v8}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$LauncherPreviewAppWidgetHost;-><init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;Landroid/content/Context;Lcom/android/launcher3/graphics/LauncherPreviewRenderer$LauncherPreviewAppWidgetHost-IA;)V

    iput-object v2, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 258
    return-void
.end method

.method private dispatchVisibilityAggregated(Landroid/view/View;Z)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isVisible"    # Z

    .line 464
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 465
    .local v0, "thisVisible":Z
    :goto_0
    if-nez v0, :cond_1

    if-nez p2, :cond_2

    .line 466
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->onVisibilityAggregated(Z)V

    .line 469
    :cond_2
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_4

    .line 470
    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    move v1, v2

    :cond_3
    move p2, v1

    .line 471
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 472
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 474
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_4

    .line 475
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->dispatchVisibilityAggregated(Landroid/view/View;Z)V

    .line 474
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 478
    .end local v1    # "vg":Landroid/view/ViewGroup;
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_4
    return-void
.end method

.method private getAppWidgetScale(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/PointF;
    .locals 8
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 439
    instance-of v0, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-nez v0, :cond_0

    .line 440
    sget-object v0, Lcom/android/launcher3/DeviceProfile;->DEFAULT_SCALE:Landroid/graphics/PointF;

    return-object v0

    .line 442
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 443
    .local v0, "info":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    iget-object v1, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mLauncherWidgetSpanInfo:Landroid/util/SparseArray;

    iget v2, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 444
    .local v1, "launcherWidgetSize":Landroid/util/Size;
    if-nez v1, :cond_1

    .line 445
    sget-object v2, Lcom/android/launcher3/DeviceProfile;->DEFAULT_SCALE:Landroid/graphics/PointF;

    return-object v2

    .line 447
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDpOrig:Lcom/android/launcher3/DeviceProfile;

    .line 448
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v4

    .line 447
    invoke-static {v2, v3, v4}, Lcom/android/launcher3/widget/util/WidgetSizes;->getWidgetSizePx(Lcom/android/launcher3/DeviceProfile;II)Landroid/util/Size;

    move-result-object v2

    .line 449
    .local v2, "origSize":Landroid/util/Size;
    iget-object v3, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v4, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    iget v5, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/widget/util/WidgetSizes;->getWidgetSizePx(Lcom/android/launcher3/DeviceProfile;II)Landroid/util/Size;

    move-result-object v3

    .line 450
    .local v3, "newSize":Landroid/util/Size;
    new-instance v4, Landroid/graphics/PointF;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 451
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 450
    return-object v4
.end method

.method private getDeviceProfileForPreview(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 265
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 266
    .local v0, "density":F
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 268
    .local v1, "config":Landroid/content/res/Configuration;
    iget-object v2, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v3, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    iget v4, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sget-object v5, Lcom/android/launcher3/util/window/WindowManagerProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 271
    invoke-virtual {v5, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/util/window/WindowManagerProxy;

    invoke-virtual {v5, p1}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getRotation(Landroid/content/Context;)I

    move-result v5

    .line 268
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/launcher3/InvariantDeviceProfile;->getBestMatch(FFI)Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    return-object v2
.end method

.method private getInsets(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .line 279
    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v0

    .line 280
    .local v0, "info":Lcom/android/launcher3/util/DisplayController$Info;
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 281
    .local v1, "maxDiff":F
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    .line 282
    .local v2, "display":Landroid/view/Display;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 283
    .local v3, "insets":Landroid/graphics/Rect;
    iget-object v4, v0, Lcom/android/launcher3/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/util/WindowBounds;

    .line 284
    .local v5, "supportedBound":Lcom/android/launcher3/util/WindowBounds;
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v6

    iget-object v7, v5, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    .line 285
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v10

    iget-object v11, v5, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    sub-int/2addr v10, v11

    int-to-double v10, v10

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    .line 286
    .local v6, "diff":D
    iget v8, v5, Lcom/android/launcher3/util/WindowBounds;->rotationHint:I

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Display;->getRotation()I

    move-result v9

    if-ne v8, v9, :cond_0

    float-to-double v8, v1

    cmpg-double v8, v6, v8

    if-gez v8, :cond_0

    .line 288
    double-to-float v1, v6

    .line 289
    iget-object v3, v5, Lcom/android/launcher3/util/WindowBounds;->insets:Landroid/graphics/Rect;

    .line 291
    .end local v5    # "supportedBound":Lcom/android/launcher3/util/WindowBounds;
    .end local v6    # "diff":D
    :cond_0
    goto :goto_0

    .line 292
    :cond_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v4
.end method

.method private inflateAndAddCollectionIcon(Lcom/android/launcher3/model/data/FolderInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/android/launcher3/model/data/FolderInfo;

    .line 391
    iget v0, p1, Lcom/android/launcher3/model/data/FolderInfo;->container:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mWorkspaceScreens:Ljava/util/Map;

    iget v1, p1, Lcom/android/launcher3/model/data/FolderInfo;->screenId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    goto :goto_0

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mHotseat:Lcom/android/launcher3/Hotseat;

    :goto_0
    nop

    .line 394
    .local v0, "screen":Lcom/android/launcher3/CellLayout;
    iget v1, p1, Lcom/android/launcher3/model/data/FolderInfo;->itemType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 395
    sget v1, Lcom/android/launcher3/R$layout;->folder_icon:I

    invoke-static {v1, p0, v0, p1}, Lcom/android/launcher3/folder/FolderIcon;->inflateIcon(ILcom/android/launcher3/views/ActivityContext;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v1

    goto :goto_1

    .line 396
    :cond_1
    sget v1, Lcom/android/launcher3/R$layout;->app_pair_icon:I

    invoke-static {v1, p0, v0, p1}, Lcom/android/launcher3/apppairs/AppPairIcon;->inflateIcon(ILcom/android/launcher3/views/ActivityContext;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/apppairs/AppPairIcon;

    move-result-object v1

    :goto_1
    nop

    .line 397
    .local v1, "folderIcon":Landroid/widget/FrameLayout;
    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 398
    return-void
.end method

.method private inflateAndAddIcon(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 383
    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mWorkspaceScreens:Ljava/util/Map;

    iget v1, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->screenId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 384
    .local v0, "screen":Lcom/android/launcher3/CellLayout;
    iget-object v1, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mHomeElementInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/android/launcher3/R$layout;->app_icon:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    .line 386
    .local v1, "icon":Lcom/android/launcher3/BubbleTextView;
    invoke-virtual {v1, p1}, Lcom/android/launcher3/BubbleTextView;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    .line 387
    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 388
    return-void
.end method

.method private inflateAndAddPredictedIcon(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 455
    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mWorkspaceScreens:Ljava/util/Map;

    iget v1, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->screenId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 456
    .local v0, "screen":Lcom/android/launcher3/CellLayout;
    iget-object v1, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mHomeElementInflater:Landroid/view/LayoutInflater;

    invoke-static {v1, v0, p1}, Lcom/android/launcher3/uioverrides/PredictedAppIconInflater;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v1

    .line 457
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 458
    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 460
    :cond_0
    return-void
.end method

.method private inflateAndAddWidgets(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/model/WidgetsModel;)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .param p2, "widgetsModel"    # Lcom/android/launcher3/model/WidgetsModel;

    .line 416
    iget-object v0, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v1, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p2, v0, v1}, Lcom/android/launcher3/model/WidgetsModel;->getWidgetProviderInfoByProviderName(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/model/WidgetItem;

    move-result-object v0

    .line 418
    .local v0, "widgetItem":Lcom/android/launcher3/model/WidgetItem;
    if-nez v0, :cond_0

    .line 419
    return-void

    .line 421
    :cond_0
    iget-object v1, v0, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->inflateAndAddWidgets(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V

    .line 422
    return-void
.end method

.method private inflateAndAddWidgets(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .param p2, "providerInfo"    # Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    .line 426
    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget-object v1, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mContext:Landroid/content/Context;

    iget v2, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v1, v2, p2}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    .line 429
    .local v0, "view":Landroid/appwidget/AppWidgetHostView;
    iget-object v1, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mWallpaperColorResources:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_0

    .line 430
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setColorResources(Landroid/util/SparseIntArray;)V

    .line 433
    :cond_0
    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 434
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 435
    return-void
.end method

.method private inflateAndAddWidgets(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Ljava/util/Map;)V
    .locals 3
    .param p1, "info"    # Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;)V"
        }
    .end annotation

    .line 403
    .local p2, "widgetProviderInfoMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/util/ComponentKey;Landroid/appwidget/AppWidgetProviderInfo;>;"
    if-nez p2, :cond_0

    .line 404
    return-void

    .line 406
    :cond_0
    new-instance v0, Lcom/android/launcher3/util/ComponentKey;

    iget-object v1, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 408
    .local v0, "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v0, :cond_1

    .line 409
    return-void

    .line 411
    :cond_1
    nop

    .line 412
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 411
    invoke-static {v1, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->inflateAndAddWidgets(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V

    .line 413
    return-void
.end method

.method private synthetic lambda$hideBottomRow$0(Z)V
    .locals 4
    .param p1, "hide"    # Z

    .line 360
    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    .line 362
    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/launcher3/Hotseat;->setIconsAlpha(F)V

    .line 363
    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isQsbInline:Z

    if-eqz v0, :cond_4

    .line 364
    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Hotseat;->setQsbAlpha(F)V

    goto :goto_3

    .line 367
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Hotseat;->setQsbAlpha(F)V

    .line 369
    :cond_4
    :goto_3
    return-void
.end method

.method private static measureView(Landroid/view/View;II)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 561
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->measure(II)V

    .line 562
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1, p2}, Landroid/view/View;->layout(IIII)V

    .line 563
    return-void
.end method

.method private populate(Lcom/android/launcher3/model/BgDataModel;Ljava/util/Map;)V
    .locals 17
    .param p1, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/BgDataModel;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;)V"
        }
    .end annotation

    .line 483
    .local p2, "widgetProviderInfoMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/util/ComponentKey;Landroid/appwidget/AppWidgetProviderInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 484
    .local v3, "currentWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 485
    .local v4, "otherWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 486
    .local v5, "currentAppWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 488
    .local v6, "otherAppWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    iget-object v7, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mWorkspaceScreens:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-static {v7}, Lcom/android/launcher3/util/IntSet;->wrap(Ljava/lang/Iterable;)Lcom/android/launcher3/util/IntSet;

    move-result-object v7

    .line 489
    .local v7, "currentScreenIds":Lcom/android/launcher3/util/IntSet;
    iget-object v8, v1, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-static {v7, v8, v3, v4}, Lcom/android/launcher3/model/ModelUtils;->filterCurrentWorkspaceItems(Lcom/android/launcher3/util/IntSet;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 491
    iget-object v8, v1, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-static {v7, v8, v5, v6}, Lcom/android/launcher3/model/ModelUtils;->filterCurrentWorkspaceItems(Lcom/android/launcher3/util/IntSet;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 493
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/model/data/ItemInfo;

    .line 494
    .local v9, "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    iget v10, v9, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    sparse-switch v10, :sswitch_data_0

    goto :goto_1

    .line 501
    :sswitch_0
    move-object v10, v9

    check-cast v10, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-direct {v0, v10}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->inflateAndAddCollectionIcon(Lcom/android/launcher3/model/data/FolderInfo;)V

    .line 502
    goto :goto_1

    .line 497
    :sswitch_1
    move-object v10, v9

    check-cast v10, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v0, v10}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->inflateAndAddIcon(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    .line 498
    nop

    .line 506
    .end local v9    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    :goto_1
    goto :goto_0

    .line 507
    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/model/data/ItemInfo;

    .line 508
    .restart local v9    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    iget v10, v9, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    packed-switch v10, :pswitch_data_0

    goto :goto_3

    .line 511
    :pswitch_0
    if-eqz v2, :cond_1

    .line 512
    move-object v10, v9

    check-cast v10, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-direct {v0, v10, v2}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->inflateAndAddWidgets(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Ljava/util/Map;)V

    goto :goto_3

    .line 515
    :cond_1
    move-object v10, v9

    check-cast v10, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v11, v1, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    invoke-direct {v0, v10, v11}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->inflateAndAddWidgets(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/model/WidgetsModel;)V

    .line 518
    nop

    .line 522
    .end local v9    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    :goto_3
    goto :goto_2

    .line 523
    :cond_2
    iget-object v8, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v8, v8, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    invoke-static {v3, v8}, Lcom/android/launcher3/model/ModelUtils;->getMissingHotseatRanks(Ljava/util/List;I)Lcom/android/launcher3/util/IntArray;

    move-result-object v8

    .line 525
    .local v8, "ranks":Lcom/android/launcher3/util/IntArray;
    iget-object v9, v1, Lcom/android/launcher3/model/BgDataModel;->extraItems:Lcom/android/launcher3/util/IntSparseArrayMap;

    .line 526
    const/16 v10, -0x67

    invoke-virtual {v9, v10}, Lcom/android/launcher3/util/IntSparseArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    .line 527
    .local v9, "hotseatPredictions":Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;
    if-nez v9, :cond_3

    .line 528
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    goto :goto_4

    :cond_3
    iget-object v11, v9, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->items:Ljava/util/List;

    .line 529
    .local v11, "predictions":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    :goto_4
    invoke-virtual {v8}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v12

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 530
    .local v12, "count":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_5
    if-ge v13, v12, :cond_4

    .line 531
    invoke-virtual {v8, v13}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v14

    .line 532
    .local v14, "rank":I
    new-instance v15, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 533
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v15, v10}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    move-object v10, v15

    .line 534
    .local v10, "itemInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    const/16 v15, -0x67

    iput v15, v10, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->container:I

    .line 535
    iput v14, v10, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->rank:I

    .line 536
    iget-object v15, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v15, v14}, Lcom/android/launcher3/Hotseat;->getCellXFromOrder(I)I

    move-result v15

    iput v15, v10, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->cellX:I

    .line 537
    iget-object v15, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v15, v14}, Lcom/android/launcher3/Hotseat;->getCellYFromOrder(I)I

    move-result v15

    iput v15, v10, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->cellY:I

    .line 538
    iput v14, v10, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->screenId:I

    .line 539
    invoke-direct {v0, v10}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->inflateAndAddPredictedIcon(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    .line 530
    .end local v10    # "itemInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .end local v14    # "rank":I
    add-int/lit8 v13, v13, 0x1

    const/16 v10, -0x67

    goto :goto_5

    .line 553
    .end local v13    # "i":I
    :cond_4
    iget-object v10, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mRootView:Lcom/android/launcher3/InsettableFrameLayout;

    iget-object v13, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v13, v13, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget-object v14, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v14, v14, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-static {v10, v13, v14}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->measureView(Landroid/view/View;II)V

    .line 554
    iget-object v10, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mRootView:Lcom/android/launcher3/InsettableFrameLayout;

    const/4 v13, 0x1

    invoke-direct {v0, v10, v13}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->dispatchVisibilityAggregated(Landroid/view/View;Z)V

    .line 555
    iget-object v10, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mRootView:Lcom/android/launcher3/InsettableFrameLayout;

    iget-object v13, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v13, v13, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget-object v14, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v14, v14, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-static {v10, v13, v14}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->measureView(Landroid/view/View;II)V

    .line 557
    iget-object v10, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mRootView:Lcom/android/launcher3/InsettableFrameLayout;

    iget-object v13, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v13, v13, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget-object v14, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v14, v14, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-static {v10, v13, v14}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->measureView(Landroid/view/View;II)V

    .line 558
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;
    .locals 1

    .line 379
    sget-object v0, Lcom/android/launcher3/celllayout/CellPosMapper;->DEFAULT:Lcom/android/launcher3/celllayout/CellPosMapper;

    return-object v0
.end method

.method public getDeviceProfile()Lcom/android/launcher3/DeviceProfile;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDp:Lcom/android/launcher3/DeviceProfile;

    return-object v0
.end method

.method public getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;
    .locals 1

    .line 335
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getHotseat()Lcom/android/launcher3/Hotseat;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mHotseat:Lcom/android/launcher3/Hotseat;

    return-object v0
.end method

.method public getOnDeviceProfileChangeListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;",
            ">;"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDpChangeListeners:Ljava/util/List;

    return-object v0
.end method

.method public getRenderedView(Lcom/android/launcher3/model/BgDataModel;Ljava/util/Map;)Landroid/view/View;
    .locals 1
    .param p1, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/BgDataModel;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 298
    .local p2, "widgetProviderInfoMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/util/ComponentKey;Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->populate(Lcom/android/launcher3/model/BgDataModel;Ljava/util/Map;)V

    .line 299
    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mRootView:Lcom/android/launcher3/InsettableFrameLayout;

    return-object v0
.end method

.method public getScreenWithId(I)Lcom/android/launcher3/CellLayout;
    .locals 2
    .param p1, "screenId"    # I

    .line 374
    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mWorkspaceScreens:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    return-object v0
.end method

.method public hideBottomRow(Z)V
    .locals 2
    .param p1, "hide"    # Z

    .line 359
    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 370
    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .line 304
    const-string v0, "TextClock"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    new-instance v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$1;

    invoke-direct {v0, p0, p3, p4}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$1;-><init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0

    .line 313
    :cond_0
    const-string v0, "fragment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 314
    return-object v1

    .line 317
    :cond_1
    sget-object v0, Lcom/android/launcher3/R$styleable;->PreviewFragment:[I

    invoke-virtual {p3, p4, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 318
    .local v0, "ta":Landroid/content/res/TypedArray;
    sget v2, Lcom/android/launcher3/R$styleable;->PreviewFragment_android_name:I

    .line 319
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 318
    invoke-static {p3, v2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/graphics/FragmentWithPreview;

    .line 320
    .local v2, "f":Lcom/android/launcher3/graphics/FragmentWithPreview;
    invoke-virtual {v2, p3}, Lcom/android/launcher3/graphics/FragmentWithPreview;->enterPreviewMode(Landroid/content/Context;)V

    .line 321
    invoke-virtual {v2, v1}, Lcom/android/launcher3/graphics/FragmentWithPreview;->onInit(Landroid/os/Bundle;)V

    .line 323
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    move-object v4, p1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/launcher3/graphics/FragmentWithPreview;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 324
    .local v1, "view":Landroid/view/View;
    sget v3, Lcom/android/launcher3/R$styleable;->PreviewFragment_android_id:I

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    .line 325
    return-object v1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 330
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
