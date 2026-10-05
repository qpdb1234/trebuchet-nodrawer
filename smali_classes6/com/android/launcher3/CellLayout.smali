.class public Lcom/android/launcher3/CellLayout;
.super Landroid/view/ViewGroup;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/CellLayout$ContainerType;
    }
.end annotation


# static fields
.field private static final BACKGROUND_STATE_ACTIVE:[I

.field private static final BACKGROUND_STATE_DEFAULT:[I

.field private static final DEBUG_VISUALIZE_OCCUPIED:Z = false

.field public static final DEFAULT_SCALE:F = 1.0f

.field private static final DESTRUCTIVE_REORDER:Z = false

.field public static final FOLDER:I = 0x2

.field private static final FOLDER_LEAVE_BEHIND_COLOR:I

.field public static final HOTSEAT:I = 0x1

.field private static final INVALID_DIRECTION:I = -0x64

.field private static final LOGD:Z = false

.field public static final MODE_ACCEPT_DROP:I = 0x4

.field public static final MODE_DRAG_OVER:I = 0x1

.field public static final MODE_ON_DROP:I = 0x2

.field public static final MODE_ON_DROP_EXTERNAL:I = 0x3

.field public static final MODE_SHOW_REORDER_HINT:I = 0x0

.field public static final REORDER_ANIMATION_DURATION:I = 0x96

.field public static final REORDER_PREVIEW_MAGNITUDE:F = 0.12f

.field public static final SPRING_LOADED_PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/CellLayout;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CellLayout"

.field public static final WORKSPACE:I

.field private static final sPaint:Landroid/graphics/Paint;


# instance fields
.field protected final mActivity:Lcom/android/launcher3/views/ActivityContext;

.field protected final mBackground:Landroid/graphics/drawable/Drawable;

.field protected mBorderSpace:Landroid/graphics/Point;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field mCellHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field mCellLayoutContainer:Lcom/android/launcher3/CellLayoutContainer;

.field mCellWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private final mContainerType:I

.field protected mCountX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field protected mCountY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private final mDelegatedCellDrawings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/celllayout/DelegatedCellDrawing;",
            ">;"
        }
    .end annotation
.end field

.field public final mDirectionVector:[I

.field private final mDragCell:[I

.field private final mDragCellSpan:[I

.field final mDragOutlineAlphas:[F

.field private final mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

.field private mDragOutlineCurrent:I

.field private final mDragOutlinePaint:Landroid/graphics/Paint;

.field final mDragOutlines:[Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

.field private mDragging:Z

.field private mDropPending:Z

.field private final mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mFixedCellHeight:I

.field private mFixedCellWidth:I

.field private mFixedHeight:I

.field private mFixedWidth:I

.field final mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

.field private mGridAlpha:F

.field private mGridColor:I

.field private mGridVisualizationRoundingRadius:I

.field private mInterceptTouchListener:Landroid/view/View$OnTouchListener;

.field private final mIntersectingViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDragOverlapping:Z

.field private mItemPlacementDirty:Z

.field protected mOccupied:Lcom/android/launcher3/util/GridOccupancy;

.field private final mOccupiedRect:Landroid/graphics/Rect;

.field mPreviousSolution:Lcom/android/launcher3/celllayout/ItemConfiguration;

.field final mReorderAnimators:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field final mReorderPreviewAnimationMagnitude:F

.field private mScrollProgress:F

.field final mShakeAnimators:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/launcher3/Reorderable;",
            "Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;",
            ">;"
        }
    .end annotation
.end field

.field protected final mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

.field protected mSpaceBetweenCellLayoutsPx:I

.field protected mSpringLoadedProgress:F

.field final mTempLocation:[I

.field final mTempOnDrawCellToRect:Landroid/graphics/Rect;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRectF:Landroid/graphics/RectF;

.field private final mTmpFloatArray:[F

.field public mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

.field final mTmpPoint:[I

.field final mTmpPointF:Landroid/graphics/PointF;

.field mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

.field private mVisualizeCells:Z

.field private mVisualizeDropLocation:Z

.field private mVisualizeGridPaint:Landroid/graphics/Paint;

.field private mVisualizeGridRect:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 93
    const/16 v0, 0xa0

    const/16 v1, 0xf5

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/android/launcher3/CellLayout;->FOLDER_LEAVE_BEHIND_COLOR:I

    .line 128
    const v0, 0x10100a2

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/CellLayout;->BACKGROUND_STATE_ACTIVE:[I

    .line 129
    sget-object v0, Lcom/android/launcher3/CellLayout;->EMPTY_STATE_SET:[I

    sput-object v0, Lcom/android/launcher3/CellLayout;->BACKGROUND_STATE_DEFAULT:[I

    .line 211
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher3/CellLayout;->sPaint:Landroid/graphics/Paint;

    .line 218
    new-instance v0, Lcom/android/launcher3/CellLayout$1;

    const-string v1, "spring_loaded_progress"

    invoke-direct {v0, v1}, Lcom/android/launcher3/CellLayout$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/CellLayout;->SPRING_LOADED_PROGRESS:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 237
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 238
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 241
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/launcher3/CellLayout;->mDropPending:Z

    .line 114
    const/4 v3, 0x2

    new-array v4, v3, [I

    iput-object v4, v0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    .line 115
    new-array v4, v3, [I

    iput-object v4, v0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    .line 117
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/launcher3/CellLayout;->mTempOnDrawCellToRect:Landroid/graphics/Rect;

    .line 118
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    iput-object v4, v0, Lcom/android/launcher3/CellLayout;->mTmpPointF:Landroid/graphics/PointF;

    .line 125
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/launcher3/CellLayout;->mDelegatedCellDrawings:Ljava/util/ArrayList;

    .line 126
    new-instance v4, Lcom/android/launcher3/folder/PreviewBackground;

    invoke-direct {v4}, Lcom/android/launcher3/folder/PreviewBackground;-><init>()V

    iput-object v4, v0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    .line 133
    const/4 v5, -0x1

    iput v5, v0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    .line 134
    iput v5, v0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    .line 137
    iput-boolean v2, v0, Lcom/android/launcher3/CellLayout;->mIsDragOverlapping:Z

    .line 141
    const/4 v6, 0x4

    new-array v7, v6, [Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    iput-object v7, v0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    .line 142
    array-length v8, v7

    new-array v8, v8, [F

    iput-object v8, v0, Lcom/android/launcher3/CellLayout;->mDragOutlineAlphas:[F

    .line 143
    array-length v7, v7

    new-array v7, v7, [Lcom/android/launcher3/InterruptibleInOutAnimator;

    iput-object v7, v0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    .line 147
    iput v2, v0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    .line 148
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, v0, Lcom/android/launcher3/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    .line 150
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    iput-object v7, v0, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    .line 151
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    iput-object v7, v0, Lcom/android/launcher3/CellLayout;->mShakeAnimators:Landroid/util/ArrayMap;

    .line 153
    iput-boolean v2, v0, Lcom/android/launcher3/CellLayout;->mItemPlacementDirty:Z

    .line 156
    iput-boolean v2, v0, Lcom/android/launcher3/CellLayout;->mVisualizeCells:Z

    .line 157
    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/android/launcher3/CellLayout;->mVisualizeDropLocation:Z

    .line 158
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    iput-object v8, v0, Lcom/android/launcher3/CellLayout;->mVisualizeGridRect:Landroid/graphics/RectF;

    .line 159
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, v0, Lcom/android/launcher3/CellLayout;->mVisualizeGridPaint:Landroid/graphics/Paint;

    .line 161
    const/4 v8, 0x0

    iput v8, v0, Lcom/android/launcher3/CellLayout;->mGridAlpha:F

    .line 162
    iput v2, v0, Lcom/android/launcher3/CellLayout;->mGridColor:I

    .line 163
    iput v8, v0, Lcom/android/launcher3/CellLayout;->mSpringLoadedProgress:F

    .line 164
    iput v8, v0, Lcom/android/launcher3/CellLayout;->mScrollProgress:F

    .line 167
    new-array v9, v3, [I

    iput-object v9, v0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    .line 168
    new-array v10, v3, [I

    iput-object v10, v0, Lcom/android/launcher3/CellLayout;->mDragCellSpan:[I

    .line 170
    iput-boolean v2, v0, Lcom/android/launcher3/CellLayout;->mDragging:Z

    .line 174
    iput v2, v0, Lcom/android/launcher3/CellLayout;->mSpaceBetweenCellLayoutsPx:I

    .line 200
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    .line 201
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, v0, Lcom/android/launcher3/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    .line 202
    new-array v3, v3, [I

    iput-object v3, v0, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    .line 204
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/launcher3/CellLayout;->mPreviousSolution:Lcom/android/launcher3/celllayout/ItemConfiguration;

    .line 207
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    .line 208
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v0, Lcom/android/launcher3/CellLayout;->mTempRectF:Landroid/graphics/RectF;

    .line 209
    new-array v3, v6, [F

    iput-object v3, v0, Lcom/android/launcher3/CellLayout;->mTmpFloatArray:[F

    .line 242
    sget-object v3, Lcom/android/launcher3/R$styleable;->CellLayout:[I

    move-object/from16 v6, p2

    move/from16 v11, p3

    invoke-virtual {v1, v6, v3, v11, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 243
    .local v3, "a":Landroid/content/res/TypedArray;
    sget v12, Lcom/android/launcher3/R$styleable;->CellLayout_containerType:I

    invoke-virtual {v3, v12, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v12

    iput v12, v0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    .line 244
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 248
    invoke-virtual {v0, v2}, Lcom/android/launcher3/CellLayout;->setWillNotDraw(Z)V

    .line 249
    invoke-virtual {v0, v2}, Lcom/android/launcher3/CellLayout;->setClipToPadding(Z)V

    .line 250
    invoke-virtual {v0, v2}, Lcom/android/launcher3/CellLayout;->setClipChildren(Z)V

    .line 251
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/views/ActivityContext;

    iput-object v12, v0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    .line 252
    invoke-interface {v12}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v12

    .line 254
    .local v12, "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    invoke-direct {v0, v12}, Lcom/android/launcher3/CellLayout;->resetCellSizeInternal(Lcom/android/launcher3/DeviceProfile;)V

    .line 256
    iget-object v13, v12, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v13, v13, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iput v13, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 257
    iget-object v13, v12, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v13, v13, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iput v13, v0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 258
    new-instance v13, Lcom/android/launcher3/util/GridOccupancy;

    iget v14, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v15, v0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-direct {v13, v14, v15}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iput-object v13, v0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 259
    new-instance v13, Lcom/android/launcher3/util/GridOccupancy;

    iget v14, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v15, v0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-direct {v13, v14, v15}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iput-object v13, v0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 261
    iput v5, v4, Lcom/android/launcher3/folder/PreviewBackground;->mDelegateCellX:I

    .line 262
    iput v5, v4, Lcom/android/launcher3/folder/PreviewBackground;->mDelegateCellY:I

    .line 264
    invoke-virtual {v0, v2}, Lcom/android/launcher3/CellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 268
    .local v4, "res":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v13

    sget v14, Lcom/android/launcher3/R$drawable;->bg_celllayout:I

    invoke-virtual {v13, v14}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    iput-object v13, v0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 269
    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 270
    invoke-virtual {v13, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 272
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v13

    sget v14, Lcom/android/launcher3/R$attr;->workspaceAccentColor:I

    invoke-static {v13, v14}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v13

    iput v13, v0, Lcom/android/launcher3/CellLayout;->mGridColor:I

    .line 273
    sget v13, Lcom/android/launcher3/R$dimen;->grid_visualization_rounding_radius:I

    .line 274
    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v0, Lcom/android/launcher3/CellLayout;->mGridVisualizationRoundingRadius:I

    .line 275
    iget v13, v12, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v13, v13

    const v14, 0x3df5c28f    # 0.12f

    mul-float/2addr v13, v14

    iput v13, v0, Lcom/android/launcher3/CellLayout;->mReorderPreviewAnimationMagnitude:F

    .line 278
    sget-object v13, Lcom/android/app/animation/Interpolators;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    iput-object v13, v0, Lcom/android/launcher3/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 279
    aput v5, v9, v7

    aput v5, v9, v2

    .line 280
    aput v5, v10, v7

    aput v5, v10, v2

    .line 281
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v7, v0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    array-length v9, v7

    if-ge v5, v9, :cond_0

    .line 282
    new-instance v9, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    invoke-direct {v9, v2, v2, v2, v2}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;-><init>(IIII)V

    aput-object v9, v7, v5

    .line 281
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 284
    .end local v5    # "i":I
    :cond_0
    iget-object v2, v0, Lcom/android/launcher3/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    sget v5, Lcom/android/launcher3/R$attr;->workspaceTextColor:I

    invoke-static {v1, v5}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 290
    sget v2, Lcom/android/launcher3/R$integer;->config_dragOutlineFadeTime:I

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 291
    .local v2, "duration":I
    const/4 v5, 0x0

    .line 292
    .local v5, "fromAlphaValue":F
    sget v7, Lcom/android/launcher3/R$integer;->config_dragOutlineMaxAlpha:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-float v7, v7

    .line 294
    .local v7, "toAlphaValue":F
    iget-object v9, v0, Lcom/android/launcher3/CellLayout;->mDragOutlineAlphas:[F

    invoke-static {v9, v8}, Ljava/util/Arrays;->fill([FF)V

    .line 296
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    iget-object v10, v0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    array-length v10, v10

    if-ge v9, v10, :cond_1

    .line 297
    new-instance v10, Lcom/android/launcher3/InterruptibleInOutAnimator;

    int-to-long v13, v2

    invoke-direct {v10, v13, v14, v8, v7}, Lcom/android/launcher3/InterruptibleInOutAnimator;-><init>(JFF)V

    .line 299
    .local v10, "anim":Lcom/android/launcher3/InterruptibleInOutAnimator;
    invoke-virtual {v10}, Lcom/android/launcher3/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v13

    iget-object v14, v0, Lcom/android/launcher3/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v13, v14}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 300
    move v13, v9

    .line 301
    .local v13, "thisIndex":I
    invoke-virtual {v10}, Lcom/android/launcher3/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v14

    new-instance v15, Lcom/android/launcher3/CellLayout$2;

    invoke-direct {v15, v0, v13}, Lcom/android/launcher3/CellLayout$2;-><init>(Lcom/android/launcher3/CellLayout;I)V

    invoke-virtual {v14, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 311
    iget-object v14, v0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    aput-object v10, v14, v9

    .line 296
    .end local v10    # "anim":Lcom/android/launcher3/InterruptibleInOutAnimator;
    .end local v13    # "thisIndex":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 314
    .end local v9    # "i":I
    :cond_1
    new-instance v8, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget v9, v0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    invoke-direct {v8, v1, v9}, Lcom/android/launcher3/ShortcutAndWidgetContainer;-><init>(Landroid/content/Context;I)V

    iput-object v8, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 315
    iget v14, v0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget v15, v0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v9, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v10, v0, Lcom/android/launcher3/CellLayout;->mCountY:I

    iget-object v13, v0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    move-object/from16 v18, v13

    move-object v13, v8

    move/from16 v16, v9

    move/from16 v17, v10

    invoke-virtual/range {v13 .. v18}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIIILandroid/graphics/Point;)V

    .line 317
    invoke-virtual {v0, v8}, Lcom/android/launcher3/CellLayout;->addView(Landroid/view/View;)V

    .line 318
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/CellLayoutContainer;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "container"    # Lcom/android/launcher3/CellLayoutContainer;

    .line 232
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 233
    iput-object p2, p0, Lcom/android/launcher3/CellLayout;->mCellLayoutContainer:Lcom/android/launcher3/CellLayoutContainer;

    .line 234
    return-void
.end method

.method private animateItemsToSolution(Lcom/android/launcher3/celllayout/ItemConfiguration;Landroid/view/View;Z)V
    .locals 17
    .param p1, "solution"    # Lcom/android/launcher3/celllayout/ItemConfiguration;
    .param p2, "dragView"    # Landroid/view/View;
    .param p3, "commitDragView"    # Z

    .line 1403
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-object v10, v8, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 1404
    .local v10, "occupied":Lcom/android/launcher3/util/GridOccupancy;
    invoke-virtual {v10}, Lcom/android/launcher3/util/GridOccupancy;->clear()V

    .line 1406
    iget-object v0, v8, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v11

    .line 1407
    .local v11, "childCount":I
    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_0
    const/4 v13, 0x1

    if-ge v12, v11, :cond_2

    .line 1408
    iget-object v0, v8, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v12}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1409
    .local v14, "child":Landroid/view/View;
    move-object/from16 v15, p2

    if-ne v14, v15, :cond_0

    goto :goto_1

    .line 1410
    :cond_0
    iget-object v0, v9, Lcom/android/launcher3/celllayout/ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/launcher3/util/CellAndSpan;

    .line 1411
    .local v7, "c":Lcom/android/launcher3/util/CellAndSpan;
    if-eqz v7, :cond_1

    .line 1412
    iget v2, v7, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v3, v7, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    const/16 v4, 0x96

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v8, v7

    .end local v7    # "c":Lcom/android/launcher3/util/CellAndSpan;
    .local v8, "c":Lcom/android/launcher3/util/CellAndSpan;
    move/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    .line 1414
    invoke-virtual {v10, v8, v13}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    goto :goto_1

    .line 1411
    .end local v8    # "c":Lcom/android/launcher3/util/CellAndSpan;
    .restart local v7    # "c":Lcom/android/launcher3/util/CellAndSpan;
    :cond_1
    move-object v8, v7

    .line 1407
    .end local v7    # "c":Lcom/android/launcher3/util/CellAndSpan;
    .end local v14    # "child":Landroid/view/View;
    :goto_1
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v8, p0

    goto :goto_0

    :cond_2
    move-object/from16 v15, p2

    .line 1417
    .end local v12    # "i":I
    if-eqz p3, :cond_3

    .line 1418
    invoke-virtual {v10, v9, v13}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    .line 1420
    :cond_3
    return-void
.end method

.method private applyColorExtractionOnWidget(Lcom/android/launcher3/DropTarget$DragObject;[III)V
    .locals 9
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "targetCell"    # [I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I

    .line 1193
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 1194
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v1, :cond_0

    .line 1195
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mCellLayoutContainer:Lcom/android/launcher3/CellLayoutContainer;

    invoke-interface {v1, p0}, Lcom/android/launcher3/CellLayoutContainer;->getCellLayoutId(Lcom/android/launcher3/CellLayout;)I

    move-result v1

    .line 1196
    .local v1, "screenId":I
    const/4 v2, 0x0

    aget v4, p2, v2

    const/4 v2, 0x1

    aget v5, p2, v2

    iget-object v8, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    move-object v3, p0

    move v6, p3

    move v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 1198
    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, p0, v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->handleDrag(Landroid/graphics/Rect;Landroid/view/View;I)V

    .line 1200
    .end local v1    # "screenId":I
    :cond_0
    return-void
.end method

.method private beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher3/celllayout/ItemConfiguration;Landroid/view/View;I)V
    .locals 22
    .param p1, "solution"    # Lcom/android/launcher3/celllayout/ItemConfiguration;
    .param p2, "dragView"    # Landroid/view/View;
    .param p3, "mode"    # I

    .line 1426
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    iget-object v0, v12, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v14

    .line 1427
    .local v14, "childCount":I
    const/4 v0, 0x0

    move v15, v0

    .local v15, "i":I
    :goto_0
    if-ge v15, v14, :cond_3

    .line 1428
    iget-object v0, v12, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v15}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1429
    .local v11, "child":Landroid/view/View;
    move-object/from16 v10, p2

    if-ne v11, v10, :cond_0

    goto :goto_2

    .line 1430
    :cond_0
    iget-object v0, v13, Lcom/android/launcher3/celllayout/ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/launcher3/util/CellAndSpan;

    .line 1431
    .local v9, "c":Lcom/android/launcher3/util/CellAndSpan;
    if-nez p3, :cond_1

    iget-object v0, v13, Lcom/android/launcher3/celllayout/ItemConfiguration;->intersectingViews:Ljava/util/ArrayList;

    .line 1432
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move/from16 v16, v0

    .line 1434
    .local v16, "skip":Z
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    .line 1435
    .local v17, "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    if-eqz v9, :cond_2

    if-nez v16, :cond_2

    instance-of v0, v11, Lcom/android/launcher3/Reorderable;

    if-eqz v0, :cond_2

    .line 1436
    new-instance v18, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;

    .line 1437
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v4

    iget v5, v9, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v6, v9, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v7, v9, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget v8, v9, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    iget v2, v12, Lcom/android/launcher3/CellLayout;->mReorderPreviewAnimationMagnitude:F

    iget-object v1, v12, Lcom/android/launcher3/CellLayout;->mShakeAnimators:Landroid/util/ArrayMap;

    move-object/from16 v0, v18

    move-object/from16 v19, v1

    move-object v1, v11

    move/from16 v20, v2

    move/from16 v2, p3

    move-object/from16 v21, v9

    .end local v9    # "c":Lcom/android/launcher3/util/CellAndSpan;
    .local v21, "c":Lcom/android/launcher3/util/CellAndSpan;
    move/from16 v9, v20

    move-object/from16 v10, p0

    move-object/from16 v20, v11

    .end local v11    # "child":Landroid/view/View;
    .local v20, "child":Landroid/view/View;
    move-object/from16 v11, v19

    invoke-direct/range {v0 .. v11}, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;-><init>(Landroid/view/View;IIIIIIIFLcom/android/launcher3/CellLayout;Landroid/util/ArrayMap;)V

    .line 1439
    .local v0, "rha":Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;
    invoke-virtual {v0}, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->animate()V

    goto :goto_2

    .line 1435
    .end local v0    # "rha":Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;
    .end local v20    # "child":Landroid/view/View;
    .end local v21    # "c":Lcom/android/launcher3/util/CellAndSpan;
    .restart local v9    # "c":Lcom/android/launcher3/util/CellAndSpan;
    .restart local v11    # "child":Landroid/view/View;
    :cond_2
    move-object/from16 v21, v9

    move-object/from16 v20, v11

    .line 1427
    .end local v9    # "c":Lcom/android/launcher3/util/CellAndSpan;
    .end local v11    # "child":Landroid/view/View;
    .end local v16    # "skip":Z
    .end local v17    # "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1442
    .end local v15    # "i":I
    :cond_3
    return-void
.end method

.method private canCreateFolder(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 556
    instance-of v0, p1, Lcom/android/launcher3/dragndrop/DraggableView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/dragndrop/DraggableView;

    .line 557
    invoke-interface {v0}, Lcom/android/launcher3/dragndrop/DraggableView;->getViewType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 556
    :goto_0
    return v0
.end method

.method private commitTempPlacement(Landroid/view/View;)V
    .locals 21
    .param p1, "dragView"    # Landroid/view/View;

    .line 1452
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v2, v0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/GridOccupancy;->copyTo(Lcom/android/launcher3/util/GridOccupancy;)V

    .line 1454
    iget-object v1, v0, Lcom/android/launcher3/CellLayout;->mCellLayoutContainer:Lcom/android/launcher3/CellLayoutContainer;

    invoke-interface {v1, v0}, Lcom/android/launcher3/CellLayoutContainer;->getCellLayoutId(Lcom/android/launcher3/CellLayout;)I

    move-result v1

    .line 1455
    .local v1, "screenId":I
    const/16 v2, -0x64

    .line 1457
    .local v2, "container":I
    iget v3, v0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1458
    const/4 v1, -0x1

    .line 1459
    const/16 v2, -0x65

    .line 1462
    :cond_0
    iget-object v3, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    .line 1463
    .local v3, "childCount":I
    const/4 v5, 0x0

    move v13, v5

    .local v13, "i":I
    :goto_0
    if-ge v13, v3, :cond_5

    .line 1464
    iget-object v5, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v5, v13}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1465
    .local v14, "child":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    .line 1466
    .local v15, "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lcom/android/launcher3/model/data/ItemInfo;

    .line 1469
    .local v12, "info":Lcom/android/launcher3/model/data/ItemInfo;
    if-eqz v12, :cond_4

    move-object/from16 v11, p1

    if-eq v14, v11, :cond_4

    .line 1470
    iget-object v5, v0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v5}, Lcom/android/launcher3/views/ActivityContext;->getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/android/launcher3/celllayout/CellPosMapper;->mapModelToPresenter(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    move-result-object v10

    .line 1471
    .local v10, "presenterPos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    iget v5, v10, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellX:I

    invoke-virtual {v15}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getTmpCellX()I

    move-result v6

    if-ne v5, v6, :cond_2

    iget v5, v10, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellY:I

    .line 1472
    invoke-virtual {v15}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getTmpCellY()I

    move-result v6

    if-ne v5, v6, :cond_2

    iget v5, v12, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v6, v15, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    if-ne v5, v6, :cond_2

    iget v5, v12, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v6, v15, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    if-ne v5, v6, :cond_2

    iget v5, v10, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    if-eq v5, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    move v5, v4

    :goto_2
    move/from16 v16, v5

    .line 1475
    .local v16, "requiresDbUpdate":Z
    invoke-virtual {v15}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getTmpCellX()I

    move-result v5

    invoke-virtual {v15, v5}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellX(I)V

    .line 1476
    invoke-virtual {v15}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getTmpCellY()I

    move-result v5

    invoke-virtual {v15, v5}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellY(I)V

    .line 1477
    if-eqz v16, :cond_3

    .line 1478
    iget-object v5, v0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v5}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v5

    .line 1479
    invoke-virtual {v15}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v9

    invoke-virtual {v15}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v17

    iget v8, v15, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iget v7, v15, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    .line 1478
    move-object v6, v12

    move/from16 v18, v7

    move v7, v2

    move/from16 v19, v8

    move v8, v1

    move-object/from16 v20, v10

    .end local v10    # "presenterPos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    .local v20, "presenterPos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    move/from16 v10, v17

    move/from16 v11, v19

    move-object/from16 v17, v12

    .end local v12    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .local v17, "info":Lcom/android/launcher3/model/data/ItemInfo;
    move/from16 v12, v18

    invoke-virtual/range {v5 .. v12}, Lcom/android/launcher3/model/ModelWriter;->modifyItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIIIII)V

    goto :goto_3

    .line 1477
    .end local v17    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v20    # "presenterPos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    .restart local v10    # "presenterPos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    .restart local v12    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_3
    move-object/from16 v20, v10

    move-object/from16 v17, v12

    .end local v10    # "presenterPos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    .end local v12    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .restart local v17    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .restart local v20    # "presenterPos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    goto :goto_3

    .line 1469
    .end local v16    # "requiresDbUpdate":Z
    .end local v17    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v20    # "presenterPos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    .restart local v12    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_4
    move-object/from16 v17, v12

    .line 1463
    .end local v12    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v14    # "child":Landroid/view/View;
    .end local v15    # "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 1483
    .end local v13    # "i":I
    :cond_5
    return-void
.end method

.method private completeAndClearReorderPreviewAnimations()V
    .locals 2

    .line 1445
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShakeAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;

    .line 1446
    .local v1, "a":Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;
    invoke-virtual {v1}, Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;->finishAnimation()V

    .line 1447
    .end local v1    # "a":Lcom/android/launcher3/celllayout/ReorderPreviewAnimation;
    goto :goto_0

    .line 1448
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShakeAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1449
    return-void
.end method

.method private copySolutionToTempState(Lcom/android/launcher3/celllayout/ItemConfiguration;Landroid/view/View;)V
    .locals 7
    .param p1, "solution"    # Lcom/android/launcher3/celllayout/ItemConfiguration;
    .param p2, "dragView"    # Landroid/view/View;

    .line 1381
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0}, Lcom/android/launcher3/util/GridOccupancy;->clear()V

    .line 1383
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 1384
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x1

    if-ge v1, v0, :cond_2

    .line 1385
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1386
    .local v3, "child":Landroid/view/View;
    if-ne v3, p2, :cond_0

    goto :goto_1

    .line 1387
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    .line 1388
    .local v4, "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    iget-object v5, p1, Lcom/android/launcher3/celllayout/ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/util/CellAndSpan;

    .line 1389
    .local v5, "c":Lcom/android/launcher3/util/CellAndSpan;
    if-eqz v5, :cond_1

    .line 1390
    iget v6, v5, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    invoke-virtual {v4, v6}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setTmpCellX(I)V

    .line 1391
    iget v6, v5, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    invoke-virtual {v4, v6}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setTmpCellY(I)V

    .line 1392
    iget v6, v5, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iput v6, v4, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    .line 1393
    iget v6, v5, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    iput v6, v4, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    .line 1394
    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v6, v5, v2}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    .line 1384
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    .end local v5    # "c":Lcom/android/launcher3/util/CellAndSpan;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1397
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v1, p1, v2}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    .line 1398
    return-void
.end method

.method private getJailedArray(Landroid/util/SparseArray;)Lcom/android/launcher3/util/ParcelableSparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)",
            "Lcom/android/launcher3/util/ParcelableSparseArray;"
        }
    .end annotation

    .line 467
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    sget v0, Lcom/android/launcher3/R$id;->cell_layout_jail_id:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 468
    .local v0, "parcelable":Landroid/os/Parcelable;
    instance-of v1, v0, Lcom/android/launcher3/util/ParcelableSparseArray;

    if-eqz v1, :cond_0

    .line 469
    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/util/ParcelableSparseArray;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/launcher3/util/ParcelableSparseArray;

    invoke-direct {v1}, Lcom/android/launcher3/util/ParcelableSparseArray;-><init>()V

    .line 468
    :goto_0
    return-object v1
.end method

.method private getWorkspaceCellVisualCenter(II[I)V
    .locals 7
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "outPoint"    # [I

    .line 909
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 910
    .local v0, "child":Landroid/view/View;
    instance-of v1, v0, Lcom/android/launcher3/dragndrop/DraggableView;

    if-eqz v1, :cond_0

    .line 911
    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/dragndrop/DraggableView;

    .line 912
    .local v1, "draggableChild":Lcom/android/launcher3/dragndrop/DraggableView;
    invoke-interface {v1}, Lcom/android/launcher3/dragndrop/DraggableView;->getViewType()I

    move-result v2

    if-nez v2, :cond_0

    .line 913
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/CellLayout;->cellToPoint(II[I)V

    .line 914
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-interface {v1, v2}, Lcom/android/launcher3/dragndrop/DraggableView;->getWorkspaceVisualDragBounds(Landroid/graphics/Rect;)V

    .line 915
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    aget v4, p3, v3

    const/4 v5, 0x1

    aget v6, p3, v5

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 916
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    aput v2, p3, v3

    .line 917
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    aput v2, p3, v5

    .line 918
    return-void

    .line 921
    .end local v1    # "draggableChild":Lcom/android/launcher3/dragndrop/DraggableView;
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/CellLayout;->cellToCenterPoint(II[I)V

    .line 922
    return-void
.end method

.method private resetCellSizeInternal(Lcom/android/launcher3/DeviceProfile;)V
    .locals 3
    .param p1, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 392
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    packed-switch v0, :pswitch_data_0

    .line 402
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p1, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    goto :goto_0

    .line 394
    :pswitch_0
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p1, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpacePx:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    .line 395
    goto :goto_0

    .line 397
    :pswitch_1
    new-instance v0, Landroid/graphics/Point;

    iget v1, p1, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    iget v2, p1, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    .line 399
    nop

    .line 406
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iput v0, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    .line 407
    iput v0, p0, Lcom/android/launcher3/CellLayout;->mFixedCellHeight:I

    iput v0, p0, Lcom/android/launcher3/CellLayout;->mFixedCellWidth:I

    .line 408
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setGridAlpha(F)V
    .locals 1
    .param p1, "gridAlpha"    # F

    .line 599
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mGridAlpha:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    iput p1, p0, Lcom/android/launcher3/CellLayout;->mGridAlpha:F

    .line 601
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->invalidate()V

    .line 603
    :cond_0
    return-void
.end method

.method private setUseTempCoords(Z)V
    .locals 3
    .param p1, "useTempCoords"    # Z

    .line 1486
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 1487
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1488
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1489
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    .line 1490
    .local v2, "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    iput-boolean p1, v2, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->useTmpCoords:Z

    .line 1487
    .end local v2    # "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1492
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public acceptsWidget()Z
    .locals 1

    .line 742
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public addDelegatedCellDrawing(Lcom/android/launcher3/celllayout/DelegatedCellDrawing;)V
    .locals 1
    .param p1, "bg"    # Lcom/android/launcher3/celllayout/DelegatedCellDrawing;

    .line 674
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDelegatedCellDrawings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    return-void
.end method

.method public addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/celllayout/CellLayoutLayoutParams;Z)Z
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "childId"    # I
    .param p4, "params"    # Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    .param p5, "markCells"    # Z

    .line 757
    move-object v0, p4

    .line 760
    .local v0, "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    instance-of v1, p1, Lcom/android/launcher3/BubbleTextView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 761
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    .line 762
    .local v1, "bubbleChild":Lcom/android/launcher3/BubbleTextView;
    iget v4, p0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    if-eq v4, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    .line 765
    .end local v1    # "bubbleChild":Lcom/android/launcher3/BubbleTextView;
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 766
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 770
    invoke-virtual {v0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v1

    if-ltz v1, :cond_5

    invoke-virtual {v0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v1

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    sub-int/2addr v4, v3

    if-gt v1, v4, :cond_5

    .line 771
    invoke-virtual {v0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v1

    if-ltz v1, :cond_5

    invoke-virtual {v0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v1

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    sub-int/2addr v4, v3

    if-gt v1, v4, :cond_5

    .line 774
    iget v1, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    if-gez v1, :cond_2

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iput v1, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    .line 775
    :cond_2
    iget v1, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    if-gez v1, :cond_3

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    iput v1, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    .line 777
    :cond_3
    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    .line 781
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 783
    if-eqz p5, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 785
    :cond_4
    return v3

    .line 787
    :cond_5
    return v2
.end method

.method public animateChildToPosition(Landroid/view/View;IIIIZZ)Z
    .locals 25
    .param p1, "child"    # Landroid/view/View;
    .param p2, "cellX"    # I
    .param p3, "cellY"    # I
    .param p4, "duration"    # I
    .param p5, "delay"    # I
    .param p6, "permanent"    # Z
    .param p7, "adjustOccupied"    # Z

    .line 1063
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v11

    .line 1065
    .local v11, "clc":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    invoke-virtual {v11, v8}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v6, 0x0

    if-eq v0, v1, :cond_5

    instance-of v0, v8, Lcom/android/launcher3/Reorderable;

    if-eqz v0, :cond_5

    .line 1066
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    .line 1067
    .local v12, "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/launcher3/model/data/ItemInfo;

    .line 1068
    .local v13, "info":Lcom/android/launcher3/model/data/ItemInfo;
    move-object v14, v8

    check-cast v14, Lcom/android/launcher3/Reorderable;

    .line 1071
    .local v14, "item":Lcom/android/launcher3/Reorderable;
    iget-object v0, v7, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, v7, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1073
    iget-object v0, v7, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    :cond_0
    if-eqz p7, :cond_2

    .line 1078
    if-eqz p6, :cond_1

    iget-object v0, v7, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    goto :goto_0

    :cond_1
    iget-object v0, v7, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    :goto_0
    move-object v15, v0

    .line 1079
    .local v15, "occupied":Lcom/android/launcher3/util/GridOccupancy;
    invoke-virtual {v12}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v16

    invoke-virtual {v12}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v17

    iget v0, v12, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iget v1, v12, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    const/16 v20, 0x0

    move/from16 v18, v0

    move/from16 v19, v1

    invoke-virtual/range {v15 .. v20}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 1080
    iget v3, v12, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iget v4, v12, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    const/4 v5, 0x1

    move-object v0, v15

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 1086
    .end local v15    # "occupied":Lcom/android/launcher3/util/GridOccupancy;
    :cond_2
    iget v15, v12, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->x:I

    .line 1087
    .local v15, "oldX":I
    iget v5, v12, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->y:I

    .line 1088
    .local v5, "oldY":I
    const/4 v4, 0x1

    iput-boolean v4, v12, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->isLockedToGrid:Z

    .line 1089
    if-eqz p6, :cond_3

    .line 1090
    invoke-virtual {v12, v9}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellX(I)V

    .line 1091
    invoke-virtual {v12, v10}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellY(I)V

    goto :goto_1

    .line 1093
    :cond_3
    invoke-virtual {v12, v9}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setTmpCellX(I)V

    .line 1094
    invoke-virtual {v12, v10}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setTmpCellY(I)V

    .line 1096
    :goto_1
    invoke-virtual {v11, v8}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setupLp(Landroid/view/View;)V

    .line 1097
    iget v3, v12, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->x:I

    .line 1098
    .local v3, "newX":I
    iget v2, v12, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->y:I

    .line 1099
    .local v2, "newY":I
    iput v15, v12, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->x:I

    .line 1100
    iput v5, v12, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->y:I

    .line 1101
    iput-boolean v6, v12, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->isLockedToGrid:Z

    .line 1104
    invoke-interface {v14}, Lcom/android/launcher3/Reorderable;->getTranslateDelegate()Lcom/android/launcher3/util/MultiTranslateDelegate;

    move-result-object v6

    .line 1105
    .local v6, "mtd":Lcom/android/launcher3/util/MultiTranslateDelegate;
    invoke-virtual {v6, v4}, Lcom/android/launcher3/util/MultiTranslateDelegate;->getTranslationX(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->getValue()F

    move-result v16

    .line 1106
    .local v16, "initPreviewOffsetX":F
    invoke-virtual {v6, v4}, Lcom/android/launcher3/util/MultiTranslateDelegate;->getTranslationY(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->getValue()F

    move-result v17

    .line 1107
    .local v17, "initPreviewOffsetY":F
    sub-int v0, v3, v15

    int-to-float v1, v0

    .line 1108
    .local v1, "finalPreviewOffsetX":F
    sub-int v0, v2, v5

    int-to-float v0, v0

    .line 1111
    .local v0, "finalPreviewOffsetY":F
    const/16 v18, 0x0

    cmpl-float v19, v1, v18

    if-nez v19, :cond_4

    cmpl-float v19, v0, v18

    if-nez v19, :cond_4

    cmpl-float v19, v16, v18

    if-nez v19, :cond_4

    cmpl-float v18, v17, v18

    if-nez v18, :cond_4

    .line 1113
    iput-boolean v4, v12, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->isLockedToGrid:Z

    .line 1114
    return v4

    .line 1117
    :cond_4
    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 1118
    .local v4, "va":Landroid/animation/ValueAnimator;
    move/from16 v9, p4

    move/from16 v20, v0

    move/from16 v19, v1

    .end local v0    # "finalPreviewOffsetY":F
    .end local v1    # "finalPreviewOffsetX":F
    .local v19, "finalPreviewOffsetX":F
    .local v20, "finalPreviewOffsetY":F
    int-to-long v0, v9

    invoke-virtual {v4, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1119
    iget-object v0, v7, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    new-instance v1, Lcom/android/launcher3/CellLayout$3;

    move-object v0, v1

    move-object v9, v1

    move-object/from16 v1, p0

    move/from16 v21, v2

    .end local v2    # "newY":I
    .local v21, "newY":I
    move/from16 v2, v16

    move/from16 v22, v3

    .end local v3    # "newX":I
    .local v22, "newX":I
    move/from16 v3, v19

    move-object v10, v4

    const/16 v18, 0x1

    .end local v4    # "va":Landroid/animation/ValueAnimator;
    .local v10, "va":Landroid/animation/ValueAnimator;
    move/from16 v4, v17

    move/from16 v23, v5

    .end local v5    # "oldY":I
    .local v23, "oldY":I
    move/from16 v5, v20

    move-object/from16 v24, v6

    .end local v6    # "mtd":Lcom/android/launcher3/util/MultiTranslateDelegate;
    .local v24, "mtd":Lcom/android/launcher3/util/MultiTranslateDelegate;
    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/CellLayout$3;-><init>(Lcom/android/launcher3/CellLayout;FFFFLcom/android/launcher3/Reorderable;)V

    invoke-virtual {v10, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1130
    new-instance v0, Lcom/android/launcher3/CellLayout$4;

    invoke-direct {v0, v7, v12, v14, v8}, Lcom/android/launcher3/CellLayout$4;-><init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;Lcom/android/launcher3/Reorderable;Landroid/view/View;)V

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1150
    move/from16 v0, p5

    int-to-long v1, v0

    invoke-virtual {v10, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1151
    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->start()V

    .line 1152
    return v18

    .line 1065
    .end local v10    # "va":Landroid/animation/ValueAnimator;
    .end local v12    # "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    .end local v13    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v14    # "item":Lcom/android/launcher3/Reorderable;
    .end local v15    # "oldX":I
    .end local v16    # "initPreviewOffsetX":F
    .end local v17    # "initPreviewOffsetY":F
    .end local v19    # "finalPreviewOffsetX":F
    .end local v20    # "finalPreviewOffsetY":F
    .end local v21    # "newY":I
    .end local v22    # "newX":I
    .end local v23    # "oldY":I
    .end local v24    # "mtd":Lcom/android/launcher3/util/MultiTranslateDelegate;
    :cond_5
    move/from16 v0, p5

    .line 1154
    return v6

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public calculateReorder(IIIIIILandroid/view/View;)Lcom/android/launcher3/celllayout/ItemConfiguration;
    .locals 13
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "dragView"    # Landroid/view/View;

    .line 1620
    new-instance v0, Lcom/android/launcher3/celllayout/ItemConfiguration;

    invoke-direct {v0}, Lcom/android/launcher3/celllayout/ItemConfiguration;-><init>()V

    .line 1621
    .local v0, "configuration":Lcom/android/launcher3/celllayout/ItemConfiguration;
    move-object v10, p0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->copyCurrentStateToSolution(Lcom/android/launcher3/celllayout/ItemConfiguration;)V

    .line 1622
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->createReorderAlgorithm()Lcom/android/launcher3/celllayout/ReorderAlgorithm;

    move-result-object v11

    new-instance v12, Lcom/android/launcher3/celllayout/ReorderParameters;

    move-object v1, v12

    move v2, p1

    move v3, p2

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p7

    move-object v9, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/launcher3/celllayout/ReorderParameters;-><init>(IIIIIILandroid/view/View;Lcom/android/launcher3/celllayout/ItemConfiguration;)V

    invoke-virtual {v11, v12}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->calculateReorder(Lcom/android/launcher3/celllayout/ReorderParameters;)Lcom/android/launcher3/celllayout/ItemConfiguration;

    move-result-object v1

    return-object v1
.end method

.method public cancelLongPress()V
    .locals 3

    .line 719
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 722
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getChildCount()I

    move-result v0

    .line 723
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 724
    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 725
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->cancelLongPress()V

    .line 723
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 727
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method cellToCenterPoint(II[I)V
    .locals 6
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "result"    # [I

    .line 883
    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 884
    return-void
.end method

.method cellToPoint(II[I)V
    .locals 6
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "result"    # [I

    .line 869
    const/4 v3, 0x1

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 870
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    const/4 v1, 0x0

    aput v0, p3, v1

    .line 871
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    const/4 v1, 0x1

    aput v0, p3, v1

    .line 872
    return-void
.end method

.method public cellToRect(IIIILandroid/graphics/Rect;)V
    .locals 10
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "cellHSpan"    # I
    .param p4, "cellVSpan"    # I
    .param p5, "resultRect"    # Landroid/graphics/Rect;

    .line 1822
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    .line 1823
    .local v0, "cellWidth":I
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    .line 1826
    .local v1, "cellHeight":I
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v2

    .line 1827
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getUnusedHorizontalSpace()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/2addr v2, v3

    .line 1828
    .local v2, "hStartPadding":I
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v3

    .line 1830
    .local v3, "vStartPadding":I
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    mul-int/2addr v4, p1

    add-int/2addr v4, v2

    mul-int v5, p1, v0

    add-int/2addr v4, v5

    .line 1831
    .local v4, "x":I
    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    mul-int/2addr v5, p2

    add-int/2addr v5, v3

    mul-int v6, p2, v1

    add-int/2addr v5, v6

    .line 1833
    .local v5, "y":I
    mul-int v6, p3, v0

    add-int/lit8 v7, p3, -0x1

    iget-object v8, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 1834
    .local v6, "width":I
    mul-int v7, p4, v1

    add-int/lit8 v8, p4, -0x1

    iget-object v9, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    .line 1836
    .local v7, "height":I
    add-int v8, v4, v6

    add-int v9, v5, v7

    invoke-virtual {p5, v4, v5, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1837
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1894
    instance-of v0, p1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    return v0
.end method

.method public clearDragOutlines()V
    .locals 4

    .line 1222
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    .line 1223
    .local v0, "oldIndex":I
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/launcher3/InterruptibleInOutAnimator;->animateOut()V

    .line 1224
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    const/4 v2, 0x1

    const/4 v3, -0x1

    aput v3, v1, v2

    const/4 v2, 0x0

    aput v3, v1, v2

    .line 1225
    return-void
.end method

.method public clearFolderLeaveBehind()V
    .locals 2

    .line 695
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/launcher3/folder/PreviewBackground;->mDelegateCellX:I

    .line 696
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    iput v1, v0, Lcom/android/launcher3/folder/PreviewBackground;->mDelegateCellY:I

    .line 697
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->invalidate()V

    .line 698
    return-void
.end method

.method public cloneGridOccupancy()Lcom/android/launcher3/util/GridOccupancy;
    .locals 3

    .line 1956
    new-instance v0, Lcom/android/launcher3/util/GridOccupancy;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    .line 1957
    .local v0, "occupancy":Lcom/android/launcher3/util/GridOccupancy;
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/GridOccupancy;->copyTo(Lcom/android/launcher3/util/GridOccupancy;)V

    .line 1958
    return-object v0
.end method

.method public copyCurrentStateToSolution(Lcom/android/launcher3/celllayout/ItemConfiguration;)V
    .locals 9
    .param p1, "solution"    # Lcom/android/launcher3/celllayout/ItemConfiguration;

    .line 1594
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 1595
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1596
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1597
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    .line 1598
    .local v3, "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    new-instance v4, Lcom/android/launcher3/util/CellAndSpan;

    .line 1599
    invoke-virtual {v3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v6

    iget v7, v3, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iget v8, v3, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/launcher3/util/CellAndSpan;-><init>(IIII)V

    .line 1598
    invoke-virtual {p1, v2, v4}, Lcom/android/launcher3/celllayout/ItemConfiguration;->add(Landroid/view/View;Lcom/android/launcher3/util/CellAndSpan;)V

    .line 1595
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1601
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method createAreaForResize(IIIILandroid/view/View;[IZ)Z
    .locals 16
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "dragView"    # Landroid/view/View;
    .param p6, "direction"    # [I
    .param p7, "commit"    # Z

    .line 1550
    move-object/from16 v10, p0

    move-object/from16 v11, p5

    move/from16 v12, p7

    const/4 v0, 0x2

    new-array v13, v0, [I

    .line 1551
    .local v13, "pixelXY":[I
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 1554
    const/4 v14, 0x0

    aget v1, v13, v14

    const/4 v15, 0x1

    aget v2, v13, v15

    const/4 v9, 0x1

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p5

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/CellLayout;->findReorderSolution(IIIIII[ILandroid/view/View;Z)Lcom/android/launcher3/celllayout/ItemConfiguration;

    move-result-object v0

    .line 1557
    .local v0, "swapSolution":Lcom/android/launcher3/celllayout/ItemConfiguration;
    invoke-direct {v10, v15}, Lcom/android/launcher3/CellLayout;->setUseTempCoords(Z)V

    .line 1558
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/launcher3/celllayout/ItemConfiguration;->isSolution:Z

    if-eqz v1, :cond_1

    .line 1562
    invoke-direct {v10, v0, v11}, Lcom/android/launcher3/CellLayout;->copySolutionToTempState(Lcom/android/launcher3/celllayout/ItemConfiguration;Landroid/view/View;)V

    .line 1563
    invoke-virtual {v10, v15}, Lcom/android/launcher3/CellLayout;->setItemPlacementDirty(Z)V

    .line 1564
    invoke-direct {v10, v0, v11, v12}, Lcom/android/launcher3/CellLayout;->animateItemsToSolution(Lcom/android/launcher3/celllayout/ItemConfiguration;Landroid/view/View;Z)V

    .line 1566
    if-eqz v12, :cond_0

    .line 1567
    const/4 v1, 0x0

    invoke-direct {v10, v1}, Lcom/android/launcher3/CellLayout;->commitTempPlacement(Landroid/view/View;)V

    .line 1568
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->completeAndClearReorderPreviewAnimations()V

    .line 1569
    invoke-virtual {v10, v14}, Lcom/android/launcher3/CellLayout;->setItemPlacementDirty(Z)V

    goto :goto_0

    .line 1571
    :cond_0
    invoke-direct {v10, v0, v11, v15}, Lcom/android/launcher3/CellLayout;->beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher3/celllayout/ItemConfiguration;Landroid/view/View;I)V

    .line 1574
    :goto_0
    iget-object v1, v10, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->requestLayout()V

    .line 1576
    :cond_1
    iget-boolean v1, v0, Lcom/android/launcher3/celllayout/ItemConfiguration;->isSolution:Z

    return v1
.end method

.method public createReorderAlgorithm()Lcom/android/launcher3/celllayout/ReorderAlgorithm;
    .locals 1

    .line 1580
    new-instance v0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;

    invoke-direct {v0, p0}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;-><init>(Lcom/android/launcher3/CellLayout;)V

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 658
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 660
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDelegatedCellDrawings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 661
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDelegatedCellDrawings:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/celllayout/DelegatedCellDrawing;

    .line 662
    .local v1, "bg":Lcom/android/launcher3/celllayout/DelegatedCellDrawing;
    iget v2, v1, Lcom/android/launcher3/celllayout/DelegatedCellDrawing;->mDelegateCellX:I

    iget v3, v1, Lcom/android/launcher3/celllayout/DelegatedCellDrawing;->mDelegateCellY:I

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/launcher3/CellLayout;->cellToPoint(II[I)V

    .line 663
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 664
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    const/4 v3, 0x0

    aget v3, v2, v3

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 665
    invoke-virtual {v1, p1}, Lcom/android/launcher3/celllayout/DelegatedCellDrawing;->drawOverItem(Landroid/graphics/Canvas;)V

    .line 666
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 660
    .end local v1    # "bg":Lcom/android/launcher3/celllayout/DelegatedCellDrawing;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 668
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 358
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    const/4 v0, 0x1

    return v0

    .line 361
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 459
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher3/CellLayout;->getJailedArray(Landroid/util/SparseArray;)Lcom/android/launcher3/util/ParcelableSparseArray;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 460
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 452
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher3/CellLayout;->getJailedArray(Landroid/util/SparseArray;)Lcom/android/launcher3/util/ParcelableSparseArray;

    move-result-object v0

    .line 453
    .local v0, "jail":Lcom/android/launcher3/util/ParcelableSparseArray;
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 454
    sget v1, Lcom/android/launcher3/R$id;->cell_layout_jail_id:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 455
    return-void
.end method

.method public enableHardwareLayer(Z)V
    .locals 3
    .param p1, "hasLayer"    # Z

    .line 371
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/android/launcher3/CellLayout;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 372
    return-void
.end method

.method existsEmptyCell()Z
    .locals 2

    .line 1741
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v0

    return v0
.end method

.method public findCellForSpan([III)Z
    .locals 1
    .param p1, "cellXY"    # [I
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I

    .line 1758
    if-nez p1, :cond_0

    .line 1759
    const/4 v0, 0x2

    new-array p1, v0, [I

    .line 1761
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/util/GridOccupancy;->findVacantCell([III)Z

    move-result v0

    return v0
.end method

.method protected findNearestArea(IIIIIIZ[I[I)[I
    .locals 24
    .param p1, "relativeXPos"    # I
    .param p2, "relativeYPos"    # I
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "ignoreOccupied"    # Z
    .param p8, "result"    # [I
    .param p9, "resultSpan"    # [I

    .line 1270
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p1

    int-to-float v6, v5

    iget v7, v0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget-object v8, v0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    add-int/2addr v7, v8

    add-int/lit8 v8, v3, -0x1

    mul-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-int v5, v6

    .line 1271
    .end local p1    # "relativeXPos":I
    .local v5, "relativeXPos":I
    move/from16 v6, p2

    int-to-float v7, v6

    iget v9, v0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget-object v10, v0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    add-int/2addr v9, v10

    add-int/lit8 v10, v4, -0x1

    mul-int/2addr v9, v10

    int-to-float v9, v9

    div-float/2addr v9, v8

    sub-float/2addr v7, v9

    float-to-int v6, v7

    .line 1274
    .end local p2    # "relativeYPos":I
    .local v6, "relativeYPos":I
    if-eqz p8, :cond_0

    move-object/from16 v7, p8

    goto :goto_0

    :cond_0
    const/4 v7, 0x2

    new-array v7, v7, [I

    .line 1275
    .local v7, "bestXY":[I
    :goto_0
    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 1276
    .local v8, "bestDistance":D
    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, -0x1

    invoke-direct {v10, v11, v11, v11, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1277
    .local v10, "bestRect":Landroid/graphics/Rect;
    new-instance v12, Ljava/util/Stack;

    invoke-direct {v12}, Ljava/util/Stack;-><init>()V

    .line 1279
    .local v12, "validRegions":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/graphics/Rect;>;"
    iget v13, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 1280
    .local v13, "countX":I
    iget v14, v0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 1282
    .local v14, "countY":I
    if-lez v1, :cond_1e

    if-lez v2, :cond_1e

    if-lez v3, :cond_1e

    if-lez v4, :cond_1e

    if-lt v3, v1, :cond_1e

    if-ge v4, v2, :cond_1

    move-object/from16 p2, v7

    goto/16 :goto_15

    .line 1287
    :cond_1
    const/4 v15, 0x0

    .local v15, "y":I
    :goto_1
    add-int/lit8 v16, v2, -0x1

    sub-int v11, v14, v16

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-ge v15, v11, :cond_1c

    .line 1289
    const/4 v11, 0x0

    .local v11, "x":I
    :goto_2
    add-int/lit8 v18, v1, -0x1

    move-object/from16 p2, v7

    .end local v7    # "bestXY":[I
    .local p2, "bestXY":[I
    sub-int v7, v13, v18

    if-ge v11, v7, :cond_1b

    .line 1290
    const/4 v7, -0x1

    .line 1291
    .local v7, "ySize":I
    const/16 v18, -0x1

    .line 1292
    .local v18, "xSize":I
    if-nez p7, :cond_14

    .line 1294
    const/16 v19, 0x0

    move/from16 v20, v7

    move/from16 v7, v19

    .local v7, "i":I
    .local v20, "ySize":I
    :goto_3
    if-ge v7, v1, :cond_4

    .line 1295
    const/16 v19, 0x0

    move/from16 v1, v19

    .local v1, "j":I
    :goto_4
    if-ge v1, v2, :cond_3

    .line 1296
    iget-object v2, v0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v2, v2, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    add-int v19, v11, v7

    aget-object v2, v2, v19

    add-int v19, v15, v1

    aget-boolean v2, v2, v19

    if-eqz v2, :cond_2

    .line 1297
    move-wide/from16 v22, v8

    goto/16 :goto_13

    .line 1295
    :cond_2
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, p4

    goto :goto_4

    .line 1294
    .end local v1    # "j":I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    move/from16 v1, p3

    move/from16 v2, p4

    goto :goto_3

    .line 1301
    .end local v7    # "i":I
    :cond_4
    move/from16 v1, p3

    .line 1302
    .end local v18    # "xSize":I
    .local v1, "xSize":I
    move/from16 v2, p4

    .line 1307
    .end local v20    # "ySize":I
    .local v2, "ySize":I
    const/4 v7, 0x1

    .line 1308
    .local v7, "incX":Z
    if-lt v1, v3, :cond_5

    move/from16 v18, v17

    goto :goto_5

    :cond_5
    move/from16 v18, v16

    .line 1309
    .local v18, "hitMaxX":Z
    :goto_5
    if-lt v2, v4, :cond_6

    move/from16 v19, v17

    goto :goto_6

    :cond_6
    move/from16 v19, v16

    .line 1310
    .local v19, "hitMaxY":Z
    :goto_6
    if-eqz v18, :cond_8

    if-nez v19, :cond_7

    goto :goto_7

    :cond_7
    move/from16 v18, v1

    move v7, v2

    move-wide/from16 v22, v8

    move-object/from16 v21, v10

    goto/16 :goto_e

    .line 1311
    :cond_8
    :goto_7
    if-eqz v7, :cond_c

    if-nez v18, :cond_c

    .line 1312
    const/16 v20, 0x0

    move-object/from16 v21, v10

    move/from16 v10, v20

    .local v10, "j":I
    .local v21, "bestRect":Landroid/graphics/Rect;
    :goto_8
    if-ge v10, v2, :cond_b

    .line 1313
    move-wide/from16 v22, v8

    .end local v8    # "bestDistance":D
    .local v22, "bestDistance":D
    add-int v8, v11, v1

    add-int/lit8 v9, v13, -0x1

    if-gt v8, v9, :cond_9

    iget-object v8, v0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v8, v8, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    add-int v9, v11, v1

    aget-object v8, v8, v9

    add-int v9, v15, v10

    aget-boolean v8, v8, v9

    if-eqz v8, :cond_a

    .line 1315
    :cond_9
    const/16 v18, 0x1

    .line 1312
    :cond_a
    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v8, v22

    goto :goto_8

    .end local v22    # "bestDistance":D
    .restart local v8    # "bestDistance":D
    :cond_b
    move-wide/from16 v22, v8

    .line 1318
    .end local v8    # "bestDistance":D
    .end local v10    # "j":I
    .restart local v22    # "bestDistance":D
    if-nez v18, :cond_10

    .line 1319
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1311
    .end local v21    # "bestRect":Landroid/graphics/Rect;
    .end local v22    # "bestDistance":D
    .restart local v8    # "bestDistance":D
    .local v10, "bestRect":Landroid/graphics/Rect;
    :cond_c
    move-wide/from16 v22, v8

    move-object/from16 v21, v10

    .line 1321
    .end local v8    # "bestDistance":D
    .end local v10    # "bestRect":Landroid/graphics/Rect;
    .restart local v21    # "bestRect":Landroid/graphics/Rect;
    .restart local v22    # "bestDistance":D
    if-nez v19, :cond_10

    .line 1322
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_9
    if-ge v8, v1, :cond_f

    .line 1323
    add-int v9, v15, v2

    add-int/lit8 v10, v14, -0x1

    if-gt v9, v10, :cond_d

    iget-object v9, v0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v9, v9, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    add-int v10, v11, v8

    aget-object v9, v9, v10

    add-int v10, v15, v2

    aget-boolean v9, v9, v10

    if-eqz v9, :cond_e

    .line 1325
    :cond_d
    const/16 v19, 0x1

    .line 1322
    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 1328
    .end local v8    # "i":I
    :cond_f
    if-nez v19, :cond_10

    .line 1329
    add-int/lit8 v2, v2, 0x1

    .line 1332
    :cond_10
    :goto_a
    if-lt v1, v3, :cond_11

    move/from16 v8, v17

    goto :goto_b

    :cond_11
    move/from16 v8, v16

    :goto_b
    or-int v18, v18, v8

    .line 1333
    if-lt v2, v4, :cond_12

    move/from16 v8, v17

    goto :goto_c

    :cond_12
    move/from16 v8, v16

    :goto_c
    or-int v19, v19, v8

    .line 1334
    if-nez v7, :cond_13

    move/from16 v8, v17

    goto :goto_d

    :cond_13
    move/from16 v8, v16

    :goto_d
    move v7, v8

    move-object/from16 v10, v21

    move-wide/from16 v8, v22

    goto/16 :goto_6

    .line 1292
    .end local v1    # "xSize":I
    .end local v2    # "ySize":I
    .end local v19    # "hitMaxY":Z
    .end local v21    # "bestRect":Landroid/graphics/Rect;
    .end local v22    # "bestDistance":D
    .local v7, "ySize":I
    .local v8, "bestDistance":D
    .restart local v10    # "bestRect":Landroid/graphics/Rect;
    .local v18, "xSize":I
    :cond_14
    move/from16 v20, v7

    move-wide/from16 v22, v8

    move-object/from16 v21, v10

    .line 1337
    .end local v8    # "bestDistance":D
    .end local v10    # "bestRect":Landroid/graphics/Rect;
    .restart local v21    # "bestRect":Landroid/graphics/Rect;
    .restart local v22    # "bestDistance":D
    :goto_e
    iget-object v1, v0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    .line 1338
    .local v1, "cellXY":[I
    invoke-virtual {v0, v11, v15, v1}, Lcom/android/launcher3/CellLayout;->cellToCenterPoint(II[I)V

    .line 1343
    new-instance v2, Landroid/graphics/Rect;

    add-int v8, v11, v18

    add-int v9, v15, v7

    invoke-direct {v2, v11, v15, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1344
    .local v2, "currentRect":Landroid/graphics/Rect;
    const/4 v8, 0x0

    .line 1345
    .local v8, "contained":Z
    invoke-virtual {v12}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    .line 1346
    .local v10, "r":Landroid/graphics/Rect;
    invoke-virtual {v10, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v19

    if-eqz v19, :cond_15

    .line 1347
    const/4 v8, 0x1

    .line 1348
    goto :goto_10

    .line 1350
    .end local v10    # "r":Landroid/graphics/Rect;
    :cond_15
    goto :goto_f

    .line 1351
    :cond_16
    :goto_10
    invoke-virtual {v12, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1352
    aget v9, v1, v16

    sub-int/2addr v9, v5

    int-to-double v9, v9

    aget v19, v1, v17

    sub-int v0, v19, v6

    move-object/from16 v19, v1

    .end local v1    # "cellXY":[I
    .local v19, "cellXY":[I
    int-to-double v0, v0

    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    .line 1354
    .local v0, "distance":D
    cmpg-double v9, v0, v22

    if-gtz v9, :cond_18

    if-eqz v8, :cond_17

    goto :goto_11

    :cond_17
    move-object/from16 v10, v21

    goto :goto_12

    .line 1355
    :cond_18
    :goto_11
    move-object/from16 v10, v21

    .end local v21    # "bestRect":Landroid/graphics/Rect;
    .local v10, "bestRect":Landroid/graphics/Rect;
    invoke-virtual {v2, v10}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 1356
    :goto_12
    move-wide/from16 v20, v0

    .line 1357
    .end local v22    # "bestDistance":D
    .local v20, "bestDistance":D
    aput v11, p2, v16

    .line 1358
    aput v15, p2, v17

    .line 1359
    if-eqz p9, :cond_19

    .line 1360
    aput v18, p9, v16

    .line 1361
    aput v7, p9, v17

    .line 1363
    :cond_19
    invoke-virtual {v10, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-wide/from16 v8, v20

    goto :goto_14

    .line 1289
    .end local v0    # "distance":D
    .end local v2    # "currentRect":Landroid/graphics/Rect;
    .end local v7    # "ySize":I
    .end local v8    # "contained":Z
    .end local v18    # "xSize":I
    .end local v19    # "cellXY":[I
    .end local v20    # "bestDistance":D
    .restart local v22    # "bestDistance":D
    :cond_1a
    :goto_13
    move-wide/from16 v8, v22

    .end local v22    # "bestDistance":D
    .local v8, "bestDistance":D
    :goto_14
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v1, p3

    move/from16 v2, p4

    goto/16 :goto_2

    :cond_1b
    move-wide/from16 v22, v8

    .line 1287
    .end local v8    # "bestDistance":D
    .end local v11    # "x":I
    .restart local v22    # "bestDistance":D
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v1, p3

    move/from16 v2, p4

    const/4 v11, -0x1

    goto/16 :goto_1

    .end local v22    # "bestDistance":D
    .end local p2    # "bestXY":[I
    .local v7, "bestXY":[I
    .restart local v8    # "bestDistance":D
    :cond_1c
    move-object/from16 p2, v7

    .line 1369
    .end local v7    # "bestXY":[I
    .end local v15    # "y":I
    .restart local p2    # "bestXY":[I
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v0, v8, v0

    if-nez v0, :cond_1d

    .line 1370
    const/4 v0, -0x1

    aput v0, p2, v16

    .line 1371
    aput v0, p2, v17

    .line 1373
    :cond_1d
    return-object p2

    .line 1282
    .end local p2    # "bestXY":[I
    .restart local v7    # "bestXY":[I
    :cond_1e
    move-object/from16 p2, v7

    .line 1284
    .end local v7    # "bestXY":[I
    .restart local p2    # "bestXY":[I
    :goto_15
    return-object p2
.end method

.method public findNearestAreaIgnoreOccupied(IIII[I)[I
    .locals 10
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "result"    # [I

    .line 1737
    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p3

    move v6, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIIIIIZ[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method public findNearestVacantArea(IIIIII[I[I)[I
    .locals 10
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "result"    # [I
    .param p8, "resultSpan"    # [I

    .line 1244
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIIIIIZ[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method protected findReorderSolution(IIIIII[ILandroid/view/View;Z)Lcom/android/launcher3/celllayout/ItemConfiguration;
    .locals 12
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "direction"    # [I
    .param p8, "dragView"    # Landroid/view/View;
    .param p9, "decX"    # Z

    .line 1585
    move-object v0, p0

    new-instance v1, Lcom/android/launcher3/celllayout/ItemConfiguration;

    invoke-direct {v1}, Lcom/android/launcher3/celllayout/ItemConfiguration;-><init>()V

    .line 1586
    .local v1, "configuration":Lcom/android/launcher3/celllayout/ItemConfiguration;
    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->copyCurrentStateToSolution(Lcom/android/launcher3/celllayout/ItemConfiguration;)V

    .line 1587
    new-instance v11, Lcom/android/launcher3/celllayout/ReorderParameters;

    move-object v2, v11

    move v3, p1

    move v4, p2

    move/from16 v5, p5

    move/from16 v6, p6

    move v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p8

    move-object v10, v1

    invoke-direct/range {v2 .. v10}, Lcom/android/launcher3/celllayout/ReorderParameters;-><init>(IIIIIILandroid/view/View;Lcom/android/launcher3/celllayout/ItemConfiguration;)V

    .line 1589
    .local v2, "parameters":Lcom/android/launcher3/celllayout/ReorderParameters;
    if-eqz p7, :cond_0

    move-object/from16 v3, p7

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    .line 1590
    .local v3, "directionVector":[I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->createReorderAlgorithm()Lcom/android/launcher3/celllayout/ReorderAlgorithm;

    move-result-object v4

    move/from16 v5, p9

    invoke-virtual {v4, v2, v3, v5}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->findReorderSolution(Lcom/android/launcher3/celllayout/ReorderParameters;[IZ)Lcom/android/launcher3/celllayout/ItemConfiguration;

    move-result-object v4

    return-object v4
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1889
    new-instance v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1899
    new-instance v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCellHeight()I
    .locals 1

    .line 965
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    return v0
.end method

.method public getCellLayoutContainer()Lcom/android/launcher3/CellLayoutContainer;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mCellLayoutContainer:Lcom/android/launcher3/CellLayoutContainer;

    return-object v0
.end method

.method public getCellWidth()I
    .locals 1

    .line 961
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    return v0
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 1
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I

    .line 1058
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCountX()I
    .locals 1

    .line 734
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    return v0
.end method

.method public getCountY()I
    .locals 1

    .line 738
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    return v0
.end method

.method public getDesiredHeight()I
    .locals 3

    .line 1873
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getDesiredWidth()I
    .locals 3

    .line 1868
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getDistanceFromWorkspaceCellVisualCenter(FF[I)F
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "cell"    # [I

    .line 904
    const/4 v0, 0x0

    aget v1, p3, v0

    const/4 v2, 0x1

    aget v3, p3, v2

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    invoke-direct {p0, v1, v3, v4}, Lcom/android/launcher3/CellLayout;->getWorkspaceCellVisualCenter(II[I)V

    .line 905
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    aget v0, v1, v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    float-to-double v3, v0

    aget v0, v1, v2

    int-to-float v0, v0

    sub-float v0, p2, v0

    float-to-double v0, v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getDragAndDropAccessibilityDelegate()Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    return-object v0
.end method

.method public getFolderCreationRadius([I)F
    .locals 4
    .param p1, "targetCell"    # [I

    .line 928
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 929
    .local v0, "grid":Lcom/android/launcher3/DeviceProfile;
    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v1, v1

    const v2, 0x3f6b851f    # 0.92f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 931
    .local v1, "iconVisibleRadius":F
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3, v3}, Lcom/android/launcher3/CellLayout;->getReorderRadius([III)F

    move-result v3

    add-float/2addr v3, v1

    div-float/2addr v3, v2

    return v3
.end method

.method public getIntersectingRectanglesInRegion(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 12
    .param p1, "region"    # Landroid/graphics/Rect;
    .param p2, "dragView"    # Landroid/view/View;

    .line 1501
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1502
    .local v0, "boundingRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1503
    .local v1, "r1":Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 1504
    .local v2, "isOverlapping":Z
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    .line 1505
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 1506
    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1507
    .local v5, "child":Landroid/view/View;
    if-ne v5, p2, :cond_0

    goto :goto_1

    .line 1509
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    .line 1510
    .local v6, "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    invoke-virtual {v6}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v7

    invoke-virtual {v6}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v8

    invoke-virtual {v6}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v9

    iget v10, v6, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    add-int/2addr v9, v10

    .line 1511
    invoke-virtual {v6}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v10

    iget v11, v6, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    add-int/2addr v10, v11

    .line 1510
    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 1512
    invoke-static {p1, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1513
    const/4 v2, 0x1

    .line 1514
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1505
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1517
    .end local v4    # "i":I
    :cond_2
    if-eqz v2, :cond_3

    move-object v4, v0

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    return-object v4
.end method

.method public getIsDragOverlapping()Z
    .locals 1

    .line 473
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mIsDragOverlapping:Z

    return v0
.end method

.method public getItemMoveDescription(II)Ljava/lang/String;
    .locals 9
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I

    .line 1204
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1205
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/android/launcher3/R$string;->move_to_hotseat_position:I

    .line 1206
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 1205
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1208
    :cond_0
    add-int/lit8 v0, p2, 0x1

    .line 1209
    .local v0, "row":I
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    sub-int/2addr v2, p1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, p1, 0x1

    .line 1210
    .local v2, "col":I
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mCellLayoutContainer:Lcom/android/launcher3/CellLayoutContainer;

    invoke-interface {v3}, Lcom/android/launcher3/CellLayoutContainer;->getPanelCount()I

    move-result v3

    .line 1211
    .local v3, "panelCount":I
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mCellLayoutContainer:Lcom/android/launcher3/CellLayoutContainer;

    invoke-interface {v4, p0}, Lcom/android/launcher3/CellLayoutContainer;->getCellLayoutIndex(Lcom/android/launcher3/CellLayout;)I

    move-result v4

    .line 1212
    .local v4, "pageIndex":I
    if-le v3, v1, :cond_2

    .line 1214
    rem-int v1, v4, v3

    iget v5, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    mul-int/2addr v1, v5

    add-int/2addr v2, v1

    .line 1216
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v5, Lcom/android/launcher3/R$string;->move_to_empty_cell_description:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/CellLayout;->mCellLayoutContainer:Lcom/android/launcher3/CellLayoutContainer;

    .line 1217
    invoke-interface {v8, v4}, Lcom/android/launcher3/CellLayoutContainer;->getPageDescription(I)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v6

    .line 1216
    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getMarginForGivenCellParams(Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;)F
    .locals 1
    .param p1, "params"    # Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    .line 653
    const/4 v0, 0x0

    return v0
.end method

.method public getOccupied()Lcom/android/launcher3/util/GridOccupancy;
    .locals 1

    .line 1377
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    return-object v0
.end method

.method public getReorderRadius([III)F
    .locals 11
    .param p1, "targetCell"    # [I
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I

    .line 938
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    .line 939
    .local v0, "centerPoint":[I
    const/4 v1, 0x0

    aget v2, p1, v1

    const/4 v3, 0x1

    aget v4, p1, v3

    invoke-direct {p0, v2, v4, v0}, Lcom/android/launcher3/CellLayout;->getWorkspaceCellVisualCenter(II[I)V

    .line 941
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    .line 942
    .local v2, "cellBoundsWithSpacing":Landroid/graphics/Rect;
    aget v6, p1, v1

    aget v7, p1, v3

    move-object v5, p0

    move v8, p2

    move v9, p3

    move-object v10, v2

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 943
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->inset(II)V

    .line 945
    aget v4, p1, v1

    aget v5, p1, v3

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/launcher3/CellLayout;->canCreateFolder(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-ne p2, v3, :cond_0

    if-ne p3, v3, :cond_0

    .line 948
    aget v4, v0, v1

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    .line 949
    .local v4, "minRadius":I
    aget v5, v0, v3

    iget v6, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 950
    iget v5, v2, Landroid/graphics/Rect;->right:I

    aget v1, v0, v1

    sub-int/2addr v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 951
    .end local v4    # "minRadius":I
    .local v1, "minRadius":I
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    aget v3, v0, v3

    sub-int/2addr v4, v3

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 952
    int-to-float v3, v1

    return v3

    .line 956
    .end local v1    # "minRadius":I
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/2addr v1, p2

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    float-to-double v4, v1

    .line 957
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v1, p3

    int-to-float v1, v1

    div-float/2addr v1, v3

    float-to-double v6, v1

    .line 956
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v1, v3

    return v1
.end method

.method public getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;
    .locals 1

    .line 1054
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    return-object v0
.end method

.method public getSpringLoadedProgress()F
    .locals 1

    .line 579
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mSpringLoadedProgress:F

    return v0
.end method

.method public getUnusedHorizontalSpace()I
    .locals 3

    .line 1044
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr v2, v1

    sub-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public hasReorderSolution(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 17
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 1907
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    const/4 v0, 0x2

    new-array v12, v0, [I

    .line 1909
    .local v12, "cellPoint":[I
    const/4 v0, 0x0

    move v13, v0

    .local v13, "cellX":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v0

    const/4 v14, 0x0

    if-ge v13, v0, :cond_2

    .line 1910
    const/4 v0, 0x0

    move v15, v0

    .local v15, "cellY":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v0

    if-ge v15, v0, :cond_1

    .line 1911
    invoke-virtual {v10, v13, v15, v12}, Lcom/android/launcher3/CellLayout;->cellToPoint(II[I)V

    .line 1912
    aget v1, v12, v14

    const/16 v16, 0x1

    aget v2, v12, v16

    iget v3, v11, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v4, v11, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iget v5, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v6, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget-object v7, v10, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/CellLayout;->findReorderSolution(IIIIII[ILandroid/view/View;Z)Lcom/android/launcher3/celllayout/ItemConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/celllayout/ItemConfiguration;->isSolution:Z

    if-eqz v0, :cond_0

    .line 1915
    return v16

    .line 1910
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 1909
    .end local v15    # "cellY":I
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1919
    .end local v13    # "cellX":I
    :cond_2
    return v14
.end method

.method public isDropPending()Z
    .locals 1

    .line 438
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mDropPending:Z

    return v0
.end method

.method public isHardwareLayerEnabled()Z
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getLayerType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isItemPlacementDirty()Z
    .locals 1

    .line 1720
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mItemPlacementDirty:Z

    return v0
.end method

.method public isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z
    .locals 7
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "dragView"    # Landroid/view/View;
    .param p6, "result"    # [I

    .line 1522
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->findNearestAreaIgnoreOccupied(IIII[I)[I

    move-result-object p6

    .line 1523
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    aget v2, p6, v1

    const/4 v3, 0x1

    aget v4, p6, v3

    aget v5, p6, v1

    add-int/2addr v5, p3

    aget v6, p6, v3

    add-int/2addr v6, p4

    invoke-direct {v0, v2, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0, p5}, Lcom/android/launcher3/CellLayout;->getIntersectingRectanglesInRegion(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    move v1, v3

    :cond_0
    return v1
.end method

.method public isOccupied(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1878
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-ge p2, v0, :cond_0

    .line 1879
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v0, v0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v0, v0, p1

    aget-boolean v0, v0, p2

    return v0

    .line 1884
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isRegionVacant(IIII)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I

    .line 1962
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v0

    return v0
.end method

.method public makeSpaceForHotseatMigration(Z)Z
    .locals 13
    .param p1, "commitConfig"    # Z

    .line 1926
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1927
    .local v0, "cellPoint":[I
    const/4 v1, -0x1

    const/4 v2, 0x0

    filled-new-array {v2, v1}, [I

    move-result-object v10

    .line 1928
    .local v10, "directionVector":[I
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/launcher3/CellLayout;->cellToPoint(II[I)V

    .line 1929
    aget v4, v0, v2

    const/4 v1, 0x1

    aget v5, v0, v1

    iget v8, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    const/4 v7, 0x1

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v3, p0

    move v6, v8

    invoke-virtual/range {v3 .. v12}, Lcom/android/launcher3/CellLayout;->findReorderSolution(IIIIII[ILandroid/view/View;Z)Lcom/android/launcher3/celllayout/ItemConfiguration;

    move-result-object v3

    .line 1940
    .local v3, "configuration":Lcom/android/launcher3/celllayout/ItemConfiguration;
    iget-boolean v4, v3, Lcom/android/launcher3/celllayout/ItemConfiguration;->isSolution:Z

    if-eqz v4, :cond_1

    .line 1941
    if-eqz p1, :cond_0

    .line 1942
    const/4 v2, 0x0

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/CellLayout;->copySolutionToTempState(Lcom/android/launcher3/celllayout/ItemConfiguration;Landroid/view/View;)V

    .line 1943
    invoke-direct {p0, v2}, Lcom/android/launcher3/CellLayout;->commitTempPlacement(Landroid/view/View;)V

    .line 1945
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v5, 0x0

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    add-int/lit8 v6, v2, -0x1

    iget v7, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 1947
    :cond_0
    return v1

    .line 1949
    :cond_1
    return v2
.end method

.method public markCellsAsOccupiedForView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .line 1840
    instance-of v0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v0, :cond_0

    .line 1841
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_0

    .line 1842
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 1843
    .local v0, "info":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/celllayout/CellPosMapper;->mapModelToPresenter(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    move-result-object v1

    .line 1844
    .local v1, "pos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget v3, v1, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellX:I

    iget v4, v1, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellY:I

    iget v5, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    iget v6, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 1845
    return-void

    .line 1847
    .end local v0    # "info":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .end local v1    # "pos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 1849
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    .line 1850
    .local v0, "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v3

    iget v4, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iget v5, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 1851
    return-void

    .line 1847
    .end local v0    # "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    :cond_2
    :goto_0
    return-void
.end method

.method public markCellsAsUnoccupiedForView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .line 1854
    instance-of v0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v0, :cond_0

    .line 1855
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_0

    .line 1856
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 1857
    .local v0, "info":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/celllayout/CellPosMapper;->mapModelToPresenter(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    move-result-object v1

    .line 1858
    .local v1, "pos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget v3, v1, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellX:I

    iget v4, v1, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellY:I

    iget v5, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    iget v6, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 1859
    return-void

    .line 1861
    .end local v0    # "info":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .end local v1    # "pos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 1863
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    .line 1864
    .local v0, "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v3

    iget v4, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iget v5, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 1865
    return-void

    .line 1861
    .end local v0    # "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    :cond_2
    :goto_0
    return-void
.end method

.method onDragEnter()V
    .locals 1

    .line 1770
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mDragging:Z

    .line 1771
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mPreviousSolution:Lcom/android/launcher3/celllayout/ItemConfiguration;

    .line 1772
    return-void
.end method

.method onDragExit()V
    .locals 4

    .line 1781
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mDragging:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1782
    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout;->mDragging:Z

    .line 1786
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mPreviousSolution:Lcom/android/launcher3/celllayout/ItemConfiguration;

    .line 1787
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    const/4 v2, 0x1

    const/4 v3, -0x1

    aput v3, v0, v2

    aput v3, v0, v1

    .line 1788
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragCellSpan:[I

    aput v3, v0, v2

    aput v3, v0, v1

    .line 1789
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/android/launcher3/InterruptibleInOutAnimator;->animateOut()V

    .line 1790
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    array-length v2, v2

    rem-int/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    .line 1791
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->revertTempState()V

    .line 1792
    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    .line 1793
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 483
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 529
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDelegatedCellDrawings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_1

    .line 530
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDelegatedCellDrawings:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/celllayout/DelegatedCellDrawing;

    .line 531
    .local v1, "cellDrawing":Lcom/android/launcher3/celllayout/DelegatedCellDrawing;
    iget v4, v1, Lcom/android/launcher3/celllayout/DelegatedCellDrawing;->mDelegateCellX:I

    iget v5, v1, Lcom/android/launcher3/celllayout/DelegatedCellDrawing;->mDelegateCellY:I

    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/launcher3/CellLayout;->cellToPoint(II[I)V

    .line 532
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 533
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget v2, v4, v2

    int-to-float v2, v2

    aget v3, v4, v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 534
    invoke-virtual {v1, p1}, Lcom/android/launcher3/celllayout/DelegatedCellDrawing;->drawUnderItem(Landroid/graphics/Canvas;)V

    .line 535
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 529
    .end local v1    # "cellDrawing":Lcom/android/launcher3/celllayout/DelegatedCellDrawing;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 538
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    iget v0, v0, Lcom/android/launcher3/folder/PreviewBackground;->mDelegateCellX:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    iget v0, v0, Lcom/android/launcher3/folder/PreviewBackground;->mDelegateCellY:I

    if-ltz v0, :cond_2

    .line 539
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    iget v0, v0, Lcom/android/launcher3/folder/PreviewBackground;->mDelegateCellX:I

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    iget v1, v1, Lcom/android/launcher3/folder/PreviewBackground;->mDelegateCellY:I

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/launcher3/CellLayout;->cellToPoint(II[I)V

    .line 541
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 542
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget v1, v0, v2

    int-to-float v1, v1

    aget v0, v0, v3

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 543
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    sget v1, Lcom/android/launcher3/CellLayout;->FOLDER_LEAVE_BEHIND_COLOR:I

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/folder/PreviewBackground;->drawLeaveBehind(Landroid/graphics/Canvas;I)V

    .line 544
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 547
    :cond_2
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mVisualizeCells:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mVisualizeDropLocation:Z

    if-eqz v0, :cond_4

    .line 548
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->visualizeGrid(Landroid/graphics/Canvas;)V

    .line 550
    :cond_4
    return-void
.end method

.method onDropChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 1803
    if-eqz p1, :cond_0

    .line 1805
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    .line 1806
    .local v0, "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->dropped:Z

    .line 1807
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 1808
    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 1810
    .end local v0    # "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 366
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    .line 367
    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 366
    :goto_1
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1019
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 1020
    .local v0, "left":I
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getUnusedHorizontalSpace()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    add-int/2addr v0, v1

    .line 1021
    sub-int v1, p4, p2

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    .line 1022
    .local v1, "right":I
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getUnusedHorizontalSpace()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    sub-int/2addr v1, v2

    .line 1024
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v2

    .line 1025
    .local v2, "top":I
    sub-int v3, p5, p3

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1028
    .local v3, "bottom":I
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1029
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v5, v0, v5

    .line 1030
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v6, v2, v6

    .line 1031
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v1

    .line 1032
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v3

    .line 1033
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    .line 1029
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1035
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v4, v0, v2, v1, v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->layout(IIII)V

    .line 1036
    return-void
.end method

.method protected onMeasure(II)V
    .locals 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 975
    move-object v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 976
    .local v1, "widthSpecMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 977
    .local v2, "heightSpecMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 978
    .local v3, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 979
    .local v4, "heightSize":I
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    sub-int v5, v3, v5

    .line 980
    .local v5, "childWidthSize":I
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    sub-int v6, v4, v6

    .line 982
    .local v6, "childHeightSize":I
    iget v7, v0, Lcom/android/launcher3/CellLayout;->mFixedCellWidth:I

    if-ltz v7, :cond_0

    iget v7, v0, Lcom/android/launcher3/CellLayout;->mFixedCellHeight:I

    if-gez v7, :cond_2

    .line 983
    :cond_0
    iget-object v7, v0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget v8, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    invoke-static {v5, v7, v8}, Lcom/android/launcher3/DeviceProfile;->calculateCellWidth(III)I

    move-result v7

    .line 985
    .local v7, "cw":I
    iget-object v8, v0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget v9, v0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-static {v6, v8, v9}, Lcom/android/launcher3/DeviceProfile;->calculateCellHeight(III)I

    move-result v8

    .line 987
    .local v8, "ch":I
    iget v9, v0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    if-ne v7, v9, :cond_1

    iget v9, v0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    if-eq v8, v9, :cond_2

    .line 988
    :cond_1
    iput v7, v0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    .line 989
    iput v8, v0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    .line 990
    iget-object v9, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget v12, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v13, v0, Lcom/android/launcher3/CellLayout;->mCountY:I

    iget-object v14, v0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    move v10, v7

    move v11, v8

    invoke-virtual/range {v9 .. v14}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIIILandroid/graphics/Point;)V

    .line 995
    .end local v7    # "cw":I
    .end local v8    # "ch":I
    :cond_2
    move v7, v5

    .line 996
    .local v7, "newWidth":I
    move v8, v6

    .line 997
    .local v8, "newHeight":I
    iget v9, v0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    if-lez v9, :cond_3

    iget v9, v0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    if-lez v9, :cond_3

    .line 998
    iget v7, v0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    .line 999
    iget v8, v0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    goto :goto_0

    .line 1000
    :cond_3
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    .line 1004
    :goto_0
    iget-object v9, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 1005
    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1006
    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1004
    invoke-virtual {v9, v11, v10}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measure(II)V

    .line 1008
    iget-object v9, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v9}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getMeasuredWidth()I

    move-result v9

    .line 1009
    .local v9, "maxWidth":I
    iget-object v10, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v10}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getMeasuredHeight()I

    move-result v10

    .line 1010
    .local v10, "maxHeight":I
    iget v11, v0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    if-lez v11, :cond_4

    iget v11, v0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    if-lez v11, :cond_4

    .line 1011
    invoke-virtual {p0, v9, v10}, Lcom/android/launcher3/CellLayout;->setMeasuredDimension(II)V

    goto :goto_1

    .line 1013
    :cond_4
    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/CellLayout;->setMeasuredDimension(II)V

    .line 1015
    :goto_1
    return-void

    .line 1001
    .end local v9    # "maxWidth":I
    .end local v10    # "maxHeight":I
    :cond_5
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public performReorder(Lcom/android/launcher3/celllayout/ItemConfiguration;Landroid/view/View;I)V
    .locals 5
    .param p1, "solution"    # Lcom/android/launcher3/celllayout/ItemConfiguration;
    .param p2, "dragView"    # Landroid/view/View;
    .param p3, "mode"    # I

    .line 1678
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 1679
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/CellLayout;->beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher3/celllayout/ItemConfiguration;Landroid/view/View;I)V

    .line 1681
    return-void

    .line 1686
    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p3, v3, :cond_1

    if-eq p3, v2, :cond_1

    if-ne p3, v1, :cond_5

    .line 1688
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/launcher3/CellLayout;->setUseTempCoords(Z)V

    .line 1692
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/CellLayout;->copySolutionToTempState(Lcom/android/launcher3/celllayout/ItemConfiguration;Landroid/view/View;)V

    .line 1694
    invoke-virtual {p0, v3}, Lcom/android/launcher3/CellLayout;->setItemPlacementDirty(Z)V

    .line 1695
    if-ne p3, v2, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v0

    :goto_0
    invoke-direct {p0, p1, p2, v4}, Lcom/android/launcher3/CellLayout;->animateItemsToSolution(Lcom/android/launcher3/celllayout/ItemConfiguration;Landroid/view/View;Z)V

    .line 1697
    if-eq p3, v2, :cond_4

    if-ne p3, v1, :cond_3

    goto :goto_1

    .line 1704
    :cond_3
    invoke-direct {p0, p1, p2, v3}, Lcom/android/launcher3/CellLayout;->beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher3/celllayout/ItemConfiguration;Landroid/view/View;I)V

    goto :goto_2

    .line 1700
    :cond_4
    :goto_1
    invoke-direct {p0, p2}, Lcom/android/launcher3/CellLayout;->commitTempPlacement(Landroid/view/View;)V

    .line 1701
    invoke-direct {p0}, Lcom/android/launcher3/CellLayout;->completeAndClearReorderPreviewAnimations()V

    .line 1702
    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->setItemPlacementDirty(Z)V

    .line 1709
    :cond_5
    :goto_2
    if-ne p3, v2, :cond_6

    .line 1710
    invoke-direct {p0, v0}, Lcom/android/launcher3/CellLayout;->setUseTempCoords(Z)V

    .line 1713
    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->requestLayout()V

    .line 1714
    return-void
.end method

.method performReorder(IIIIIILandroid/view/View;[I[II)[I
    .locals 5
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "dragView"    # Landroid/view/View;
    .param p8, "result"    # [I
    .param p9, "resultSpan"    # [I
    .param p10, "mode"    # I

    .line 1630
    const/4 v0, -0x1

    if-nez p9, :cond_0

    .line 1631
    filled-new-array {v0, v0}, [I

    move-result-object v1

    move-object p9, v1

    .line 1633
    :cond_0
    if-nez p8, :cond_1

    .line 1634
    filled-new-array {v0, v0}, [I

    move-result-object v1

    move-object p8, v1

    .line 1637
    :cond_1
    const/4 v1, 0x0

    .line 1641
    .local v1, "finalSolution":Lcom/android/launcher3/celllayout/ItemConfiguration;
    if-eqz p10, :cond_4

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mPreviousSolution:Lcom/android/launcher3/celllayout/ItemConfiguration;

    if-nez v2, :cond_2

    goto :goto_0

    .line 1646
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mPreviousSolution:Lcom/android/launcher3/celllayout/ItemConfiguration;

    .line 1648
    const/4 v2, 0x2

    if-eq p10, v2, :cond_3

    const/4 v2, 0x3

    if-ne p10, v2, :cond_5

    .line 1649
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mPreviousSolution:Lcom/android/launcher3/celllayout/ItemConfiguration;

    goto :goto_1

    .line 1642
    :cond_4
    :goto_0
    invoke-virtual/range {p0 .. p7}, Lcom/android/launcher3/CellLayout;->calculateReorder(IIIIIILandroid/view/View;)Lcom/android/launcher3/celllayout/ItemConfiguration;

    move-result-object v1

    .line 1644
    iput-object v1, p0, Lcom/android/launcher3/CellLayout;->mPreviousSolution:Lcom/android/launcher3/celllayout/ItemConfiguration;

    .line 1653
    :cond_5
    :goto_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    iget-boolean v4, v1, Lcom/android/launcher3/celllayout/ItemConfiguration;->isSolution:Z

    if-nez v4, :cond_6

    goto :goto_2

    .line 1656
    :cond_6
    iget v0, v1, Lcom/android/launcher3/celllayout/ItemConfiguration;->cellX:I

    aput v0, p8, v3

    .line 1657
    iget v0, v1, Lcom/android/launcher3/celllayout/ItemConfiguration;->cellY:I

    aput v0, p8, v2

    .line 1658
    iget v0, v1, Lcom/android/launcher3/celllayout/ItemConfiguration;->spanX:I

    aput v0, p9, v3

    .line 1659
    iget v0, v1, Lcom/android/launcher3/celllayout/ItemConfiguration;->spanY:I

    aput v0, p9, v2

    .line 1660
    invoke-virtual {p0, v1, p7, p10}, Lcom/android/launcher3/CellLayout;->performReorder(Lcom/android/launcher3/celllayout/ItemConfiguration;Landroid/view/View;I)V

    goto :goto_3

    .line 1654
    :cond_7
    :goto_2
    aput v0, p9, v2

    aput v0, p9, v3

    aput v0, p8, v2

    aput v0, p8, v3

    .line 1662
    :goto_3
    return-object p8
.end method

.method public pointToCellExact(II[I)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "result"    # [I

    .line 845
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 846
    .local v0, "hStartPadding":I
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v1

    .line 848
    .local v1, "vStartPadding":I
    sub-int v2, p1, v0

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v4

    div-int/2addr v2, v3

    const/4 v3, 0x0

    aput v2, p3, v3

    .line 849
    sub-int v2, p2, v1

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    add-int/2addr v4, v5

    div-int/2addr v2, v4

    const/4 v4, 0x1

    aput v2, p3, v4

    .line 851
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 852
    .local v2, "xAxis":I
    iget v5, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 854
    .local v5, "yAxis":I
    aget v6, p3, v3

    if-gez v6, :cond_0

    aput v3, p3, v3

    .line 855
    :cond_0
    aget v6, p3, v3

    if-lt v6, v2, :cond_1

    add-int/lit8 v6, v2, -0x1

    aput v6, p3, v3

    .line 856
    :cond_1
    aget v6, p3, v4

    if-gez v6, :cond_2

    aput v3, p3, v4

    .line 857
    :cond_2
    aget v3, p3, v4

    if-lt v3, v5, :cond_3

    add-int/lit8 v3, v5, -0x1

    aput v3, p3, v4

    .line 858
    :cond_3
    return-void
.end method

.method public regionToCenterPoint(IIII[I)V
    .locals 6
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "result"    # [I

    .line 895
    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 896
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    const/4 v1, 0x0

    aput v0, p5, v1

    .line 897
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    const/4 v1, 0x1

    aput v0, p5, v1

    .line 898
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .line 792
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0}, Lcom/android/launcher3/util/GridOccupancy;->clear()V

    .line 793
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeAllViews()V

    .line 794
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0}, Lcom/android/launcher3/util/GridOccupancy;->clear()V

    .line 800
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeAllViewsInLayout()V

    .line 802
    :cond_0
    return-void
.end method

.method public removeDelegatedCellDrawing(Lcom/android/launcher3/celllayout/DelegatedCellDrawing;)V
    .locals 1
    .param p1, "bg"    # Lcom/android/launcher3/celllayout/DelegatedCellDrawing;

    .line 681
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDelegatedCellDrawings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 682
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 806
    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 807
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeView(Landroid/view/View;)V

    .line 808
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1
    .param p1, "index"    # I

    .line 812
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 813
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeViewAt(I)V

    .line 814
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 818
    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 819
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeViewInLayout(Landroid/view/View;)V

    .line 820
    return-void
.end method

.method public removeViews(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 824
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 825
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 824
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 827
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeViews(II)V

    .line 828
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 832
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 833
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 832
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 835
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeViewsInLayout(II)V

    .line 836
    return-void
.end method

.method public resetCellSize(Lcom/android/launcher3/DeviceProfile;)V
    .locals 0
    .param p1, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 414
    invoke-direct {p0, p1}, Lcom/android/launcher3/CellLayout;->resetCellSizeInternal(Lcom/android/launcher3/DeviceProfile;)V

    .line 415
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->requestLayout()V

    .line 416
    return-void
.end method

.method public restoreInstanceState(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 707
    .local p1, "states":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    goto :goto_0

    .line 708
    :catch_0
    move-exception v0

    .line 713
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "CellLayout"

    const-string v2, "Ignoring an error while restoring a view instance state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 715
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method

.method revertTempState()V
    .locals 12

    .line 1530
    invoke-direct {p0}, Lcom/android/launcher3/CellLayout;->completeAndClearReorderPreviewAnimations()V

    .line 1531
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->isItemPlacementDirty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1532
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 1533
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1534
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1536
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    .line 1537
    .local v11, "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    invoke-virtual {v11}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getTmpCellX()I

    move-result v3

    invoke-virtual {v11}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v11}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getTmpCellY()I

    move-result v3

    invoke-virtual {v11}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 1538
    :cond_0
    invoke-virtual {v11}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v3

    invoke-virtual {v11, v3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setTmpCellX(I)V

    .line 1539
    invoke-virtual {v11}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v3

    invoke-virtual {v11, v3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setTmpCellY(I)V

    .line 1540
    invoke-virtual {v11}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v5

    invoke-virtual {v11}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v6

    const/16 v7, 0x96

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    move-object v4, v2

    invoke-virtual/range {v3 .. v10}, Lcom/android/launcher3/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    .line 1533
    .end local v2    # "child":Landroid/view/View;
    .end local v11    # "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1544
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->setItemPlacementDirty(Z)V

    .line 1546
    .end local v0    # "count":I
    :cond_3
    return-void
.end method

.method public setCellDimensions(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 385
    iput p1, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iput p1, p0, Lcom/android/launcher3/CellLayout;->mFixedCellWidth:I

    .line 386
    iput p2, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iput p2, p0, Lcom/android/launcher3/CellLayout;->mFixedCellHeight:I

    .line 387
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIIILandroid/graphics/Point;)V

    .line 389
    return-void
.end method

.method public setCellLayoutContainer(Lcom/android/launcher3/CellLayoutContainer;)V
    .locals 0
    .param p1, "cellLayoutContainer"    # Lcom/android/launcher3/CellLayoutContainer;

    .line 325
    iput-object p1, p0, Lcom/android/launcher3/CellLayout;->mCellLayoutContainer:Lcom/android/launcher3/CellLayoutContainer;

    .line 326
    return-void
.end method

.method public setDragAndDropAccessibilityDelegate(Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;)V
    .locals 3
    .param p1, "delegate"    # Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    .line 332
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 334
    iput-object p1, p0, Lcom/android/launcher3/CellLayout;->mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    .line 335
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 336
    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 337
    .local v1, "accessibilityFlag":I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->setImportantForAccessibility(I)V

    .line 338
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setImportantForAccessibility(I)V

    .line 340
    if-eqz p1, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/launcher3/CellLayout;->setFocusable(Z)V

    .line 342
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 343
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, p0, p0, v0}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V

    .line 346
    :cond_2
    return-void
.end method

.method public setDropPending(Z)V
    .locals 0
    .param p1, "pending"    # Z

    .line 434
    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout;->mDropPending:Z

    .line 435
    return-void
.end method

.method public setFixedSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 969
    iput p1, p0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    .line 970
    iput p2, p0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    .line 971
    return-void
.end method

.method public setFolderLeaveBehindCell(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 685
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 686
    .local v0, "child":Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    const/4 v4, 0x0

    .line 687
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    .line 686
    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/folder/PreviewBackground;->setup(Landroid/content/Context;Lcom/android/launcher3/views/ActivityContext;Landroid/view/View;II)V

    .line 689
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    iput p1, v1, Lcom/android/launcher3/folder/PreviewBackground;->mDelegateCellX:I

    .line 690
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    iput p2, v1, Lcom/android/launcher3/folder/PreviewBackground;->mDelegateCellY:I

    .line 691
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->invalidate()V

    .line 692
    return-void
.end method

.method public setGridSize(II)V
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 419
    iput p1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 420
    iput p2, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 421
    new-instance v0, Lcom/android/launcher3/util/GridOccupancy;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 422
    new-instance v0, Lcom/android/launcher3/util/GridOccupancy;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 423
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget v5, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v6, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v7, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    iget-object v8, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIIILandroid/graphics/Point;)V

    .line 425
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->requestLayout()V

    .line 426
    return-void
.end method

.method public setInvertIfRtl(Z)V
    .locals 1
    .param p1, "invert"    # Z

    .line 430
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setInvertIfRtl(Z)V

    .line 431
    return-void
.end method

.method setIsDragOverlapping(Z)V
    .locals 2
    .param p1, "isDragOverlapping"    # Z

    .line 442
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mIsDragOverlapping:Z

    if-eq v0, p1, :cond_1

    .line 443
    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout;->mIsDragOverlapping:Z

    .line 444
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 445
    sget-object v1, Lcom/android/launcher3/CellLayout;->BACKGROUND_STATE_ACTIVE:[I

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/launcher3/CellLayout;->BACKGROUND_STATE_DEFAULT:[I

    .line 444
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 446
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->invalidate()V

    .line 448
    :cond_1
    return-void
.end method

.method setItemPlacementDirty(Z)V
    .locals 0
    .param p1, "dirty"    # Z

    .line 1717
    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout;->mItemPlacementDirty:Z

    .line 1718
    return-void
.end method

.method public setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnTouchListener;

    .line 730
    iput-object p1, p0, Lcom/android/launcher3/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    .line 731
    return-void
.end method

.method public setScrollProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .line 592
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mScrollProgress:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/CellLayout;->mScrollProgress:F

    .line 594
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->updateBgAlpha()V

    .line 596
    :cond_0
    return-void
.end method

.method public setSpaceBetweenCellLayoutsPx(I)V
    .locals 0
    .param p1, "spaceBetweenCellLayoutsPx"    # I

    .line 1966
    iput p1, p0, Lcom/android/launcher3/CellLayout;->mSpaceBetweenCellLayoutsPx:I

    .line 1967
    return-void
.end method

.method public setSpringLoadedProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    iput p1, p0, Lcom/android/launcher3/CellLayout;->mSpringLoadedProgress:F

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 702
    const/4 v0, 0x0

    return v0
.end method

.method protected updateBgAlpha()V
    .locals 0

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 1050
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method visualizeDropLocation(IIIILcom/android/launcher3/DropTarget$DragObject;)V
    .locals 5
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 1159
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-ne v2, p1, :cond_0

    aget v2, v0, v3

    if-ne v2, p2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragCellSpan:[I

    aget v4, v2, v1

    if-ne v4, p3, :cond_0

    aget v2, v2, v3

    if-eq v2, p4, :cond_1

    .line 1161
    :cond_0
    aput p1, v0, v1

    .line 1162
    aput p2, v0, v3

    .line 1163
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragCellSpan:[I

    aput p3, v2, v1

    .line 1164
    aput p4, v2, v3

    .line 1167
    invoke-direct {p0, p5, v0, p3, p4}, Lcom/android/launcher3/CellLayout;->applyColorExtractionOnWidget(Lcom/android/launcher3/DropTarget$DragObject;[III)V

    .line 1169
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    .line 1170
    .local v0, "oldIndex":I
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/launcher3/InterruptibleInOutAnimator;->animateOut()V

    .line 1171
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    array-length v3, v2

    rem-int/2addr v1, v3

    iput v1, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    .line 1173
    aget-object v1, v2, v1

    .line 1174
    .local v1, "cell":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    invoke-virtual {v1, p1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellX(I)V

    .line 1175
    invoke-virtual {v1, p2}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellY(I)V

    .line 1176
    iput p3, v1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    .line 1177
    iput p4, v1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    .line 1179
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/launcher3/InterruptibleInOutAnimator;->animateIn()V

    .line 1180
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->invalidate()V

    .line 1182
    iget-object v2, p5, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v2, :cond_1

    .line 1183
    iget-object v2, p5, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/CellLayout;->getItemMoveDescription(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->announce(Ljava/lang/CharSequence;)V

    .line 1187
    .end local v0    # "oldIndex":I
    .end local v1    # "cell":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    :cond_1
    return-void
.end method

.method protected visualizeGrid(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 606
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 607
    .local v0, "dp":Lcom/android/launcher3/DeviceProfile;
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->gridVisualizationPaddingX:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 608
    .local v1, "paddingX":I
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->gridVisualizationPaddingY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 610
    .local v2, "paddingY":I
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mVisualizeGridPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 613
    iget-boolean v3, p0, Lcom/android/launcher3/CellLayout;->mVisualizeCells:Z

    if-eqz v3, :cond_1

    .line 614
    const/high16 v3, 0x42f00000    # 120.0f

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mGridAlpha:F

    mul-float/2addr v4, v3

    float-to-int v3, v4

    .line 615
    .local v3, "paintAlpha":I
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mVisualizeGridPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/launcher3/CellLayout;->mGridColor:I

    invoke-static {v5, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 616
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v5, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-ge v4, v5, :cond_1

    .line 617
    const/4 v5, 0x0

    move v11, v5

    .local v11, "j":I
    :goto_1
    iget v5, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-ge v11, v5, :cond_0

    .line 618
    const/4 v8, 0x1

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/launcher3/CellLayout;->mTempOnDrawCellToRect:Landroid/graphics/Rect;

    move-object v5, p0

    move v6, v4

    move v7, v11

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 619
    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mVisualizeGridRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mTempOnDrawCellToRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 620
    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mVisualizeGridRect:Landroid/graphics/RectF;

    int-to-float v6, v1

    int-to-float v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->inset(FF)V

    .line 621
    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mVisualizeGridPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 622
    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mVisualizeGridRect:Landroid/graphics/RectF;

    iget v6, p0, Lcom/android/launcher3/CellLayout;->mGridVisualizationRoundingRadius:I

    int-to-float v7, v6

    int-to-float v6, v6

    iget-object v8, p0, Lcom/android/launcher3/CellLayout;->mVisualizeGridPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v7, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 617
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 616
    .end local v11    # "j":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 628
    .end local v3    # "paintAlpha":I
    .end local v4    # "i":I
    :cond_1
    iget-boolean v3, p0, Lcom/android/launcher3/CellLayout;->mVisualizeDropLocation:Z

    if-eqz v3, :cond_3

    .line 629
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    array-length v5, v4

    if-ge v3, v5, :cond_3

    .line 630
    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAlphas:[F

    aget v5, v5, v3

    .line 631
    .local v5, "alpha":F
    const/4 v6, 0x0

    cmpg-float v7, v5, v6

    if-gtz v7, :cond_2

    goto :goto_3

    .line 632
    :cond_2
    aget-object v4, v4, v3

    .line 633
    .local v4, "params":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    invoke-virtual {v4}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v8

    invoke-virtual {v4}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v9

    iget v10, v4, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iget v11, v4, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    iget-object v12, p0, Lcom/android/launcher3/CellLayout;->mTempOnDrawCellToRect:Landroid/graphics/Rect;

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 635
    iget-object v7, p0, Lcom/android/launcher3/CellLayout;->mVisualizeGridRect:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/android/launcher3/CellLayout;->mTempOnDrawCellToRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 636
    iget-object v7, p0, Lcom/android/launcher3/CellLayout;->mVisualizeGridRect:Landroid/graphics/RectF;

    int-to-float v8, v1

    int-to-float v9, v2

    invoke-virtual {v7, v8, v9}, Landroid/graphics/RectF;->inset(FF)V

    .line 638
    iget-object v7, p0, Lcom/android/launcher3/CellLayout;->mVisualizeGridPaint:Landroid/graphics/Paint;

    const/16 v8, 0xff

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 639
    iget-object v7, p0, Lcom/android/launcher3/CellLayout;->mVisualizeGridPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 640
    iget-object v7, p0, Lcom/android/launcher3/CellLayout;->mVisualizeGridPaint:Landroid/graphics/Paint;

    float-to-int v8, v5

    iget v9, p0, Lcom/android/launcher3/CellLayout;->mGridColor:I

    .line 641
    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v9

    iget v10, p0, Lcom/android/launcher3/CellLayout;->mGridColor:I

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v10

    iget v11, p0, Lcom/android/launcher3/CellLayout;->mGridColor:I

    invoke-static {v11}, Landroid/graphics/Color;->blue(I)I

    move-result v11

    .line 640
    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 643
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 644
    invoke-virtual {p0, v4}, Lcom/android/launcher3/CellLayout;->getMarginForGivenCellParams(Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;)F

    move-result v7

    invoke-virtual {p1, v7, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 645
    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mVisualizeGridRect:Landroid/graphics/RectF;

    iget v7, p0, Lcom/android/launcher3/CellLayout;->mGridVisualizationRoundingRadius:I

    int-to-float v8, v7

    int-to-float v7, v7

    iget-object v9, p0, Lcom/android/launcher3/CellLayout;->mVisualizeGridPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v8, v7, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 647
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 629
    .end local v4    # "params":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    .end local v5    # "alpha":F
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 650
    .end local v3    # "i":I
    :cond_3
    return-void
.end method
