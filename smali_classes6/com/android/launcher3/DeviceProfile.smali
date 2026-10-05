.class public Lcom/android/launcher3/DeviceProfile;
.super Ljava/lang/Object;
.source "DeviceProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/DeviceProfile$ViewScaleProvider;,
        Lcom/android/launcher3/DeviceProfile$Builder;,
        Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_DIMENSION_PROVIDER:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/launcher3/DeviceProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_DOT_SIZE:I = 0x64

.field public static final DEFAULT_PROVIDER:Lcom/android/launcher3/DeviceProfile$ViewScaleProvider;

.field public static final DEFAULT_SCALE:Landroid/graphics/PointF;

.field private static final MAX_ASPECT_RATIO_FOR_ALTERNATE_EDIT_STATE:F = 1.5f

.field private static final MAX_HORIZONTAL_PADDING_PERCENT:F = 0.14f

.field private static final MIN_ASPECT_RATIO_FOR_EXTRA_TOP_PADDING:F = 1.5f

.field private static final MIN_FOLDER_TEXT_SIZE_SP:F = 16.0f

.field private static final MIN_WIDGET_PADDING_DP:F = 6.0f

.field private static final TALLER_DEVICE_ASPECT_RATIO_THRESHOLD:F = 2.15f

.field private static final TALL_DEVICE_ASPECT_RATIO_THRESHOLD:F = 2.0f

.field private static final TALL_DEVICE_EXTRA_SPACE_THRESHOLD_DP:F = 252.0f

.field private static final TALL_DEVICE_MORE_EXTRA_SPACE_THRESHOLD_DP:F = 268.0f


# instance fields
.field public allAppsBorderSpacePx:Landroid/graphics/Point;

.field public allAppsCellHeightPx:I

.field public allAppsCellWidthPx:I

.field public allAppsCloseDuration:I

.field public allAppsIconDrawablePaddingPx:I

.field public allAppsIconSizePx:I

.field public allAppsIconTextSizePx:F

.field public allAppsLeftRightMargin:I

.field public allAppsOpenDuration:I

.field public allAppsPadding:Landroid/graphics/Rect;

.field public allAppsShiftRange:I

.field public final areNavButtonsInline:Z

.field public final aspectRatio:F

.field public final availableHeightPx:I

.field public final availableWidthPx:I

.field public bottomSheetCloseDuration:I

.field public bottomSheetDepth:F

.field public bottomSheetOpenDuration:I

.field public bottomSheetTopPadding:I

.field public bottomSheetWorkspaceScale:F

.field public cellHeightPx:I

.field public cellLayoutBorderSpaceOriginalPx:Landroid/graphics/Point;

.field public cellLayoutBorderSpacePx:Landroid/graphics/Point;

.field public cellLayoutPaddingPx:Landroid/graphics/Rect;

.field public cellScaleToFit:F

.field public cellWidthPx:I

.field public cellYPaddingPx:I

.field public final desiredWorkspaceHorizontalMarginOriginalPx:I

.field public desiredWorkspaceHorizontalMarginPx:I

.field public dropTargetBarBottomMarginPx:I

.field public dropTargetBarSizePx:I

.field public dropTargetBarTopMarginPx:I

.field public dropTargetButtonWorkspaceEdgeGapPx:I

.field public dropTargetDragPaddingPx:I

.field public dropTargetGapPx:I

.field public dropTargetHorizontalPaddingPx:I

.field public dropTargetTextSizePx:I

.field public dropTargetVerticalPaddingPx:I

.field public final edgeMarginPx:I

.field private final extraSpace:I

.field public flingToDeleteThresholdVelocity:I

.field public folderCellHeightPx:I

.field public folderCellLayoutBorderSpacePx:Landroid/graphics/Point;

.field public folderCellWidthPx:I

.field public folderChildDrawablePaddingPx:I

.field public folderChildIconSizePx:I

.field public folderChildTextSizePx:I

.field public folderContentPaddingLeftRight:I

.field public folderContentPaddingTop:I

.field public folderFooterHeightPx:I

.field public folderIconOffsetYPx:I

.field public folderIconSizePx:I

.field public final folderLabelTextScale:F

.field public folderLabelTextSizePx:I

.field public gridVisualizationPaddingX:I

.field public gridVisualizationPaddingY:I

.field public final heightPx:I

.field public hotseatBarBottomSpacePx:I

.field public hotseatBarEndOffset:I

.field public hotseatBarSizePx:I

.field public hotseatBorderSpace:I

.field public hotseatCellHeightPx:I

.field public final hotseatQsbHeight:I

.field private final hotseatQsbShadowHeight:I

.field public hotseatQsbSpace:I

.field public final hotseatQsbVisualHeight:I

.field public hotseatQsbWidth:I

.field public iconCenterVertically:Z

.field public iconDrawablePaddingPx:I

.field public iconScale:F

.field public iconSizePx:I

.field public iconTextSizePx:I

.field public final inlineNavButtonsEndSpacingPx:I

.field public final inv:Lcom/android/launcher3/InvariantDeviceProfile;

.field public final isGestureMode:Z

.field public final isLandscape:Z

.field public final isLeftRightSplit:Z

.field public final isMultiDisplay:Z

.field public final isMultiWindowMode:Z

.field public final isPhone:Z

.field public final isQsbInline:Z

.field public final isTablet:Z

.field public isTaskbarPresent:Z

.field public isTaskbarPresentInApps:Z

.field public final isTransientTaskbar:Z

.field public final isTwoPanels:Z

.field private final mBubbleBarSpaceThresholdPx:I

.field public final mDotRendererAllApps:Lcom/android/launcher3/icons/DotRenderer;

.field public final mDotRendererWorkSpace:Lcom/android/launcher3/icons/DotRenderer;

.field public final mHotseatBarEdgePaddingPx:I

.field public final mHotseatBarWorkspaceSpacePx:I

.field private mIconDrawablePaddingOriginalPx:I

.field private final mIconSizeSteps:Lcom/android/launcher3/util/IconSizeSteps;

.field private final mInfo:Lcom/android/launcher3/util/DisplayController$Info;

.field private final mInsets:Landroid/graphics/Rect;

.field private final mIsResponsiveGrid:Z

.field private final mIsScalableGrid:Z

.field private mIsSeascape:Z

.field private final mMaxHotseatIconSpacePx:I

.field private final mMetrics:Landroid/util/DisplayMetrics;

.field private final mMinHotseatIconSpacePx:I

.field private final mMinHotseatQsbWidthPx:I

.field private mResponsiveAllAppsCellSpec:Lcom/android/launcher3/responsive/CalculatedCellSpec;

.field private mResponsiveAllAppsHeightSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

.field private mResponsiveAllAppsWidthSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

.field private mResponsiveFolderHeightSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

.field private mResponsiveFolderWidthSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

.field private mResponsiveHotseatSpec:Lcom/android/launcher3/responsive/CalculatedHotseatSpec;

.field private mResponsiveWorkspaceCellSpec:Lcom/android/launcher3/responsive/CalculatedCellSpec;

.field private mResponsiveWorkspaceHeightSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

.field private mResponsiveWorkspaceWidthSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

.field private final mTransientTaskbarClaimedSpace:I

.field private final mTypeIndex:I

.field private final mViewScaleProvider:Lcom/android/launcher3/DeviceProfile$ViewScaleProvider;

.field private final mWorkspacePageIndicatorOverlapWorkspace:I

.field private maxEmptySpace:I

.field public final numFolderColumns:I

.field public final numFolderRows:I

.field public final numShownAllAppsColumns:I

.field public numShownHotseatIcons:I

.field public final overviewActionsButtonSpacing:I

.field public final overviewActionsHeight:I

.field public final overviewActionsTopMarginPx:I

.field public overviewGridSideMargin:I

.field public overviewPageSpacing:I

.field public overviewRowSpacing:I

.field public overviewTaskIconDrawableSizeGridPx:I

.field public overviewTaskIconDrawableSizePx:I

.field public overviewTaskIconSizePx:I

.field public overviewTaskMarginPx:I

.field public overviewTaskThumbnailTopMarginPx:I

.field public final rotationHint:I

.field public splitPlaceholderInset:I

.field public springLoadedHotseatBarTopMarginPx:I

.field public final startAlignTaskbar:Z

.field public final stashedTaskbarHeight:I

.field public final taskbarBottomMargin:I

.field public final taskbarHeight:I

.field public final taskbarIconSize:I

.field public final transposeLayoutWithOrientation:Z

.field public final widgetPadding:Landroid/graphics/Rect;

.field public final widthPx:I

.field public final windowX:I

.field public final windowY:I

.field public workspaceBottomPadding:I

.field public workspaceCellPaddingXPx:I

.field public final workspaceContentScale:F

.field public final workspacePadding:Landroid/graphics/Rect;

.field public final workspacePageIndicatorHeight:I

.field public final workspaceSpringLoadedMinNextPageVisiblePx:I

