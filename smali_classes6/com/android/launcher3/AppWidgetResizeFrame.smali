.class public Lcom/android/launcher3/AppWidgetResizeFrame;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "AppWidgetResizeFrame.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;
    }
.end annotation


# static fields
.field private static final DIMMED_HANDLE_ALPHA:F = 0.0f

.field private static final HANDLE_COUNT:I = 0x4

.field private static final INDEX_BOTTOM:I = 0x3

.field private static final INDEX_LEFT:I = 0x0

.field private static final INDEX_RIGHT:I = 0x2

.field private static final INDEX_TOP:I = 0x1

.field private static final MIN_OPACITY_FOR_CELL_LAYOUT_DURING_INVALID_RESIZE:F = 0.5f

.field private static final RESIZE_THRESHOLD:F = 0.66f

.field private static final RESIZE_TRANSITION_DURATION_MS:I = 0x96

.field private static final SNAP_DURATION_MS:I = 0x96

.field private static final sDragLayerLoc:[I

.field private static final sTmpRect:Landroid/graphics/Rect;

.field private static final sTmpRect2:Landroid/graphics/Rect;


# instance fields
.field private final logInstanceId:Lcom/android/launcher3/logging/InstanceId;

.field private final mBackgroundPadding:I

.field private final mBaselineX:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

.field private final mBaselineY:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

.field private mBottomBorderActive:Z

.field private mBottomTouchRegionAdjustment:I

.field private final mCellChildViewPreLayoutListener:Lcom/android/launcher3/widget/LauncherAppWidgetHostView$CellChildViewPreLayoutListener;

.field private mCellLayout:Lcom/android/launcher3/CellLayout;

.field private mDeltaX:I

.field private mDeltaXAddOn:I

.field private final mDeltaXRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

.field private mDeltaY:I

.field private mDeltaYAddOn:I

.field private final mDeltaYRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

.field private final mDirectionVector:[I

.field private final mDragAcrossTwoPanelOpacityMargin:F

.field private final mDragHandles:[Landroid/view/View;

.field private mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

.field private final mDragLayerRelativeCoordinateHelper:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

.field private final mFirstFrameAnimatorHelper:Lcom/android/launcher3/FirstFrameAnimatorHelper;

.field private mHorizontalResizeActive:Z

.field private final mLastDirectionVector:[I

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mLeftBorderActive:Z

.field private mMaxHSpan:I

.field private mMaxVSpan:I

.field private mMinHSpan:I

.field private mMinVSpan:I

.field private mReconfigureButton:Landroid/widget/ImageButton;

.field private mRightBorderActive:Z

.field private mRunningHInc:I

.field private mRunningVInc:I

.field private final mStateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

.field private final mSystemGestureExclusionRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

.field private final mTempRange2:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

.field private mTopBorderActive:Z

.field private mTopTouchRegionAdjustment:I

.field private final mTouchTargetWidth:I

.field private mVerticalResizeActive:Z

.field private mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

.field private final mWidgetViewNewRect:Landroid/graphics/Rect;

.field private final mWidgetViewOldRect:Landroid/graphics/Rect;

.field private mWidgetViewWindowPos:[I

.field private mXDown:I

.field private mYDown:I


# direct methods
.method public static synthetic $r8$lambda$5Bx-Nm28rhhqGg7HoFI0VPdFGCQ(Lcom/android/launcher3/AppWidgetResizeFrame;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->lambda$onTouchUp$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$DqmtKzOfJyXgmrnfcLDXbWG4o2s(Lcom/android/launcher3/AppWidgetResizeFrame;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/AppWidgetResizeFrame;->lambda$snapToWidget$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OjRPCL3X1Gaaca36SXKhUysuxco(Lcom/android/launcher3/AppWidgetResizeFrame;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->lambda$setupForWidget$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$RuLeQn8W73ryI6kNLfER2jmTQ1M(Lcom/android/launcher3/AppWidgetResizeFrame;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/AppWidgetResizeFrame;->lambda$setupForWidget$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h87v3Wzc0MAREfenKGpaTC-UDBw(Lcom/android/launcher3/AppWidgetResizeFrame;Landroid/view/View;IIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/AppWidgetResizeFrame;->lambda$new$0(Landroid/view/View;IIII)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect2:Landroid/graphics/Rect;

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher3/AppWidgetResizeFrame;->sDragLayerLoc:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 149
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    const/4 v0, 0x4

    new-array v1, v0, [Landroid/view/View;

    iput-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mSystemGestureExclusionRects:Ljava/util/List;

    .line 86
    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    .line 87
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLastDirectionVector:[I

    .line 89
    new-instance v2, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;-><init>(Lcom/android/launcher3/AppWidgetResizeFrame$IntRange-IA;)V

    iput-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    .line 90
    new-instance v2, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-direct {v2, v3}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;-><init>(Lcom/android/launcher3/AppWidgetResizeFrame$IntRange-IA;)V

    iput-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange2:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    .line 92
    new-instance v2, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-direct {v2, v3}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;-><init>(Lcom/android/launcher3/AppWidgetResizeFrame$IntRange-IA;)V

    iput-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaXRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    .line 93
    new-instance v2, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-direct {v2, v3}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;-><init>(Lcom/android/launcher3/AppWidgetResizeFrame$IntRange-IA;)V

    iput-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineX:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    .line 95
    new-instance v2, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-direct {v2, v3}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;-><init>(Lcom/android/launcher3/AppWidgetResizeFrame$IntRange-IA;)V

    iput-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaYRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    .line 96
    new-instance v2, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-direct {v2, v3}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;-><init>(Lcom/android/launcher3/AppWidgetResizeFrame$IntRange-IA;)V

    iput-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineY:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    .line 98
    new-instance v2, Lcom/android/launcher3/logging/InstanceIdSequence;

    invoke-direct {v2}, Lcom/android/launcher3/logging/InstanceIdSequence;-><init>()V

    invoke-virtual {v2}, Lcom/android/launcher3/logging/InstanceIdSequence;->newInstanceId()Lcom/android/launcher3/logging/InstanceId;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    .line 129
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    .line 130
    iput v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    .line 133
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetViewOldRect:Landroid/graphics/Rect;

    .line 134
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetViewNewRect:Landroid/graphics/Rect;

    .line 151
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 152
    invoke-static {p0}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->createFor(Landroid/view/View;)Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mStateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    .line 154
    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_WIDGET_TRANSITION_FOR_RESIZING:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    new-instance v3, Lcom/android/launcher3/AppWidgetResizeFrame$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/launcher3/AppWidgetResizeFrame$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/AppWidgetResizeFrame;)V

    goto :goto_0

    .line 164
    :cond_0
    nop

    :goto_0
    iput-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellChildViewPreLayoutListener:Lcom/android/launcher3/widget/LauncherAppWidgetHostView$CellChildViewPreLayoutListener;

    .line 166
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$dimen;->resize_frame_background_padding:I

    .line 167
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBackgroundPadding:I

    .line 168
    mul-int/2addr v2, v1

    iput v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    .line 169
    new-instance v1, Lcom/android/launcher3/FirstFrameAnimatorHelper;

    invoke-direct {v1, p0}, Lcom/android/launcher3/FirstFrameAnimatorHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mFirstFrameAnimatorHelper:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    .line 171
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 172
    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mSystemGestureExclusionRects:Ljava/util/List;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 175
    .end local v1    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->resize_frame_invalid_drag_across_two_panel_opacity_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragAcrossTwoPanelOpacityMargin:F

    .line 177
    new-instance v0, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayerRelativeCoordinateHelper:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    .line 178
    return-void
.end method

.method private getSnappedRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "out"    # Landroid/graphics/Rect;

    .line 505
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getScaleToFit()F

    move-result v0

    .line 506
    .local v0, "scale":F
    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_WIDGET_TRANSITION_FOR_RESIZING:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    invoke-direct {p0, p1}, Lcom/android/launcher3/AppWidgetResizeFrame;->getViewRectRelativeToDragLayer(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 509
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v1, v2, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 512
    :goto_0
    iget v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 513
    .local v1, "width":I
    iget v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v2, v3

    .line 514
    .local v2, "height":I
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBackgroundPadding:I

    sub-int/2addr v3, v4

    .line 515
    .local v3, "x":I
    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBackgroundPadding:I

    sub-int/2addr v4, v5

    .line 517
    .local v4, "y":I
    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 518
    iput v4, p1, Landroid/graphics/Rect;->top:I

    .line 519
    iget v5, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v1

    iput v5, p1, Landroid/graphics/Rect;->right:I

    .line 520
    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 521
    return-void
.end method

.method private static getSpanIncrement(F)I
    .locals 2
    .param p0, "deltaFrac"    # F

    .line 391
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3f28f5c3    # 0.66f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getViewPosRelativeToDragLayer()[I
    .locals 7

    .line 531
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    sget-object v1, Lcom/android/launcher3/AppWidgetResizeFrame;->sDragLayerLoc:[I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->getLocationInWindow([I)V

    .line 532
    const/4 v0, 0x0

    aget v2, v1, v0

    .line 533
    .local v2, "x":I
    const/4 v3, 0x1

    aget v1, v1, v3

    .line 535
    .local v1, "y":I
    iget-object v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetViewWindowPos:[I

    if-nez v4, :cond_0

    .line 536
    const/4 v4, 0x2

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetViewWindowPos:[I

    .line 537
    iget-object v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getLocationInWindow([I)V

    .line 540
    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetViewNewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetViewOldRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    .line 541
    .local v4, "leftOffset":I
    iget-object v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetViewNewRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetViewOldRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    .line 543
    .local v5, "topOffset":I
    iget-object v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetViewWindowPos:[I

    aget v0, v6, v0

    sub-int/2addr v0, v2

    add-int/2addr v0, v4

    aget v3, v6, v3

    sub-int/2addr v3, v1

    add-int/2addr v3, v5

    filled-new-array {v0, v3}, [I

    move-result-object v0

    return-object v0
.end method

.method private getViewRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "out"    # Landroid/graphics/Rect;

    .line 524
    invoke-direct {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getViewPosRelativeToDragLayer()[I

    move-result-object v0

    .line 525
    .local v0, "afterPos":[I
    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    aget v1, v0, v1

    iget-object v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetViewNewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v1, v5

    aget v3, v0, v3

    iget-object v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetViewNewRect:Landroid/graphics/Rect;

    .line 526
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v3, v5

    .line 525
    invoke-virtual {p1, v2, v4, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 527
    return-void
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 639
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 640
    .local v0, "hitRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 641
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 643
    .local v2, "y":I
    invoke-virtual {p0, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getHitRect(Landroid/graphics/Rect;)V

    .line 644
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 645
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getLeft()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getTop()I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/AppWidgetResizeFrame;->beginResizeIfPointInRegion(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 646
    iput v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mXDown:I

    .line 647
    iput v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mYDown:I

    .line 648
    const/4 v3, 0x1

    return v3

    .line 651
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method private hasSeenReconfigurableWidgetEducationTip()Z
    .locals 2

    .line 852
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherPrefs;->RECONFIGURABLE_WIDGET_EDUCATION_TIP_SEEN:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 853
    invoke-static {}, Lcom/android/launcher3/Utilities;->isRunningInTestHarness()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 852
    :goto_1
    return v0
.end method

.method private isTouchOnReconfigureButton(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 655
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 656
    .local v0, "xFrame":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 657
    .local v1, "yFrame":I
    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mReconfigureButton:Landroid/widget/ImageButton;

    sget-object v3, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->getHitRect(Landroid/graphics/Rect;)V

    .line 658
    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    return v2
.end method

.method private synthetic lambda$new$0(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 156
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetViewWindowPos:[I

    if-nez v0, :cond_0

    .line 157
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetViewWindowPos:[I

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetViewWindowPos:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 160
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetViewOldRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 160
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 162
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetViewNewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 163
    return-void
.end method

.method private synthetic lambda$onTouchUp$4()V
    .locals 1

    .line 497
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->snapToWidget(Z)V

    return-void
.end method

.method private synthetic lambda$setupForWidget$2(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 242
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 244
    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetId()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 248
    invoke-virtual {v2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    .line 243
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/android/launcher3/util/PendingRequestArgs;->forWidgetInfo(ILcom/android/launcher3/widget/WidgetAddFlowHandler;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PendingRequestArgs;

    move-result-object v1

    .line 242
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    .line 249
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 250
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppWidgetHolder()Lcom/android/launcher3/widget/LauncherWidgetHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 253
    invoke-virtual {v2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetId()I

    move-result v2

    .line 251
    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->startConfigActivity(Lcom/android/launcher3/BaseDraggingActivity;II)V

    .line 255
    return-void
.end method

.method private synthetic lambda$setupForWidget$3()V
    .locals 3

    .line 258
    invoke-direct {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->showReconfigurableWidgetEducationTip()Lcom/android/launcher3/views/ArrowTipView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherPrefs;->RECONFIGURABLE_WIDGET_EDUCATION_TIP_SEEN:Lcom/android/launcher3/ConstantItem;

    .line 260
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 259
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/LauncherPrefs;->put(Lcom/android/launcher3/Item;Ljava/lang/Object;)V

    .line 262
    :cond_0
    return-void
.end method

.method static synthetic lambda$showForWidget$1(Lcom/android/launcher3/AppWidgetResizeFrame;)V
    .locals 1
    .param p0, "frame"    # Lcom/android/launcher3/AppWidgetResizeFrame;

    .line 222
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->snapToWidget(Z)V

    return-void
.end method

.method private synthetic lambda$snapToWidget$5(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "a"    # Landroid/animation/ValueAnimator;

    .line 607
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->requestLayout()V

    return-void
.end method

.method private onTouchUp()V
    .locals 4

    .line 488
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 489
    .local v0, "dp":Lcom/android/launcher3/DeviceProfile;
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v1

    iget-object v2, v0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v2

    .line 490
    .local v1, "xThreshold":I
    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result v2

    iget-object v3, v0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v3

    .line 492
    .local v2, "yThreshold":I
    iget v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRunningHInc:I

    mul-int/2addr v3, v1

    iput v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaXAddOn:I

    .line 493
    iget v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRunningVInc:I

    mul-int/2addr v3, v2

    iput v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaYAddOn:I

    .line 494
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    .line 495
    iput v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaY:I

    .line 497
    new-instance v3, Lcom/android/launcher3/AppWidgetResizeFrame$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/android/launcher3/AppWidgetResizeFrame$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/AppWidgetResizeFrame;)V

    invoke-virtual {p0, v3}, Lcom/android/launcher3/AppWidgetResizeFrame;->post(Ljava/lang/Runnable;)Z

    .line 498
    return-void
.end method

.method private resizeWidgetIfNeeded(Z)V
    .locals 25
    .param p1, "onDismiss"    # Z

    .line 398
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 399
    .local v9, "wlp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v9, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    if-nez v1, :cond_0

    .line 400
    return-void

    .line 402
    :cond_0
    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v10

    .line 403
    .local v10, "dp":Lcom/android/launcher3/DeviceProfile;
    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v1

    iget-object v2, v10, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v2

    int-to-float v11, v1

    .line 404
    .local v11, "xThreshold":F
    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result v1

    iget-object v2, v10, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v2

    int-to-float v12, v1

    .line 406
    .local v12, "yThreshold":F
    iget v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    iget v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaXAddOn:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v11

    iget v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRunningHInc:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Lcom/android/launcher3/AppWidgetResizeFrame;->getSpanIncrement(F)I

    move-result v21

    .line 407
    .local v21, "hSpanInc":I
    iget v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaY:I

    iget v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaYAddOn:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v12

    iget v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRunningVInc:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Lcom/android/launcher3/AppWidgetResizeFrame;->getSpanIncrement(F)I

    move-result v22

    .line 409
    .local v22, "vSpanInc":I
    if-nez p1, :cond_1

    if-nez v21, :cond_1

    if-nez v22, :cond_1

    return-void

    .line 411
    :cond_1
    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 412
    const/4 v3, 0x1

    aput v2, v1, v3

    .line 414
    move-object v8, v9

    check-cast v8, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    .line 416
    .local v8, "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    iget v1, v8, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    .line 417
    .local v1, "spanX":I
    iget v4, v8, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    .line 418
    .local v4, "spanY":I
    iget-boolean v5, v8, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->useTmpCoords:Z

    if-eqz v5, :cond_2

    invoke-virtual {v8}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getTmpCellX()I

    move-result v5

    goto :goto_0

    :cond_2
    invoke-virtual {v8}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v5

    .line 419
    .local v5, "cellX":I
    :goto_0
    iget-boolean v6, v8, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->useTmpCoords:Z

    if-eqz v6, :cond_3

    invoke-virtual {v8}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getTmpCellY()I

    move-result v6

    goto :goto_1

    :cond_3
    invoke-virtual {v8}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v6

    .line 423
    .local v6, "cellY":I
    :goto_1
    iget-object v7, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    add-int v13, v1, v5

    invoke-virtual {v7, v5, v13}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->set(II)V

    .line 424
    iget-object v13, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget-boolean v14, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    iget-boolean v15, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    iget v7, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMinHSpan:I

    iget v3, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMaxHSpan:I

    iget-object v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    .line 425
    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v19

    iget-object v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange2:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    .line 424
    move/from16 v16, v21

    move/from16 v17, v7

    move/from16 v18, v3

    move-object/from16 v20, v2

    invoke-virtual/range {v13 .. v20}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->applyDeltaAndBound(ZZIIIILcom/android/launcher3/AppWidgetResizeFrame$IntRange;)I

    move-result v23

    .line 426
    .local v23, "hSpanDelta":I
    iget-object v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange2:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget v7, v2, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    .line 427
    .end local v5    # "cellX":I
    .local v7, "cellX":I
    iget-object v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange2:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {v2}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->size()I

    move-result v5

    .line 428
    .end local v1    # "spanX":I
    .local v5, "spanX":I
    if-eqz v23, :cond_5

    .line 429
    iget-object v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    iget-boolean v3, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v3, :cond_4

    const/4 v3, -0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x1

    :goto_2
    const/4 v13, 0x0

    aput v3, v2, v13

    .line 432
    :cond_5
    iget-object v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    add-int v3, v4, v6

    invoke-virtual {v2, v6, v3}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->set(II)V

    .line 433
    iget-object v13, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget-boolean v14, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    iget-boolean v15, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomBorderActive:Z

    iget v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMinVSpan:I

    iget v3, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMaxVSpan:I

    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    .line 434
    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v19

    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange2:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    .line 433
    move/from16 v16, v22

    move/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v20, v1

    invoke-virtual/range {v13 .. v20}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->applyDeltaAndBound(ZZIIIILcom/android/launcher3/AppWidgetResizeFrame$IntRange;)I

    move-result v13

    .line 435
    .local v13, "vSpanDelta":I
    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange2:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget v14, v1, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    .line 436
    .end local v6    # "cellY":I
    .local v14, "cellY":I
    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange2:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {v1}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->size()I

    move-result v15

    .line 437
    .end local v4    # "spanY":I
    .local v15, "spanY":I
    if-eqz v13, :cond_7

    .line 438
    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    iget-boolean v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v2, :cond_6

    const/16 v24, -0x1

    goto :goto_3

    :cond_6
    const/16 v24, 0x1

    :goto_3
    const/4 v2, 0x1

    aput v24, v1, v2

    .line 441
    :cond_7
    if-nez p1, :cond_8

    if-nez v13, :cond_8

    if-nez v23, :cond_8

    return-void

    .line 445
    :cond_8
    if-eqz p1, :cond_9

    .line 446
    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    iget-object v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLastDirectionVector:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    aput v4, v1, v3

    .line 447
    const/4 v4, 0x1

    aget v2, v2, v4

    aput v2, v1, v4

    goto :goto_4

    .line 449
    :cond_9
    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLastDirectionVector:[I

    iget-object v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    aget v6, v2, v3

    aput v6, v1, v3

    .line 450
    aget v2, v2, v4

    aput v2, v1, v4

    .line 453
    :goto_4
    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget-object v6, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget-object v4, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    move v2, v7

    move v3, v14

    move-object/from16 v16, v4

    move v4, v5

    move-object/from16 v17, v9

    move v9, v5

    .end local v5    # "spanX":I
    .local v9, "spanX":I
    .local v17, "wlp":Landroid/view/ViewGroup$LayoutParams;
    move v5, v15

    move-object/from16 v18, v10

    move v10, v7

    .end local v7    # "cellX":I
    .local v10, "cellX":I
    .local v18, "dp":Lcom/android/launcher3/DeviceProfile;
    move-object/from16 v7, v16

    move/from16 v16, v11

    move-object v11, v8

    .end local v8    # "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    .local v11, "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    .local v16, "xThreshold":F
    move/from16 v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/CellLayout;->createAreaForResize(IIIILandroid/view/View;[IZ)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 455
    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mStateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v1, :cond_b

    iget v1, v11, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    if-ne v1, v9, :cond_a

    iget v1, v11, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    if-eq v1, v15, :cond_b

    .line 456
    :cond_a
    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mStateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    iget-object v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    sget v3, Lcom/android/launcher3/R$string;->widget_resized:I

    .line 457
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/Launcher;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 456
    invoke-virtual {v1, v2}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->announce(Ljava/lang/CharSequence;)V

    .line 460
    :cond_b
    invoke-virtual {v11, v10}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setTmpCellX(I)V

    .line 461
    invoke-virtual {v11, v14}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setTmpCellY(I)V

    .line 462
    iput v9, v11, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    .line 463
    iput v15, v11, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    .line 464
    iget v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRunningVInc:I

    add-int/2addr v1, v13

    iput v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRunningVInc:I

    .line 465
    iget v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRunningHInc:I

    add-int v1, v1, v23

    iput v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRunningHInc:I

    .line 467
    if-nez p1, :cond_c

    .line 468
    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget-object v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v2, v9, v15}, Lcom/android/launcher3/widget/util/WidgetSizes;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Landroid/content/Context;II)V

    .line 471
    :cond_c
    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->requestLayout()V

    .line 472
    return-void
.end method

.method private setupForWidget(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragLayer;)V
    .locals 6
    .param p1, "widgetView"    # Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    .param p2, "cellLayout"    # Lcom/android/launcher3/CellLayout;
    .param p3, "dragLayer"    # Lcom/android/launcher3/dragndrop/DragLayer;

    .line 227
    iput-object p2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    .line 228
    iput-object p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 229
    nop

    .line 230
    invoke-virtual {p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    .line 231
    .local v0, "info":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    iput-object p3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 233
    iget v1, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    iput v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMinHSpan:I

    .line 234
    iget v1, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    iput v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMinVSpan:I

    .line 235
    iget v1, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->maxSpanX:I

    iput v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMaxHSpan:I

    .line 236
    iget v1, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->maxSpanY:I

    iput v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMaxVSpan:I

    .line 238
    sget v1, Lcom/android/launcher3/R$id;->widget_reconfigure_button:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/AppWidgetResizeFrame;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mReconfigureButton:Landroid/widget/ImageButton;

    .line 239
    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->isReconfigurable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mReconfigureButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 241
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mReconfigureButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/launcher3/AppWidgetResizeFrame$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/launcher3/AppWidgetResizeFrame$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/AppWidgetResizeFrame;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    invoke-direct {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->hasSeenReconfigurableWidgetEducationTip()Z

    move-result v1

    if-nez v1, :cond_0

    .line 257
    new-instance v1, Lcom/android/launcher3/AppWidgetResizeFrame$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/launcher3/AppWidgetResizeFrame$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/AppWidgetResizeFrame;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/AppWidgetResizeFrame;->post(Ljava/lang/Runnable;)Z

    .line 266
    :cond_0
    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_WIDGET_TRANSITION_FOR_RESIZING:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellChildViewPreLayoutListener:Lcom/android/launcher3/widget/LauncherAppWidgetHostView$CellChildViewPreLayoutListener;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->setCellChildViewPreLayoutListener(Lcom/android/launcher3/widget/LauncherAppWidgetHostView$CellChildViewPreLayoutListener;)V

    .line 268
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetViewOldRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v3}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 269
    invoke-virtual {v4}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 270
    invoke-virtual {v5}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getBottom()I

    move-result v5

    .line 268
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 271
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetViewNewRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetViewOldRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 274
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    .line 275
    .local v1, "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    .line 276
    .local v2, "widgetInfo":Lcom/android/launcher3/model/data/ItemInfo;
    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/launcher3/celllayout/CellPosMapper;->mapModelToPresenter(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    move-result-object v3

    .line 277
    .local v3, "presenterPos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    iget v4, v3, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellX:I

    invoke-virtual {v1, v4}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellX(I)V

    .line 278
    iget v4, v3, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellX:I

    invoke-virtual {v1, v4}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setTmpCellX(I)V

    .line 279
    iget v4, v3, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellY:I

    invoke-virtual {v1, v4}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellY(I)V

    .line 280
    iget v4, v3, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellY:I

    invoke-virtual {v1, v4}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setTmpCellY(I)V

    .line 281
    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v4, v1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    .line 282
    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v4, v1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    .line 283
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->isLockedToGrid:Z

    .line 288
    iget-object v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget-object v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 290
    iget-object v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v4

    .line 291
    invoke-virtual {v4}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    .line 292
    invoke-interface {v4, v5}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v4

    .line 293
    invoke-interface {v4, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_WIDGET_RESIZE_STARTED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 294
    invoke-interface {v4, v5}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 296
    invoke-virtual {p0, p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 297
    return-void
.end method

.method public static shouldConsume(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .line 830
    const/16 v0, 0x15

    if-eq p0, v0, :cond_1

    const/16 v0, 0x16

    if-eq p0, v0, :cond_1

    const/16 v0, 0x13

    if-eq p0, v0, :cond_1

    const/16 v0, 0x14

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5d

    if-ne p0, v0, :cond_0

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

.method public static showForWidget(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V
    .locals 7
    .param p0, "widget"    # Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    .param p1, "cellLayout"    # Lcom/android/launcher3/CellLayout;

    .line 202
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 203
    .local v0, "launcher":Lcom/android/launcher3/Launcher;
    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    .line 205
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    .line 206
    .local v1, "dl":Lcom/android/launcher3/dragndrop/DragLayer;
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$layout;->app_widget_resize_frame:I

    .line 207
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/AppWidgetResizeFrame;

    .line 208
    .local v2, "frame":Lcom/android/launcher3/AppWidgetResizeFrame;
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->hasEnforcedCornerRadius()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getEnforcedCornerRadius()F

    move-result v3

    .line 210
    .local v3, "enforcedCornerRadius":F
    sget v4, Lcom/android/launcher3/R$id;->widget_resize_frame:I

    invoke-virtual {v2, v4}, Lcom/android/launcher3/AppWidgetResizeFrame;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 211
    .local v4, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 212
    .local v5, "d":Landroid/graphics/drawable/Drawable;
    instance-of v6, v5, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v6, :cond_0

    .line 213
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/GradientDrawable;

    .line 214
    .local v6, "gd":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v6, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 217
    .end local v3    # "enforcedCornerRadius":F
    .end local v4    # "imageView":Landroid/widget/ImageView;
    .end local v5    # "d":Landroid/graphics/drawable/Drawable;
    .end local v6    # "gd":Landroid/graphics/drawable/GradientDrawable;
    :cond_0
    invoke-direct {v2, p0, p1, v1}, Lcom/android/launcher3/AppWidgetResizeFrame;->setupForWidget(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragLayer;)V

    .line 218
    invoke-virtual {v2}, Lcom/android/launcher3/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->customPosition:Z

    .line 220
    invoke-virtual {v1, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->addView(Landroid/view/View;)V

    .line 221
    iput-boolean v4, v2, Lcom/android/launcher3/AppWidgetResizeFrame;->mIsOpen:Z

    .line 222
    new-instance v3, Lcom/android/launcher3/AppWidgetResizeFrame$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/launcher3/AppWidgetResizeFrame$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/AppWidgetResizeFrame;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/AppWidgetResizeFrame;->post(Ljava/lang/Runnable;)Z

    .line 223
    return-void
.end method

.method private showReconfigurableWidgetEducationTip()Lcom/android/launcher3/views/ArrowTipView;
    .locals 6

    .line 837
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 838
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mReconfigureButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 839
    const/4 v1, 0x0

    return-object v1

    .line 841
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$dimen;->widget_reconfigure_tip_top_margin:I

    .line 842
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 843
    .local v1, "tipMargin":I
    new-instance v2, Lcom/android/launcher3/views/ArrowTipView;

    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/views/ArrowTipView;-><init>(Landroid/content/Context;Z)V

    .line 845
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/launcher3/R$string;->reconfigurable_widget_education_tip:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mReconfigureButton:Landroid/widget/ImageButton;

    .line 846
    invoke-virtual {v5}, Landroid/widget/ImageButton;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 844
    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/launcher3/views/ArrowTipView;->showAroundRect(Ljava/lang/String;ILandroid/graphics/Rect;I)Lcom/android/launcher3/views/ArrowTipView;

    move-result-object v2

    .line 843
    return-object v2
.end method

.method private snapToWidget(Z)V
    .locals 17
    .param p1, "animate"    # Z

    .line 550
    move-object/from16 v6, p0

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_WIDGET_TRANSITION_FOR_RESIZING:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    const-wide/16 v7, 0x96

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 551
    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    if-nez v0, :cond_0

    .line 552
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 553
    .local v0, "transition":Landroid/animation/LayoutTransition;
    invoke-virtual {v0, v7, v8}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 554
    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 555
    iget-object v2, v6, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 558
    .end local v0    # "transition":Landroid/animation/LayoutTransition;
    :cond_0
    sget-object v0, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    invoke-direct {v6, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getSnappedRectRelativeToDragLayer(Landroid/graphics/Rect;)V

    .line 559
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 560
    .local v9, "newWidth":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 561
    .local v10, "newHeight":I
    iget v11, v0, Landroid/graphics/Rect;->left:I

    .line 562
    .local v11, "newX":I
    iget v12, v0, Landroid/graphics/Rect;->top:I

    .line 567
    .local v12, "newY":I
    const/4 v0, 0x0

    if-gez v12, :cond_1

    .line 569
    neg-int v2, v12

    iput v2, v6, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    goto :goto_0

    .line 571
    :cond_1
    iput v0, v6, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    .line 573
    :goto_0
    add-int v2, v12, v10

    iget-object v3, v6, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v3}, Lcom/android/launcher3/dragndrop/DragLayer;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 575
    add-int v2, v12, v10

    iget-object v3, v6, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v3}, Lcom/android/launcher3/dragndrop/DragLayer;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    neg-int v2, v2

    iput v2, v6, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    goto :goto_1

    .line 577
    :cond_2
    iput v0, v6, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    .line 580
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    .line 582
    .local v13, "lp":Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;
    iget-object v2, v6, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/Workspace;

    if-eqz v2, :cond_3

    .line 583
    iget-object v2, v6, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/Workspace;

    .line 584
    .local v2, "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    iget-object v3, v6, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Workspace;->getScreenPair(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    .line 585
    .local v2, "pairedCellLayout":Lcom/android/launcher3/CellLayout;
    move-object v14, v2

    goto :goto_2

    .line 586
    .end local v2    # "pairedCellLayout":Lcom/android/launcher3/CellLayout;
    :cond_3
    const/4 v2, 0x0

    move-object v14, v2

    .line 588
    .local v14, "pairedCellLayout":Lcom/android/launcher3/CellLayout;
    :goto_2
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v15, 0x1

    if-nez p1, :cond_6

    .line 589
    iput v9, v13, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->width:I

    .line 590
    iput v10, v13, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->height:I

    .line 591
    iput v11, v13, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    .line 592
    iput v12, v13, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    .line 593
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, v1, :cond_4

    .line 594
    iget-object v3, v6, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 593
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 596
    .end local v0    # "i":I
    :cond_4
    if-eqz v14, :cond_5

    .line 597
    iget-object v0, v6, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    const/4 v1, 0x0

    invoke-direct {v6, v0, v14, v2, v1}, Lcom/android/launcher3/AppWidgetResizeFrame;->updateInvalidResizeEffect(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout;FF)V

    .line 600
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->requestLayout()V

    goto/16 :goto_6

    .line 602
    :cond_6
    new-array v3, v1, [Landroid/animation/PropertyValuesHolder;

    sget-object v4, Lcom/android/launcher3/LauncherAnimUtils;->LAYOUT_WIDTH:Landroid/util/IntProperty;

    iget v5, v13, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->width:I

    filled-new-array {v5, v9}, [I

    move-result-object v5

    .line 603
    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v3, v0

    sget-object v4, Lcom/android/launcher3/LauncherAnimUtils;->LAYOUT_HEIGHT:Landroid/util/IntProperty;

    iget v5, v13, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->height:I

    filled-new-array {v5, v10}, [I

    move-result-object v5

    .line 604
    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v3, v15

    sget-object v4, Lcom/android/launcher3/views/BaseDragLayer;->LAYOUT_X:Landroid/util/Property;

    iget v5, v13, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    filled-new-array {v5, v11}, [I

    move-result-object v5

    .line 605
    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    sget-object v4, Lcom/android/launcher3/views/BaseDragLayer;->LAYOUT_Y:Landroid/util/Property;

    iget v5, v13, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    filled-new-array {v5, v12}, [I

    move-result-object v5

    .line 606
    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 602
    invoke-static {v13, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 607
    .local v5, "oa":Landroid/animation/ObjectAnimator;
    iget-object v3, v6, Lcom/android/launcher3/AppWidgetResizeFrame;->mFirstFrameAnimatorHelper:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    invoke-virtual {v3, v5}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->addTo(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    check-cast v3, Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/android/launcher3/AppWidgetResizeFrame$$ExternalSyntheticLambda2;

    invoke-direct {v4, v6}, Lcom/android/launcher3/AppWidgetResizeFrame$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/AppWidgetResizeFrame;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 609
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v4, v3

    .line 610
    .local v4, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 611
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v1, :cond_7

    .line 612
    iget-object v1, v6, Lcom/android/launcher3/AppWidgetResizeFrame;->mFirstFrameAnimatorHelper:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    iget-object v7, v6, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    aget-object v7, v7, v3

    sget-object v8, Lcom/android/launcher3/AppWidgetResizeFrame;->ALPHA:Landroid/util/Property;

    move-object/from16 v16, v5

    .end local v5    # "oa":Landroid/animation/ObjectAnimator;
    .local v16, "oa":Landroid/animation/ObjectAnimator;
    new-array v5, v15, [F

    aput v2, v5, v0

    .line 613
    invoke-static {v7, v8, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 612
    invoke-virtual {v1, v5}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->addTo(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 611
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v5, v16

    const/4 v1, 0x4

    const-wide/16 v7, 0x96

    goto :goto_4

    .end local v16    # "oa":Landroid/animation/ObjectAnimator;
    .restart local v5    # "oa":Landroid/animation/ObjectAnimator;
    :cond_7
    move-object/from16 v16, v5

    .line 615
    .end local v3    # "i":I
    .end local v5    # "oa":Landroid/animation/ObjectAnimator;
    .restart local v16    # "oa":Landroid/animation/ObjectAnimator;
    if-eqz v14, :cond_8

    .line 616
    iget-object v1, v6, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v2, v14

    move-object v7, v4

    .end local v4    # "set":Landroid/animation/AnimatorSet;
    .local v7, "set":Landroid/animation/AnimatorSet;
    move v4, v5

    move-object/from16 v8, v16

    .end local v16    # "oa":Landroid/animation/ObjectAnimator;
    .local v8, "oa":Landroid/animation/ObjectAnimator;
    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/AppWidgetResizeFrame;->updateInvalidResizeEffect(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout;FFLandroid/animation/AnimatorSet;)V

    goto :goto_5

    .line 615
    .end local v7    # "set":Landroid/animation/AnimatorSet;
    .end local v8    # "oa":Landroid/animation/ObjectAnimator;
    .restart local v4    # "set":Landroid/animation/AnimatorSet;
    .restart local v16    # "oa":Landroid/animation/ObjectAnimator;
    :cond_8
    move-object v7, v4

    move-object/from16 v8, v16

    .line 619
    .end local v4    # "set":Landroid/animation/AnimatorSet;
    .end local v16    # "oa":Landroid/animation/ObjectAnimator;
    .restart local v7    # "set":Landroid/animation/AnimatorSet;
    .restart local v8    # "oa":Landroid/animation/ObjectAnimator;
    :goto_5
    const-wide/16 v0, 0x96

    invoke-virtual {v7, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 620
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 623
    .end local v7    # "set":Landroid/animation/AnimatorSet;
    .end local v8    # "oa":Landroid/animation/ObjectAnimator;
    :goto_6
    invoke-virtual {v6, v15}, Lcom/android/launcher3/AppWidgetResizeFrame;->setFocusableInTouchMode(Z)V

    .line 624
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->requestFocus()Z

    .line 625
    return-void
.end method

.method private updateInvalidResizeEffect(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout;FF)V
    .locals 6
    .param p1, "cellLayout"    # Lcom/android/launcher3/CellLayout;
    .param p2, "pairedCellLayout"    # Lcom/android/launcher3/CellLayout;
    .param p3, "alpha"    # F
    .param p4, "springLoadedProgress"    # F

    .line 708
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/AppWidgetResizeFrame;->updateInvalidResizeEffect(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout;FFLandroid/animation/AnimatorSet;)V

    .line 710
    return-void
.end method

.method private updateInvalidResizeEffect(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout;FFLandroid/animation/AnimatorSet;)V
    .locals 7
    .param p1, "cellLayout"    # Lcom/android/launcher3/CellLayout;
    .param p2, "pairedCellLayout"    # Lcom/android/launcher3/CellLayout;
    .param p3, "alpha"    # F
    .param p4, "springLoadedProgress"    # F
    .param p5, "animatorSet"    # Landroid/animation/AnimatorSet;

    .line 714
    invoke-virtual {p2}, Lcom/android/launcher3/CellLayout;->getChildCount()I

    move-result v0

    .line 715
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v1, v0, :cond_1

    .line 716
    invoke-virtual {p2, v1}, Lcom/android/launcher3/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 717
    .local v4, "child":Landroid/view/View;
    if-eqz p5, :cond_0

    .line 718
    iget-object v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mFirstFrameAnimatorHelper:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    sget-object v6, Lcom/android/launcher3/AppWidgetResizeFrame;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    aput p3, v3, v2

    .line 720
    invoke-static {v4, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 719
    invoke-virtual {v5, v2}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->addTo(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 718
    invoke-virtual {p5, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 722
    :cond_0
    invoke-virtual {v4, p3}, Landroid/view/View;->setAlpha(F)V

    .line 715
    .end local v4    # "child":Landroid/view/View;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 725
    .end local v1    # "i":I
    :cond_1
    if-eqz p5, :cond_2

    .line 726
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mFirstFrameAnimatorHelper:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    sget-object v4, Lcom/android/launcher3/CellLayout;->SPRING_LOADED_PROGRESS:Landroid/util/FloatProperty;

    new-array v5, v3, [F

    aput p4, v5, v2

    .line 727
    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 726
    invoke-virtual {v1, v4}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->addTo(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {p5, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 729
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mFirstFrameAnimatorHelper:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    sget-object v4, Lcom/android/launcher3/CellLayout;->SPRING_LOADED_PROGRESS:Landroid/util/FloatProperty;

    new-array v5, v3, [F

    aput p4, v5, v2

    .line 730
    invoke-static {p2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 729
    invoke-virtual {v1, v4}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->addTo(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {p5, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_2

    .line 733
    :cond_2
    invoke-virtual {p1, p4}, Lcom/android/launcher3/CellLayout;->setSpringLoadedProgress(F)V

    .line 734
    invoke-virtual {p2, p4}, Lcom/android/launcher3/CellLayout;->setSpringLoadedProgress(F)V

    .line 737
    :goto_2
    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-lez v1, :cond_3

    move v2, v3

    :cond_3
    move v1, v2

    .line 738
    .local v1, "shouldShowCellLayoutBorder":Z
    if-eqz p5, :cond_4

    .line 739
    new-instance v2, Lcom/android/launcher3/AppWidgetResizeFrame$1;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/android/launcher3/AppWidgetResizeFrame$1;-><init>(Lcom/android/launcher3/AppWidgetResizeFrame;Lcom/android/launcher3/CellLayout;ZLcom/android/launcher3/CellLayout;)V

    invoke-virtual {p5, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_3

    .line 747
    :cond_4
    invoke-virtual {p1, v1}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    .line 748
    invoke-virtual {p2, v1}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    .line 750
    :goto_3
    return-void
.end method


# virtual methods
.method public beginResizeIfPointInRegion(II)Z
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 300
    iget v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    .line 301
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    sub-int/2addr v0, v3

    if-le p1, v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    .line 302
    iget v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    add-int/2addr v3, v0

    if-ge p2, v3, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    .line 303
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getHeight()I

    move-result v0

    iget v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    add-int/2addr v0, v3

    if-le p2, v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomBorderActive:Z

    .line 305
    iget-boolean v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez v3, :cond_5

    iget-boolean v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v4, :cond_5

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move v0, v2

    goto :goto_5

    :cond_5
    :goto_4
    move v0, v1

    .line 308
    .local v0, "anyBordersActive":Z
    :goto_5
    const/4 v4, 0x2

    if-eqz v0, :cond_a

    .line 309
    iget-object v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    aget-object v5, v5, v2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-eqz v3, :cond_6

    move v3, v6

    goto :goto_6

    :cond_6
    move v3, v7

    :goto_6
    invoke-virtual {v5, v3}, Landroid/view/View;->setAlpha(F)V

    .line 310
    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    aget-object v3, v3, v4

    iget-boolean v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v5, :cond_7

    move v5, v6

    goto :goto_7

    :cond_7
    move v5, v7

    :goto_7
    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 311
    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    aget-object v1, v3, v1

    iget-boolean v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v3, :cond_8

    move v3, v6

    goto :goto_8

    :cond_8
    move v3, v7

    :goto_8
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 312
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    const/4 v3, 0x3

    aget-object v1, v1, v3

    iget-boolean v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v3, :cond_9

    goto :goto_9

    :cond_9
    move v6, v7

    :goto_9
    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 315
    :cond_a
    iget-boolean v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v1, :cond_b

    .line 316
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaXRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getLeft()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/2addr v6, v4

    sub-int/2addr v5, v6

    invoke-virtual {v1, v3, v5}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->set(II)V

    goto :goto_a

    .line 317
    :cond_b
    iget-boolean v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v1, :cond_c

    .line 318
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaXRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getWidth()I

    move-result v5

    sub-int/2addr v3, v5

    iget-object v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v5}, Lcom/android/launcher3/dragndrop/DragLayer;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, v3, v5}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->set(II)V

    goto :goto_a

    .line 320
    :cond_c
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaXRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {v1, v2, v2}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->set(II)V

    .line 322
    :goto_a
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineX:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getRight()I

    move-result v5

    invoke-virtual {v1, v3, v5}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->set(II)V

    .line 324
    iget-boolean v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v1, :cond_d

    .line 325
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaYRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getTop()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getHeight()I

    move-result v3

    iget v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/2addr v5, v4

    sub-int/2addr v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->set(II)V

    goto :goto_b

    .line 326
    :cond_d
    iget-boolean v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v1, :cond_e

    .line 327
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaYRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/2addr v2, v4

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v3}, Lcom/android/launcher3/dragndrop/DragLayer;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->set(II)V

    goto :goto_b

    .line 329
    :cond_e
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaYRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {v1, v2, v2}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->set(II)V

    .line 331
    :goto_b
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineY:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getBottom()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->set(II)V

    .line 333
    return v0
.end method

.method protected handleClose(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 699
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_WIDGET_TRANSITION_FOR_RESIZING:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->clearCellChildViewPreLayoutListener()V

    .line 701
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragLayer;->removeView(Landroid/view/View;)V

    .line 704
    return-void
.end method

.method protected isOfType(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 754
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 685
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher3/AppWidgetResizeFrame;->handleTouchDown(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    const/4 v0, 0x1

    return v0

    .line 690
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/AppWidgetResizeFrame;->isTouchOnReconfigureButton(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 691
    return v1

    .line 693
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher3/AppWidgetResizeFrame;->close(Z)V

    .line 694
    return v1
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 663
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 664
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 665
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 667
    .local v2, "y":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 671
    :pswitch_0
    iget v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mXDown:I

    sub-int v3, v1, v3

    iget v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mYDown:I

    sub-int v4, v2, v4

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    .line 672
    goto :goto_0

    .line 675
    :pswitch_1
    iget v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mXDown:I

    sub-int v3, v1, v3

    iget v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mYDown:I

    sub-int v4, v2, v4

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    .line 676
    invoke-direct {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->onTouchUp()V

    .line 677
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mYDown:I

    iput v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mXDown:I

    goto :goto_0

    .line 669
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/launcher3/AppWidgetResizeFrame;->handleTouchDown(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 680
    :goto_0
    const/4 v3, 0x1

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 476
    invoke-super {p0}, Lcom/android/launcher3/AbstractFloatingView;->onDetachedFromWindow()V

    .line 479
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->resizeWidgetIfNeeded(Z)V

    .line 480
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    .line 481
    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    .line 482
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 483
    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_WIDGET_RESIZE_COMPLETED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 484
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 485
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 182
    invoke-super {p0}, Lcom/android/launcher3/AbstractFloatingView;->onFinishInflate()V

    .line 184
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    sget v1, Lcom/android/launcher3/R$id;->widget_resize_left_handle:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/AppWidgetResizeFrame;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 185
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    sget v1, Lcom/android/launcher3/R$id;->widget_resize_top_handle:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/AppWidgetResizeFrame;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 186
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    sget v1, Lcom/android/launcher3/R$id;->widget_resize_right_handle:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/AppWidgetResizeFrame;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 187
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    sget v1, Lcom/android/launcher3/R$id;->widget_resize_bottom_handle:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/AppWidgetResizeFrame;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 188
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 630
    invoke-static {p2}, Lcom/android/launcher3/AppWidgetResizeFrame;->shouldConsume(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 631
    invoke-virtual {p0, v1}, Lcom/android/launcher3/AppWidgetResizeFrame;->close(Z)V

    .line 632
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->requestFocus()Z

    .line 633
    const/4 v0, 0x1

    return v0

    .line 635
    :cond_0
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 192
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/AbstractFloatingView;->onLayout(ZIIII)V

    .line 193
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    aget-object v1, v1, v0

    .line 195
    .local v1, "dragHandle":Landroid/view/View;
    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mSystemGestureExclusionRects:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 196
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 195
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 193
    .end local v1    # "dragHandle":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mSystemGestureExclusionRects:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->setSystemGestureExclusionRects(Ljava/util/List;)V

    .line 199
    return-void
.end method

.method public visualizeResizeForDelta(II)V
    .locals 9
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I

    .line 340
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaXRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->clamp(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    .line 341
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaYRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->clamp(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaY:I

    .line 343
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    .line 344
    .local v0, "lp":Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaXRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->clamp(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    .line 345
    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineX:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget-boolean v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    iget-boolean v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    iget-object v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->applyDelta(ZZILcom/android/launcher3/AppWidgetResizeFrame$IntRange;)V

    .line 346
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget v1, v1, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    iput v1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    .line 347
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {v1}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->size()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->width:I

    .line 349
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaYRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->clamp(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaY:I

    .line 350
    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineY:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget-boolean v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    iget-boolean v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomBorderActive:Z

    iget-object v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->applyDelta(ZZILcom/android/launcher3/AppWidgetResizeFrame$IntRange;)V

    .line 351
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget v1, v1, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    iput v1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    .line 352
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {v1}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->size()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->height:I

    .line 354
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/launcher3/AppWidgetResizeFrame;->resizeWidgetIfNeeded(Z)V

    .line 357
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/Workspace;

    if-eqz v1, :cond_2

    .line 358
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/Workspace;

    .line 359
    .local v1, "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Workspace;->getScreenPair(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    .line 360
    .local v2, "pairedCellLayout":Lcom/android/launcher3/CellLayout;
    if-eqz v2, :cond_2

    .line 361
    sget-object v3, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    .line 362
    .local v3, "focusedCellLayoutBound":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayerRelativeCoordinateHelper:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    iget-object v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v4, v5, v3}, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;->viewToRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 363
    sget-object v4, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect2:Landroid/graphics/Rect;

    .line 364
    .local v4, "resizeFrameBound":Landroid/graphics/Rect;
    sget v5, Lcom/android/launcher3/R$id;->widget_resize_frame:I

    invoke-virtual {p0, v5}, Lcom/android/launcher3/AppWidgetResizeFrame;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 365
    const/high16 v5, 0x3f800000    # 1.0f

    .line 366
    .local v5, "progress":F
    invoke-virtual {v1, v2}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1, v7}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v7

    if-ge v6, v7, :cond_0

    iget v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    if-gez v6, :cond_0

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->left:I

    if-ge v6, v7, :cond_0

    .line 370
    iget v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragAcrossTwoPanelOpacityMargin:F

    iget v7, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    int-to-float v7, v7

    add-float/2addr v7, v6

    div-float v5, v7, v6

    goto :goto_0

    .line 372
    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    .line 373
    invoke-virtual {v1, v7}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v7

    if-le v6, v7, :cond_1

    iget v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    if-lez v6, :cond_1

    iget v6, v4, Landroid/graphics/Rect;->right:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    if-le v6, v7, :cond_1

    .line 377
    iget v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragAcrossTwoPanelOpacityMargin:F

    iget v7, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    int-to-float v7, v7

    sub-float v7, v6, v7

    div-float v5, v7, v6

    .line 380
    :cond_1
    :goto_0
    const/high16 v6, 0x3f000000    # 0.5f

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 381
    .local v6, "alpha":F
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v8, v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 382
    .local v7, "springLoadedProgress":F
    iget-object v8, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-direct {p0, v8, v2, v6, v7}, Lcom/android/launcher3/AppWidgetResizeFrame;->updateInvalidResizeEffect(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout;FF)V

    .line 387
    .end local v1    # "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    .end local v2    # "pairedCellLayout":Lcom/android/launcher3/CellLayout;
    .end local v3    # "focusedCellLayoutBound":Landroid/graphics/Rect;
    .end local v4    # "resizeFrameBound":Landroid/graphics/Rect;
    .end local v5    # "progress":F
    .end local v6    # "alpha":F
    .end local v7    # "springLoadedProgress":F
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->requestLayout()V

    .line 388
    return-void
.end method