.field public workspaceTopPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 90
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Lcom/android/launcher3/DeviceProfile;->DEFAULT_SCALE:Landroid/graphics/PointF;

    .line 91
    new-instance v0, Lcom/android/launcher3/DeviceProfile$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/DeviceProfile$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/launcher3/DeviceProfile;->DEFAULT_PROVIDER:Lcom/android/launcher3/DeviceProfile$ViewScaleProvider;

    .line 92
    new-instance v0, Lcom/android/launcher3/DeviceProfile$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/DeviceProfile$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/launcher3/DeviceProfile;->DEFAULT_DIMENSION_PROVIDER:Ljava/util/function/Consumer;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/util/DisplayController$Info;Lcom/android/launcher3/util/WindowBounds;Landroid/util/SparseArray;ZZZZLcom/android/launcher3/DeviceProfile$ViewScaleProvider;Ljava/util/function/Consumer;Z)V
    .locals 41
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inv"    # Lcom/android/launcher3/InvariantDeviceProfile;
    .param p3, "info"    # Lcom/android/launcher3/util/DisplayController$Info;
    .param p4, "windowBounds"    # Lcom/android/launcher3/util/WindowBounds;
    .param p6, "isMultiWindowMode"    # Z
    .param p7, "transposeLayoutWithOrientation"    # Z
    .param p8, "isMultiDisplay"    # Z
    .param p9, "isGestureMode"    # Z
    .param p10, "viewScaleProvider"    # Lcom/android/launcher3/DeviceProfile$ViewScaleProvider;
    .param p12, "isTransientTaskbar"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/InvariantDeviceProfile;",
            "Lcom/android/launcher3/util/DisplayController$Info;",
            "Lcom/android/launcher3/util/WindowBounds;",
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/icons/DotRenderer;",
            ">;ZZZZ",
            "Lcom/android/launcher3/DeviceProfile$ViewScaleProvider;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/launcher3/DeviceProfile;",
            ">;Z)V"
        }
    .end annotation

    .line 326
    .local p5, "dotRendererCache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/launcher3/icons/DotRenderer;>;"
    .local p11, "dimensionOverrideProvider":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/launcher3/DeviceProfile;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p12

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, v0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    .line 187
    const/4 v9, -0x1

    iput v9, v0, Lcom/android/launcher3/DeviceProfile;->cellYPaddingPx:I

    .line 250
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/launcher3/DeviceProfile;->allAppsPadding:Landroid/graphics/Rect;

    .line 292
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    .line 293
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, v0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    .line 296
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, v0, Lcom/android/launcher3/DeviceProfile;->widgetPadding:Landroid/graphics/Rect;

    .line 328
    iput-object v1, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 329
    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/util/WindowBounds;->isLandscape()Z

    move-result v11

    iput-boolean v11, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    .line 330
    iput-boolean v5, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    .line 331
    move/from16 v12, p7

    iput-boolean v12, v0, Lcom/android/launcher3/DeviceProfile;->transposeLayoutWithOrientation:Z

    .line 332
    iput-boolean v6, v0, Lcom/android/launcher3/DeviceProfile;->isMultiDisplay:Z

    .line 333
    iput-boolean v7, v0, Lcom/android/launcher3/DeviceProfile;->isGestureMode:Z

    .line 334
    iget-object v13, v3, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    iput v13, v0, Lcom/android/launcher3/DeviceProfile;->windowX:I

    .line 335
    iget-object v13, v3, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    iput v13, v0, Lcom/android/launcher3/DeviceProfile;->windowY:I

    .line 336
    iget v13, v3, Lcom/android/launcher3/util/WindowBounds;->rotationHint:I

    iput v13, v0, Lcom/android/launcher3/DeviceProfile;->rotationHint:I

    .line 337
    iget-object v13, v3, Lcom/android/launcher3/util/WindowBounds;->insets:Landroid/graphics/Rect;

    invoke-virtual {v10, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 340
    iget v13, v1, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceSpecsId:I

    if-eq v13, v9, :cond_0

    iget v13, v1, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsSpecsId:I

    if-eq v13, v9, :cond_0

    iget v13, v1, Lcom/android/launcher3/InvariantDeviceProfile;->folderSpecsId:I

    if-eq v13, v9, :cond_0

    iget v13, v1, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatSpecsId:I

    if-eq v13, v9, :cond_0

    iget v13, v1, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceCellSpecsId:I

    if-eq v13, v9, :cond_0

    iget v13, v1, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsCellSpecsId:I

    if-eq v13, v9, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    iput-boolean v13, v0, Lcom/android/launcher3/DeviceProfile;->mIsResponsiveGrid:Z

    .line 347
    iget-boolean v9, v1, Lcom/android/launcher3/InvariantDeviceProfile;->isScalable:Z

    if-eqz v9, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v9

    if-nez v9, :cond_1

    if-nez v5, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    iput-boolean v9, v0, Lcom/android/launcher3/DeviceProfile;->mIsScalableGrid:Z

    .line 349
    iput-object v2, v0, Lcom/android/launcher3/DeviceProfile;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    .line 350
    invoke-virtual/range {p3 .. p4}, Lcom/android/launcher3/util/DisplayController$Info;->isTablet(Lcom/android/launcher3/util/WindowBounds;)Z

    move-result v15

    iput-boolean v15, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    .line 351
    xor-int/lit8 v14, v15, 0x1

    iput-boolean v14, v0, Lcom/android/launcher3/DeviceProfile;->isPhone:Z

    .line 352
    if-eqz v15, :cond_2

    if-eqz v6, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    iput-boolean v5, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    .line 353
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 354
    nop

    .line 353
    const-string v4, "enable_taskbar"

    invoke-static {v12, v4, v15}, Llineageos/providers/LineageSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v12, 0x1

    if-ne v4, v12, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    .line 355
    .local v4, "isTaskBarEnabled":Z
    :goto_3
    const/4 v12, 0x0

    iput-boolean v12, v0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v12

    move/from16 v17, v4

    .end local v4    # "isTaskBarEnabled":Z
    .local v17, "isTaskBarEnabled":Z
    if-nez v12, :cond_5

    if-eqz v15, :cond_4

    if-eqz v11, :cond_4

    goto :goto_4

    .line 360
    :cond_4
    const/4 v12, 0x1

    goto :goto_5

    .line 359
    :cond_5
    :goto_4
    const/4 v12, 0x2

    .line 358
    :goto_5
    move-object/from16 v4, p1

    invoke-static {v4, v2, v12, v3}, Lcom/android/launcher3/DeviceProfile;->getContext(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;ILcom/android/launcher3/util/WindowBounds;)Landroid/content/Context;

    move-result-object v4

    .line 362
    .end local p1    # "context":Landroid/content/Context;
    .local v4, "context":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 363
    .local v12, "res":Landroid/content/res/Resources;
    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    .line 365
    move/from16 v19, v14

    new-instance v14, Lcom/android/launcher3/util/IconSizeSteps;

    invoke-direct {v14, v12}, Lcom/android/launcher3/util/IconSizeSteps;-><init>(Landroid/content/res/Resources;)V

    iput-object v14, v0, Lcom/android/launcher3/DeviceProfile;->mIconSizeSteps:Lcom/android/launcher3/util/IconSizeSteps;

    .line 368
    iget-object v14, v3, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    iput v14, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    .line 369
    iget-object v7, v3, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iput v7, v0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    .line 370
    move/from16 v20, v13

    iget-object v13, v3, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->x:I

    iput v13, v0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    .line 371
    move/from16 v25, v13

    iget-object v13, v3, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    iput v13, v0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    .line 373
    invoke-static {v14, v7}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-float v13, v13

    invoke-static {v14, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v13, v3

    iput v13, v0, Lcom/android/launcher3/DeviceProfile;->aspectRatio:F

    .line 374
    const/4 v3, 0x3

    if-eqz v5, :cond_7

    .line 375
    if-eqz v11, :cond_6

    .line 376
    iput v3, v0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    goto :goto_6

    .line 378
    :cond_6
    const/4 v3, 0x2

    iput v3, v0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    goto :goto_6

    .line 381
    :cond_7
    if-eqz v11, :cond_8

    .line 382
    const/4 v3, 0x1

    iput v3, v0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    goto :goto_6

    .line 384
    :cond_8
    const/4 v3, 0x0

    iput v3, v0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    .line 388
    :goto_6
    iput-boolean v8, v0, Lcom/android/launcher3/DeviceProfile;->isTransientTaskbar:Z

    .line 389
    iget-object v3, v1, Lcom/android/launcher3/InvariantDeviceProfile;->transientTaskbarIconSize:[F

    move/from16 v21, v14

    iget v14, v0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget v3, v3, v14

    invoke-static {v3, v2}, Lcom/android/launcher3/testing/shared/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v3

    .line 390
    .local v3, "transientTaskbarIconSize":I
    sget v14, Lcom/android/launcher3/R$dimen;->transient_taskbar_bottom_margin:I

    .line 391
    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 392
    .local v14, "transientTaskbarBottomMargin":I
    move/from16 v27, v5

    int-to-float v5, v3

    const v22, 0x3f6b851f    # 0.92f

    mul-float v5, v5, v22

    move-object/from16 v28, v4

    .end local v4    # "context":Landroid/content/Context;
    .local v28, "context":Landroid/content/Context;
    sget v4, Lcom/android/launcher3/R$dimen;->transient_taskbar_padding:I

    .line 394
    invoke-virtual {v12, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/16 v18, 0x2

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v5, v4

    .line 393
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 395
    .local v4, "transientTaskbarHeight":I
    mul-int/lit8 v5, v14, 0x2

    add-int/2addr v5, v4

    iput v5, v0, Lcom/android/launcher3/DeviceProfile;->mTransientTaskbarClaimedSpace:I

    .line 397
    iget-boolean v5, v0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-nez v5, :cond_9

    .line 398
    const/4 v5, 0x0

    iput v5, v0, Lcom/android/launcher3/DeviceProfile;->taskbarBottomMargin:I

    iput v5, v0, Lcom/android/launcher3/DeviceProfile;->stashedTaskbarHeight:I

    iput v5, v0, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    iput v5, v0, Lcom/android/launcher3/DeviceProfile;->taskbarIconSize:I

    .line 399
    iput-boolean v5, v0, Lcom/android/launcher3/DeviceProfile;->startAlignTaskbar:Z

    move/from16 v29, v3

    goto :goto_7

    .line 400
    :cond_9
    if-eqz v8, :cond_a

    .line 401
    iput v3, v0, Lcom/android/launcher3/DeviceProfile;->taskbarIconSize:I

    .line 402
    iput v4, v0, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    .line 403
    sget v5, Lcom/android/launcher3/R$dimen;->transient_taskbar_stashed_height:I

    .line 404
    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Lcom/android/launcher3/DeviceProfile;->stashedTaskbarHeight:I

    .line 405
    iput v14, v0, Lcom/android/launcher3/DeviceProfile;->taskbarBottomMargin:I

    .line 406
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/launcher3/DeviceProfile;->startAlignTaskbar:Z

    move/from16 v29, v3

    goto :goto_7

    .line 408
    :cond_a
    sget v5, Lcom/android/launcher3/R$dimen;->taskbar_icon_size:I

    invoke-static {v12, v5}, Landroidx/core/content/res/ResourcesCompat;->getFloat(Landroid/content/res/Resources;I)F

    move-result v5

    invoke-static {v5, v2}, Lcom/android/launcher3/testing/shared/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v5

    iput v5, v0, Lcom/android/launcher3/DeviceProfile;->taskbarIconSize:I

    .line 410
    sget v5, Lcom/android/launcher3/R$dimen;->taskbar_size:I

    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    .line 411
    sget v5, Lcom/android/launcher3/R$dimen;->taskbar_stashed_size:I

    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Lcom/android/launcher3/DeviceProfile;->stashedTaskbarHeight:I

    .line 412
    const/4 v5, 0x0

    iput v5, v0, Lcom/android/launcher3/DeviceProfile;->taskbarBottomMargin:I

    .line 413
    iget-object v5, v1, Lcom/android/launcher3/InvariantDeviceProfile;->startAlignTaskbar:[Z

    move/from16 v29, v3

    .end local v3    # "transientTaskbarIconSize":I
    .local v29, "transientTaskbarIconSize":I
    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget-boolean v3, v5, v3

    iput-boolean v3, v0, Lcom/android/launcher3/DeviceProfile;->startAlignTaskbar:Z

    .line 416
    :goto_7
    sget v3, Lcom/android/launcher3/R$dimen;->dynamic_grid_edge_margin:I

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    .line 417
    sget v5, Lcom/android/launcher3/R$dimen;->workspace_content_scale:I

    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v5

    iput v5, v0, Lcom/android/launcher3/DeviceProfile;->workspaceContentScale:F

    .line 419
    move/from16 v22, v3

    sget v3, Lcom/android/launcher3/R$dimen;->grid_visualization_horizontal_cell_spacing:I

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Lcom/android/launcher3/DeviceProfile;->gridVisualizationPaddingX:I

    .line 421
    sget v3, Lcom/android/launcher3/R$dimen;->grid_visualization_vertical_cell_spacing:I

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Lcom/android/launcher3/DeviceProfile;->gridVisualizationPaddingY:I

    .line 427
    const/high16 v3, 0x3fc00000    # 1.5f

    if-eqz v15, :cond_b

    if-nez v11, :cond_b

    cmpl-float v23, v13, v3

    if-lez v23, :cond_b

    const/16 v23, 0x1

    goto :goto_8

    :cond_b
    const/16 v23, 0x0

    .line 430
    .local v23, "applyExtraTopPadding":Z
    :goto_8
    div-int/lit8 v24, v7, 0x6

    .line 431
    .local v24, "derivedTopPadding":I
    iget v3, v10, Landroid/graphics/Rect;->top:I

    .line 432
    if-eqz v23, :cond_c

    move/from16 v30, v24

    goto :goto_9

    :cond_c
    const/16 v30, 0x0

    :goto_9
    add-int v3, v3, v30

    .line 433
    if-eqz v15, :cond_d

    const/16 v22, 0x0

    :cond_d
    add-int v3, v3, v22

    iput v3, v0, Lcom/android/launcher3/DeviceProfile;->bottomSheetTopPadding:I

    .line 436
    .end local v23    # "applyExtraTopPadding":Z
    .end local v24    # "derivedTopPadding":I
    sget v3, Lcom/android/launcher3/R$integer;->config_bottomSheetOpenDuration:I

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Lcom/android/launcher3/DeviceProfile;->bottomSheetOpenDuration:I

    .line 437
    sget v3, Lcom/android/launcher3/R$integer;->config_bottomSheetCloseDuration:I

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Lcom/android/launcher3/DeviceProfile;->bottomSheetCloseDuration:I

    .line 438
    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v15, :cond_f

    .line 439
    iput v5, v0, Lcom/android/launcher3/DeviceProfile;->bottomSheetWorkspaceScale:F

    .line 440
    if-eqz v6, :cond_e

    sget-object v22, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_MULTI_DISPLAY_PARTIAL_DEPTH:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v22

    if-nez v22, :cond_e

    .line 443
    iput v3, v0, Lcom/android/launcher3/DeviceProfile;->bottomSheetDepth:F

    goto :goto_a

    .line 449
    :cond_e
    sget v3, Lcom/android/launcher3/R$dimen;->config_wallpaperMaxScale:I

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    .line 450
    .local v3, "maxWallpaperScale":F
    mul-float v30, v3, v5

    const/high16 v32, 0x3f800000    # 1.0f

    const/16 v33, 0x0

    const/high16 v34, 0x3f800000    # 1.0f

    sget-object v35, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move/from16 v31, v3

    invoke-static/range {v30 .. v35}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v5

    iput v5, v0, Lcom/android/launcher3/DeviceProfile;->bottomSheetDepth:F

    .line 452
    .end local v3    # "maxWallpaperScale":F
    goto :goto_a

    .line 454
    :cond_f
    iput v3, v0, Lcom/android/launcher3/DeviceProfile;->bottomSheetWorkspaceScale:F

    .line 455
    const/4 v3, 0x0

    iput v3, v0, Lcom/android/launcher3/DeviceProfile;->bottomSheetDepth:F

    .line 458
    :goto_a
    sget v3, Lcom/android/launcher3/R$dimen;->folder_label_text_scale:I

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    iput v3, v0, Lcom/android/launcher3/DeviceProfile;->folderLabelTextScale:F

    .line 459
    iget-object v3, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:[I

    iget v5, v0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget v3, v3, v5

    iput v3, v0, Lcom/android/launcher3/DeviceProfile;->numFolderRows:I

    .line 460
    iget-object v5, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:[I

    move/from16 v36, v4

    .end local v4    # "transientTaskbarHeight":I
    .local v36, "transientTaskbarHeight":I
    iget v4, v0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget v4, v5, v4

    iput v4, v0, Lcom/android/launcher3/DeviceProfile;->numFolderColumns:I

    .line 462
    if-eqz v9, :cond_10

    iget v5, v1, Lcom/android/launcher3/InvariantDeviceProfile;->folderStyle:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_10

    .line 463
    iget v5, v1, Lcom/android/launcher3/InvariantDeviceProfile;->folderStyle:I

    sget-object v6, Lcom/android/launcher3/R$styleable;->FolderStyle:[I

    move-object/from16 v8, v28

    .end local v28    # "context":Landroid/content/Context;
    .local v8, "context":Landroid/content/Context;
    invoke-virtual {v8, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 466
    .local v5, "folderStyle":Landroid/content/res/TypedArray;
    sget v6, Lcom/android/launcher3/R$styleable;->FolderStyle_folderCellHeight:I

    move/from16 v28, v14

    const/4 v14, 0x0

    .end local v14    # "transientTaskbarBottomMargin":I
    .local v28, "transientTaskbarBottomMargin":I
    invoke-virtual {v5, v6, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    .line 468
    sget v6, Lcom/android/launcher3/R$styleable;->FolderStyle_folderCellWidth:I

    invoke-virtual {v5, v6, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    .line 471
    sget v6, Lcom/android/launcher3/R$styleable;->FolderStyle_folderTopPadding:I

    invoke-virtual {v5, v6, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingTop:I

    .line 474
    sget v6, Lcom/android/launcher3/R$styleable;->FolderStyle_folderBorderSpace:I

    invoke-virtual {v5, v6, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 476
    .local v6, "gutter":I
    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iput-object v14, v0, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpacePx:Landroid/graphics/Point;

    .line 477
    sget v14, Lcom/android/launcher3/R$styleable;->FolderStyle_folderFooterHeight:I

    move/from16 v22, v6

    const/4 v6, 0x0

    .end local v6    # "gutter":I
    .local v22, "gutter":I
    invoke-virtual {v5, v14, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    iput v14, v0, Lcom/android/launcher3/DeviceProfile;->folderFooterHeightPx:I

    .line 479
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .end local v5    # "folderStyle":Landroid/content/res/TypedArray;
    .end local v22    # "gutter":I
    goto :goto_b

    .line 462
    .end local v8    # "context":Landroid/content/Context;
    .restart local v14    # "transientTaskbarBottomMargin":I
    .local v28, "context":Landroid/content/Context;
    :cond_10
    move-object/from16 v8, v28

    move/from16 v28, v14

    .line 480
    .end local v14    # "transientTaskbarBottomMargin":I
    .restart local v8    # "context":Landroid/content/Context;
    .local v28, "transientTaskbarBottomMargin":I
    if-nez v20, :cond_11

    .line 481
    new-instance v5, Landroid/graphics/Point;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iput-object v5, v0, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpacePx:Landroid/graphics/Point;

    .line 482
    sget v5, Lcom/android/launcher3/R$dimen;->folder_footer_height_default:I

    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Lcom/android/launcher3/DeviceProfile;->folderFooterHeightPx:I

    .line 483
    sget v5, Lcom/android/launcher3/R$dimen;->folder_top_padding_default:I

    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingTop:I

    goto :goto_c

    .line 480
    :cond_11
    :goto_b
    nop

    .line 486
    :goto_c
    new-instance v5, Landroid/graphics/Point;

    iget-object v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    iget v14, v0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget-object v6, v6, v14

    iget v6, v6, Landroid/graphics/PointF;->x:F

    .line 487
    invoke-static {v6, v2}, Lcom/android/launcher3/testing/shared/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v6

    iget-object v14, v1, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    move/from16 v37, v3

    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget-object v3, v14, v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 488
    invoke-static {v3, v2}, Lcom/android/launcher3/testing/shared/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v3

    invoke-direct {v5, v6, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v5, v0, Lcom/android/launcher3/DeviceProfile;->allAppsBorderSpacePx:Landroid/graphics/Point;

    .line 489
    invoke-direct {v0, v8}, Lcom/android/launcher3/DeviceProfile;->setupAllAppsStyle(Landroid/content/Context;)V

    .line 491
    sget v3, Lcom/android/launcher3/R$dimen;->workspace_page_indicator_height:I

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Lcom/android/launcher3/DeviceProfile;->workspacePageIndicatorHeight:I

    .line 493
    sget v5, Lcom/android/launcher3/R$dimen;->workspace_page_indicator_overlap_workspace:I

    .line 494
    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Lcom/android/launcher3/DeviceProfile;->mWorkspacePageIndicatorOverlapWorkspace:I

    .line 496
    if-nez v20, :cond_13

    .line 498
    iget v5, v1, Lcom/android/launcher3/InvariantDeviceProfile;->cellStyle:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_12

    .line 499
    iget v5, v1, Lcom/android/launcher3/InvariantDeviceProfile;->cellStyle:I

    sget-object v6, Lcom/android/launcher3/R$styleable;->CellStyle:[I

    invoke-virtual {v8, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .local v5, "cellStyle":Landroid/content/res/TypedArray;
    goto :goto_d

    .line 502
    .end local v5    # "cellStyle":Landroid/content/res/TypedArray;
    :cond_12
    sget v5, Lcom/android/launcher3/R$style;->CellStyleDefault:I

    sget-object v6, Lcom/android/launcher3/R$styleable;->CellStyle:[I

    invoke-virtual {v8, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 505
    .restart local v5    # "cellStyle":Landroid/content/res/TypedArray;
    :goto_d
    sget v6, Lcom/android/launcher3/R$styleable;->CellStyle_iconDrawablePadding:I

    const/4 v14, 0x0

    invoke-virtual {v5, v6, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->mIconDrawablePaddingOriginalPx:I

    .line 507
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 510
    .end local v5    # "cellStyle":Landroid/content/res/TypedArray;
    :cond_13
    sget v5, Lcom/android/launcher3/R$dimen;->dynamic_grid_drop_target_size:I

    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarSizePx:I

    .line 513
    if-eqz v15, :cond_14

    if-nez v11, :cond_14

    const/high16 v5, 0x3fc00000    # 1.5f

    cmpg-float v5, v13, v5

    if-gez v5, :cond_14

    const/4 v5, 0x1

    goto :goto_e

    :cond_14
    const/4 v5, 0x0

    .line 516
    .local v5, "shouldApplyWidePortraitDimens":Z
    :goto_e
    if-eqz v5, :cond_15

    .line 517
    const/4 v6, 0x0

    goto :goto_f

    .line 518
    :cond_15
    sget v6, Lcom/android/launcher3/R$dimen;->drop_target_top_margin:I

    invoke-virtual {v12, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    :goto_f
    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarTopMarginPx:I

    .line 519
    if-eqz v5, :cond_16

    .line 520
    sget v6, Lcom/android/launcher3/R$dimen;->drop_target_bottom_margin_wide_portrait:I

    invoke-virtual {v12, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_10

    .line 521
    :cond_16
    sget v6, Lcom/android/launcher3/R$dimen;->drop_target_bottom_margin:I

    invoke-virtual {v12, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    :goto_10
    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarBottomMarginPx:I

    .line 522
    sget v6, Lcom/android/launcher3/R$dimen;->drop_target_drag_padding:I

    invoke-virtual {v12, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->dropTargetDragPaddingPx:I

    .line 523
    sget v6, Lcom/android/launcher3/R$dimen;->drop_target_text_size:I

    invoke-virtual {v12, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->dropTargetTextSizePx:I

    .line 524
    sget v6, Lcom/android/launcher3/R$dimen;->drop_target_button_drawable_horizontal_padding:I

    invoke-virtual {v12, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->dropTargetHorizontalPaddingPx:I

    .line 526
    sget v6, Lcom/android/launcher3/R$dimen;->drop_target_button_drawable_vertical_padding:I

    invoke-virtual {v12, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->dropTargetVerticalPaddingPx:I

    .line 528
    sget v6, Lcom/android/launcher3/R$dimen;->drop_target_button_gap:I

    invoke-virtual {v12, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->dropTargetGapPx:I

    .line 529
    sget v6, Lcom/android/launcher3/R$dimen;->drop_target_button_workspace_edge_gap:I

    invoke-virtual {v12, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->dropTargetButtonWorkspaceEdgeGapPx:I

    .line 532
    sget v6, Lcom/android/launcher3/R$dimen;->dynamic_grid_spring_loaded_min_next_space_visible:I

    invoke-virtual {v12, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->workspaceSpringLoadedMinNextPageVisiblePx:I

    .line 535
    sget v6, Lcom/android/launcher3/R$dimen;->dynamic_grid_cell_padding_x:I

    invoke-virtual {v12, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->workspaceCellPaddingXPx:I

    .line 537
    sget v6, Lcom/android/launcher3/R$dimen;->qsb_widget_height:I

    invoke-virtual {v12, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbHeight:I

    .line 538
    sget v13, Lcom/android/launcher3/R$dimen;->qsb_shadow_height:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbShadowHeight:I

    .line 539
    const/4 v14, 0x2

    mul-int/2addr v13, v14

    sub-int v13, v6, v13

    iput v13, v0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbVisualHeight:I

    .line 542
    iget-object v13, v1, Lcom/android/launcher3/InvariantDeviceProfile;->inlineQsb:[Z

    if-eqz v27, :cond_17

    aget-boolean v13, v13, v14

    if-nez v13, :cond_18

    iget-object v13, v1, Lcom/android/launcher3/InvariantDeviceProfile;->inlineQsb:[Z

    const/4 v14, 0x3

    aget-boolean v13, v13, v14

    if-eqz v13, :cond_19

    goto :goto_11

    :cond_17
    const/4 v14, 0x0

    aget-boolean v13, v13, v14

    if-nez v13, :cond_18

    iget-object v13, v1, Lcom/android/launcher3/InvariantDeviceProfile;->inlineQsb:[Z

    const/4 v14, 0x1

    aget-boolean v13, v13, v14

    if-eqz v13, :cond_19

    :cond_18
    :goto_11
    if-lez v6, :cond_19

    const/4 v6, 0x1

    goto :goto_12

    :cond_19
    const/4 v6, 0x0

    .line 546
    .local v6, "canQsbInline":Z
    :goto_12
    if-eqz v9, :cond_1a

    iget-object v9, v1, Lcom/android/launcher3/InvariantDeviceProfile;->inlineQsb:[Z

    iget v13, v0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget-boolean v9, v9, v13

    if-eqz v9, :cond_1a

    if-eqz v6, :cond_1a

    const/4 v9, 0x1

    goto :goto_13

    :cond_1a
    const/4 v9, 0x0

    :goto_13
    iput-boolean v9, v0, Lcom/android/launcher3/DeviceProfile;->isQsbInline:Z

    .line 548
    iget-boolean v9, v0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v9, :cond_1b

    if-nez p9, :cond_1b

    const/4 v9, 0x1

    goto :goto_14

    :cond_1b
    const/4 v9, 0x0

    :goto_14
    iput-boolean v9, v0, Lcom/android/launcher3/DeviceProfile;->areNavButtonsInline:Z

    .line 549
    nop

    .line 550
    if-eqz v27, :cond_1c

    iget v13, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseHotseatIcons:I

    goto :goto_15

    :cond_1c
    iget v13, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    :goto_15
    iput v13, v0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    .line 552
    nop

    .line 553
    if-eqz v27, :cond_1d

    iget v13, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseAllAppsColumns:I

    goto :goto_16

    :cond_1d
    iget v13, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numAllAppsColumns:I

    :goto_16
    iput v13, v0, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    .line 556
    sget v14, Lcom/android/launcher3/R$dimen;->min_qsb_margin:I

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 558
    .local v14, "minQsbMargin":I
    if-eqz v20, :cond_23

    .line 559
    move/from16 v16, v6

    move/from16 v3, v21

    .end local v6    # "canQsbInline":Z
    .local v16, "canQsbInline":Z
    int-to-float v6, v3

    move/from16 v38, v11

    int-to-float v11, v7

    div-float/2addr v6, v11

    .line 560
    .local v6, "responsiveAspectRatio":F
    new-instance v11, Lcom/android/launcher3/util/ResourceHelper;

    .line 562
    if-eqz v27, :cond_1e

    move/from16 v39, v15

    iget v15, v1, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatSpecsTwoPanelId:I

    goto :goto_17

    :cond_1e
    move/from16 v39, v15

    iget v15, v1, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatSpecsId:I

    :goto_17
    invoke-direct {v11, v8, v15}, Lcom/android/launcher3/util/ResourceHelper;-><init>(Landroid/content/Context;I)V

    .line 561
    invoke-static {v11}, Lcom/android/launcher3/responsive/HotseatSpecsProvider;->create(Lcom/android/launcher3/util/ResourceHelper;)Lcom/android/launcher3/responsive/HotseatSpecsProvider;

    move-result-object v11

    .line 563
    .local v11, "hotseatSpecsProvider":Lcom/android/launcher3/responsive/HotseatSpecsProvider;
    nop

    .line 564
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v15

    if-eqz v15, :cond_1f

    sget-object v15, Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;->WIDTH:Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;

    invoke-virtual {v11, v6, v15, v3}, Lcom/android/launcher3/responsive/HotseatSpecsProvider;->getCalculatedSpec(FLcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;I)Lcom/android/launcher3/responsive/CalculatedHotseatSpec;

    move-result-object v15

    goto :goto_18

    .line 566
    :cond_1f
    sget-object v15, Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;->HEIGHT:Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;

    invoke-virtual {v11, v6, v15, v7}, Lcom/android/launcher3/responsive/HotseatSpecsProvider;->getCalculatedSpec(FLcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;I)Lcom/android/launcher3/responsive/CalculatedHotseatSpec;

    move-result-object v15

    :goto_18
    iput-object v15, v0, Lcom/android/launcher3/DeviceProfile;->mResponsiveHotseatSpec:Lcom/android/launcher3/responsive/CalculatedHotseatSpec;

    .line 568
    invoke-virtual {v15}, Lcom/android/launcher3/responsive/CalculatedHotseatSpec;->getHotseatQsbSpace()I

    move-result v15

    iput v15, v0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbSpace:I

    .line 570
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v15

    if-eqz v15, :cond_20

    const/4 v15, 0x0

    goto :goto_19

    :cond_20
    iget-object v15, v0, Lcom/android/launcher3/DeviceProfile;->mResponsiveHotseatSpec:Lcom/android/launcher3/responsive/CalculatedHotseatSpec;

    invoke-virtual {v15}, Lcom/android/launcher3/responsive/CalculatedHotseatSpec;->getEdgePadding()I

    move-result v15

    .line 571
    .local v15, "hotseatBarBottomSpace":I
    :goto_19
    nop

    .line 572
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v21

    if-eqz v21, :cond_21

    move/from16 v21, v3

    iget-object v3, v0, Lcom/android/launcher3/DeviceProfile;->mResponsiveHotseatSpec:Lcom/android/launcher3/responsive/CalculatedHotseatSpec;

    invoke-virtual {v3}, Lcom/android/launcher3/responsive/CalculatedHotseatSpec;->getEdgePadding()I

    move-result v3

    goto :goto_1a

    :cond_21
    move/from16 v21, v3

    const/4 v3, 0x0

    :goto_1a
    iput v3, v0, Lcom/android/launcher3/DeviceProfile;->mHotseatBarEdgePaddingPx:I

    .line 573
    const/4 v3, 0x0

    iput v3, v0, Lcom/android/launcher3/DeviceProfile;->mHotseatBarWorkspaceSpacePx:I

    .line 575
    new-instance v3, Lcom/android/launcher3/util/ResourceHelper;

    .line 577
    if-eqz v27, :cond_22

    move-object/from16 v22, v11

    .end local v11    # "hotseatSpecsProvider":Lcom/android/launcher3/responsive/HotseatSpecsProvider;
    .local v22, "hotseatSpecsProvider":Lcom/android/launcher3/responsive/HotseatSpecsProvider;
    iget v11, v1, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceCellSpecsTwoPanelId:I

    goto :goto_1b

    .line 578
    .end local v22    # "hotseatSpecsProvider":Lcom/android/launcher3/responsive/HotseatSpecsProvider;
    .restart local v11    # "hotseatSpecsProvider":Lcom/android/launcher3/responsive/HotseatSpecsProvider;
    :cond_22
    move-object/from16 v22, v11

    .end local v11    # "hotseatSpecsProvider":Lcom/android/launcher3/responsive/HotseatSpecsProvider;
    .restart local v22    # "hotseatSpecsProvider":Lcom/android/launcher3/responsive/HotseatSpecsProvider;
    iget v11, v1, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceCellSpecsId:I

    :goto_1b
    invoke-direct {v3, v8, v11}, Lcom/android/launcher3/util/ResourceHelper;-><init>(Landroid/content/Context;I)V

    .line 575
    invoke-static {v3}, Lcom/android/launcher3/responsive/ResponsiveCellSpecsProvider;->create(Lcom/android/launcher3/util/ResourceHelper;)Lcom/android/launcher3/responsive/ResponsiveCellSpecsProvider;

    move-result-object v3

    .line 579
    .local v3, "workspaceCellSpecs":Lcom/android/launcher3/responsive/ResponsiveCellSpecsProvider;
    invoke-virtual {v3, v6, v7}, Lcom/android/launcher3/responsive/ResponsiveCellSpecsProvider;->getCalculatedSpec(FI)Lcom/android/launcher3/responsive/CalculatedCellSpec;

    move-result-object v11

    iput-object v11, v0, Lcom/android/launcher3/DeviceProfile;->mResponsiveWorkspaceCellSpec:Lcom/android/launcher3/responsive/CalculatedCellSpec;

    .line 581
    .end local v3    # "workspaceCellSpecs":Lcom/android/launcher3/responsive/ResponsiveCellSpecsProvider;
    .end local v6    # "responsiveAspectRatio":F
    .end local v22    # "hotseatSpecsProvider":Lcom/android/launcher3/responsive/HotseatSpecsProvider;
    move/from16 v6, v21

    goto :goto_1d

    .line 582
    .end local v15    # "hotseatBarBottomSpace":I
    .end local v16    # "canQsbInline":Z
    .local v6, "canQsbInline":Z
    :cond_23
    move/from16 v16, v6

    move/from16 v38, v11

    move/from16 v39, v15

    move/from16 v6, v21

    .end local v6    # "canQsbInline":Z
    .restart local v16    # "canQsbInline":Z
    iget-object v11, v1, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatQsbSpace:[F

    iget v15, v0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget v11, v11, v15

    invoke-static {v11, v2}, Lcom/android/launcher3/testing/shared/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v11

    iput v11, v0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbSpace:I

    .line 583
    iget-object v11, v1, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatBarBottomSpace:[F

    iget v15, v0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget v11, v11, v15

    invoke-static {v11, v2}, Lcom/android/launcher3/testing/shared/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v15

    .line 584
    .restart local v15    # "hotseatBarBottomSpace":I
    nop

    .line 585
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v11

    if-eqz v11, :cond_24

    goto :goto_1c

    :cond_24
    const/4 v3, 0x0

    :goto_1c
    iput v3, v0, Lcom/android/launcher3/DeviceProfile;->mHotseatBarEdgePaddingPx:I

    .line 586
    sget v3, Lcom/android/launcher3/R$dimen;->dynamic_grid_hotseat_side_padding:I

    .line 587
    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Lcom/android/launcher3/DeviceProfile;->mHotseatBarWorkspaceSpacePx:I

    .line 590
    :goto_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v3

    if-nez v3, :cond_28

    .line 592
    iget v3, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v14

    if-le v3, v15, :cond_27

    .line 593
    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbSpace:I

    iget v11, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v15

    sub-int/2addr v3, v11

    .line 596
    .local v3, "availableSpace":I
    if-lez v3, :cond_26

    .line 598
    mul-int/lit8 v11, v14, 0x2

    if-ge v3, v11, :cond_25

    .line 599
    div-int/lit8 v14, v3, 0x2

    .line 600
    iput v14, v0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbSpace:I

    goto :goto_1e

    .line 602
    :cond_25
    iget v11, v0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbSpace:I

    sub-int/2addr v11, v14

    iput v11, v0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbSpace:I

    .line 605
    :cond_26
    :goto_1e
    iget v11, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v14

    iput v11, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarBottomSpacePx:I

    .line 607
    .end local v3    # "availableSpace":I
    goto :goto_1f

    .line 608
    :cond_27
    iput v15, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarBottomSpacePx:I

    .line 612
    :cond_28
    :goto_1f
    if-eqz v5, :cond_29

    .line 613
    sget v3, Lcom/android/launcher3/R$dimen;->spring_loaded_hotseat_top_margin_wide_portrait:I

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_20

    .line 614
    :cond_29
    sget v3, Lcom/android/launcher3/R$dimen;->spring_loaded_hotseat_top_margin:I

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_20
    iput v3, v0, Lcom/android/launcher3/DeviceProfile;->springLoadedHotseatBarTopMarginPx:I

    .line 616
    if-eqz v20, :cond_2a

    .line 617
    iget-object v2, v0, Lcom/android/launcher3/DeviceProfile;->mResponsiveWorkspaceCellSpec:Lcom/android/launcher3/responsive/CalculatedCellSpec;

    invoke-virtual {v2}, Lcom/android/launcher3/responsive/CalculatedCellSpec;->getIconSize()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/android/launcher3/DeviceProfile;->updateHotseatSizes(I)V

    goto :goto_21

    .line 619
    :cond_2a
    iget-object v3, v1, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:[F

    iget v11, v0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget v3, v3, v11

    invoke-static {v3, v2}, Lcom/android/launcher3/testing/shared/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/android/launcher3/DeviceProfile;->updateHotseatSizes(I)V

    .line 622
    :goto_21
    if-eqz v9, :cond_2b

    if-nez v19, :cond_2b

    .line 623
    iget v2, v1, Lcom/android/launcher3/InvariantDeviceProfile;->inlineNavButtonsEndSpacing:I

    .line 624
    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->inlineNavButtonsEndSpacingPx:I

    .line 630
    sget v3, Lcom/android/launcher3/R$dimen;->taskbar_nav_buttons_size:I

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v11, 0x3

    mul-int/2addr v3, v11

    sget v11, Lcom/android/launcher3/R$dimen;->taskbar_button_space_inbetween:I

    .line 631
    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const/16 v18, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v3, v11

    add-int/2addr v3, v2

    iput v3, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarEndOffset:I

    goto :goto_22

    .line 634
    :cond_2b
    const/4 v2, 0x0

    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->inlineNavButtonsEndSpacingPx:I

    .line 635
    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarEndOffset:I

    .line 638
    :goto_22
    sget v2, Lcom/android/launcher3/R$dimen;->bubblebar_hotseat_adjustment_threshold:I

    .line 639
    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->mBubbleBarSpaceThresholdPx:I

    .line 643
    if-eqz v20, :cond_32

    .line 644
    nop

    .line 645
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_2c

    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    goto :goto_23

    :cond_2c
    const/4 v2, 0x0

    :goto_23
    sub-int v2, v25, v2

    .line 646
    .local v2, "availableResponsiveWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/DeviceProfile;->getPanelCount()I

    move-result v3

    iget v11, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    mul-int/2addr v3, v11

    .line 648
    .local v3, "numWorkspaceColumns":I
    iget v11, v10, Landroid/graphics/Rect;->top:I

    sub-int v11, v7, v11

    .line 649
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v19

    move/from16 p1, v5

    if-eqz v19, :cond_2d

    const/4 v5, 0x0

    goto :goto_24

    .end local v5    # "shouldApplyWidePortraitDimens":Z
    .local p1, "shouldApplyWidePortraitDimens":Z
    :cond_2d
    iget v5, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    :goto_24
    sub-int/2addr v11, v5

    .line 650
    .local v11, "availableResponsiveHeight":I
    int-to-float v5, v6

    int-to-float v6, v7

    div-float/2addr v5, v6

    .line 652
    .local v5, "responsiveAspectRatio":F
    new-instance v6, Lcom/android/launcher3/util/ResourceHelper;

    .line 654
    if-eqz v27, :cond_2e

    move/from16 v19, v14

    .end local v14    # "minQsbMargin":I
    .local v19, "minQsbMargin":I
    iget v14, v1, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceSpecsTwoPanelId:I

    goto :goto_25

    .end local v19    # "minQsbMargin":I
    .restart local v14    # "minQsbMargin":I
    :cond_2e
    move/from16 v19, v14

    .end local v14    # "minQsbMargin":I
    .restart local v19    # "minQsbMargin":I
    iget v14, v1, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceSpecsId:I

    :goto_25
    invoke-direct {v6, v8, v14}, Lcom/android/launcher3/util/ResourceHelper;-><init>(Landroid/content/Context;I)V

    sget-object v14, Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;->Workspace:Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;

    .line 652
    invoke-static {v6, v14}, Lcom/android/launcher3/responsive/ResponsiveSpecsProvider;->create(Lcom/android/launcher3/util/ResourceHelper;Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;)Lcom/android/launcher3/responsive/ResponsiveSpecsProvider;

    move-result-object v6

    .line 656
    .local v6, "workspaceSpecs":Lcom/android/launcher3/responsive/ResponsiveSpecsProvider;
    sget-object v14, Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;->WIDTH:Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;

    invoke-virtual {v6, v5, v14, v3, v2}, Lcom/android/launcher3/responsive/ResponsiveSpecsProvider;->getCalculatedSpec(FLcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;II)Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    move-result-object v14

    iput-object v14, v0, Lcom/android/launcher3/DeviceProfile;->mResponsiveWorkspaceWidthSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    .line 658
    sget-object v14, Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;->HEIGHT:Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;

    move/from16 v40, v2

    .end local v2    # "availableResponsiveWidth":I
    .local v40, "availableResponsiveWidth":I
    iget v2, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-virtual {v6, v5, v14, v2, v11}, Lcom/android/launcher3/responsive/ResponsiveSpecsProvider;->getCalculatedSpec(FLcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;II)Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher3/DeviceProfile;->mResponsiveWorkspaceHeightSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    .line 661
    new-instance v2, Lcom/android/launcher3/util/ResourceHelper;

    .line 663
    if-eqz v27, :cond_2f

    iget v14, v1, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsSpecsTwoPanelId:I

    goto :goto_26

    :cond_2f
    iget v14, v1, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsSpecsId:I

    :goto_26
    invoke-direct {v2, v8, v14}, Lcom/android/launcher3/util/ResourceHelper;-><init>(Landroid/content/Context;I)V

    sget-object v14, Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;->AllApps:Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;

    .line 661
    invoke-static {v2, v14}, Lcom/android/launcher3/responsive/ResponsiveSpecsProvider;->create(Lcom/android/launcher3/util/ResourceHelper;Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;)Lcom/android/launcher3/responsive/ResponsiveSpecsProvider;

    move-result-object v2

    .line 665
    .local v2, "allAppsSpecs":Lcom/android/launcher3/responsive/ResponsiveSpecsProvider;
    sget-object v23, Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;->WIDTH:Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;

    iget-object v14, v0, Lcom/android/launcher3/DeviceProfile;->mResponsiveWorkspaceWidthSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    move-object/from16 v21, v2

    move/from16 v22, v5

    move/from16 v24, v13

    move-object/from16 v26, v14

    invoke-virtual/range {v21 .. v26}, Lcom/android/launcher3/responsive/ResponsiveSpecsProvider;->getCalculatedSpec(FLcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;IILcom/android/launcher3/responsive/CalculatedResponsiveSpec;)Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    move-result-object v13

    iput-object v13, v0, Lcom/android/launcher3/DeviceProfile;->mResponsiveAllAppsWidthSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    .line 668
    sget-object v32, Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;->HEIGHT:Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;

    iget v13, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numAllAppsRowsForCellHeightCalculation:I

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int v34, v7, v10

    iget-object v10, v0, Lcom/android/launcher3/DeviceProfile;->mResponsiveWorkspaceHeightSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    move-object/from16 v30, v2

    move/from16 v31, v5

    move/from16 v33, v13

    move-object/from16 v35, v10

    invoke-virtual/range {v30 .. v35}, Lcom/android/launcher3/responsive/ResponsiveSpecsProvider;->getCalculatedSpec(FLcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;IILcom/android/launcher3/responsive/CalculatedResponsiveSpec;)Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    move-result-object v10

    iput-object v10, v0, Lcom/android/launcher3/DeviceProfile;->mResponsiveAllAppsHeightSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    .line 672
    new-instance v10, Lcom/android/launcher3/util/ResourceHelper;

    .line 674
    if-eqz v27, :cond_30

    iget v13, v1, Lcom/android/launcher3/InvariantDeviceProfile;->folderSpecsTwoPanelId:I

    goto :goto_27

    :cond_30
    iget v13, v1, Lcom/android/launcher3/InvariantDeviceProfile;->folderSpecsId:I

    :goto_27
    invoke-direct {v10, v8, v13}, Lcom/android/launcher3/util/ResourceHelper;-><init>(Landroid/content/Context;I)V

    sget-object v13, Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;->Folder:Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;

    .line 672
    invoke-static {v10, v13}, Lcom/android/launcher3/responsive/ResponsiveSpecsProvider;->create(Lcom/android/launcher3/util/ResourceHelper;Lcom/android/launcher3/responsive/ResponsiveSpec$Companion$ResponsiveSpecType;)Lcom/android/launcher3/responsive/ResponsiveSpecsProvider;

    move-result-object v10

    .line 676
    .local v10, "folderSpecs":Lcom/android/launcher3/responsive/ResponsiveSpecsProvider;
    sget-object v32, Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;->WIDTH:Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;

    iget-object v13, v0, Lcom/android/launcher3/DeviceProfile;->mResponsiveWorkspaceWidthSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    .line 678
    invoke-virtual {v13}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->getAvailableSpace()I

    move-result v34

    iget-object v13, v0, Lcom/android/launcher3/DeviceProfile;->mResponsiveWorkspaceWidthSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    .line 676
    move-object/from16 v30, v10

    move/from16 v31, v5

    move/from16 v33, v4

    move-object/from16 v35, v13

    invoke-virtual/range {v30 .. v35}, Lcom/android/launcher3/responsive/ResponsiveSpecsProvider;->getCalculatedSpec(FLcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;IILcom/android/launcher3/responsive/CalculatedResponsiveSpec;)Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    move-result-object v4

    iput-object v4, v0, Lcom/android/launcher3/DeviceProfile;->mResponsiveFolderWidthSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    .line 680
    sget-object v32, Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;->HEIGHT:Lcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;

    iget-object v4, v0, Lcom/android/launcher3/DeviceProfile;->mResponsiveWorkspaceHeightSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    .line 682
    invoke-virtual {v4}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->getAvailableSpace()I

    move-result v34

    iget-object v4, v0, Lcom/android/launcher3/DeviceProfile;->mResponsiveWorkspaceHeightSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    .line 680
    move/from16 v33, v37

    move-object/from16 v35, v4

    invoke-virtual/range {v30 .. v35}, Lcom/android/launcher3/responsive/ResponsiveSpecsProvider;->getCalculatedSpec(FLcom/android/launcher3/responsive/ResponsiveSpec$DimensionType;IILcom/android/launcher3/responsive/CalculatedResponsiveSpec;)Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    move-result-object v4

    iput-object v4, v0, Lcom/android/launcher3/DeviceProfile;->mResponsiveFolderHeightSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    .line 685
    new-instance v4, Lcom/android/launcher3/util/ResourceHelper;

    .line 687
    if-eqz v27, :cond_31

    iget v13, v1, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsCellSpecsTwoPanelId:I

    goto :goto_28

    .line 688
    :cond_31
    iget v13, v1, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsCellSpecsId:I

    :goto_28
    invoke-direct {v4, v8, v13}, Lcom/android/launcher3/util/ResourceHelper;-><init>(Landroid/content/Context;I)V

    .line 685
    invoke-static {v4}, Lcom/android/launcher3/responsive/ResponsiveCellSpecsProvider;->create(Lcom/android/launcher3/util/ResourceHelper;)Lcom/android/launcher3/responsive/ResponsiveCellSpecsProvider;

    move-result-object v4

    .line 689
    .local v4, "allAppsCellSpecs":Lcom/android/launcher3/responsive/ResponsiveCellSpecsProvider;
    iget-object v13, v0, Lcom/android/launcher3/DeviceProfile;->mResponsiveAllAppsHeightSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    .line 691
    invoke-virtual {v13}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->getAvailableSpace()I

    move-result v13

    iget-object v14, v0, Lcom/android/launcher3/DeviceProfile;->mResponsiveWorkspaceCellSpec:Lcom/android/launcher3/responsive/CalculatedCellSpec;

    .line 689
    invoke-virtual {v4, v5, v13, v14}, Lcom/android/launcher3/responsive/ResponsiveCellSpecsProvider;->getCalculatedSpec(FILcom/android/launcher3/responsive/CalculatedCellSpec;)Lcom/android/launcher3/responsive/CalculatedCellSpec;

    move-result-object v13

    iput-object v13, v0, Lcom/android/launcher3/DeviceProfile;->mResponsiveAllAppsCellSpec:Lcom/android/launcher3/responsive/CalculatedCellSpec;

    goto :goto_29

    .line 643
    .end local v2    # "allAppsSpecs":Lcom/android/launcher3/responsive/ResponsiveSpecsProvider;
    .end local v3    # "numWorkspaceColumns":I
    .end local v4    # "allAppsCellSpecs":Lcom/android/launcher3/responsive/ResponsiveCellSpecsProvider;
    .end local v6    # "workspaceSpecs":Lcom/android/launcher3/responsive/ResponsiveSpecsProvider;
    .end local v10    # "folderSpecs":Lcom/android/launcher3/responsive/ResponsiveSpecsProvider;
    .end local v11    # "availableResponsiveHeight":I
    .end local v19    # "minQsbMargin":I
    .end local v40    # "availableResponsiveWidth":I
    .end local p1    # "shouldApplyWidePortraitDimens":Z
    .local v5, "shouldApplyWidePortraitDimens":Z
    .restart local v14    # "minQsbMargin":I
    :cond_32
    move/from16 p1, v5

    move/from16 v19, v14

    .line 695
    .end local v5    # "shouldApplyWidePortraitDimens":Z
    .end local v14    # "minQsbMargin":I
    .restart local v19    # "minQsbMargin":I
    .restart local p1    # "shouldApplyWidePortraitDimens":Z
    :goto_29
    invoke-direct {v0, v1, v12}, Lcom/android/launcher3/DeviceProfile;->getHorizontalMarginPx(Lcom/android/launcher3/InvariantDeviceProfile;Landroid/content/res/Resources;)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceHorizontalMarginPx:I

    .line 696
    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceHorizontalMarginOriginalPx:I

    .line 698
    sget v2, Lcom/android/launcher3/R$dimen;->overview_task_margin:I

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskMarginPx:I

    .line 699
    invoke-static {}, Lcom/android/launcher3/Flags;->enableOverviewIconMenu()Z

    move-result v2

    if-eqz v2, :cond_33

    sget v2, Lcom/android/launcher3/R$dimen;->task_thumbnail_icon_menu_drawable_touch_size:I

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_2a

    .line 700
    :cond_33
    sget v2, Lcom/android/launcher3/R$dimen;->task_thumbnail_icon_size:I

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_2a
    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskIconSizePx:I

    .line 702
    sget v2, Lcom/android/launcher3/R$dimen;->task_thumbnail_icon_drawable_size:I

    .line 703
    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskIconDrawableSizePx:I

    .line 704
    sget v2, Lcom/android/launcher3/R$dimen;->task_thumbnail_icon_drawable_size_grid:I

    .line 705
    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskIconDrawableSizeGridPx:I

    .line 706
    nop

    .line 707
    invoke-static {}, Lcom/android/launcher3/Flags;->enableOverviewIconMenu()Z

    move-result v2

    if-eqz v2, :cond_34

    const/4 v2, 0x0

    goto :goto_2b

    :cond_34
    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskIconSizePx:I

    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskMarginPx:I

    add-int/2addr v2, v3

    :goto_2b
    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    .line 709
    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_FLOATING_SEARCH_BAR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-eqz v2, :cond_35

    const/4 v2, 0x0

    goto :goto_2c

    .line 710
    :cond_35
    sget v2, Lcom/android/launcher3/R$dimen;->overview_actions_top_margin:I

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_2c
    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->overviewActionsTopMarginPx:I

    .line 711
    sget v2, Lcom/android/launcher3/R$dimen;->overview_page_spacing:I

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->overviewPageSpacing:I

    .line 712
    sget v2, Lcom/android/launcher3/R$dimen;->overview_actions_button_spacing:I

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->overviewActionsButtonSpacing:I

    .line 714
    sget v2, Lcom/android/launcher3/R$dimen;->overview_actions_height:I

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->overviewActionsHeight:I

    .line 715
    sget v2, Lcom/android/launcher3/R$dimen;->overview_grid_row_spacing:I

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->overviewRowSpacing:I

    .line 716
    sget v2, Lcom/android/launcher3/R$dimen;->overview_grid_side_margin:I

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->overviewGridSideMargin:I

    .line 718
    sget v2, Lcom/android/launcher3/R$dimen;->split_placeholder_inset:I

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->splitPlaceholderInset:I

    .line 722
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "bool"

    const-string v4, "android"

    const-string v5, "config_leftRightSplitInPortrait"

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 725
    .local v2, "leftRightSplitPortraitResId":I
    invoke-static {}, Lcom/android/wm/shell/Flags;->enableLeftRightSplitInPortrait()Z

    move-result v3

    if-eqz v3, :cond_36

    if-lez v2, :cond_36

    .line 727
    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_36

    const/4 v3, 0x1

    goto :goto_2d

    :cond_36
    const/4 v3, 0x0

    .line 728
    .local v3, "allowLeftRightSplitInPortrait":Z
    :goto_2d
    if-eqz v3, :cond_37

    if-eqz v39, :cond_37

    .line 729
    const/4 v4, 0x1

    xor-int/lit8 v4, v38, 0x1

    iput-boolean v4, v0, Lcom/android/launcher3/DeviceProfile;->isLeftRightSplit:Z

    goto :goto_2e

    .line 731
    :cond_37
    move/from16 v4, v38

    iput-boolean v4, v0, Lcom/android/launcher3/DeviceProfile;->isLeftRightSplit:Z

    .line 735
    :goto_2e
    invoke-direct {v0, v8}, Lcom/android/launcher3/DeviceProfile;->updateAvailableDimensions(Landroid/content/Context;)I

    move-result v4

    iput v4, v0, Lcom/android/launcher3/DeviceProfile;->extraSpace:I

    .line 737
    invoke-direct {v0, v8, v1, v4}, Lcom/android/launcher3/DeviceProfile;->calculateAndSetWorkspaceVerticalPadding(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;I)V

    .line 740
    if-eqz v27, :cond_38

    iget-object v4, v0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    const/4 v5, 0x2

    div-int/2addr v4, v5

    goto :goto_2f

    :cond_38
    sget v4, Lcom/android/launcher3/R$dimen;->cell_layout_padding:I

    invoke-virtual {v12, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 742
    .local v4, "cellLayoutPadding":I
    :goto_2f
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, v0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    .line 744
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/DeviceProfile;->updateWorkspacePadding()V

    .line 747
    invoke-direct {v0, v12}, Lcom/android/launcher3/DeviceProfile;->updateAvailableFolderCellDimensions(Landroid/content/res/Resources;)V

    .line 749
    sget v5, Lcom/android/launcher3/R$dimen;->min_hotseat_icon_space:I

    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Lcom/android/launcher3/DeviceProfile;->mMinHotseatIconSpacePx:I

    .line 750
    sget v5, Lcom/android/launcher3/R$dimen;->min_hotseat_qsb_width:I

    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Lcom/android/launcher3/DeviceProfile;->mMinHotseatQsbWidthPx:I

    .line 751
    if-eqz v9, :cond_39

    .line 752
    sget v5, Lcom/android/launcher3/R$dimen;->max_hotseat_icon_space:I

    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_30

    :cond_39
    const v5, 0x7fffffff

    :goto_30
    iput v5, v0, Lcom/android/launcher3/DeviceProfile;->mMaxHotseatIconSpacePx:I

    .line 754
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/DeviceProfile;->recalculateHotseatWidthAndBorderSpace()V

    .line 756
    if-eqz v20, :cond_3a

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 757
    iget-object v5, v0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iput v5, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    .line 760
    :cond_3a
    if-eqz v39, :cond_3b

    .line 761
    iget-object v5, v0, Lcom/android/launcher3/DeviceProfile;->allAppsPadding:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 762
    iput v7, v0, Lcom/android/launcher3/DeviceProfile;->allAppsShiftRange:I

    goto :goto_31

    .line 764
    :cond_3b
    iget-object v5, v0, Lcom/android/launcher3/DeviceProfile;->allAppsPadding:Landroid/graphics/Rect;

    const/4 v6, 0x0

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 765
    sget v5, Lcom/android/launcher3/R$dimen;->all_apps_starting_vertical_translate:I

    .line 766
    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Lcom/android/launcher3/DeviceProfile;->allAppsShiftRange:I

    .line 768
    :goto_31
    sget v5, Lcom/android/launcher3/R$integer;->config_allAppsOpenDuration:I

    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, v0, Lcom/android/launcher3/DeviceProfile;->allAppsOpenDuration:I

    .line 769
    sget v5, Lcom/android/launcher3/R$integer;->config_allAppsCloseDuration:I

    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, v0, Lcom/android/launcher3/DeviceProfile;->allAppsCloseDuration:I

    .line 771
    sget v5, Lcom/android/launcher3/R$dimen;->drag_flingToDeleteMinVelocity:I

    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Lcom/android/launcher3/DeviceProfile;->flingToDeleteThresholdVelocity:I

    .line 774
    move-object/from16 v5, p10

    iput-object v5, v0, Lcom/android/launcher3/DeviceProfile;->mViewScaleProvider:Lcom/android/launcher3/DeviceProfile$ViewScaleProvider;

    .line 776
    move-object/from16 v6, p11

    invoke-interface {v6, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 779
    iget v7, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    move-object/from16 v9, p5

    invoke-static {v8, v7, v9}, Lcom/android/launcher3/DeviceProfile;->createDotRenderer(Landroid/content/Context;ILandroid/util/SparseArray;)Lcom/android/launcher3/icons/DotRenderer;

    move-result-object v7

    iput-object v7, v0, Lcom/android/launcher3/DeviceProfile;->mDotRendererWorkSpace:Lcom/android/launcher3/icons/DotRenderer;

    .line 780
    iget v7, v0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    invoke-static {v8, v7, v9}, Lcom/android/launcher3/DeviceProfile;->createDotRenderer(Landroid/content/Context;ILandroid/util/SparseArray;)Lcom/android/launcher3/icons/DotRenderer;

    move-result-object v7

    iput-object v7, v0, Lcom/android/launcher3/DeviceProfile;->mDotRendererAllApps:Lcom/android/launcher3/icons/DotRenderer;

    .line 781
    return-void
.end method

.method private calculateAndSetWorkspaceVerticalPadding(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inv"    # Lcom/android/launcher3/InvariantDeviceProfile;
    .param p3, "extraSpace"    # I

    .line 846
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->mIsResponsiveGrid:Z

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveWorkspaceHeightSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    invoke-virtual {v0}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->getStartPaddingPx()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->workspaceTopPadding:I

    .line 848
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveWorkspaceHeightSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    invoke-virtual {v0}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->getEndPaddingPx()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->workspaceBottomPadding:I

    goto :goto_0

    .line 849
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->mIsScalableGrid:Z

    if-eqz v0, :cond_1

    iget v0, p2, Lcom/android/launcher3/InvariantDeviceProfile;->devicePaddingId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 851
    int-to-float v0, p3

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->cellScaleToFit:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 852
    .local v0, "unscaledExtraSpace":I
    new-instance v1, Lcom/android/launcher3/DevicePaddings;

    iget v2, p2, Lcom/android/launcher3/InvariantDeviceProfile;->devicePaddingId:I

    invoke-direct {v1, p1, v2}, Lcom/android/launcher3/DevicePaddings;-><init>(Landroid/content/Context;I)V

    .line 853
    .local v1, "devicePaddings":Lcom/android/launcher3/DevicePaddings;
    invoke-virtual {v1, v0}, Lcom/android/launcher3/DevicePaddings;->getDevicePadding(I)Lcom/android/launcher3/DevicePaddings$DevicePadding;

    move-result-object v2

    .line 854
    .local v2, "padding":Lcom/android/launcher3/DevicePaddings$DevicePadding;
    invoke-virtual {v2}, Lcom/android/launcher3/DevicePaddings$DevicePadding;->getMaxEmptySpacePx()I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/DeviceProfile;->maxEmptySpace:I

    .line 856
    invoke-virtual {v2, v0}, Lcom/android/launcher3/DevicePaddings$DevicePadding;->getWorkspaceTopPadding(I)I

    move-result v3

    .line 857
    .local v3, "paddingWorkspaceTop":I
    invoke-virtual {v2, v0}, Lcom/android/launcher3/DevicePaddings$DevicePadding;->getWorkspaceBottomPadding(I)I

    move-result v4

    .line 859
    .local v4, "paddingWorkspaceBottom":I
    int-to-float v5, v3

    iget v6, p0, Lcom/android/launcher3/DeviceProfile;->cellScaleToFit:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/DeviceProfile;->workspaceTopPadding:I

    .line 860
    int-to-float v5, v4

    iget v6, p0, Lcom/android/launcher3/DeviceProfile;->cellScaleToFit:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/DeviceProfile;->workspaceBottomPadding:I

    .line 862
    .end local v0    # "unscaledExtraSpace":I
    .end local v1    # "devicePaddings":Lcom/android/launcher3/DevicePaddings;
    .end local v2    # "padding":Lcom/android/launcher3/DevicePaddings$DevicePadding;
    .end local v3    # "paddingWorkspaceTop":I
    .end local v4    # "paddingWorkspaceBottom":I
    :cond_1
    :goto_0
    return-void
.end method

.method public static calculateCellHeight(III)I
    .locals 1
    .param p0, "height"    # I
    .param p1, "borderSpacing"    # I
    .param p2, "countY"    # I

    .line 1956
    add-int/lit8 v0, p2, -0x1

    mul-int/2addr v0, p1

    sub-int v0, p0, v0

    div-int/2addr v0, p2

    return v0
.end method

.method public static calculateCellWidth(III)I
    .locals 1
    .param p0, "width"    # I
    .param p1, "borderSpacing"    # I
    .param p2, "countX"    # I

    .line 1952
    add-int/lit8 v0, p2, -0x1

    mul-int/2addr v0, p1

    sub-int v0, p0, v0

    div-int/2addr v0, p2

    return v0
.end method

.method private calculateHotseatBorderSpace(FI)I
    .locals 4
    .param p1, "hotseatWidthPx"    # F
    .param p2, "numExtraBorder"    # I

    .line 1269
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    add-int/lit8 v1, v0, -0x1

    add-int/2addr v1, p2

    .line 1270
    .local v1, "numBorders":I
    if-gtz v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1272
    :cond_0
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    mul-int/2addr v2, v0

    int-to-float v0, v2

    .line 1273
    .local v0, "hotseatIconsTotalPx":F
    sub-float v2, p1, v0

    float-to-int v2, v2

    div-int/2addr v2, v1

    .line 1274
    .local v2, "hotseatBorderSpacePx":I
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->mMaxHotseatIconSpacePx:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    return v3
.end method

.method private calculateQsbWidth(I)I
    .locals 5
    .param p1, "hotseatBorderSpace"    # I

    .line 810
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/DeviceProfile;->getIconVisibleSizePx(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 811
    .local v0, "iconExtraSpacePx":I
    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isQsbInline:Z

    if-eqz v1, :cond_0

    .line 812
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getPanelCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    mul-int/2addr v1, v2

    .line 813
    .local v1, "columns":I
    invoke-direct {p0, v1}, Lcom/android/launcher3/DeviceProfile;->getIconToIconWidthForColumns(I)I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    mul-int/2addr v4, p1

    sub-int/2addr v2, v4

    sub-int/2addr v2, v0

    return v2

    .line 818
    .end local v1    # "columns":I
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatColumnSpan:[I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget v1, v1, v2

    .line 819
    .restart local v1    # "columns":I
    invoke-direct {p0, v1}, Lcom/android/launcher3/DeviceProfile;->getIconToIconWidthForColumns(I)I

    move-result v2

    sub-int/2addr v2, v0

    return v2
.end method

.method private static createDotRenderer(Landroid/content/Context;ILandroid/util/SparseArray;)Lcom/android/launcher3/icons/DotRenderer;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/icons/DotRenderer;",
            ">;)",
            "Lcom/android/launcher3/icons/DotRenderer;"
        }
    .end annotation

    .line 785
    .local p2, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/launcher3/icons/DotRenderer;>;"
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/icons/DotRenderer;

    .line 786
    .local v0, "renderer":Lcom/android/launcher3/icons/DotRenderer;
    if-nez v0, :cond_0

    .line 787
    new-instance v1, Lcom/android/launcher3/icons/DotRenderer;

    const/16 v2, 0x64

    invoke-static {p0, v2}, Lcom/android/launcher3/icons/GraphicsUtils;->getShapePath(Landroid/content/Context;I)Landroid/graphics/Path;

    move-result-object v3

    invoke-direct {v1, p1, v3, v2}, Lcom/android/launcher3/icons/DotRenderer;-><init>(ILandroid/graphics/Path;I)V

    move-object v0, v1

    .line 789
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 791
    :cond_0
    return-object v0
.end method

.method private dpPointFToString(Ljava/lang/String;Landroid/graphics/PointF;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/PointF;

    .line 2014
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {p1, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "\t%s: PointF(%.1f, %.1f)dp"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAdditionalQsbSpace()I
    .locals 2

    .line 1857
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isQsbInline:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbWidth:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getCellLayoutBorderSpace(Lcom/android/launcher3/InvariantDeviceProfile;)Landroid/graphics/Point;
    .locals 1
    .param p1, "idp"    # Lcom/android/launcher3/InvariantDeviceProfile;

    .line 936
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutBorderSpace(Lcom/android/launcher3/InvariantDeviceProfile;F)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method private getCellLayoutBorderSpace(Lcom/android/launcher3/InvariantDeviceProfile;F)Landroid/graphics/Point;
    .locals 4
    .param p1, "idp"    # Lcom/android/launcher3/InvariantDeviceProfile;
    .param p2, "scale"    # F

    .line 940
    const/4 v0, 0x0

    .line 941
    .local v0, "horizontalSpacePx":I
    const/4 v1, 0x0

    .line 943
    .local v1, "verticalSpacePx":I
    iget-boolean v2, p0, Lcom/android/launcher3/DeviceProfile;->mIsResponsiveGrid:Z

    if-eqz v2, :cond_0

    .line 944
    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveWorkspaceWidthSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    invoke-virtual {v2}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->getGutterPx()I

    move-result v0

    .line 945
    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveWorkspaceHeightSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    invoke-virtual {v2}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->getGutterPx()I

    move-result v1

    goto :goto_0

    .line 946
    :cond_0
    iget-boolean v2, p0, Lcom/android/launcher3/DeviceProfile;->mIsScalableGrid:Z

    if-eqz v2, :cond_1

    .line 947
    iget-object v2, p1, Lcom/android/launcher3/InvariantDeviceProfile;->borderSpaces:[Landroid/graphics/PointF;

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3, p2}, Lcom/android/launcher3/testing/shared/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;F)I

    move-result v0

    .line 948
    iget-object v2, p1, Lcom/android/launcher3/InvariantDeviceProfile;->borderSpaces:[Landroid/graphics/PointF;

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3, p2}, Lcom/android/launcher3/testing/shared/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;F)I

    move-result v1

    .line 951
    :cond_1
    :goto_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method private getCellLayoutHeightSpecification()I
    .locals 3

    .line 1076
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getCellLayoutWidthSpecification()I
    .locals 4

    .line 1081
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getPanelCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    mul-int/2addr v0, v1

    .line 1082
    .local v0, "numColumns":I
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    return v1
.end method

.method private static getContext(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;ILcom/android/launcher3/util/WindowBounds;)Landroid/content/Context;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/android/launcher3/util/DisplayController$Info;
    .param p2, "orientation"    # I
    .param p3, "bounds"    # Lcom/android/launcher3/util/WindowBounds;

    .line 2233
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 2234
    .local v0, "config":Landroid/content/res/Configuration;
    iput p2, v0, Landroid/content/res/Configuration;->orientation:I

    .line 2235
    invoke-virtual {p1}, Lcom/android/launcher3/util/DisplayController$Info;->getDensityDpi()I

    move-result v1

    iput v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 2236
    invoke-virtual {p1, p3}, Lcom/android/launcher3/util/DisplayController$Info;->smallestSizeDp(Lcom/android/launcher3/util/WindowBounds;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2237
    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v1

    return-object v1
.end method

.method private getHorizontalMarginPx(Lcom/android/launcher3/InvariantDeviceProfile;Landroid/content/res/Resources;)I
    .locals 2
    .param p1, "idp"    # Lcom/android/launcher3/InvariantDeviceProfile;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 830
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->mIsResponsiveGrid:Z

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveWorkspaceWidthSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    invoke-virtual {v0}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->getStartPaddingPx()I

    move-result v0

    return v0

    .line 834
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 835
    const/4 v0, 0x0

    return v0

    .line 838
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->mIsScalableGrid:Z

    if-eqz v0, :cond_2

    .line 839
    iget-object v0, p1, Lcom/android/launcher3/InvariantDeviceProfile;->horizontalMargin:[F

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/shared/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    goto :goto_0

    .line 840
    :cond_2
    sget v0, Lcom/android/launcher3/R$dimen;->dynamic_grid_left_right_margin:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 838
    :goto_0
    return v0
.end method

.method private getHotseatBarBottomPadding()I
    .locals 3

    .line 1887
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v0, :cond_0

    .line 1888
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarBottomSpacePx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatCellHeightPx:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0

    .line 1890
    :cond_0
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatCellHeightPx:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private getHotseatRequiredWidth()I
    .locals 5

    .line 1864
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getAdditionalQsbSpace()I

    move-result v0

    .line 1865
    .local v0, "additionalQsbSpace":I
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    mul-int/2addr v1, v2

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    .line 1866
    iget-boolean v4, p0, Lcom/android/launcher3/DeviceProfile;->areNavButtonsInline:Z

    xor-int/lit8 v4, v4, 0x1

    sub-int/2addr v2, v4

    mul-int/2addr v3, v2

    add-int/2addr v1, v3

    add-int/2addr v1, v0

    .line 1865
    return v1
.end method

.method private getIconSizeWithOverlap(I)I
    .locals 2
    .param p1, "iconSize"    # I

    .line 1106
    int-to-float v0, p1

    const/high16 v1, 0x3f900000    # 1.125f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private getIconToIconWidthForColumns(I)I
    .locals 3
    .param p1, "columns"    # I

    .line 824
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v0, p1

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 826
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellHorizontalSpace()I

    move-result v1

    sub-int/2addr v0, v1

    .line 824
    return v0
.end method

.method private getIconVisibleSizePx(I)I
    .locals 2
    .param p1, "iconSizePx"    # I

    .line 1853
    const v0, 0x3f6b851f    # 0.92f

    int-to-float v1, p1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private getNormalizedFolderChildDrawablePaddingPx(I)I
    .locals 4
    .param p1, "textHeight"    # I

    .line 1099
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x3

    .line 1101
    .local v0, "drawablePadding":I
    invoke-direct {p0, v1}, Lcom/android/launcher3/DeviceProfile;->getIconVisibleSizePx(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 1102
    .local v1, "iconSizeDiff":I
    div-int/lit8 v2, v1, 0x2

    sub-int v2, v0, v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method private getNormalizedIconDrawablePadding()I
    .locals 2

    .line 1092
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->mIconDrawablePaddingOriginalPx:I

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/DeviceProfile;->getNormalizedIconDrawablePadding(II)I

    move-result v0

    return v0
.end method

.method private getNormalizedIconDrawablePadding(II)I
    .locals 2
    .param p1, "iconSizePx"    # I
    .param p2, "iconDrawablePadding"    # I

    .line 1087
    nop

    .line 1088
    invoke-direct {p0, p1}, Lcom/android/launcher3/DeviceProfile;->getIconVisibleSizePx(I)I

    move-result v0

    sub-int v0, p1, v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    .line 1087
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getVerticalHotseatLastItemBottomOffset(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 1593
    invoke-virtual {p0, p1}, Lcom/android/launcher3/DeviceProfile;->getHotseatLayoutPadding(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1594
    .local v0, "hotseatBarPadding":Landroid/graphics/Rect;
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/DeviceProfile;->calculateCellHeight(III)I

    move-result v1

    .line 1597
    .local v1, "cellHeight":I
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int v2, v1, v2

    div-int/lit8 v2, v2, 0x2

    .line 1598
    .local v2, "extraIconEndSpacing":I
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v2

    return v3
.end method

.method private hideWorkspaceLabelsIfNotEnoughSpace()V
    .locals 4

    .line 1011
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->calculateTextHeight(F)I

    move-result v0

    int-to-float v0, v0

    .line 1012
    .local v0, "iconTextHeight":F
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int/2addr v1, v2

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    sub-float/2addr v1, v0

    .line 1016
    .local v1, "workspaceCellPaddingY":F
    cmpg-float v3, v1, v0

    if-gez v3, :cond_0

    .line 1017
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    .line 1018
    iput v3, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    .line 1019
    invoke-direct {p0, v2}, Lcom/android/launcher3/DeviceProfile;->getIconSizeWithOverlap(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    .line 1020
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->autoResizeAllAppsCells()V

    .line 1022
    :cond_0
    return-void
.end method

.method private insetPadding(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "paddings"    # Landroid/graphics/Rect;
    .param p2, "insets"    # Landroid/graphics/Rect;

    .line 1709
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 1710
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1712
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 1713
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 1715
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 1716
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1718
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 1719
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1720
    return-void
.end method

.method static synthetic lambda$getMultiWindowProfile$2(Landroid/graphics/PointF;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/PointF;
    .locals 0
    .param p0, "p"    # Landroid/graphics/PointF;
    .param p1, "i"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 996
    return-object p0
.end method

.method static synthetic lambda$static$0(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 91
    sget-object v0, Lcom/android/launcher3/DeviceProfile;->DEFAULT_SCALE:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic lambda$static$1(Lcom/android/launcher3/DeviceProfile;)V
    .locals 0
    .param p0, "dp"    # Lcom/android/launcher3/DeviceProfile;

    .line 93
    return-void
.end method

.method private pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 2010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "px ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {p2, v1}, Lcom/android/launcher3/Utilities;->dpiFromPx(FI)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dp)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setupAllAppsStyle(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 1408
    nop

    .line 1409
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsStyle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsStyle:I

    goto :goto_0

    .line 1410
    :cond_0
    sget v0, Lcom/android/launcher3/R$style;->AllAppsStyleDefault:I

    :goto_0
    sget-object v1, Lcom/android/launcher3/R$styleable;->AllAppsStyle:[I

    .line 1408
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1412
    .local v0, "allAppsStyle":Landroid/content/res/TypedArray;
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsPadding:Landroid/graphics/Rect;

    sget v2, Lcom/android/launcher3/R$styleable;->AllAppsStyle_horizontalPadding:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 1414
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1415
    return-void
.end method

.method private updateAllAppsContainerWidth()V
    .locals 5

    .line 1393
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 1395
    .local v0, "cellLayoutHorizontalPadding":I
    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v1, :cond_0

    .line 1396
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellWidthPx:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsBorderSpacePx:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    .line 1399
    .local v1, "usedWidth":I
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightMargin:I

    .end local v1    # "usedWidth":I
    goto :goto_0

    .line 1400
    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->mIsResponsiveGrid:Z

    if-nez v1, :cond_1

    .line 1401
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsPadding:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceHorizontalMarginPx:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->allAppsBorderSpacePx:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 1402
    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 1400
    :cond_1
    :goto_0
    nop

    .line 1405
    :goto_1
    return-void
.end method

.method private updateAllAppsIconSize(FLandroid/content/res/Resources;)V
    .locals 5
    .param p1, "scale"    # F
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 1281
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    .line 1282
    invoke-static {v1, v2, p1}, Lcom/android/launcher3/testing/shared/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;F)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    .line 1283
    invoke-static {v2, v3, p1}, Lcom/android/launcher3/testing/shared/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsBorderSpacePx:Landroid/graphics/Point;

    .line 1286
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsCellSize:[Landroid/graphics/PointF;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget-object v0, v0, v1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/shared/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsBorderSpacePx:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    .line 1290
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->mIsScalableGrid:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 1291
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsIconSize:[F

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget v0, v0, v2

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v2}, Lcom/android/launcher3/testing/shared/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    .line 1292
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsIconTextSize:[F

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget v0, v0, v2

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v2}, Lcom/android/launcher3/Utilities;->pxFromSp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:F

    .line 1293
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getNormalizedIconDrawablePadding()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconDrawablePaddingPx:I

    .line 1294
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsCellSize:[Landroid/graphics/PointF;

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget-object v0, v0, v2

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v2, p1}, Lcom/android/launcher3/testing/shared/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;F)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellWidthPx:I

    .line 1296
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    if-ge v0, v2, :cond_1

    .line 1299
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numAllAppsColumns:I

    sub-int/2addr v0, v1

    .line 1300
    .local v0, "numBorders":I
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellWidthPx:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numAllAppsColumns:I

    mul-int/2addr v1, v2

    .line 1302
    .local v1, "extraWidthRequired":I
    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsBorderSpacePx:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    mul-int/2addr v2, v0

    if-lt v2, v1, :cond_0

    .line 1303
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    iput v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellWidthPx:I

    .line 1304
    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsBorderSpacePx:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    div-int v4, v1, v0

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 1308
    :cond_0
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellWidthPx:I

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v3, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numAllAppsColumns:I

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->allAppsBorderSpacePx:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v3, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numAllAppsColumns:I

    div-int/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellWidthPx:I

    .line 1310
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    .line 1311
    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsBorderSpacePx:Landroid/graphics/Point;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 1315
    .end local v0    # "numBorders":I
    .end local v1    # "extraWidthRequired":I
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:F

    .line 1316
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->calculateTextHeight(F)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsBorderSpacePx:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v1

    .line 1317
    .local v0, "cellContentHeight":I
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    if-ge v1, v0, :cond_2

    .line 1319
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    .line 1321
    .end local v0    # "cellContentHeight":I
    :cond_2
    goto :goto_1

    .line 1322
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsIconSize:[F

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget v0, v0, v2

    .line 1323
    .local v0, "invIconSizeDp":F
    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsIconTextSize:[F

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget v2, v2, v3

    .line 1324
    .local v2, "invIconTextSizeSp":F
    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v3, p1}, Lcom/android/launcher3/testing/shared/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;F)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    .line 1325
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v1}, Lcom/android/launcher3/Utilities;->pxFromSp(FLandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:F

    .line 1326
    sget v1, Lcom/android/launcher3/R$dimen;->all_apps_icon_drawable_padding:I

    .line 1327
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconDrawablePaddingPx:I

    .line 1328
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellWidthPx:I

    .line 1330
    .end local v0    # "invIconSizeDp":F
    .end local v2    # "invIconTextSizeSp":F
    :goto_1
    return-void
.end method

.method private updateAllAppsWithResponsiveMeasures()V
    .locals 5

    .line 1333
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveAllAppsCellSpec:Lcom/android/launcher3/responsive/CalculatedCellSpec;

    invoke-virtual {v0}, Lcom/android/launcher3/responsive/CalculatedCellSpec;->getIconSize()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    .line 1334
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveAllAppsCellSpec:Lcom/android/launcher3/responsive/CalculatedCellSpec;

    invoke-virtual {v0}, Lcom/android/launcher3/responsive/CalculatedCellSpec;->getIconTextSize()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:F

    .line 1335
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveAllAppsCellSpec:Lcom/android/launcher3/responsive/CalculatedCellSpec;

    .line 1336
    invoke-virtual {v1}, Lcom/android/launcher3/responsive/CalculatedCellSpec;->getIconDrawablePadding()I

    move-result v1

    .line 1335
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/DeviceProfile;->getNormalizedIconDrawablePadding(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconDrawablePaddingPx:I

    .line 1337
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveAllAppsWidthSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    .line 1338
    invoke-virtual {v1}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->getGutterPx()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveAllAppsHeightSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    .line 1339
    invoke-virtual {v2}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->getGutterPx()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsBorderSpacePx:Landroid/graphics/Point;

    .line 1341
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveAllAppsHeightSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    invoke-virtual {v0}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->getCellSizePx()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    .line 1342
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveAllAppsWidthSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    invoke-virtual {v0}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->getCellSizePx()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellWidthPx:I

    .line 1346
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsBorderSpacePx:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v0, v0, 0x2

    .line 1347
    .local v0, "halfBorder":I
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsPadding:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveAllAppsWidthSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    invoke-virtual {v2}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->getStartPaddingPx()I

    move-result v2

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 1348
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsPadding:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveAllAppsWidthSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    invoke-virtual {v2}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->getEndPaddingPx()I

    move-result v2

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1352
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellWidthPx:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    if-ge v1, v2, :cond_0

    .line 1354
    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mIconSizeSteps:Lcom/android/launcher3/util/IconSizeSteps;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/IconSizeSteps;->getIconSmallerThan(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    .line 1357
    :cond_0
    new-instance v1, Lcom/android/launcher3/util/CellContentDimensions;

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconDrawablePaddingPx:I

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:F

    float-to-int v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/util/CellContentDimensions;-><init>(III)V

    .line 1360
    .local v1, "cellContentDimensions":Lcom/android/launcher3/util/CellContentDimensions;
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    invoke-virtual {v1}, Lcom/android/launcher3/util/CellContentDimensions;->getCellContentHeight()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1361
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1362
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    if-ge v2, v3, :cond_2

    .line 1363
    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mIconSizeSteps:Lcom/android/launcher3/util/IconSizeSteps;

    .line 1364
    invoke-virtual {v3, v2}, Lcom/android/launcher3/util/IconSizeSteps;->getIconSmallerThan(I)I

    move-result v2

    .line 1363
    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/CellContentDimensions;->setIconSizePx(I)V

    goto :goto_0

    .line 1367
    :cond_1
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mIconSizeSteps:Lcom/android/launcher3/util/IconSizeSteps;

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/CellContentDimensions;->resizeToFitCellHeight(ILcom/android/launcher3/util/IconSizeSteps;)I

    .line 1370
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcom/android/launcher3/util/CellContentDimensions;->getIconSizePx()I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    .line 1371
    invoke-virtual {v1}, Lcom/android/launcher3/util/CellContentDimensions;->getIconDrawablePaddingPx()I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconDrawablePaddingPx:I

    .line 1372
    invoke-virtual {v1}, Lcom/android/launcher3/util/CellContentDimensions;->getIconTextSizePx()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:F

    .line 1375
    :cond_3
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveAllAppsHeightSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    invoke-virtual {v3}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->getGutterPx()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    .line 1377
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1378
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->autoResizeAllAppsCells()V

    .line 1380
    :cond_4
    return-void
.end method

.method private updateAvailableDimensions(Landroid/content/Context;)I
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .line 1028
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->mIsScalableGrid:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->mIsResponsiveGrid:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->iconCenterVertically:Z

    .line 1030
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->mIsResponsiveGrid:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    .line 1031
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveWorkspaceCellSpec:Lcom/android/launcher3/responsive/CalculatedCellSpec;

    invoke-virtual {v0}, Lcom/android/launcher3/responsive/CalculatedCellSpec;->getIconSize()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 1032
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveWorkspaceCellSpec:Lcom/android/launcher3/responsive/CalculatedCellSpec;

    invoke-virtual {v0}, Lcom/android/launcher3/responsive/CalculatedCellSpec;->getIconTextSize()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    .line 1033
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveWorkspaceCellSpec:Lcom/android/launcher3/responsive/CalculatedCellSpec;

    invoke-virtual {v0}, Lcom/android/launcher3/responsive/CalculatedCellSpec;->getIconDrawablePadding()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->mIconDrawablePaddingOriginalPx:I

    .line 1034
    invoke-virtual {p0, v3, p1}, Lcom/android/launcher3/DeviceProfile;->updateIconSize(FLandroid/content/Context;)V

    .line 1035
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->updateWorkspacePadding()V

    .line 1036
    return v2

    .line 1039
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:[F

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget v0, v0, v4

    .line 1040
    .local v0, "invIconSizeDp":F
    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v4, v4, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:[F

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget v4, v4, v5

    .line 1041
    .local v4, "invIconTextSizeSp":F
    iget-object v5, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v5}, Lcom/android/launcher3/testing/shared/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 1042
    iget-object v5, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5}, Lcom/android/launcher3/Utilities;->pxFromSp(FLandroid/util/DisplayMetrics;)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    .line 1044
    invoke-virtual {p0, v3, p1}, Lcom/android/launcher3/DeviceProfile;->updateIconSize(FLandroid/content/Context;)V

    .line 1045
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->updateWorkspacePadding()V

    .line 1048
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutHeightSpecification()I

    move-result v5

    int-to-float v5, v5

    .line 1049
    .local v5, "usedHeight":F
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutHeight()I

    move-result v6

    .line 1050
    .local v6, "maxHeight":I
    int-to-float v7, v6

    sub-float/2addr v7, v5

    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 1051
    .local v7, "extraHeight":F
    int-to-float v8, v6

    div-float/2addr v8, v5

    .line 1052
    .local v8, "scaleY":F
    cmpg-float v3, v8, v3

    if-gez v3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    .line 1054
    .local v1, "shouldScale":Z
    :goto_1
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1055
    .local v3, "scaleX":F
    iget-boolean v9, p0, Lcom/android/launcher3/DeviceProfile;->mIsScalableGrid:Z

    if-eqz v9, :cond_4

    .line 1059
    nop

    .line 1060
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutWidthSpecification()I

    move-result v9

    iget v10, p0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceHorizontalMarginPx:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    int-to-float v9, v9

    .line 1062
    .local v9, "usedWidth":F
    iget v10, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    int-to-float v10, v10

    div-float v3, v10, v9

    .line 1063
    const/4 v1, 0x1

    .line 1066
    .end local v9    # "usedWidth":F
    :cond_4
    if-eqz v1, :cond_5

    .line 1067
    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 1068
    .local v9, "scale":F
    invoke-virtual {p0, v9, p1}, Lcom/android/launcher3/DeviceProfile;->updateIconSize(FLandroid/content/Context;)V

    .line 1069
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutHeightSpecification()I

    move-result v10

    sub-int v10, v6, v10

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v7, v2

    .line 1072
    .end local v9    # "scale":F
    :cond_5
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2
.end method

.method private updateAvailableFolderCellDimensions(Landroid/content/res/Resources;)V
    .locals 9
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 1418
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/DeviceProfile;->updateFolderCellSize(FLandroid/content/res/Resources;)V

    .line 1421
    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->mIsResponsiveGrid:Z

    if-eqz v1, :cond_0

    return-void

    .line 1424
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getTotalWorkspacePadding()Landroid/graphics/Point;

    move-result-object v1

    .line 1427
    .local v1, "totalWorkspacePadding":Landroid/graphics/Point;
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->numFolderRows:I

    mul-int/2addr v2, v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->folderFooterHeightPx:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingTop:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 1431
    .local v2, "contentUsedHeight":F
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    .line 1432
    .local v3, "contentMaxHeight":I
    int-to-float v4, v3

    div-float/2addr v4, v2

    .line 1435
    .local v4, "scaleY":F
    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    iget v6, p0, Lcom/android/launcher3/DeviceProfile;->numFolderColumns:I

    mul-int/2addr v5, v6

    add-int/lit8 v6, v6, -0x1

    iget-object v7, p0, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingLeftRight:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    .line 1438
    .local v5, "contentUsedWidth":F
    iget v6, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v7, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    .line 1439
    .local v6, "contentMaxWidth":I
    int-to-float v7, v6

    div-float/2addr v7, v5

    .line 1441
    .local v7, "scaleX":F
    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1442
    .local v8, "scale":F
    cmpg-float v0, v8, v0

    if-gez v0, :cond_1

    .line 1443
    invoke-direct {p0, v8, p1}, Lcom/android/launcher3/DeviceProfile;->updateFolderCellSize(FLandroid/content/res/Resources;)V

    .line 1445
    :cond_1
    return-void
.end method

.method private updateFolderCellSize(FLandroid/content/res/Resources;)V
    .locals 8
    .param p1, "scale"    # F
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 1448
    const/high16 v0, 0x41800000    # 16.0f

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/Utilities;->pxFromSp(FLandroid/util/DisplayMetrics;F)I

    move-result v0

    .line 1449
    .local v0, "minLabelTextSize":I
    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->mIsResponsiveGrid:Z

    if-eqz v1, :cond_1

    .line 1450
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveWorkspaceCellSpec:Lcom/android/launcher3/responsive/CalculatedCellSpec;

    invoke-virtual {v1}, Lcom/android/launcher3/responsive/CalculatedCellSpec;->getIconSize()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    .line 1451
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveWorkspaceCellSpec:Lcom/android/launcher3/responsive/CalculatedCellSpec;

    invoke-virtual {v1}, Lcom/android/launcher3/responsive/CalculatedCellSpec;->getIconTextSize()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->folderChildTextSizePx:I

    .line 1452
    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->folderLabelTextScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->folderLabelTextSizePx:I

    .line 1454
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->folderChildTextSizePx:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->calculateTextHeight(F)I

    move-result v1

    .line 1456
    .local v1, "textHeight":I
    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveFolderWidthSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    invoke-virtual {v2}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->getCellSizePx()I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    .line 1457
    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveFolderHeightSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    invoke-virtual {v2}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->getCellSizePx()I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    .line 1458
    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveFolderHeightSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    invoke-virtual {v2}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->getStartPaddingPx()I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingTop:I

    .line 1459
    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveFolderHeightSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    invoke-virtual {v2}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->getEndPaddingPx()I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/DeviceProfile;->folderFooterHeightPx:I

    .line 1461
    new-instance v2, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveFolderWidthSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    invoke-virtual {v3}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->getGutterPx()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveFolderHeightSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    .line 1462
    invoke-virtual {v4}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->getGutterPx()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpacePx:Landroid/graphics/Point;

    .line 1464
    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveFolderWidthSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    invoke-virtual {v2}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->getStartPaddingPx()I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingLeftRight:I

    .line 1467
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    if-ge v2, v3, :cond_0

    .line 1468
    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mIconSizeSteps:Lcom/android/launcher3/util/IconSizeSteps;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/util/IconSizeSteps;->getIconSmallerThan(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    .line 1472
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveWorkspaceCellSpec:Lcom/android/launcher3/responsive/CalculatedCellSpec;

    invoke-virtual {v2}, Lcom/android/launcher3/responsive/CalculatedCellSpec;->getIconDrawablePadding()I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/DeviceProfile;->folderChildDrawablePaddingPx:I

    .line 1474
    new-instance v2, Lcom/android/launcher3/util/CellContentDimensions;

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->folderChildDrawablePaddingPx:I

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->folderChildTextSizePx:I

    invoke-direct {v2, v3, v4, v5}, Lcom/android/launcher3/util/CellContentDimensions;-><init>(III)V

    .line 1478
    .local v2, "cellContentDimensions":Lcom/android/launcher3/util/CellContentDimensions;
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile;->mIconSizeSteps:Lcom/android/launcher3/util/IconSizeSteps;

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/util/CellContentDimensions;->resizeToFitCellHeight(ILcom/android/launcher3/util/IconSizeSteps;)I

    .line 1479
    invoke-virtual {v2}, Lcom/android/launcher3/util/CellContentDimensions;->getIconSizePx()I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    .line 1480
    invoke-virtual {v2}, Lcom/android/launcher3/util/CellContentDimensions;->getIconDrawablePaddingPx()I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/DeviceProfile;->folderChildDrawablePaddingPx:I

    .line 1481
    invoke-virtual {v2}, Lcom/android/launcher3/util/CellContentDimensions;->getIconTextSizePx()I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/DeviceProfile;->folderChildTextSizePx:I

    .line 1482
    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->folderLabelTextScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/DeviceProfile;->folderLabelTextSizePx:I

    .line 1484
    return-void

    .line 1487
    .end local v1    # "textHeight":I
    .end local v2    # "cellContentDimensions":Lcom/android/launcher3/util/CellContentDimensions;
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:[F

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget v1, v1, v2

    .line 1488
    .local v1, "invIconSizeDp":F
    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:[F

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget v2, v2, v3

    .line 1489
    .local v2, "invIconTextSizeDp":F
    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v3, p1}, Lcom/android/launcher3/testing/shared/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;F)I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    .line 1490
    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3, p1}, Lcom/android/launcher3/Utilities;->pxFromSp(FLandroid/util/DisplayMetrics;F)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/DeviceProfile;->folderChildTextSizePx:I

    .line 1491
    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->folderLabelTextScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/DeviceProfile;->folderLabelTextSizePx:I

    .line 1493
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->folderChildTextSizePx:I

    int-to-float v3, v3

    invoke-static {v3}, Lcom/android/launcher3/Utilities;->calculateTextHeight(F)I

    move-result v3

    .line 1495
    .local v3, "textHeight":I
    iget-boolean v4, p0, Lcom/android/launcher3/DeviceProfile;->mIsScalableGrid:Z

    if-eqz v4, :cond_3

    .line 1496
    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v4, v4, Lcom/android/launcher3/InvariantDeviceProfile;->folderStyle:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 1497
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    invoke-static {v4}, Lcom/android/launcher3/testing/shared/ResourceUtils;->roundPxValueFromFloat(F)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    .line 1498
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    invoke-static {v4}, Lcom/android/launcher3/testing/shared/ResourceUtils;->roundPxValueFromFloat(F)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    goto :goto_0

    .line 1500
    :cond_2
    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    invoke-static {v4}, Lcom/android/launcher3/testing/shared/ResourceUtils;->roundPxValueFromFloat(F)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    .line 1501
    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    invoke-static {v4}, Lcom/android/launcher3/testing/shared/ResourceUtils;->roundPxValueFromFloat(F)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    .line 1504
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/launcher3/DeviceProfile;->getNormalizedFolderChildDrawablePaddingPx(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/DeviceProfile;->folderChildDrawablePaddingPx:I

    .line 1506
    new-instance v4, Lcom/android/launcher3/util/CellContentDimensions;

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    iget v6, p0, Lcom/android/launcher3/DeviceProfile;->folderChildDrawablePaddingPx:I

    iget v7, p0, Lcom/android/launcher3/DeviceProfile;->folderChildTextSizePx:I

    invoke-direct {v4, v5, v6, v7}, Lcom/android/launcher3/util/CellContentDimensions;-><init>(III)V

    .line 1510
    .local v4, "cellContentDimensions":Lcom/android/launcher3/util/CellContentDimensions;
    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    iget-object v6, p0, Lcom/android/launcher3/DeviceProfile;->mIconSizeSteps:Lcom/android/launcher3/util/IconSizeSteps;

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/util/CellContentDimensions;->resizeToFitCellHeight(ILcom/android/launcher3/util/IconSizeSteps;)I

    .line 1511
    invoke-virtual {v4}, Lcom/android/launcher3/util/CellContentDimensions;->getIconSizePx()I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    .line 1512
    invoke-virtual {v4}, Lcom/android/launcher3/util/CellContentDimensions;->getIconDrawablePaddingPx()I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/DeviceProfile;->folderChildDrawablePaddingPx:I

    .line 1513
    invoke-virtual {v4}, Lcom/android/launcher3/util/CellContentDimensions;->getIconTextSizePx()I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/DeviceProfile;->folderChildTextSizePx:I

    .line 1515
    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingTop:I

    int-to-float v5, v5

    mul-float/2addr v5, p1

    invoke-static {v5}, Lcom/android/launcher3/testing/shared/ResourceUtils;->roundPxValueFromFloat(F)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingTop:I

    .line 1516
    new-instance v5, Landroid/graphics/Point;

    iget-object v6, p0, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    mul-float/2addr v6, p1

    .line 1517
    invoke-static {v6}, Lcom/android/launcher3/testing/shared/ResourceUtils;->roundPxValueFromFloat(F)I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    mul-float/2addr v7, p1

    .line 1518
    invoke-static {v7}, Lcom/android/launcher3/testing/shared/ResourceUtils;->roundPxValueFromFloat(F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    iput-object v5, p0, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpacePx:Landroid/graphics/Point;

    .line 1520
    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->folderFooterHeightPx:I

    int-to-float v5, v5

    mul-float/2addr v5, p1

    invoke-static {v5}, Lcom/android/launcher3/testing/shared/ResourceUtils;->roundPxValueFromFloat(F)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/DeviceProfile;->folderFooterHeightPx:I

    .line 1521
    iget-object v5, p0, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iput v5, p0, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingLeftRight:I

    .line 1522
    .end local v4    # "cellContentDimensions":Lcom/android/launcher3/util/CellContentDimensions;
    goto :goto_1

    .line 1523
    :cond_3
    sget v4, Lcom/android/launcher3/R$dimen;->folder_cell_x_padding:I

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    .line 1525
    .local v4, "cellPaddingX":I
    sget v5, Lcom/android/launcher3/R$dimen;->folder_cell_y_padding:I

    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    float-to-int v5, v5

    .line 1528
    .local v5, "cellPaddingY":I
    iget v6, p0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v7, v6

    iput v7, p0, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    .line 1529
    mul-int/lit8 v7, v5, 0x2

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    iput v6, p0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    .line 1530
    iget v6, p0, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingTop:I

    int-to-float v6, v6

    mul-float/2addr v6, p1

    invoke-static {v6}, Lcom/android/launcher3/testing/shared/ResourceUtils;->roundPxValueFromFloat(F)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingTop:I

    .line 1531
    sget v6, Lcom/android/launcher3/R$dimen;->folder_content_padding_left_right:I

    .line 1532
    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingLeftRight:I

    .line 1533
    sget v6, Lcom/android/launcher3/R$dimen;->folder_footer_height_default:I

    .line 1535
    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p1

    .line 1534
    invoke-static {v6}, Lcom/android/launcher3/testing/shared/ResourceUtils;->roundPxValueFromFloat(F)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/DeviceProfile;->folderFooterHeightPx:I

    .line 1538
    invoke-direct {p0, v3}, Lcom/android/launcher3/DeviceProfile;->getNormalizedFolderChildDrawablePaddingPx(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/DeviceProfile;->folderChildDrawablePaddingPx:I

    .line 1540
    .end local v4    # "cellPaddingX":I
    .end local v5    # "cellPaddingY":I
    :goto_1
    return-void
.end method

.method private updateHotseatSizes(I)V
    .locals 2
    .param p1, "hotseatIconSizePx"    # I

    .line 867
    invoke-direct {p0, p1}, Lcom/android/launcher3/DeviceProfile;->getIconSizeWithOverlap(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatCellHeightPx:I

    .line 869
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatBarEdgePaddingPx:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatBarWorkspaceSpacePx:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    goto :goto_0

    .line 872
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isQsbInline:Z

    if-eqz v0, :cond_1

    .line 873
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbVisualHeight:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarBottomSpacePx:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    goto :goto_0

    .line 876
    :cond_1
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbSpace:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbVisualHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarBottomSpacePx:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    .line 881
    :goto_0
    return-void
.end method

.method private updateWorkspacePadding()V
    .locals 5

    .line 1666
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    .line 1667
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 1668
    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->mIsResponsiveGrid:Z

    if-eqz v1, :cond_1

    .line 1669
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveWorkspaceHeightSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    invoke-virtual {v1}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->getStartPaddingPx()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1670
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveWorkspaceHeightSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    .line 1671
    invoke-virtual {v1}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->getEndPaddingPx()I

    move-result v1

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    .line 1670
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1672
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1673
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveWorkspaceWidthSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    .line 1674
    invoke-virtual {v2}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->getEndPaddingPx()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1675
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveWorkspaceWidthSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    invoke-virtual {v1}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->getStartPaddingPx()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 1677
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveWorkspaceWidthSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    invoke-virtual {v1}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->getStartPaddingPx()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1678
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveWorkspaceWidthSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    .line 1679
    invoke-virtual {v2}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->getEndPaddingPx()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 1682
    :cond_1
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1683
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1684
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1685
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1686
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatBarEdgePaddingPx:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 1688
    :cond_2
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatBarEdgePaddingPx:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1689
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 1695
    :cond_3
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->workspaceBottomPadding:I

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    .line 1696
    .local v1, "paddingBottom":I
    iget-boolean v3, p0, Lcom/android/launcher3/DeviceProfile;->mIsResponsiveGrid:Z

    if-nez v3, :cond_4

    .line 1697
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->workspacePageIndicatorHeight:I

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->mWorkspacePageIndicatorOverlapWorkspace:I

    sub-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 1700
    :cond_4
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->workspaceTopPadding:I

    iget-boolean v4, p0, Lcom/android/launcher3/DeviceProfile;->mIsScalableGrid:Z

    if-eqz v4, :cond_5

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    :goto_0
    add-int/2addr v3, v2

    .line 1701
    .local v3, "paddingTop":I
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceHorizontalMarginPx:I

    .line 1703
    .local v2, "paddingSide":I
    invoke-virtual {v0, v2, v3, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1705
    .end local v1    # "paddingBottom":I
    .end local v2    # "paddingSide":I
    .end local v3    # "paddingTop":I
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/DeviceProfile;->insetPadding(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1706
    return-void
.end method


# virtual methods
.method public autoResizeAllAppsCells()V
    .locals 4

    .line 1386
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:F

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->calculateTextHeight(F)I

    move-result v0

    .line 1387
    .local v0, "textHeight":I
    move v1, v0

    .line 1388
    .local v1, "topBottomPadding":I
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconDrawablePaddingPx:I

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    .line 1390
    return-void
.end method

.method public copy(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 977
    invoke-virtual {p0, p1}, Lcom/android/launcher3/DeviceProfile;->toBuilder(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile$Builder;->build()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    return-object v0
.end method

.method public dump(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "writer"    # Ljava/io/PrintWriter;

    .line 2019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DeviceProfile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t1 dp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " px"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tisTablet:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tisPhone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isPhone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ttransposeLayoutWithOrientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->transposeLayoutWithOrientation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tisGestureMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isGestureMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tisLandscape:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tisMultiWindowMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tisTwoPanels:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2031
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tisLeftRightSplit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isLeftRightSplit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->windowX:I

    int-to-float v1, v1

    const-string v2, "windowX"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->windowY:I

    int-to-float v1, v1

    const-string v2, "windowY"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v1, v1

    const-string v2, "widthPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v1, v1

    const-string v2, "heightPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    int-to-float v1, v1

    const-string v2, "availableWidthPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    int-to-float v1, v1

    const-string v2, "availableHeightPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const-string v2, "mInsets.left"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const-string v2, "mInsets.top"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const-string v2, "mInsets.right"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    const-string v2, "mInsets.bottom"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\taspectRatio:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->aspectRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tisResponsiveGrid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->mIsResponsiveGrid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tisScalableGrid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->mIsScalableGrid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tinv.numRows: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tinv.numColumns: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2051
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tinv.numSearchContainerColumns: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numSearchContainerColumns:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2054
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->minCellSize:[Landroid/graphics/PointF;

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget-object v1, v1, v2

    const-string v2, "minCellSize"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->dpPointFToString(Ljava/lang/String;Landroid/graphics/PointF;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    int-to-float v1, v1

    const-string v2, "cellWidthPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    int-to-float v1, v1

    const-string v2, "cellHeightPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const-string v2, "getCellSize().x"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const-string v2, "getCellSize().y"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const-string v2, "cellLayoutBorderSpacePx Horizontal"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const-string v2, "cellLayoutBorderSpacePx Vertical"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    .line 2067
    const-string v2, "cellLayoutPaddingPx.left"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2066
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2068
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    .line 2069
    const-string v2, "cellLayoutPaddingPx.top"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2068
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    .line 2071
    const-string v2, "cellLayoutPaddingPx.right"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2070
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    .line 2073
    const-string v2, "cellLayoutPaddingPx.bottom"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2072
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v1, v1

    const-string v2, "iconSizePx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float v1, v1

    const-string v2, "iconTextSizePx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    int-to-float v1, v1

    const-string v2, "iconDrawablePaddingPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tnumFolderRows: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->numFolderRows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tnumFolderColumns: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->numFolderColumns:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    int-to-float v1, v1

    const-string v2, "folderCellWidthPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    int-to-float v1, v1

    const-string v2, "folderCellHeightPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2083
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    int-to-float v1, v1

    const-string v2, "folderChildIconSizePx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->folderChildTextSizePx:I

    int-to-float v1, v1

    const-string v2, "folderChildTextSizePx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->folderChildDrawablePaddingPx:I

    int-to-float v1, v1

    const-string v2, "folderChildDrawablePaddingPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const-string v2, "folderCellLayoutBorderSpacePx.x"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const-string v2, "folderCellLayoutBorderSpacePx.y"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingLeftRight:I

    int-to-float v1, v1

    const-string v2, "folderContentPaddingLeftRight"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingTop:I

    int-to-float v1, v1

    const-string v2, "folderTopPadding"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->folderFooterHeightPx:I

    int-to-float v1, v1

    const-string v2, "folderFooterHeight"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->bottomSheetTopPadding:I

    int-to-float v1, v1

    const-string v2, "bottomSheetTopPadding"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tbottomSheetOpenDuration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->bottomSheetOpenDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2098
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tbottomSheetCloseDuration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->bottomSheetCloseDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2099
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tbottomSheetWorkspaceScale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->bottomSheetWorkspaceScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tbottomSheetDepth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->bottomSheetDepth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsShiftRange:I

    int-to-float v1, v1

    const-string v2, "allAppsShiftRange"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tallAppsOpenDuration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsOpenDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tallAppsCloseDuration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCloseDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    int-to-float v1, v1

    const-string v2, "allAppsIconSizePx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "allAppsIconTextSizePx"

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:F

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconDrawablePaddingPx:I

    int-to-float v1, v1

    const-string v2, "allAppsIconDrawablePaddingPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    int-to-float v1, v1

    const-string v2, "allAppsCellHeightPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellWidthPx:I

    int-to-float v1, v1

    const-string v2, "allAppsCellWidthPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsBorderSpacePx:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const-string v2, "allAppsBorderSpacePxX"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsBorderSpacePx:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const-string v2, "allAppsBorderSpacePxY"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tnumShownAllAppsColumns: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const-string v2, "allAppsPadding.top"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const-string v2, "allAppsPadding.left"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const-string v2, "allAppsPadding.right"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightMargin:I

    int-to-float v1, v1

    const-string v2, "allAppsLeftRightMargin"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    int-to-float v1, v1

    const-string v2, "hotseatBarSizePx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tinv.hotseatColumnSpan: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatColumnSpan:[I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatCellHeightPx:I

    int-to-float v1, v1

    const-string v2, "hotseatCellHeightPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarBottomSpacePx:I

    int-to-float v1, v1

    const-string v2, "hotseatBarBottomSpacePx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatBarEdgePaddingPx:I

    int-to-float v1, v1

    const-string v2, "mHotseatBarEdgePaddingPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatBarWorkspaceSpacePx:I

    int-to-float v1, v1

    const-string v2, "mHotseatBarWorkspaceSpacePx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarEndOffset:I

    int-to-float v1, v1

    const-string v2, "hotseatBarEndOffset"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbSpace:I

    int-to-float v1, v1

    const-string v2, "hotseatQsbSpace"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbHeight:I

    int-to-float v1, v1

    const-string v2, "hotseatQsbHeight"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->springLoadedHotseatBarTopMarginPx:I

    int-to-float v1, v1

    const-string v2, "springLoadedHotseatBarTopMarginPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2132
    invoke-virtual {p0, p1}, Lcom/android/launcher3/DeviceProfile;->getHotseatLayoutPadding(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    .line 2133
    .local v0, "hotseatLayoutPadding":Landroid/graphics/Rect;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const-string v3, "getHotseatLayoutPadding(context).top"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    const-string v3, "getHotseatLayoutPadding(context).bottom"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    const-string v3, "getHotseatLayoutPadding(context).left"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    const-string v3, "getHotseatLayoutPadding(context).right"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tnumShownHotseatIcons: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    int-to-float v2, v2

    const-string v3, "hotseatBorderSpace"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tisQsbInline: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher3/DeviceProfile;->isQsbInline:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbWidth:I

    int-to-float v2, v2

    const-string v3, "hotseatQsbWidth"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tisTaskbarPresent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tisTaskbarPresentInApps:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresentInApps:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    int-to-float v2, v2

    const-string v3, "taskbarHeight"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->stashedTaskbarHeight:I

    int-to-float v2, v2

    const-string v3, "stashedTaskbarHeight"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->taskbarBottomMargin:I

    int-to-float v2, v2

    const-string v3, "taskbarBottomMargin"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->taskbarIconSize:I

    int-to-float v2, v2

    const-string v3, "taskbarIconSize"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceHorizontalMarginPx:I

    int-to-float v2, v2

    const-string v3, "desiredWorkspaceHorizontalMarginPx"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    const-string v3, "workspacePadding.left"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const-string v3, "workspacePadding.top"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    const-string v3, "workspacePadding.right"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    const-string v3, "workspacePadding.bottom"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "iconScale"

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->iconScale:F

    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cellScaleToFit "

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->cellScaleToFit:F

    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->extraSpace:I

    int-to-float v2, v2

    const-string v3, "extraSpace"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->extraSpace:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->iconScale:F

    div-float/2addr v2, v3

    const-string v3, "unscaled extraSpace"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->maxEmptySpace:I

    int-to-float v2, v2

    const-string v3, "maxEmptySpace"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->workspaceTopPadding:I

    int-to-float v2, v2

    const-string v3, "workspaceTopPadding"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->workspaceBottomPadding:I

    int-to-float v2, v2

    const-string v3, "workspaceBottomPadding"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->overviewTaskMarginPx:I

    int-to-float v2, v2

    const-string v3, "overviewTaskMarginPx"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->overviewTaskIconSizePx:I

    int-to-float v2, v2

    const-string v3, "overviewTaskIconSizePx"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->overviewTaskIconDrawableSizePx:I

    int-to-float v2, v2

    const-string v3, "overviewTaskIconDrawableSizePx"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->overviewTaskIconDrawableSizeGridPx:I

    int-to-float v2, v2

    const-string v3, "overviewTaskIconDrawableSizeGridPx"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    int-to-float v2, v2

    const-string v3, "overviewTaskThumbnailTopMarginPx"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->overviewActionsTopMarginPx:I

    int-to-float v2, v2

    const-string v3, "overviewActionsTopMarginPx"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->overviewActionsHeight:I

    int-to-float v2, v2

    const-string v3, "overviewActionsHeight"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2182
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getOverviewActionsClaimedSpaceBelow()I

    move-result v2

    int-to-float v2, v2

    .line 2181
    const-string v3, "overviewActionsClaimedSpaceBelow"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->overviewActionsButtonSpacing:I

    int-to-float v2, v2

    const-string v3, "overviewActionsButtonSpacing"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->overviewPageSpacing:I

    int-to-float v2, v2

    const-string v3, "overviewPageSpacing"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->overviewRowSpacing:I

    int-to-float v2, v2

    const-string v3, "overviewRowSpacing"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->overviewGridSideMargin:I

    int-to-float v2, v2

    const-string v3, "overviewGridSideMargin"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarTopMarginPx:I

    int-to-float v2, v2

    const-string v3, "dropTargetBarTopMarginPx"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarSizePx:I

    int-to-float v2, v2

    const-string v3, "dropTargetBarSizePx"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarBottomMarginPx:I

    int-to-float v2, v2

    .line 2192
    const-string v3, "dropTargetBarBottomMarginPx"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2191
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2195
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutSpringLoadShrunkTop()F

    move-result v2

    .line 2194
    const-string v3, "getCellLayoutSpringLoadShrunkTop()"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2197
    invoke-virtual {p0, p1}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutSpringLoadShrunkBottom(Landroid/content/Context;)F

    move-result v2

    .line 2196
    const-string v3, "getCellLayoutSpringLoadShrunkBottom()"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->workspaceSpringLoadedMinNextPageVisiblePx:I

    int-to-float v2, v2

    const-string v3, "workspaceSpringLoadedMinNextPageVisiblePx"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2201
    invoke-virtual {p0, p1}, Lcom/android/launcher3/DeviceProfile;->getWorkspaceSpringLoadScale(Landroid/content/Context;)F

    move-result v2

    .line 2200
    const-string v3, "getWorkspaceSpringLoadScale()"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutHeight()I

    move-result v2

    int-to-float v2, v2

    const-string v3, "getCellLayoutHeight()"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutWidth()I

    move-result v2

    int-to-float v2, v2

    const-string v3, "getCellLayoutWidth()"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2204
    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->mIsResponsiveGrid:Z

    if-eqz v1, :cond_0

    .line 2205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tmResponsiveWorkspaceHeightSpec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveWorkspaceHeightSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    .line 2206
    invoke-virtual {v2}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2205
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tmResponsiveWorkspaceWidthSpec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveWorkspaceWidthSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    .line 2208
    invoke-virtual {v2}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2207
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tmResponsiveAllAppsHeightSpec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveAllAppsHeightSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    .line 2210
    invoke-virtual {v2}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2209
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tmResponsiveAllAppsWidthSpec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveAllAppsWidthSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    .line 2212
    invoke-virtual {v2}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2211
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tmResponsiveFolderHeightSpec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveFolderHeightSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tmResponsiveFolderWidthSpec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveFolderWidthSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tmResponsiveHotseatSpec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveHotseatSpec:Lcom/android/launcher3/responsive/CalculatedHotseatSpec;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tmResponsiveWorkspaceCellSpec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveWorkspaceCellSpec:Lcom/android/launcher3/responsive/CalculatedCellSpec;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tmResponsiveAllAppsCellSpec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveAllAppsCellSpec:Lcom/android/launcher3/responsive/CalculatedCellSpec;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2220
    :cond_0
    return-void
.end method

.method public getAbsoluteOpenFolderBounds()Landroid/graphics/Rect;
    .locals 7

    .line 1934
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1936
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarSizePx:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    .line 1942
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    .line 1943
    .local v0, "hotseatTop":I
    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarSizePx:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    add-int/2addr v5, v6

    sub-int/2addr v5, v0

    iget v6, p0, Lcom/android/launcher3/DeviceProfile;->workspacePageIndicatorHeight:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    sub-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public getAllAppsIconStartMargin(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 1826
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1828
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    .local v0, "allAppsSpacing":I
    goto :goto_0

    .line 1830
    .end local v0    # "allAppsSpacing":I
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightMargin:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1834
    .restart local v0    # "allAppsSpacing":I
    :goto_0
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/DeviceProfile;->calculateCellWidth(III)I

    move-result v1

    .line 1838
    .local v1, "cellWidth":I
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    invoke-direct {p0, v2}, Lcom/android/launcher3/DeviceProfile;->getIconVisibleSizePx(I)I

    move-result v2

    sub-int v2, v1, v2

    div-int/lit8 v2, v2, 0x2

    .line 1840
    .local v2, "iconAlignmentMargin":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->allAppsPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 1841
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->allAppsPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    :goto_1
    add-int/2addr v3, v2

    .line 1840
    return v3
.end method

.method public getAppWidgetScale(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/PointF;
    .locals 1
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 1927
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mViewScaleProvider:Lcom/android/launcher3/DeviceProfile$ViewScaleProvider;

    invoke-interface {v0, p1}, Lcom/android/launcher3/DeviceProfile$ViewScaleProvider;->getScaleFromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getCellContentHeight(I)I
    .locals 1
    .param p1, "containerType"    # I

    .line 1994
    packed-switch p1, :pswitch_data_0

    .line 2005
    const/4 v0, 0x0

    return v0

    .line 1998
    :pswitch_0
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    return v0

    .line 2002
    :pswitch_1
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    return v0

    .line 1996
    :pswitch_2
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCellHorizontalSpace()I
    .locals 2

    .line 1578
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCellLayoutHeight()I
    .locals 2

    .line 1653
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getTotalWorkspacePadding()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCellLayoutSpringLoadShrunkBottom(Landroid/content/Context;)F
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1613
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->springLoadedHotseatBarTopMarginPx:I

    add-int/2addr v0, v1

    .line 1614
    .local v0, "topOfHotseat":I
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1615
    invoke-direct {p0, p1}, Lcom/android/launcher3/DeviceProfile;->getVerticalHotseatLastItemBottomOffset(Landroid/content/Context;)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 1614
    return v1
.end method

.method public getCellLayoutSpringLoadShrunkTop()F
    .locals 2

    .line 1605
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarTopMarginPx:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarSizePx:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarBottomMarginPx:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method public getCellLayoutWidth()I
    .locals 2

    .line 1644
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getTotalWorkspacePadding()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getPanelCount()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method public getCellSize()Landroid/graphics/Point;
    .locals 1

    .line 1555
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/DeviceProfile;->getCellSize(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getCellSize(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 4
    .param p1, "result"    # Landroid/graphics/Point;

    .line 1559
    if-nez p1, :cond_0

    .line 1560
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    move-object p1, v0

    .line 1563
    :cond_0
    nop

    .line 1564
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 1565
    .local v0, "shortcutAndWidgetContainerWidth":I
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/DeviceProfile;->calculateCellWidth(III)I

    move-result v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 1567
    nop

    .line 1568
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 1569
    .local v1, "shortcutAndWidgetContainerHeight":I
    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v3, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/DeviceProfile;->calculateCellHeight(III)I

    move-result v2

    iput v2, p1, Landroid/graphics/Point;->y:I

    .line 1571
    return-object p1
.end method

.method public getDisplayInfo()Lcom/android/launcher3/util/DisplayController$Info;
    .locals 1

    .line 955
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    return-object v0
.end method

.method public getHotseatAdjustedBorderSpaceForBubbleBar(Landroid/content/Context;)F
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 1731
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isQsbInline:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1732
    return v1

    .line 1736
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/DeviceProfile;->getHotseatLayoutPadding(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->mBubbleBarSpaceThresholdPx:I

    if-le v0, v2, :cond_1

    .line 1737
    return v1

    .line 1741
    :cond_1
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    mul-int v2, v0, v1

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    add-int/lit8 v4, v1, -0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 1743
    .local v2, "iconsWidth":I
    mul-int/lit8 v3, v0, 0x2

    sub-int v3, v2, v3

    .line 1745
    .local v3, "newWidth":I
    mul-int/2addr v0, v1

    sub-int v0, v3, v0

    int-to-float v0, v0

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getHotseatLayoutPadding(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 1752
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1753
    .local v0, "hotseatBarPadding":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1757
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1758
    .local v1, "paddingTop":I
    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1760
    .local v2, "paddingBottom":I
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1761
    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatBarEdgePaddingPx:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatBarWorkspaceSpacePx:I

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1764
    :cond_0
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatBarWorkspaceSpacePx:I

    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatBarEdgePaddingPx:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1767
    .end local v1    # "paddingTop":I
    .end local v2    # "paddingBottom":I
    :goto_0
    goto/16 :goto_3

    :cond_1
    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v1, :cond_4

    .line 1769
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getHotseatBarBottomPadding()I

    move-result v1

    .line 1770
    .local v1, "hotseatBarBottomPadding":I
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    sub-int/2addr v2, v1

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->hotseatCellHeightPx:I

    sub-int/2addr v2, v3

    .line 1773
    .local v2, "hotseatBarTopPadding":I
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getHotseatRequiredWidth()I

    move-result v3

    .line 1777
    .local v3, "hotseatWidth":I
    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarEndOffset:I

    if-lez v4, :cond_2

    .line 1778
    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->inlineNavButtonsEndSpacingPx:I

    .line 1779
    .local v4, "startSpacing":I
    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    sub-int/2addr v5, v3

    sub-int/2addr v5, v4

    iget v6, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    add-int/2addr v5, v6

    .local v5, "endSpacing":I
    goto :goto_1

    .line 1781
    .end local v4    # "startSpacing":I
    .end local v5    # "endSpacing":I
    :cond_2
    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    .line 1782
    .restart local v4    # "startSpacing":I
    move v5, v4

    .line 1784
    .restart local v5    # "endSpacing":I
    :goto_1
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getAdditionalQsbSpace()I

    move-result v6

    add-int/2addr v4, v6

    .line 1786
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1787
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1788
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v6

    .line 1789
    .local v6, "isRtl":Z
    if-eqz v6, :cond_3

    .line 1790
    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 1791
    iput v4, v0, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 1793
    :cond_3
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 1794
    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 1797
    .end local v1    # "hotseatBarBottomPadding":I
    .end local v2    # "hotseatBarTopPadding":I
    .end local v3    # "hotseatWidth":I
    .end local v4    # "startSpacing":I
    .end local v5    # "endSpacing":I
    .end local v6    # "isRtl":Z
    :goto_2
    goto :goto_3

    :cond_4
    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->mIsScalableGrid:Z

    if-eqz v1, :cond_5

    .line 1798
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-direct {p0, v1}, Lcom/android/launcher3/DeviceProfile;->getIconVisibleSizePx(I)I

    move-result v3

    sub-int/2addr v1, v3

    .line 1799
    .local v1, "iconExtraSpacePx":I
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbWidth:I

    add-int/2addr v4, v1

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 1800
    .local v3, "sideSpacing":I
    nop

    .line 1803
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getHotseatBarBottomPadding()I

    move-result v4

    .line 1800
    invoke-virtual {v0, v3, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1804
    .end local v1    # "iconExtraSpacePx":I
    .end local v3    # "sideSpacing":I
    goto :goto_3

    .line 1809
    :cond_5
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v3, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 1810
    .local v1, "workspaceCellWidth":F
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 1811
    .local v3, "hotseatCellWidth":F
    sub-float v4, v1, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1812
    .local v4, "hotseatAdjustment":I
    iget-object v5, p0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v4

    iget-object v6, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v4

    iget-object v7, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    .line 1818
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getHotseatBarBottomPadding()I

    move-result v7

    .line 1812
    invoke-virtual {v0, v5, v2, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1820
    .end local v1    # "workspaceCellWidth":F
    .end local v3    # "hotseatCellWidth":F
    .end local v4    # "hotseatAdjustment":I
    :goto_3
    return-object v0
.end method

.method public getInsets()Landroid/graphics/Rect;
    .locals 1

    .line 1551
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getMaxAllAppsRowCount()I
    .locals 2

    .line 801
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getMultiWindowProfile(Landroid/content/Context;Lcom/android/launcher3/util/WindowBounds;)Lcom/android/launcher3/DeviceProfile;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowBounds"    # Lcom/android/launcher3/util/WindowBounds;

    .line 984
    invoke-virtual {p0, p1}, Lcom/android/launcher3/DeviceProfile;->toBuilder(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v0

    .line 985
    invoke-virtual {v0, p2}, Lcom/android/launcher3/DeviceProfile$Builder;->setWindowBounds(Lcom/android/launcher3/util/WindowBounds;)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v0

    .line 986
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DeviceProfile$Builder;->setMultiWindowMode(Z)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v0

    .line 987
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile$Builder;->build()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 991
    .local v0, "profile":Lcom/android/launcher3/DeviceProfile;
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 992
    .local v1, "appWidgetScaleX":F
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 993
    .local v2, "appWidgetScaleY":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v3

    if-nez v4, :cond_0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_1

    .line 994
    :cond_0
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 995
    .local v3, "p":Landroid/graphics/PointF;
    invoke-virtual {v0, p1}, Lcom/android/launcher3/DeviceProfile;->toBuilder(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/launcher3/DeviceProfile$$ExternalSyntheticLambda2;

    invoke-direct {v5, v3}, Lcom/android/launcher3/DeviceProfile$$ExternalSyntheticLambda2;-><init>(Landroid/graphics/PointF;)V

    .line 996
    invoke-virtual {v4, v5}, Lcom/android/launcher3/DeviceProfile$Builder;->setViewScaleProvider(Lcom/android/launcher3/DeviceProfile$ViewScaleProvider;)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v4

    .line 997
    invoke-virtual {v4}, Lcom/android/launcher3/DeviceProfile$Builder;->build()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 1000
    .end local v3    # "p":Landroid/graphics/PointF;
    :cond_1
    invoke-direct {v0}, Lcom/android/launcher3/DeviceProfile;->hideWorkspaceLabelsIfNotEnoughSpace()V

    .line 1002
    return-object v0
.end method

.method public getOverviewActionsClaimedSpace()I
    .locals 2

    .line 1911
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/Flags;->enableGridOnlyOverview()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1912
    const/4 v0, 0x0

    goto :goto_0

    .line 1913
    :cond_0
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->overviewActionsTopMarginPx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->overviewActionsHeight:I

    add-int/2addr v0, v1

    :goto_0
    nop

    .line 1914
    .local v0, "overviewActionsSpace":I
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getOverviewActionsClaimedSpaceBelow()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public getOverviewActionsClaimedSpaceBelow()I
    .locals 1

    .line 1906
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->mTransientTaskbarClaimedSpace:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    :goto_0
    return v0
.end method

.method public getPanelCount()I
    .locals 1

    .line 1585
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getQsbOffsetY()I
    .locals 3

    .line 1874
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isQsbInline:Z

    if-eqz v0, :cond_0

    .line 1875
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getHotseatBarBottomPadding()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbHeight:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->hotseatCellHeightPx:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0

    .line 1876
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v0, :cond_1

    .line 1877
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbShadowHeight:I

    add-int/2addr v0, v1

    return v0

    .line 1879
    :cond_1
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarBottomSpacePx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbShadowHeight:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getTaskbarOffsetY()I
    .locals 3

    .line 1898
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 1899
    .local v0, "taskbarIconBottomSpace":I
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->hotseatCellHeightPx:I

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->gridVisualizationPaddingY:I

    .line 1900
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1901
    .local v1, "launcherIconBottomSpace":I
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getHotseatBarBottomPadding()I

    move-result v2

    add-int/2addr v2, v1

    sub-int/2addr v2, v0

    return v2
.end method

.method public getTotalWorkspacePadding()Landroid/graphics/Point;
    .locals 4

    .line 1657
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getWorkspaceSpringLoadScale(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public isSeascape()Z
    .locals 1

    .line 1986
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->mIsSeascape:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVerticalBarLayout()Z
    .locals 1

    .line 1965
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->transposeLayoutWithOrientation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public recalculateHotseatWidthAndBorderSpace()V
    .locals 11

    .line 888
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->mIsScalableGrid:Z

    if-nez v0, :cond_0

    return-void

    .line 890
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatColumnSpan:[I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget v0, v0, v1

    .line 891
    .local v0, "columns":I
    invoke-direct {p0, v0}, Lcom/android/launcher3/DeviceProfile;->getIconToIconWidthForColumns(I)I

    move-result v1

    int-to-float v1, v1

    .line 892
    .local v1, "hotseatWidthPx":F
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/DeviceProfile;->calculateHotseatBorderSpace(FI)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    .line 893
    invoke-direct {p0, v3}, Lcom/android/launcher3/DeviceProfile;->calculateQsbWidth(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbWidth:I

    .line 895
    iget-boolean v4, p0, Lcom/android/launcher3/DeviceProfile;->areNavButtonsInline:Z

    if-nez v4, :cond_1

    .line 896
    return-void

    .line 900
    :cond_1
    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->inlineNavButtonsEndSpacingPx:I

    .line 901
    .local v4, "sideSpacePx":I
    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    sub-int/2addr v5, v4

    iget v6, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarEndOffset:I

    sub-int/2addr v5, v6

    .line 902
    .local v5, "maxHotseatWidthPx":I
    iget-boolean v6, p0, Lcom/android/launcher3/DeviceProfile;->isQsbInline:Z

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    sub-int v3, v5, v3

    .line 903
    .local v3, "maxHotseatIconsWidthPx":I
    int-to-float v7, v3

    .line 904
    const/4 v8, 0x1

    add-int/2addr v6, v8

    .line 903
    invoke-direct {p0, v7, v6}, Lcom/android/launcher3/DeviceProfile;->calculateHotseatBorderSpace(FI)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    .line 906
    iget v7, p0, Lcom/android/launcher3/DeviceProfile;->mMinHotseatIconSpacePx:I

    if-lt v6, v7, :cond_3

    .line 907
    return-void

    .line 911
    :cond_3
    iput v7, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    .line 912
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getHotseatRequiredWidth()I

    move-result v6

    .line 915
    .local v6, "requiredWidth":I
    iget-boolean v7, p0, Lcom/android/launcher3/DeviceProfile;->isQsbInline:Z

    if-eqz v7, :cond_5

    .line 916
    iget v9, p0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbWidth:I

    sub-int v10, v6, v5

    sub-int/2addr v9, v10

    iput v9, p0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbWidth:I

    .line 917
    iget v10, p0, Lcom/android/launcher3/DeviceProfile;->mMinHotseatQsbWidthPx:I

    if-lt v9, v10, :cond_4

    .line 918
    return-void

    .line 922
    :cond_4
    iput v10, p0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbWidth:I

    .line 925
    :cond_5
    if-eqz v7, :cond_6

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbWidth:I

    :cond_6
    sub-int v2, v5, v2

    .line 929
    .end local v3    # "maxHotseatIconsWidthPx":I
    .local v2, "maxHotseatIconsWidthPx":I
    :cond_7
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    sub-int/2addr v3, v8

    iput v3, p0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    .line 930
    int-to-float v3, v2

    .line 931
    iget-boolean v7, p0, Lcom/android/launcher3/DeviceProfile;->isQsbInline:Z

    add-int/2addr v7, v8

    .line 930
    invoke-direct {p0, v3, v7}, Lcom/android/launcher3/DeviceProfile;->calculateHotseatBorderSpace(FI)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    .line 932
    iget v7, p0, Lcom/android/launcher3/DeviceProfile;->mMinHotseatIconSpacePx:I

    if-ge v3, v7, :cond_8

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    if-gt v3, v8, :cond_7

    .line 933
    :cond_8
    return-void
.end method

.method public shouldFadeAdjacentWorkspaceScreens()Z
    .locals 1

    .line 1990
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    return v0
.end method

.method public toBuilder(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile$Builder;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 959
    new-instance v6, Lcom/android/launcher3/util/WindowBounds;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->rotationHint:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/util/WindowBounds;-><init>(IIIII)V

    .line 961
    .local v0, "bounds":Lcom/android/launcher3/util/WindowBounds;
    iget-object v1, v0, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->windowX:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->windowY:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 962
    iget-object v1, v0, Lcom/android/launcher3/util/WindowBounds;->insets:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 964
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 965
    .local v1, "dotRendererCache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/launcher3/icons/DotRenderer;>;"
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mDotRendererWorkSpace:Lcom/android/launcher3/icons/DotRenderer;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 966
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mDotRendererAllApps:Lcom/android/launcher3/icons/DotRenderer;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 968
    new-instance v2, Lcom/android/launcher3/DeviceProfile$Builder;

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    invoke-direct {v2, p1, v3, v4}, Lcom/android/launcher3/DeviceProfile$Builder;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/util/DisplayController$Info;)V

    .line 969
    invoke-virtual {v2, v0}, Lcom/android/launcher3/DeviceProfile$Builder;->setWindowBounds(Lcom/android/launcher3/util/WindowBounds;)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher3/DeviceProfile;->isMultiDisplay:Z

    .line 970
    invoke-virtual {v2, v3}, Lcom/android/launcher3/DeviceProfile$Builder;->setIsMultiDisplay(Z)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    .line 971
    invoke-virtual {v2, v3}, Lcom/android/launcher3/DeviceProfile$Builder;->setMultiWindowMode(Z)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v2

    .line 972
    invoke-virtual {v2, v1}, Lcom/android/launcher3/DeviceProfile$Builder;->setDotRendererCache(Landroid/util/SparseArray;)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher3/DeviceProfile;->isGestureMode:Z

    .line 973
    invoke-virtual {v2, v3}, Lcom/android/launcher3/DeviceProfile$Builder;->setGestureMode(Z)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v2

    .line 968
    return-object v2
.end method

.method public toSmallString()Ljava/lang/String;
    .locals 2

    .line 2224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isTablet:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isMultiDisplay:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isMultiDisplay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", widthPx:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", heightPx:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", insets:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rotationHint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->rotationHint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateIconSize(FLandroid/content/Context;)V
    .locals 9
    .param p1, "scale"    # F
    .param p2, "context"    # Landroid/content/Context;

    .line 1116
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->iconScale:F

    .line 1117
    iput p1, p0, Lcom/android/launcher3/DeviceProfile;->cellScaleToFit:F

    .line 1120
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    .line 1121
    .local v0, "isVerticalLayout":Z
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {p0, v1, p1}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutBorderSpace(Lcom/android/launcher3/InvariantDeviceProfile;F)Landroid/graphics/Point;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    .line 1123
    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->mIsResponsiveGrid:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 1124
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveWorkspaceWidthSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    invoke-virtual {v1}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->getCellSizePx()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    .line 1125
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mResponsiveWorkspaceHeightSpec:Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    invoke-virtual {v1}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->getCellSizePx()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    .line 1127
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    if-ge v1, v3, :cond_0

    .line 1129
    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mIconSizeSteps:Lcom/android/launcher3/util/IconSizeSteps;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/util/IconSizeSteps;->getIconSmallerThan(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 1132
    :cond_0
    if-eqz v0, :cond_1

    .line 1133
    iput v2, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    .line 1134
    iput v2, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    goto :goto_0

    .line 1136
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getNormalizedIconDrawablePadding()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    .line 1139
    :goto_0
    new-instance v1, Lcom/android/launcher3/util/CellContentDimensions;

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    invoke-direct {v1, v3, v4, v5}, Lcom/android/launcher3/util/CellContentDimensions;-><init>(III)V

    .line 1142
    .local v1, "cellContentDimensions":Lcom/android/launcher3/util/CellContentDimensions;
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile;->mIconSizeSteps:Lcom/android/launcher3/util/IconSizeSteps;

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher3/util/CellContentDimensions;->resizeToFitCellHeight(ILcom/android/launcher3/util/IconSizeSteps;)I

    move-result v3

    .line 1144
    .local v3, "cellContentHeight":I
    invoke-virtual {v1}, Lcom/android/launcher3/util/CellContentDimensions;->getIconSizePx()I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 1145
    invoke-virtual {v1}, Lcom/android/launcher3/util/CellContentDimensions;->getIconDrawablePaddingPx()I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    .line 1146
    invoke-virtual {v1}, Lcom/android/launcher3/util/CellContentDimensions;->getIconTextSizePx()I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    .line 1148
    if-eqz v0, :cond_2

    .line 1149
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-direct {p0, v5}, Lcom/android/launcher3/DeviceProfile;->getIconSizeWithOverlap(I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/launcher3/DeviceProfile;->cellYPaddingPx:I

    goto :goto_1

    .line 1152
    :cond_2
    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    sub-int/2addr v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/launcher3/DeviceProfile;->cellYPaddingPx:I

    .line 1154
    .end local v1    # "cellContentDimensions":Lcom/android/launcher3/util/CellContentDimensions;
    .end local v3    # "cellContentHeight":I
    :goto_1
    goto/16 :goto_5

    :cond_3
    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->mIsScalableGrid:Z

    if-eqz v1, :cond_9

    .line 1155
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getNormalizedIconDrawablePadding()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->iconScale:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    .line 1156
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->minCellSize:[Landroid/graphics/PointF;

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget-object v1, v1, v3

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v3, p1}, Lcom/android/launcher3/testing/shared/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;F)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    .line 1157
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->minCellSize:[Landroid/graphics/PointF;

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget-object v1, v1, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v3, p1}, Lcom/android/launcher3/testing/shared/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;F)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    .line 1159
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    if-ge v1, v3, :cond_5

    .line 1161
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getPanelCount()I

    move-result v1

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v3, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    mul-int/2addr v1, v3

    .line 1162
    .local v1, "numColumns":I
    add-int/lit8 v3, v1, -0x1

    .line 1163
    .local v3, "numBorders":I
    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    sub-int/2addr v4, v5

    mul-int/2addr v4, v1

    .line 1164
    .local v4, "extraWidthRequired":I
    iget-object v5, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    mul-int/2addr v5, v3

    if-lt v5, v4, :cond_4

    .line 1165
    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iput v5, p0, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    .line 1166
    iget-object v5, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    div-int v7, v4, v3

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Point;->x:I

    goto :goto_2

    .line 1170
    :cond_4
    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    mul-int/2addr v5, v1

    iget-object v6, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    mul-int/2addr v6, v3

    add-int/2addr v5, v6

    div-int/2addr v5, v1

    iput v5, p0, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    .line 1172
    iget v6, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 1173
    iget-object v5, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iput v2, v5, Landroid/graphics/Point;->x:I

    .line 1177
    .end local v1    # "numColumns":I
    .end local v3    # "numBorders":I
    .end local v4    # "extraWidthRequired":I
    :cond_5
    :goto_2
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float v3, v3

    .line 1178
    invoke-static {v3}, Lcom/android/launcher3/Utilities;->calculateTextHeight(F)I

    move-result v3

    add-int/2addr v1, v3

    .line 1179
    .local v1, "cellTextAndPaddingHeight":I
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    add-int/2addr v3, v1

    .line 1180
    .local v3, "cellContentHeight":I
    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    if-ge v4, v3, :cond_8

    .line 1183
    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v4, v4, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    add-int/lit8 v4, v4, -0x1

    .line 1184
    .local v4, "numBorders":I
    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    sub-int v5, v3, v5

    iget-object v6, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v6, v6, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    mul-int/2addr v5, v6

    .line 1185
    .local v5, "extraHeightRequired":I
    iget-object v6, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    mul-int/2addr v6, v4

    if-lt v6, v5, :cond_6

    .line 1186
    iput v3, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    .line 1187
    iget-object v6, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v7, v6, Landroid/graphics/Point;->y:I

    div-int v8, v5, v4

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Point;->y:I

    goto :goto_4

    .line 1190
    :cond_6
    iget v6, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    iget-object v7, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v7, v7, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    mul-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    mul-int/2addr v7, v4

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v7, v7, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    div-int/2addr v6, v7

    iput v6, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    .line 1192
    iget-object v6, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iput v2, v6, Landroid/graphics/Point;->y:I

    .line 1194
    iget v6, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    sub-int v6, v3, v6

    .line 1195
    .local v6, "cellContentWithoutPadding":I
    iget v7, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    if-gt v6, v7, :cond_7

    .line 1196
    sub-int v7, v3, v7

    iput v7, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    goto :goto_3

    .line 1200
    :cond_7
    iput v2, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    .line 1201
    int-to-float v7, v7

    int-to-float v8, v6

    div-float/2addr v7, v8

    .line 1202
    .local v7, "ratio":F
    iget v8, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v8, v8

    mul-float/2addr v8, v7

    float-to-int v8, v8

    iput v8, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 1203
    iget v8, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float v8, v8

    mul-float/2addr v8, v7

    float-to-int v8, v8

    iput v8, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    .line 1205
    .end local v7    # "ratio":F
    :goto_3
    iget v7, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    iget v8, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float v8, v8

    .line 1206
    invoke-static {v8}, Lcom/android/launcher3/Utilities;->calculateTextHeight(F)I

    move-result v8

    add-int/2addr v7, v8

    move v1, v7

    .line 1208
    .end local v6    # "cellContentWithoutPadding":I
    :goto_4
    iget v6, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    add-int v3, v6, v1

    .line 1210
    .end local v4    # "numBorders":I
    .end local v5    # "extraHeightRequired":I
    :cond_8
    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    sub-int/2addr v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/launcher3/DeviceProfile;->cellYPaddingPx:I

    .line 1211
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceHorizontalMarginOriginalPx:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceHorizontalMarginPx:I

    .line 1213
    .end local v1    # "cellTextAndPaddingHeight":I
    .end local v3    # "cellContentHeight":I
    goto :goto_5

    .line 1214
    :cond_9
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getNormalizedIconDrawablePadding()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->iconScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    .line 1215
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    .line 1216
    invoke-direct {p0, v2}, Lcom/android/launcher3/DeviceProfile;->getIconSizeWithOverlap(I)I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float v2, v2

    .line 1218
    invoke-static {v2}, Lcom/android/launcher3/Utilities;->calculateTextHeight(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    .line 1219
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 1220
    .local v1, "cellPaddingY":I
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    if-le v3, v1, :cond_a

    if-nez v0, :cond_a

    iget-boolean v4, p0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez v4, :cond_a

    .line 1225
    sub-int/2addr v3, v1

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    .line 1226
    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    .line 1231
    .end local v1    # "cellPaddingY":I
    :cond_a
    :goto_5
    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->mIsResponsiveGrid:Z

    if-eqz v1, :cond_b

    .line 1232
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->updateAllAppsWithResponsiveMeasures()V

    goto :goto_6

    .line 1234
    :cond_b
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/DeviceProfile;->updateAllAppsIconSize(FLandroid/content/res/Resources;)V

    .line 1236
    :goto_6
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->updateAllAppsContainerWidth()V

    .line 1237
    if-eqz v0, :cond_c

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->mIsResponsiveGrid:Z

    if-nez v1, :cond_c

    .line 1238
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->hideWorkspaceLabelsIfNotEnoughSpace()V

    .line 1240
    :cond_c
    invoke-static {}, Lcom/android/launcher3/Flags;->enableTwolineToggle()Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Lcom/android/launcher3/LauncherPrefs;->ENABLE_TWOLINE_ALLAPPS_TOGGLE:Lcom/android/launcher3/ConstantItem;

    .line 1241
    invoke-virtual {v1, p2}, Lcom/android/launcher3/ConstantItem;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1243
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:F

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->calculateTextHeight(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    .line 1246
    :cond_d
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-direct {p0, v1}, Lcom/android/launcher3/DeviceProfile;->updateHotseatSizes(I)V

    .line 1249
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-static {v1}, Lcom/android/launcher3/icons/IconNormalizer;->getNormalizedCircleSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    .line 1250
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/launcher3/DeviceProfile;->folderIconOffsetYPx:I

    .line 1253
    const/high16 v1, 0x40c00000    # 6.0f

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v2}, Lcom/android/launcher3/testing/shared/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    .line 1254
    .local v1, "minSpacing":F
    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    cmpg-float v2, v2, v1

    if-ltz v2, :cond_f

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    cmpg-float v2, v2, v1

    if-gez v2, :cond_e

    goto :goto_7

    .line 1261
    :cond_e
    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->widgetPadding:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_8

    .line 1256
    :cond_f
    :goto_7
    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->widgetPadding:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-float v3, v1, v3

    .line 1257
    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 1258
    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->widgetPadding:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    sub-float v3, v1, v3

    .line 1259
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 1263
    :goto_8
    return-void
.end method

.method public updateInsets(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 1543
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1544
    return-void
.end method

.method public updateIsSeascape(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 1972
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1973
    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    .line 1974
    invoke-virtual {v0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1975
    .local v0, "isSeascape":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher3/DeviceProfile;->mIsSeascape:Z

    if-eq v2, v0, :cond_1

    .line 1976
    iput-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->mIsSeascape:Z

    .line 1978
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->updateWorkspacePadding()V

    .line 1979
    return v3

    .line 1982
    .end local v0    # "isSeascape":Z
    :cond_1
    return v1
.end method
