.class public Lcom/android/launcher3/Workspace;
.super Lcom/android/launcher3/PagedView;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher3/DropTarget;
.implements Lcom/android/launcher3/DragSource;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher3/CellLayoutContainer;
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/launcher3/statemanager/StateManager$StateHandler;
.implements Lcom/android/launcher3/WorkspaceLayoutManager;
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer;
.implements Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;,
        Lcom/android/launcher3/Workspace$StateTransitionListener;,
        Lcom/android/launcher3/Workspace$ReorderAlarmListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ":",
        "Lcom/android/launcher3/pageindicators/PageIndicator;",
        ">",
        "Lcom/android/launcher3/PagedView<",
        "TT;>;",
        "Lcom/android/launcher3/DropTarget;",
        "Lcom/android/launcher3/DragSource;",
        "Landroid/view/View$OnTouchListener;",
        "Lcom/android/launcher3/CellLayoutContainer;",
        "Lcom/android/launcher3/dragndrop/DragController$DragListener;",
        "Lcom/android/launcher3/Insettable;",
        "Lcom/android/launcher3/statemanager/StateManager$StateHandler<",
        "Lcom/android/launcher3/LauncherState;",
        ">;",
        "Lcom/android/launcher3/WorkspaceLayoutManager;",
        "Lcom/android/launcher3/util/LauncherBindableItemsContainer;",
        "Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayCallbacks;"
    }
.end annotation


# static fields
.field private static final ADJACENT_SCREEN_DROP_DURATION:I = 0x12c

.field private static final ALLOW_DROP_TRANSITION_PROGRESS:F = 0.25f

.field public static final ANIMATE_INTO_POSITION_AND_DISAPPEAR:I = 0x0

.field public static final ANIMATE_INTO_POSITION_AND_REMAIN:I = 0x1

.field public static final ANIMATE_INTO_POSITION_AND_RESIZE:I = 0x2

.field public static final CANCEL_TWO_STAGE_WIDGET_DROP_ANIMATION:I = 0x4

.field public static final COMPLETE_TWO_STAGE_WIDGET_DROP_ANIMATION:I = 0x3

.field public static final DEFAULT_PAGE:I = 0x0

.field private static final DRAG_MODE_ADD_TO_FOLDER:I = 0x2

.field private static final DRAG_MODE_CREATE_FOLDER:I = 0x1

.field private static final DRAG_MODE_NONE:I = 0x0

.field private static final DRAG_MODE_REORDER:I = 0x3

.field private static final ENFORCE_DRAG_EVENT_ORDER:Z = false

.field private static final FINISHED_SWITCHING_STATE_TRANSITION_PROGRESS:F = 0.5f

.field static final MAX_SWIPE_ANGLE:F = 1.0471976f

.field public static final REORDER_TIMEOUT:I = 0x28a

.field private static final SIGNIFICANT_MOVE_SCREEN_WIDTH_PERCENTAGE:F = 0.15f

.field static final START_DAMPING_TOUCH_SLOP_ANGLE:F = 0.5235988f

.field static final TOUCH_SLOP_DAMPING_FACTOR:F = 4.0f


# instance fields
.field private mAddToExistingFolderOnDrop:Z

.field private final mAllAppsIconSize:I

.field mChildrenLayersEnabled:Z

.field private mCreateUserFolderOnDrop:Z

.field private mCurrentScale:F

.field mDeferRemoveExtraEmptyScreen:Z

.field mDragController:Lcom/android/launcher3/dragndrop/DragController;

.field protected mDragInfo:Lcom/android/launcher3/celllayout/CellInfo;

.field protected mDragMode:I

.field private mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

.field private mDragOverX:I

.field private mDragOverY:I

.field private mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

.field protected mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

.field mDragTargetLayout:Lcom/android/launcher3/CellLayout;

.field mDragViewVisualCenter:[F

.field private mDropToLayout:Lcom/android/launcher3/CellLayout;

.field private mEdgeFallbackPage:I

.field private mEdgeFallbackTime:J

.field private mFirstPagePinnedItem:Landroid/view/View;

.field private mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

.field private mForceDrawAdjacentPages:Z

.field private mIsEventOverFirstPagePinnedItem:Z

.field private mIsSwitchingState:Z

.field mLastReorderX:I

.field mLastReorderY:I

.field final mLauncher:Lcom/android/launcher3/Launcher;

.field private mLayoutTransition:Landroid/animation/LayoutTransition;

.field private final mOverlayCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mOverlayEdgeEffect:Lcom/android/launcher3/util/OverlayEdgeEffect;

.field private mOverlayProgress:F

.field private mOverlayShown:Z

.field protected final mReorderAlarm:Lcom/android/launcher3/Alarm;

.field private final mRestoredPages:Lcom/android/launcher3/util/IntArray;

.field private mSavedStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field final mScreenOrder:Lcom/android/launcher3/util/IntArray;

.field private mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

.field private final mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

.field private final mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

.field private mStripScreensOnPageStopMoving:Z

.field mTargetCell:[I

.field private final mTempFXY:[F

.field private final mTempRect:Landroid/graphics/Rect;

.field protected final mTempXY:[I

.field private mTransitionProgress:F

.field private mUnlockWallpaperFromDefaultPageOnLayout:Z

.field final mWallpaperManager:Landroid/app/WallpaperManager;

.field final mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

.field private mWorkspaceFadeInAdjacentScreens:Z

.field public final mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/IntSparseArrayMap<",
            "Lcom/android/launcher3/CellLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mXDown:F

.field private mYDown:F


# direct methods
.method public static synthetic $r8$lambda$8E1EoUMhFdrMqFN5JXoR2ChrY9Q(Lcom/android/launcher3/Workspace;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->lambda$addExtraEmptyScreenOnDrag$1(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C78lC9avGfkDjC2niAIaEOLDNbw(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/util/IntSet;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/Workspace;->lambda$commitExtraEmptyScreens$5(Lcom/android/launcher3/util/IntSet;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EMtms5npk-U9bJp3-jtVz6405Fo(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/Workspace;->lambda$getWidgetResizeFrameRunnable$8(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KDnMc73hYnoC3vFDqNs0t241S60(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SeBQhGWeWph7EppVvmTyes4Omsk(Lcom/android/launcher3/Workspace;ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/Workspace;->lambda$removeWidget$9(ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$UvP_Z6qjxB50dsVWUYPERpdsVjE(Lcom/android/launcher3/Workspace;Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/Workspace;->lambda$updateNotificationDots$13(Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ccqD8alHyWLPS0-5DKCqYSDLlaE(Lcom/android/launcher3/Workspace;ZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/Workspace;->lambda$removeExtraEmptyScreenDelayed$3(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hj7LDcHqMgBovxxPnuPQWjnnKZM(Lcom/android/launcher3/Workspace;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->lambda$addExtraEmptyScreens$2(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pDbkZVm3-0MRRJfVo1eq52sgdNA(Lcom/android/launcher3/Workspace;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->lambda$removeExtraEmptyScreenDelayed$4(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vpiK6ovG-N9zW3iAOjyLiT2vtUs(Lcom/android/launcher3/Workspace;Landroid/graphics/Rect;Lcom/android/launcher3/CellLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/Workspace;->lambda$updateCellLayoutMeasures$0(Landroid/graphics/Rect;Lcom/android/launcher3/CellLayout;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmStatsLogManager(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/logging/StatsLogManager;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmTransitionProgress(Lcom/android/launcher3/Workspace;F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    return-void
.end method

.method static bridge synthetic -$$Nest$monEndStateTransition(Lcom/android/launcher3/Workspace;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->onEndStateTransition()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monStartStateTransition(Lcom/android/launcher3/Workspace;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->onStartStateTransition()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 301
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 302
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 312
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 178
    new-instance v0, Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    .line 182
    new-instance v0, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    .line 196
    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 198
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher3/Workspace;->mDragOverX:I

    .line 199
    iput v2, p0, Lcom/android/launcher3/Workspace;->mDragOverY:I

    .line 204
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    .line 209
    iput-object v3, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    .line 214
    iput-object v3, p0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    .line 221
    new-array v4, v1, [I

    iput-object v4, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    .line 222
    new-array v4, v1, [F

    iput-object v4, p0, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    .line 223
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    .line 224
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    .line 229
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    .line 231
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    .line 233
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    .line 241
    new-instance v4, Lcom/android/launcher3/Alarm;

    invoke-direct {v4}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v4, p0, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    .line 243
    iput-object v3, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    .line 244
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    .line 245
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 269
    iput v0, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    .line 270
    iput v2, p0, Lcom/android/launcher3/Workspace;->mLastReorderX:I

    .line 272
    iput v2, p0, Lcom/android/launcher3/Workspace;->mLastReorderY:I

    .line 276
    new-instance v2, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v2}, Lcom/android/launcher3/util/IntArray;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mRestoredPages:Lcom/android/launcher3/util/IntArray;

    .line 283
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    .line 285
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mOverlayCallbacks:Ljava/util/List;

    .line 287
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mForceDrawAdjacentPages:Z

    .line 314
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 315
    new-instance v3, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    invoke-direct {v3, v2, p0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;)V

    iput-object v3, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    .line 316
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 317
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    iput v3, p0, Lcom/android/launcher3/Workspace;->mAllAppsIconSize:I

    .line 318
    new-instance v3, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-direct {v3, p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;-><init>(Lcom/android/launcher3/Workspace;)V

    iput-object v3, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    .line 320
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 321
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->initWorkspace()V

    .line 324
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->setMotionEventSplittingEnabled(Z)V

    .line 325
    new-instance v0, Lcom/android/launcher3/touch/WorkspaceTouchListener;

    invoke-direct {v0, v2, p0}, Lcom/android/launcher3/touch/WorkspaceTouchListener;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 326
    invoke-static {p1}, Lcom/android/launcher3/logging/StatsLogManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    .line 327
    return-void
.end method

.method private addExtraEmptyScreenOnDrag(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 7
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 695
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x0

    .line 696
    .local v0, "lastChildOnScreen":Z
    const/4 v1, 0x0

    .line 698
    .local v1, "childOnFinalScreen":Z
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eqz v2, :cond_3

    .line 699
    invoke-virtual {v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    .line 702
    .local v2, "dragSourceChildCount":I
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/Hotseat;

    if-nez v3, :cond_0

    .line 703
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;

    move-result-object v3

    iget-object v4, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/celllayout/CellPosMapper;->mapModelToPresenter(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/Workspace;->getScreenPair(I)I

    move-result v3

    .line 705
    .local v3, "pagePairScreenId":I
    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v4, v3}, Lcom/android/launcher3/util/IntSparseArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout;

    .line 706
    .local v4, "pagePair":Lcom/android/launcher3/CellLayout;
    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v5

    add-int/2addr v2, v5

    .line 712
    .end local v3    # "pagePairScreenId":I
    .end local v4    # "pagePair":Lcom/android/launcher3/CellLayout;
    :cond_0
    iget-object v3, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v3}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v3, :cond_1

    .line 713
    add-int/lit8 v2, v2, 0x1

    .line 716
    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 717
    const/4 v0, 0x1

    .line 719
    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout;

    .line 720
    .local v4, "cl":Lcom/android/launcher3/CellLayout;
    sget-object v5, Lcom/android/launcher3/config/FeatureFlags;->FOLDABLE_SINGLE_PAGE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v5}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/launcher3/Workspace;->getLeftmostVisiblePageForIndex(I)I

    move-result v5

    .line 721
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageCount()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {p0, v6}, Lcom/android/launcher3/Workspace;->getLeftmostVisiblePageForIndex(I)I

    move-result v3

    if-ne v5, v3, :cond_3

    .line 722
    const/4 v1, 0x1

    .line 727
    .end local v2    # "dragSourceChildCount":I
    .end local v4    # "cl":Lcom/android/launcher3/CellLayout;
    :cond_3
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 728
    return-void

    .line 731
    :cond_4
    new-instance v2, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda8;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-direct {p0, v2}, Lcom/android/launcher3/Workspace;->forEachExtraEmptyPageId(Ljava/util/function/Consumer;)V

    .line 736
    return-void
.end method

.method private checkDragObjectIsOverNeighbourPages(Lcom/android/launcher3/DropTarget$DragObject;F)Lcom/android/launcher3/CellLayout;
    .locals 12
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "centerX"    # F

    .line 2594
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isPageInTransition()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2595
    return-object v1

    .line 2603
    :cond_0
    iget v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    int-to-float v0, v0

    .line 2607
    .local v0, "touchY":F
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v2

    .line 2608
    .local v2, "nextPage":I
    const/4 v3, 0x2

    new-array v4, v3, [I

    add-int/lit8 v5, v2, -0x1

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 2609
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    move v3, v6

    :goto_0
    add-int/2addr v3, v2

    aput v3, v4, v6

    .line 2608
    invoke-static {v4}, Lcom/android/launcher3/util/IntSet;->wrap([I)Lcom/android/launcher3/util/IntSet;

    move-result-object v3

    .line 2611
    .local v3, "pageIndexesToVerify":Lcom/android/launcher3/util/IntSet;
    invoke-virtual {v3}, Lcom/android/launcher3/util/IntSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2616
    .local v5, "pageIndex":I
    if-ge v5, v2, :cond_2

    iget-boolean v6, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v6, :cond_3

    :cond_2
    if-le v5, v2, :cond_4

    iget-boolean v6, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v6, :cond_4

    .line 2617
    :cond_3
    iget v6, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    int-to-float v6, v6

    invoke-static {v6, p2}, Ljava/lang/Math;->min(FF)F

    move-result v6

    goto :goto_2

    :cond_4
    iget v6, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    int-to-float v6, v6

    invoke-static {v6, p2}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 2618
    .local v6, "touchX":F
    :goto_2
    invoke-direct {p0, v5, v6, v0}, Lcom/android/launcher3/Workspace;->verifyInsidePage(IFF)Lcom/android/launcher3/CellLayout;

    move-result-object v7

    .line 2619
    .local v7, "layout":Lcom/android/launcher3/CellLayout;
    if-eqz v7, :cond_5

    return-object v7

    :cond_5
    const/4 v7, 0x0

    if-ge v5, v2, :cond_6

    iget-boolean v8, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-nez v8, :cond_7

    const/4 v7, 0x1

    goto :goto_3

    :cond_6
    if-le v5, v2, :cond_a

    iget-boolean v8, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v8, :cond_7

    const/4 v7, 0x1

    :cond_7
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3e3851ec    # 0.18f

    mul-float v9, v8, v9

    if-eqz v7, :cond_8

    cmpl-float v10, v6, v9

    if-lez v10, :cond_9

    goto :goto_4

    :cond_8
    sub-float v10, v8, v9

    cmpl-float v11, v6, v10

    if-ltz v11, :cond_a

    :cond_9
    invoke-direct {p0, v5}, Lcom/android/launcher3/Workspace;->edgeFallbackAllowed(I)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-virtual {p0, v5}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/CellLayout;

    if-eqz v7, :cond_a

    return-object v7

    :cond_a
    :goto_4
    goto :goto_1

    .line 2622
    .end local v5    # "pageIndex":I
    .end local v7    # "layout":Lcom/android/launcher3/CellLayout;
    goto :goto_1

    .line 2623
    .end local v6    # "touchX":F
    :cond_b
    return-object v1
.end method

.method private cleanupAddToFolder()V
    .locals 1

    .line 2389
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_0

    .line 2390
    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->onDragExit()V

    .line 2391
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    .line 2393
    :cond_0
    return-void
.end method

.method private commitExtraEmptyScreen(I)I
    .locals 3
    .param p1, "emptyScreenId"    # I

    .line 915
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/IntSparseArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 916
    .local v0, "cl":Lcom/android/launcher3/CellLayout;
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/IntSparseArrayMap;->remove(I)V

    .line 917
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/IntArray;->removeValue(I)V

    .line 919
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    .line 920
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lcom/android/launcher3/model/ModelDbController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/model/ModelDbController;->getNewScreenId()I

    move-result v1

    .line 923
    .local v1, "newScreenId":I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 924
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 927
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v2, v1, v0}, Lcom/android/launcher3/util/IntSparseArrayMap;->put(ILjava/lang/Object;)V

    .line 928
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 930
    return v1
.end method

.method private convertFinalScreenToEmptyScreenIfNecessary()V
    .locals 8

    .line 776
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    return-void

    .line 781
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v0

    .line 782
    .local v0, "panelCount":I
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasExtraEmptyScreens()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v1

    if-ge v1, v0, :cond_1

    goto/16 :goto_5

    .line 786
    :cond_1
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 788
    .local v1, "finalScreens":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/launcher3/CellLayout;>;"
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v2

    .line 791
    .local v2, "pageCount":I
    sub-int v3, v2, v0

    .local v3, "pageIndex":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 792
    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v4, v3}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v4

    .line 793
    .local v4, "screenId":I
    iget-object v5, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/util/IntSparseArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/CellLayout;

    .line 794
    .local v5, "screen":Lcom/android/launcher3/CellLayout;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v6

    if-nez v6, :cond_3

    .line 795
    invoke-virtual {v5}, Lcom/android/launcher3/CellLayout;->isDropPending()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    .line 799
    :cond_2
    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 791
    .end local v4    # "screenId":I
    .end local v5    # "screen":Lcom/android/launcher3/CellLayout;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 797
    .restart local v4    # "screenId":I
    .restart local v5    # "screen":Lcom/android/launcher3/CellLayout;
    :cond_3
    :goto_1
    return-void

    .line 804
    .end local v3    # "pageIndex":I
    .end local v4    # "screenId":I
    .end local v5    # "screen":Lcom/android/launcher3/CellLayout;
    :cond_4
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 805
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 809
    .restart local v4    # "screenId":I
    sget-object v5, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SMARTSPACE_REMOVAL:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v5}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v5

    if-eqz v5, :cond_5

    if-nez v4, :cond_5

    .line 810
    goto :goto_4

    .line 813
    :cond_5
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/CellLayout;

    .line 815
    .restart local v5    # "screen":Lcom/android/launcher3/CellLayout;
    iget-object v6, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v6, v4}, Lcom/android/launcher3/util/IntSparseArrayMap;->remove(I)V

    .line 816
    iget-object v6, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v6, v4}, Lcom/android/launcher3/util/IntArray;->removeValue(I)V

    .line 818
    iget-object v6, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    const/16 v7, -0xc9

    invoke-virtual {v6, v7}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 819
    const/16 v7, -0xc8

    goto :goto_3

    :cond_6
    nop

    :goto_3
    move v6, v7

    .line 820
    .local v6, "newScreenId":I
    iget-object v7, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v7, v6, v5}, Lcom/android/launcher3/util/IntSparseArrayMap;->put(ILjava/lang/Object;)V

    .line 821
    iget-object v7, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v7, v6}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 804
    .end local v4    # "screenId":I
    .end local v5    # "screen":Lcom/android/launcher3/CellLayout;
    .end local v6    # "newScreenId":I
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 823
    .end local v3    # "i":I
    :cond_7
    return-void

    .line 783
    .end local v1    # "finalScreens":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/launcher3/CellLayout;>;"
    .end local v2    # "pageCount":I
    :cond_8
    :goto_5
    return-void
.end method

.method private createWidgetDrawable(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "widgetInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "layout"    # Landroid/view/View;

    .line 2917
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->estimateItemSize(Lcom/android/launcher3/model/data/ItemInfo;)[I

    move-result-object v0

    .line 2918
    .local v0, "unScaledSize":[I
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 2919
    .local v1, "visibility":I
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2921
    aget v3, v0, v2

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 2922
    .local v3, "width":I
    const/4 v5, 0x1

    aget v6, v0, v5

    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 2923
    .local v4, "height":I
    invoke-virtual {p2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 2924
    aget v6, v0, v2

    aget v7, v0, v5

    invoke-virtual {p2, v2, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 2925
    aget v2, v0, v2

    aget v5, v0, v5

    .line 2926
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda13;

    invoke-direct {v6, p2}, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda13;-><init>(Landroid/view/View;)V

    .line 2925
    invoke-static {v2, v5, v6}, Lcom/android/launcher3/icons/BitmapRenderer;->createHardwareBitmap(IILcom/android/launcher3/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2927
    .local v2, "b":Landroid/graphics/Bitmap;
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2928
    new-instance v5, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-direct {v5, v2}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v5
.end method

.method private edgeFallbackAllowed(I)Z
    .locals 7
    .param p1, "pageIndex"    # I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher3/Workspace;->mEdgeFallbackTime:J

    sub-long v2, v2, v0

    const-wide/16 v4, 0x3e8

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    iget v6, p0, Lcom/android/launcher3/Workspace;->mEdgeFallbackPage:I

    if-eq v6, p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iput-wide v0, p0, Lcom/android/launcher3/Workspace;->mEdgeFallbackTime:J

    iput p1, p0, Lcom/android/launcher3/Workspace;->mEdgeFallbackPage:I

    const/4 v0, 0x1

    return v0
.end method

.method private enableHwLayersOnVisiblePages()V
    .locals 9

    .line 1496
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    if-eqz v0, :cond_4

    .line 1497
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    .line 1499
    .local v0, "screenCount":I
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getVisibleChildrenRange()[I

    move-result-object v1

    .line 1500
    .local v1, "visibleScreens":[I
    const/4 v2, 0x0

    aget v3, v1, v2

    .line 1501
    .local v3, "leftScreen":I
    const/4 v4, 0x1

    aget v5, v1, v4

    .line 1502
    .local v5, "rightScreen":I
    iget-boolean v6, p0, Lcom/android/launcher3/Workspace;->mForceDrawAdjacentPages:Z

    if-eqz v6, :cond_0

    .line 1504
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-static {v6, v2, v5}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v3

    .line 1505
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v6

    add-int/2addr v6, v4

    .line 1506
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageCount()I

    move-result v7

    sub-int/2addr v7, v4

    .line 1505
    invoke-static {v6, v3, v7}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v5

    .line 1509
    :cond_0
    if-ne v3, v5, :cond_2

    .line 1511
    add-int/lit8 v6, v0, -0x1

    if-ge v5, v6, :cond_1

    .line 1512
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1513
    :cond_1
    if-lez v3, :cond_2

    .line 1514
    add-int/lit8 v3, v3, -0x1

    .line 1518
    :cond_2
    :goto_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v0, :cond_4

    .line 1519
    invoke-virtual {p0, v6}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/CellLayout;

    .line 1521
    .local v7, "layout":Lcom/android/launcher3/CellLayout;
    if-gt v3, v6, :cond_3

    if-gt v6, v5, :cond_3

    move v8, v4

    goto :goto_2

    :cond_3
    move v8, v2

    .line 1522
    .local v8, "enableLayer":Z
    :goto_2
    invoke-virtual {v7, v8}, Lcom/android/launcher3/CellLayout;->enableHardwareLayer(Z)V

    .line 1518
    .end local v7    # "layout":Lcom/android/launcher3/CellLayout;
    .end local v8    # "enableLayer":Z
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1525
    .end local v0    # "screenCount":I
    .end local v1    # "visibleScreens":[I
    .end local v3    # "leftScreen":I
    .end local v5    # "rightScreen":I
    .end local v6    # "i":I
    :cond_4
    return-void
.end method

.method private enforceDragParity(Landroid/view/View;Ljava/lang/String;II)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "update"    # I
    .param p4, "expectedValue"    # I

    .line 2318
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    sget v0, Lcom/android/launcher3/R$id;->drag_event_parity:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 2319
    .local v0, "tag":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2320
    .local v1, "value":I
    :goto_0
    add-int/2addr v1, p3

    .line 2321
    sget v2, Lcom/android/launcher3/R$id;->drag_event_parity:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2323
    if-eq v1, p4, :cond_1

    .line 2324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Drag contract violated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Launcher.Workspace"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    :cond_1
    return-void
.end method

.method private enforceDragParity(Ljava/lang/String;II)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "update"    # I
    .param p3, "expectedValue"    # I

    .line 2311
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-direct {p0, p0, p1, p2, p3}, Lcom/android/launcher3/Workspace;->enforceDragParity(Landroid/view/View;Ljava/lang/String;II)V

    .line 2312
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2313
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/launcher3/Workspace;->enforceDragParity(Landroid/view/View;Ljava/lang/String;II)V

    .line 2312
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2315
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private forEachExtraEmptyPageId(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 765
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    const/16 v0, -0xc9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 766
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    const/16 v0, -0xc8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 769
    :cond_0
    return-void
.end method

.method private getFinalPositionForDropAnimation([I[FLcom/android/launcher3/dragndrop/DragView;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/model/data/ItemInfo;[IZLandroid/view/View;)V
    .locals 19
    .param p1, "loc"    # [I
    .param p2, "scaleXY"    # [F
    .param p3, "dragView"    # Lcom/android/launcher3/dragndrop/DragView;
    .param p4, "layout"    # Lcom/android/launcher3/CellLayout;
    .param p5, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p6, "targetCell"    # [I
    .param p7, "scale"    # Z
    .param p8, "finalView"    # Landroid/view/View;

    .line 2936
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p5

    iget v9, v8, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    .line 2937
    .local v9, "spanX":I
    iget v10, v8, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    .line 2939
    .local v10, "spanY":I
    const/4 v11, 0x0

    aget v2, p6, v11

    const/4 v12, 0x1

    aget v3, p6, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Workspace;->estimateItemPosition(Lcom/android/launcher3/CellLayout;IIII)Landroid/graphics/Rect;

    move-result-object v0

    .line 2940
    .local v0, "r":Landroid/graphics/Rect;
    iget v1, v8, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 2941
    iget-object v1, v6, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 2942
    .local v1, "profile":Lcom/android/launcher3/DeviceProfile;
    move-object/from16 v2, p8

    instance-of v3, v2, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    if-eqz v3, :cond_0

    .line 2943
    iget-object v3, v1, Lcom/android/launcher3/DeviceProfile;->widgetPadding:Landroid/graphics/Rect;

    .line 2944
    .local v3, "widgetPadding":Landroid/graphics/Rect;
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 2945
    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 2946
    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 2947
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 2949
    .end local v3    # "widgetPadding":Landroid/graphics/Rect;
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/launcher3/DeviceProfile;->getAppWidgetScale(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/PointF;

    move-result-object v3

    .line 2950
    .local v3, "appWidgetScale":Landroid/graphics/PointF;
    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v3, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v4, v5}, Lcom/android/launcher3/Utilities;->shrinkRect(Landroid/graphics/Rect;FF)F

    goto :goto_0

    .line 2940
    .end local v1    # "profile":Lcom/android/launcher3/DeviceProfile;
    .end local v3    # "appWidgetScale":Landroid/graphics/PointF;
    :cond_1
    move-object/from16 v2, p8

    .line 2953
    :goto_0
    iget-object v1, v6, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    aput v3, v1, v11

    .line 2954
    iget-object v1, v6, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    aput v3, v1, v12

    .line 2955
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->setFinalTransitionTransform()V

    .line 2956
    iget-object v1, v6, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 2957
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    iget-object v3, v6, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    move-object/from16 v4, p4

    invoke-virtual {v1, v4, v3, v12}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[FZ)F

    move-result v1

    .line 2958
    .local v1, "cellLayoutScale":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->resetTransitionTransform()V

    .line 2959
    iget-object v3, v6, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    invoke-static {v3, v7}, Lcom/android/launcher3/Utilities;->roundArray([F[I)V

    .line 2961
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz p7, :cond_2

    .line 2962
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v3

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    .line 2963
    .local v13, "dragViewScaleX":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v3

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v14, v3

    .line 2967
    .local v14, "dragViewScaleY":F
    aget v3, v7, v11

    move/from16 v16, v13

    .end local v13    # "dragViewScaleX":F
    .local v16, "dragViewScaleX":F
    int-to-double v12, v3

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v1

    sub-float/2addr v3, v15

    div-float/2addr v3, v5

    move-wide/from16 v17, v12

    float-to-double v11, v3

    .line 2968
    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/CellLayout;->getUnusedHorizontalSpace()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    sub-double/2addr v11, v5

    sub-double v5, v17, v11

    double-to-int v3, v5

    const/4 v5, 0x0

    aput v3, v7, v5

    .line 2969
    const/4 v3, 0x1

    aget v5, v7, v3

    int-to-float v5, v5

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v1

    sub-float/2addr v6, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v6, v11

    sub-float/2addr v5, v6

    float-to-int v5, v5

    aput v5, v7, v3

    .line 2970
    mul-float v13, v16, v1

    const/4 v5, 0x0

    aput v13, p2, v5

    .line 2971
    mul-float v5, v14, v1

    aput v5, p2, v3

    .line 2972
    .end local v14    # "dragViewScaleY":F
    .end local v16    # "dragViewScaleX":F
    goto :goto_1

    .line 2975
    :cond_2
    move v5, v11

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getInitialScale()F

    move-result v6

    mul-float/2addr v6, v1

    .line 2976
    .local v6, "dragScale":F
    aget v11, v7, v5

    int-to-float v11, v11

    sub-float v12, v6, v3

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getWidth()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v12, v14

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    float-to-int v11, v11

    aput v11, v7, v5

    .line 2977
    const/4 v5, 0x1

    aget v11, v7, v5

    int-to-float v11, v11

    sub-float v3, v6, v3

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getHeight()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v3, v12

    div-float/2addr v3, v13

    add-float/2addr v11, v3

    float-to-int v3, v11

    aput v3, v7, v5

    .line 2978
    aput v6, p2, v5

    const/4 v3, 0x0

    aput v6, p2, v3

    .line 2981
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v5

    .line 2982
    .local v5, "dragRegion":Landroid/graphics/Rect;
    if-eqz v5, :cond_3

    .line 2983
    aget v11, v7, v3

    int-to-float v11, v11

    iget v12, v5, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    mul-float/2addr v12, v1

    add-float/2addr v11, v12

    float-to-int v11, v11

    aput v11, v7, v3

    .line 2984
    const/4 v3, 0x1

    aget v11, v7, v3

    int-to-float v11, v11

    iget v12, v5, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    mul-float/2addr v12, v1

    add-float/2addr v11, v12

    float-to-int v11, v11

    aput v11, v7, v3

    .line 2987
    .end local v5    # "dragRegion":Landroid/graphics/Rect;
    .end local v6    # "dragScale":F
    :cond_3
    :goto_1
    return-void
.end method

.method private getViewBoundsRelativeToWorkspace(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outRect"    # Landroid/graphics/Rect;

    .line 2630
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    .line 2631
    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 2633
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->mapRectInSelfToDescendant(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2634
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2635
    return-void
.end method

.method private getWallpaperOffsetForPage(I)F
    .locals 2
    .param p1, "page"    # I

    .line 442
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getScrollForPage(I)I

    move-result v0

    .line 443
    .local v0, "pageScroll":I
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->wallpaperOffsetForScroll(I)F

    move-result v1

    return v1
.end method

.method private getWidgetResizeFrameRunnable(Lcom/android/launcher3/dragndrop/DragOptions;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)Ljava/lang/Runnable;
    .locals 2
    .param p1, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;
    .param p2, "hostView"    # Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    .param p3, "cellLayout"    # Lcom/android/launcher3/CellLayout;

    .line 2228
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 2229
    .local v0, "pInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v0, :cond_0

    .line 2230
    new-instance v1, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda14;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V

    return-object v1

    .line 2236
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;
    .locals 4

    .line 3244
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    .line 3246
    .local v0, "screenCount":I
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3247
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Lcom/android/launcher3/CellLayout;

    .line 3248
    .local v1, "layouts":[Lcom/android/launcher3/CellLayout;
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_0

    .line 3250
    .end local v1    # "layouts":[Lcom/android/launcher3/CellLayout;
    :cond_0
    new-array v1, v0, [Lcom/android/launcher3/CellLayout;

    .line 3252
    .restart local v1    # "layouts":[Lcom/android/launcher3/CellLayout;
    :goto_0
    const/4 v2, 0x0

    .local v2, "screen":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 3253
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    aput-object v3, v1, v2

    .line 3252
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3255
    .end local v2    # "screen":I
    :cond_1
    return-object v1
.end method

.method private isDragObjectOverSmartSpace(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .locals 3
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 2586
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mFirstPagePinnedItem:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2587
    const/4 v0, 0x0

    return v0

    .line 2589
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/Workspace;->getViewBoundsRelativeToWorkspace(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2590
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    iget v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    iget v2, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private isDragWidget(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .locals 1
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 2430
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v0, :cond_0

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

.method private isTwoPanelEnabled()Z
    .locals 1

    .line 511
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->FOLDABLE_SINGLE_PAGE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$addExtraEmptyScreenOnDrag$1(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "extraEmptyPageId"    # Ljava/lang/Integer;

    .line 732
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 733
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(I)V

    .line 735
    :cond_0
    return-void
.end method

.method private synthetic lambda$addExtraEmptyScreens$2(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "extraEmptyPageId"    # Ljava/lang/Integer;

    .line 753
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 754
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(I)V

    .line 756
    :cond_0
    return-void
.end method

.method private synthetic lambda$commitExtraEmptyScreens$5(Lcom/android/launcher3/util/IntSet;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "extraEmptyPageIds"    # Lcom/android/launcher3/util/IntSet;
    .param p2, "extraEmptyPageId"    # Ljava/lang/Integer;

    .line 909
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->commitExtraEmptyScreen(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/IntSet;->add(I)V

    return-void
.end method

.method static synthetic lambda$getHomescreenIconByItemId$10(ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 1
    .param p0, "id"    # I
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "v"    # Landroid/view/View;

    .line 3259
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getWidgetForAppWidgetId$11(ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 1
    .param p0, "appWidgetId"    # I
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "v"    # Landroid/view/View;

    .line 3264
    instance-of v0, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$getWidgetResizeFrameRunnable$8(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V
    .locals 1
    .param p1, "hostView"    # Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    .param p2, "cellLayout"    # Lcom/android/launcher3/CellLayout;

    .line 2231
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isPageInTransition()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2232
    invoke-static {p1, p2}, Lcom/android/launcher3/AppWidgetResizeFrame;->showForWidget(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V

    .line 2234
    :cond_0
    return-void
.end method

.method static synthetic lambda$onDrop$6(Lcom/android/launcher3/util/RunnableList;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "callbackList"    # Lcom/android/launcher3/util/RunnableList;
    .param p1, "onCompleteCallback"    # Ljava/lang/Runnable;

    .line 2183
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$onDrop$7(Lcom/android/launcher3/util/RunnableList;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "callbackList"    # Lcom/android/launcher3/util/RunnableList;
    .param p1, "onCompleteCallback"    # Ljava/lang/Runnable;

    .line 2185
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$removeExtraEmptyScreenDelayed$3(ZLjava/lang/Runnable;)V
    .locals 1
    .param p1, "stripEmptyScreens"    # Z
    .param p2, "onComplete"    # Ljava/lang/Runnable;

    .line 855
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(IZLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$removeExtraEmptyScreenDelayed$4(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "extraEmptyPageId"    # Ljava/lang/Integer;

    .line 865
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->removeView(Landroid/view/View;)V

    .line 866
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->remove(I)V

    .line 867
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntArray;->removeValue(I)V

    .line 868
    return-void
.end method

.method private synthetic lambda$removeWidget$9(ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 4
    .param p1, "appWidgetId"    # I
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "view"    # Landroid/view/View;

    .line 3142
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    instance-of v0, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_0

    .line 3143
    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 3144
    .local v0, "appWidgetInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    iget v1, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    if-ne v1, p1, :cond_0

    .line 3145
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string v2, "widget is removed in response to widget remove broadcast"

    const/4 v3, 0x1

    invoke-virtual {v1, p3, v0, v3, v2}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;ZLjava/lang/String;)Z

    .line 3147
    return v3

    .line 3150
    .end local v0    # "appWidgetInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$updateCellLayoutMeasures$0(Landroid/graphics/Rect;Lcom/android/launcher3/CellLayout;)V
    .locals 4
    .param p1, "padding"    # Landroid/graphics/Rect;
    .param p2, "cellLayout"    # Lcom/android/launcher3/CellLayout;

    .line 378
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/android/launcher3/CellLayout;->setPadding(IIII)V

    .line 379
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageSpacing()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    invoke-virtual {p2, v0}, Lcom/android/launcher3/CellLayout;->setSpaceBetweenCellLayoutsPx(I)V

    .line 380
    return-void
.end method

.method static synthetic lambda$updateNotificationDots$12(Lcom/android/launcher3/util/PackageUserKey;Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 1
    .param p0, "packageUserKey"    # Lcom/android/launcher3/util/PackageUserKey;
    .param p1, "updatedDots"    # Ljava/util/function/Predicate;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 3366
    invoke-virtual {p0, p2}, Lcom/android/launcher3/util/PackageUserKey;->updateFromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3367
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3366
    :goto_1
    return v0
.end method

.method private synthetic lambda$updateNotificationDots$13(Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 5
    .param p1, "matcher"    # Ljava/util/function/Predicate;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "v"    # Landroid/view/View;

    .line 3370
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    instance-of v0, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_0

    instance-of v0, p3, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_0

    .line 3371
    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3372
    move-object v0, p3

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/android/launcher3/BubbleTextView;->applyDotState(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    goto :goto_1

    .line 3374
    :cond_0
    instance-of v0, p2, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v0, :cond_2

    instance-of v0, p3, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_2

    .line 3375
    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/model/data/FolderInfo;

    .line 3376
    .local v0, "fi":Lcom/android/launcher3/model/data/FolderInfo;
    iget-object v1, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3377
    new-instance v1, Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-direct {v1}, Lcom/android/launcher3/dot/FolderDotInfo;-><init>()V

    .line 3378
    .local v1, "folderDotInfo":Lcom/android/launcher3/dot/FolderDotInfo;
    iget-object v2, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 3379
    .local v3, "si":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, v3}, Lcom/android/launcher3/Launcher;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/launcher3/dot/FolderDotInfo;->addDotInfo(Lcom/android/launcher3/dot/DotInfo;)V

    .line 3380
    .end local v3    # "si":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    goto :goto_0

    .line 3381
    :cond_1
    move-object v2, p3

    check-cast v2, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/folder/FolderIcon;->setDotInfo(Lcom/android/launcher3/dot/FolderDotInfo;)V

    .line 3386
    .end local v0    # "fi":Lcom/android/launcher3/model/data/FolderInfo;
    .end local v1    # "folderDotInfo":Lcom/android/launcher3/dot/FolderDotInfo;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private manageFolderFeedback(FLcom/android/launcher3/DropTarget$DragObject;)V
    .locals 13
    .param p1, "distance"    # F
    .param p2, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 2653
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->getFolderCreationRadius([I)F

    move-result v0

    cmpl-float v0, p1, v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_2

    .line 2654
    iget v0, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-eq v0, v1, :cond_0

    if-ne v0, v2, :cond_1

    .line 2656
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    .line 2658
    :cond_1
    return-void

    .line 2661
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v5, v4, v3

    aget v4, v4, v2

    invoke-virtual {v0, v5, v4}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 2662
    .local v0, "dragOverView":Landroid/view/View;
    iget-object v4, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 2663
    .local v4, "info":Lcom/android/launcher3/model/data/ItemInfo;
    invoke-virtual {p0, v4, v0, v3}, Lcom/android/launcher3/Workspace;->willCreateUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Z)Z

    move-result v5

    .line 2664
    .local v5, "userFolderPending":Z
    iget v6, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-nez v6, :cond_4

    if-eqz v5, :cond_4

    .line 2666
    new-instance v7, Lcom/android/launcher3/folder/PreviewBackground;

    invoke-direct {v7}, Lcom/android/launcher3/folder/PreviewBackground;-><init>()V

    iput-object v7, p0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    .line 2667
    iget-object v9, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v10, 0x0

    .line 2668
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    .line 2667
    move-object v8, v9

    invoke-virtual/range {v7 .. v12}, Lcom/android/launcher3/folder/PreviewBackground;->setup(Landroid/content/Context;Lcom/android/launcher3/views/ActivityContext;Landroid/view/View;II)V

    .line 2671
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    iput-boolean v3, v1, Lcom/android/launcher3/folder/PreviewBackground;->isClipping:Z

    .line 2673
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    iget-object v6, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v7, p0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v3, v7, v3

    aget v7, v7, v2

    invoke-virtual {v1, v6, v3, v7}, Lcom/android/launcher3/folder/PreviewBackground;->animateToAccept(Lcom/android/launcher3/CellLayout;II)V

    .line 2674
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->clearDragOutlines()V

    .line 2675
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    .line 2677
    iget-object v1, p2, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v1, :cond_3

    .line 2678
    iget-object v1, p2, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    .line 2679
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->getDescriptionForDropOver(Landroid/view/View;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 2678
    invoke-virtual {v1, v2}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->announce(Ljava/lang/CharSequence;)V

    .line 2681
    :cond_3
    return-void

    .line 2684
    :cond_4
    invoke-virtual {p0, v4, v0}, Lcom/android/launcher3/Workspace;->willAddToExistingUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result v6

    .line 2685
    .local v6, "willAddToFolder":Z
    if-eqz v6, :cond_7

    iget v7, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-nez v7, :cond_7

    .line 2686
    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/folder/FolderIcon;

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    .line 2687
    invoke-virtual {v2, v4}, Lcom/android/launcher3/folder/FolderIcon;->onDragEnter(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 2688
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v2, :cond_5

    .line 2689
    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->clearDragOutlines()V

    .line 2691
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    .line 2693
    iget-object v1, p2, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v1, :cond_6

    .line 2694
    iget-object v1, p2, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    .line 2695
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->getDescriptionForDropOver(Landroid/view/View;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 2694
    invoke-virtual {v1, v2}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->announce(Ljava/lang/CharSequence;)V

    .line 2697
    :cond_6
    return-void

    .line 2700
    :cond_7
    iget v7, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-ne v7, v1, :cond_8

    if-nez v6, :cond_8

    .line 2701
    invoke-virtual {p0, v3}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    .line 2703
    :cond_8
    iget v1, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-ne v1, v2, :cond_9

    if-nez v5, :cond_9

    .line 2704
    invoke-virtual {p0, v3}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    .line 2706
    :cond_9
    return-void
.end method

.method private mapPointFromDropLayout(Lcom/android/launcher3/CellLayout;[F)V
    .locals 2
    .param p1, "layout"    # Lcom/android/launcher3/CellLayout;
    .param p2, "xy"    # [F

    .line 2421
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2422
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p2, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[FZ)F

    .line 2423
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/dragndrop/DragLayer;->mapCoordInSelfToDescendant(Landroid/view/View;[F)V

    goto :goto_0

    .line 2425
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    .line 2427
    :goto_0
    return-void
.end method

.method private mapPointFromSelfToChild(Landroid/view/View;[F)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "xy"    # [F

    .line 2410
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x0

    aget v1, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, p2, v0

    .line 2411
    const/4 v0, 0x1

    aget v1, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, p2, v0

    .line 2412
    return-void
.end method

.method private onDropExternal([ILcom/android/launcher3/CellLayout;Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 34
    .param p1, "touchXY"    # [I
    .param p2, "cellLayout"    # Lcom/android/launcher3/CellLayout;
    .param p3, "d"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 2762
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    move-object/from16 v14, p0

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    iget-object v0, v12, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-eqz v0, :cond_0

    .line 2763
    iget-object v0, v12, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    iget-object v1, v14, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 2764
    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->getActivityInfo(Landroid/content/Context;)Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->createWorkspaceItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    .line 2765
    .local v0, "si":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    if-eqz v0, :cond_0

    .line 2766
    iput-object v0, v12, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 2770
    .end local v0    # "si":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :cond_0
    iget-object v11, v12, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 2771
    .local v11, "info":Lcom/android/launcher3/model/data/ItemInfo;
    iget v0, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    .line 2772
    .local v0, "spanX":I
    iget v1, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    .line 2773
    .local v1, "spanY":I
    iget-object v2, v14, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/celllayout/CellInfo;

    if-eqz v2, :cond_1

    .line 2774
    iget v0, v2, Lcom/android/launcher3/celllayout/CellInfo;->spanX:I

    .line 2775
    iget-object v2, v14, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/celllayout/CellInfo;

    iget v1, v2, Lcom/android/launcher3/celllayout/CellInfo;->spanY:I

    move/from16 v26, v0

    move/from16 v27, v1

    goto :goto_0

    .line 2773
    :cond_1
    move/from16 v26, v0

    move/from16 v27, v1

    .line 2778
    .end local v0    # "spanX":I
    .end local v1    # "spanY":I
    .local v26, "spanX":I
    .local v27, "spanY":I
    :goto_0
    iget-object v0, v14, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v13}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2779
    const/16 v0, -0x65

    move v10, v0

    goto :goto_1

    .line 2780
    :cond_2
    const/16 v0, -0x64

    move v10, v0

    :goto_1
    nop

    .line 2781
    .local v10, "container":I
    invoke-virtual {v14, v13}, Lcom/android/launcher3/Workspace;->getCellLayoutId(Lcom/android/launcher3/CellLayout;)I

    move-result v9

    .line 2782
    .local v9, "screenId":I
    iget-object v0, v14, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v13}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, v14, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    .line 2783
    invoke-virtual {v14, v0}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)I

    move-result v0

    if-eq v9, v0, :cond_3

    iget-object v0, v14, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    .line 2784
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v14, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->EDIT_MODE:Lcom/android/launcher3/LauncherState;

    .line 2785
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2786
    invoke-virtual {v14, v9}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v0

    invoke-virtual {v14, v0}, Lcom/android/launcher3/Workspace;->snapToPage(I)Z

    .line 2789
    :cond_3
    instance-of v0, v11, Lcom/android/launcher3/PendingAddItemInfo;

    const/16 v28, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_f

    .line 2790
    move-object v7, v11

    check-cast v7, Lcom/android/launcher3/PendingAddItemInfo;

    .line 2792
    .local v7, "pendingInfo":Lcom/android/launcher3/PendingAddItemInfo;
    const/4 v15, 0x1

    .line 2793
    .local v15, "findNearestVacantCell":Z
    iget v0, v7, Lcom/android/launcher3/PendingAddItemInfo;->itemType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 2794
    aget v1, p1, v28

    aget v2, p1, v8

    iget-object v6, v14, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    move/from16 v3, v26

    move/from16 v4, v27

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v14, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 2796
    iget-object v1, v14, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v1, v28

    aget v1, v1, v8

    invoke-virtual {v13, v2, v1, v0}, Lcom/android/launcher3/CellLayout;->getDistanceFromWorkspaceCellVisualCenter(FF[I)F

    move-result v6

    .line 2798
    .local v6, "distance":F
    iget-object v1, v12, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v3, v14, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Workspace;->willCreateUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;[IFZ)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v12, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v1, v14, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 2799
    invoke-virtual {v14, v0, v13, v1, v6}, Lcom/android/launcher3/Workspace;->willAddToExistingUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;[IF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2801
    :cond_4
    const/4 v15, 0x0

    move/from16 v29, v15

    goto :goto_2

    .line 2805
    .end local v6    # "distance":F
    :cond_5
    move/from16 v29, v15

    .end local v15    # "findNearestVacantCell":Z
    .local v29, "findNearestVacantCell":Z
    :goto_2
    iget-object v6, v12, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 2806
    .local v6, "item":Lcom/android/launcher3/model/data/ItemInfo;
    const/4 v0, 0x0

    .line 2807
    .local v0, "updateWidgetSize":Z
    if-eqz v29, :cond_9

    .line 2808
    iget v1, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    .line 2809
    .local v1, "minSpanX":I
    iget v2, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    .line 2810
    .local v2, "minSpanY":I
    iget v3, v6, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    if-lez v3, :cond_6

    iget v3, v6, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    if-lez v3, :cond_6

    .line 2811
    iget v1, v6, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    .line 2812
    iget v2, v6, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    .line 2814
    :cond_6
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 2815
    .local v3, "resultSpan":[I
    iget-object v4, v14, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v5, v4, v28

    float-to-int v5, v5

    aget v4, v4, v8

    float-to-int v4, v4

    iget v15, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v8, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const/16 v22, 0x0

    move/from16 v31, v0

    .end local v0    # "updateWidgetSize":Z
    .local v31, "updateWidgetSize":Z
    iget-object v0, v14, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v25, 0x3

    move/from16 v20, v15

    move-object/from16 v15, p2

    move/from16 v16, v5

    move/from16 v17, v4

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v21, v8

    move-object/from16 v23, v0

    move-object/from16 v24, v3

    invoke-virtual/range {v15 .. v25}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v0

    iput-object v0, v14, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 2819
    aget v0, v3, v28

    iget v4, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-ne v0, v4, :cond_8

    const/4 v0, 0x1

    aget v4, v3, v0

    iget v0, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-eq v4, v0, :cond_7

    goto :goto_3

    :cond_7
    move/from16 v0, v31

    goto :goto_4

    .line 2820
    :cond_8
    :goto_3
    const/4 v0, 0x1

    .line 2822
    .end local v31    # "updateWidgetSize":Z
    .restart local v0    # "updateWidgetSize":Z
    :goto_4
    aget v4, v3, v28

    iput v4, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    .line 2823
    const/4 v4, 0x1

    aget v5, v3, v4

    iput v5, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move/from16 v31, v0

    goto :goto_5

    .line 2807
    .end local v1    # "minSpanX":I
    .end local v2    # "minSpanY":I
    .end local v3    # "resultSpan":[I
    :cond_9
    move/from16 v31, v0

    move v4, v8

    .line 2826
    .end local v0    # "updateWidgetSize":Z
    .restart local v31    # "updateWidgetSize":Z
    :goto_5
    new-instance v0, Lcom/android/launcher3/Workspace$4;

    move-object v15, v7

    .end local v7    # "pendingInfo":Lcom/android/launcher3/PendingAddItemInfo;
    .local v15, "pendingInfo":Lcom/android/launcher3/PendingAddItemInfo;
    move-object v7, v0

    move v5, v4

    move-object/from16 v8, p0

    move/from16 v30, v9

    .end local v9    # "screenId":I
    .local v30, "screenId":I
    move-object v9, v15

    move-object v3, v11

    .end local v11    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .local v3, "info":Lcom/android/launcher3/model/data/ItemInfo;
    move/from16 v11, v30

    move-object v2, v12

    move-object v12, v6

    move-object v1, v13

    move-object/from16 v13, p3

    invoke-direct/range {v7 .. v13}, Lcom/android/launcher3/Workspace$4;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/PendingAddItemInfo;IILcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/DropTarget$DragObject;)V

    move-object v4, v0

    .line 2843
    .local v4, "onAnimationCompleteRunnable":Ljava/lang/Runnable;
    iget v0, v15, Lcom/android/launcher3/PendingAddItemInfo;->itemType:I

    const/4 v7, 0x4

    if-eq v0, v7, :cond_a

    iget v0, v15, Lcom/android/launcher3/PendingAddItemInfo;->itemType:I

    const/4 v7, 0x5

    if-ne v0, v7, :cond_b

    :cond_a
    move/from16 v28, v5

    :cond_b
    move/from16 v8, v28

    .line 2846
    .local v8, "isWidget":Z
    if-eqz v8, :cond_c

    .line 2847
    move-object v0, v15

    check-cast v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v0, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    goto :goto_6

    :cond_c
    const/4 v0, 0x0

    :goto_6
    move-object v9, v0

    .line 2849
    .local v9, "finalView":Landroid/appwidget/AppWidgetHostView;
    if-eqz v9, :cond_d

    if-eqz v31, :cond_d

    .line 2850
    iget-object v0, v14, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget v5, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v9, v0, v5, v7}, Lcom/android/launcher3/widget/util/WidgetSizes;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Landroid/content/Context;II)V

    .line 2853
    :cond_d
    const/4 v0, 0x0

    .line 2854
    .local v0, "animationStyle":I
    if-eqz v8, :cond_e

    move-object v5, v15

    check-cast v5, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v5, v5, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-eqz v5, :cond_e

    move-object v5, v15

    check-cast v5, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    .line 2855
    invoke-virtual {v5}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->getHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->needsConfigure()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2856
    const/4 v0, 0x1

    move v11, v0

    goto :goto_7

    .line 2858
    :cond_e
    move v11, v0

    .end local v0    # "animationStyle":I
    .local v11, "animationStyle":I
    :goto_7
    iget-object v5, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v12, v1

    move-object v1, v3

    move-object v13, v2

    move-object/from16 v2, p2

    move-object/from16 v32, v3

    .end local v3    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .local v32, "info":Lcom/android/launcher3/model/data/ItemInfo;
    move-object v3, v5

    move v5, v11

    move-object/from16 v16, v6

    .end local v6    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .local v16, "item":Lcom/android/launcher3/model/data/ItemInfo;
    move-object v6, v9

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/Workspace;->animateWidgetDrop(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    .line 2860
    .end local v4    # "onAnimationCompleteRunnable":Ljava/lang/Runnable;
    .end local v8    # "isWidget":Z
    .end local v9    # "finalView":Landroid/appwidget/AppWidgetHostView;
    .end local v11    # "animationStyle":I
    .end local v15    # "pendingInfo":Lcom/android/launcher3/PendingAddItemInfo;
    .end local v16    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v29    # "findNearestVacantCell":Z
    .end local v31    # "updateWidgetSize":Z
    move-object/from16 v11, v32

    goto/16 :goto_9

    .line 2862
    .end local v30    # "screenId":I
    .end local v32    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .local v9, "screenId":I
    .local v11, "info":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_f
    move v5, v8

    move/from16 v30, v9

    move-object/from16 v32, v11

    move-object/from16 v33, v13

    move-object v13, v12

    move-object/from16 v12, v33

    .end local v9    # "screenId":I
    .end local v11    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .restart local v30    # "screenId":I
    .restart local v32    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    iget-object v0, v14, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;J)V

    .line 2863
    iget-object v0, v14, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getItemInflater()Lcom/android/launcher3/util/ItemInflater;

    move-result-object v0

    iget-object v1, v14, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 2864
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v1

    move-object/from16 v2, v32

    .end local v32    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .local v2, "info":Lcom/android/launcher3/model/data/ItemInfo;
    invoke-virtual {v0, v2, v1, v12}, Lcom/android/launcher3/util/ItemInflater;->inflateItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/ModelWriter;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 2865
    .local v8, "view":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    move-object v11, v0

    .end local v2    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .restart local v11    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    iput-object v0, v13, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 2869
    if-eqz p1, :cond_11

    .line 2870
    aget v1, p1, v28

    aget v2, p1, v5

    iget-object v6, v14, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    move/from16 v3, v26

    move/from16 v4, v27

    move v9, v5

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v14, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 2872
    iget-object v1, v14, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v1, v28

    aget v1, v1, v9

    invoke-virtual {v12, v2, v1, v0}, Lcom/android/launcher3/CellLayout;->getDistanceFromWorkspaceCellVisualCenter(FF[I)F

    move-result v15

    .line 2874
    .local v15, "distance":F
    iget-object v4, v14, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v8

    move v2, v10

    move-object/from16 v3, p2

    move v5, v15

    move-object/from16 v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/Workspace;->createUserFolderIfNecessary(Landroid/view/View;ILcom/android/launcher3/CellLayout;[IFZLcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2876
    return-void

    .line 2878
    :cond_10
    iget-object v3, v14, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, p2

    move v4, v15

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/DropTarget$DragObject;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2880
    return-void

    .line 2869
    .end local v15    # "distance":F
    :cond_11
    move v9, v5

    .line 2884
    :cond_12
    if-eqz p1, :cond_13

    .line 2886
    iget-object v0, v14, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v0, v28

    float-to-int v1, v1

    aget v0, v0, v9

    float-to-int v0, v0

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    iget-object v2, v14, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v24, 0x0

    const/16 v25, 0x3

    move-object/from16 v15, p2

    move/from16 v16, v1

    move/from16 v17, v0

    move-object/from16 v23, v2

    invoke-virtual/range {v15 .. v25}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v0

    iput-object v0, v14, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    goto :goto_8

    .line 2890
    :cond_13
    iget-object v0, v14, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v12, v0, v9, v9}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    .line 2894
    :goto_8
    iget-object v0, v14, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    iget-object v1, v14, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v4, v1, v28

    aget v5, v1, v9

    move-object v1, v11

    move v2, v10

    move/from16 v3, v30

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/model/ModelWriter;->addOrMoveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 2897
    iget-object v0, v14, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v4, v0, v28

    aget v5, v0, v9

    iget v6, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;IIIIII)V

    .line 2899
    invoke-virtual {v12, v8}, Lcom/android/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 2900
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    .line 2902
    iget-object v0, v13, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    if-eqz v0, :cond_14

    .line 2906
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->setFinalTransitionTransform()V

    .line 2907
    iget-object v0, v14, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    iget-object v1, v13, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0, v1, v8, v14}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;Landroid/view/View;Landroid/view/View;)V

    .line 2908
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->resetTransitionTransform()V

    .line 2910
    :cond_14
    iget-object v0, v14, Lcom/android/launcher3/Workspace;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, v13, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, v13, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROP_COMPLETED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 2911
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 2914
    .end local v8    # "view":Landroid/view/View;
    :goto_9
    return-void
.end method

.method private onEndStateTransition()V
    .locals 1

    .line 1549
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    .line 1550
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mForceDrawAdjacentPages:Z

    .line 1551
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    .line 1553
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    .line 1554
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->updateAccessibilityFlags()V

    .line 1555
    return-void
.end method

.method private onStartStateTransition()V
    .locals 1

    .line 1542
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    .line 1543
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    .line 1545
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    .line 1546
    return-void
.end method

.method private resetEdgeFallbackState()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mEdgeFallbackPage:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/Workspace;->mEdgeFallbackTime:J

    return-void
.end method

.method private setDropLayoutForDragObject(Lcom/android/launcher3/DropTarget$DragObject;FF)Z
    .locals 6
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .line 2546
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x0

    .line 2547
    .local v0, "layout":Lcom/android/launcher3/CellLayout;
    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->shouldUseHotseatAsDropLayout(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2548
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    goto :goto_1

    .line 2549
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->isDragObjectOverSmartSpace(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2553
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/Workspace;->checkDragObjectIsOverNeighbourPages(Lcom/android/launcher3/DropTarget$DragObject;F)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 2555
    if-nez v0, :cond_2

    .line 2557
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getVisiblePageIndices()Lcom/android/launcher3/util/IntSet;

    move-result-object v1

    .line 2558
    .local v1, "visiblePageIndices":Lcom/android/launcher3/util/IntSet;
    invoke-virtual {v1}, Lcom/android/launcher3/util/IntSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2559
    .local v3, "visiblePageIndex":I
    iget v4, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    int-to-float v4, v4

    iget v5, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    int-to-float v5, v5

    invoke-direct {p0, v3, v4, v5}, Lcom/android/launcher3/Workspace;->verifyInsidePage(IFF)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 2560
    if-eqz v0, :cond_1

    goto :goto_1

    .line 2561
    .end local v3    # "visiblePageIndex":I
    :cond_1
    goto :goto_0

    .line 2566
    .end local v1    # "visiblePageIndices":Lcom/android/launcher3/util/IntSet;
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eq v0, v1, :cond_3

    .line 2567
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setCurrentDropLayout(Lcom/android/launcher3/CellLayout;)V

    .line 2568
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/CellLayout;)V

    .line 2569
    const/4 v1, 0x1

    return v1

    .line 2571
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method private setPageIndicatorInset()V
    .locals 5

    .line 357
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 359
    .local v0, "grid":Lcom/android/launcher3/DeviceProfile;
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mPageIndicator:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 362
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, v0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    .line 363
    .local v2, "padding":Landroid/graphics/Rect;
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 364
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v0, Lcom/android/launcher3/DeviceProfile;->workspaceCellPaddingXPx:I

    add-int/2addr v3, v4

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 365
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v0, Lcom/android/launcher3/DeviceProfile;->workspaceCellPaddingXPx:I

    add-int/2addr v3, v4

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 366
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 368
    :cond_0
    const/4 v3, 0x0

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 369
    const/16 v3, 0x51

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 370
    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 372
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mPageIndicator:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    return-void
.end method

.method private setupLayoutTransition()V
    .locals 6

    .line 557
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 559
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 560
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 563
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    sget-object v3, Lcom/android/app/animation/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    .line 564
    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v3, v4, v5}, Lcom/android/app/animation/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v3

    .line 563
    invoke-virtual {v0, v1, v3}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 565
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    sget-object v1, Lcom/android/app/animation/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    .line 566
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v5, v3}, Lcom/android/app/animation/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 565
    invoke-virtual {v0, v2, v1}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 568
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 569
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 570
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 571
    return-void
.end method

.method private shouldConsumeTouch(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 1132
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceIconsCanBeDragged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1133
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1132
    :goto_1
    return v0
.end method

.method private shouldUseHotseatAsDropLayout(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .locals 4
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 2575
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 2576
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2577
    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->isDragWidget(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2580
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    .line 2581
    .local v0, "hotseatShortcuts":Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/Workspace;->getViewBoundsRelativeToWorkspace(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2582
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    iget v2, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    iget v3, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    return v1

    .line 2578
    .end local v0    # "hotseatShortcuts":Landroid/view/View;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private transitionStateShouldAllowDrop()Z
    .locals 2

    .line 1773
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    const/high16 v1, 0x3e800000    # 0.25f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 1774
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceIconsCanBeDragged()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1773
    :goto_0
    return v0
.end method

.method private updateAccessibilityFlags(ILcom/android/launcher3/CellLayout;)V
    .locals 1
    .param p1, "accessibilityFlag"    # I
    .param p2, "page"    # Lcom/android/launcher3/CellLayout;

    .line 1623
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/android/launcher3/CellLayout;->setImportantForAccessibility(I)V

    .line 1624
    invoke-virtual {p2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setImportantForAccessibility(I)V

    .line 1625
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/CellLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1626
    invoke-virtual {p2, v0}, Lcom/android/launcher3/CellLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1627
    return-void
.end method

.method private updateCellLayoutMeasures()V
    .locals 3

    .line 376
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    .line 377
    .local v0, "padding":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    new-instance v2, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda12;-><init>(Lcom/android/launcher3/Workspace;Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/IntSparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 381
    return-void
.end method

.method private updateChildrenLayersEnabled()V
    .locals 4

    .line 1480
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isPageInTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1482
    .local v0, "enableChildrenLayers":Z
    :goto_1
    iget-boolean v2, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    if-eq v0, v2, :cond_3

    .line 1483
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    .line 1484
    if-eqz v0, :cond_2

    .line 1485
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->enableHwLayersOnVisiblePages()V

    goto :goto_3

    .line 1487
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1488
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    .line 1489
    .local v3, "cl":Lcom/android/launcher3/CellLayout;
    invoke-virtual {v3, v1}, Lcom/android/launcher3/CellLayout;->enableHardwareLayer(Z)V

    .line 1487
    .end local v3    # "cl":Lcom/android/launcher3/CellLayout;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1493
    .end local v2    # "i":I
    :cond_3
    :goto_3
    return-void
.end method

.method private updatePageAlphaValues()V
    .locals 7

    .line 1399
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1400
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1401
    .local v0, "screenCenter":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1402
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    .line 1403
    .local v2, "child":Lcom/android/launcher3/CellLayout;
    if-eqz v2, :cond_2

    .line 1404
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/launcher3/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v3

    .line 1405
    .local v3, "scrollProgress":F
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float/2addr v4, v5

    .line 1406
    .local v4, "alpha":F
    iget-boolean v5, p0, Lcom/android/launcher3/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    if-eqz v5, :cond_0

    .line 1407
    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setAlpha(F)V

    goto :goto_2

    .line 1410
    :cond_0
    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    .line 1411
    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-lez v6, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    .line 1412
    :cond_1
    const/4 v6, 0x4

    .line 1410
    :goto_1
    invoke-virtual {v5, v6}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setImportantForAccessibility(I)V

    .line 1401
    .end local v2    # "child":Lcom/android/launcher3/CellLayout;
    .end local v3    # "scrollProgress":F
    .end local v4    # "alpha":F
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1417
    .end local v0    # "screenCenter":I
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method private updatePageScrollValues()V
    .locals 4

    .line 1420
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1421
    .local v0, "screenCenter":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1422
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    .line 1423
    .local v2, "child":Lcom/android/launcher3/CellLayout;
    if-eqz v2, :cond_0

    .line 1424
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/launcher3/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v3

    .line 1425
    .local v3, "scrollProgress":F
    invoke-virtual {v2, v3}, Lcom/android/launcher3/CellLayout;->setScrollProgress(F)V

    .line 1421
    .end local v2    # "child":Lcom/android/launcher3/CellLayout;
    .end local v3    # "scrollProgress":F
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1428
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private updateWorkspaceWidgetsSizes()V
    .locals 11

    .line 384
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v0

    .line 385
    .local v0, "numberOfScreens":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 386
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    .line 387
    invoke-virtual {v3, v1}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/IntSparseArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    .line 388
    .local v2, "shortcutAndWidgetContainer":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    invoke-virtual {v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    .line 389
    .local v3, "shortcutsAndWidgetCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v3, :cond_1

    .line 390
    invoke-virtual {v2, v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 391
    .local v5, "view":Landroid/view/View;
    instance-of v6, v5, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v6, :cond_0

    .line 392
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v6, :cond_0

    .line 393
    nop

    .line 394
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 395
    .local v6, "launcherAppWidgetInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    move-object v7, v5

    check-cast v7, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget-object v8, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget v9, v6, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    iget v10, v6, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    invoke-static {v7, v8, v9, v10}, Lcom/android/launcher3/widget/util/WidgetSizes;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Landroid/content/Context;II)V

    .line 389
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "launcherAppWidgetInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 385
    .end local v2    # "shortcutAndWidgetContainer":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    .end local v3    # "shortcutsAndWidgetCount":I
    .end local v4    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 400
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private verifyInsidePage(IFF)Lcom/android/launcher3/CellLayout;
    .locals 2
    .param p1, "pageNo"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 2641
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2642
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 2643
    .local v0, "cl":Lcom/android/launcher3/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getLeft()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getRight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    .line 2644
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getTop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p3, v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p3, v1

    if-gtz v1, :cond_0

    .line 2646
    return-object v0

    .line 2649
    .end local v0    # "cl":Lcom/android/launcher3/CellLayout;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private workspaceInModalState()Z
    .locals 2

    .line 1464
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private workspaceInScrollableState()Z
    .locals 2

    .line 1468
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->EDIT_MODE:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1469
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1468
    :goto_1
    return v0
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .locals 26
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 1783
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v15, v7, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    .line 1784
    .local v15, "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    iget-object v0, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    const/16 v20, 0x1

    if-eq v0, v7, :cond_7

    .line 1786
    const/16 v21, 0x0

    if-nez v15, :cond_0

    .line 1787
    return v21

    .line 1789
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->transitionStateShouldAllowDrop()Z

    move-result v0

    if-nez v0, :cond_1

    return v21

    .line 1791
    :cond_1
    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v8, v0}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    .line 1794
    invoke-direct {v7, v15, v0}, Lcom/android/launcher3/Workspace;->mapPointFromDropLayout(Lcom/android/launcher3/CellLayout;[F)V

    .line 1798
    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/celllayout/CellInfo;

    if-eqz v0, :cond_2

    .line 1799
    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/celllayout/CellInfo;

    .line 1800
    .local v0, "dragCellInfo":Lcom/android/launcher3/celllayout/CellInfo;
    iget v1, v0, Lcom/android/launcher3/celllayout/CellInfo;->spanX:I

    .line 1801
    .local v1, "spanX":I
    iget v0, v0, Lcom/android/launcher3/celllayout/CellInfo;->spanY:I

    .line 1802
    .local v0, "spanY":I
    move/from16 v22, v0

    move/from16 v23, v1

    goto :goto_0

    .line 1803
    .end local v0    # "spanY":I
    .end local v1    # "spanX":I
    :cond_2
    iget-object v0, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    .line 1804
    .restart local v1    # "spanX":I
    iget-object v0, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move/from16 v22, v0

    move/from16 v23, v1

    .line 1807
    .end local v1    # "spanX":I
    .local v22, "spanY":I
    .local v23, "spanX":I
    :goto_0
    move/from16 v0, v23

    .line 1808
    .local v0, "minSpanX":I
    move/from16 v1, v22

    .line 1809
    .local v1, "minSpanY":I
    iget-object v2, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v2, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v2, :cond_3

    .line 1810
    iget-object v2, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget v0, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanX:I

    .line 1811
    iget-object v2, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget v1, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanY:I

    move/from16 v24, v0

    move/from16 v25, v1

    goto :goto_1

    .line 1809
    :cond_3
    move/from16 v24, v0

    move/from16 v25, v1

    .line 1814
    .end local v0    # "minSpanX":I
    .end local v1    # "minSpanY":I
    .local v24, "minSpanX":I
    .local v25, "minSpanY":I
    :goto_1
    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v0, v21

    float-to-int v1, v1

    aget v0, v0, v20

    float-to-int v2, v0

    iget-object v6, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    move/from16 v3, v24

    move/from16 v4, v25

    move-object v5, v15

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 1817
    iget-object v1, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v1, v21

    aget v1, v1, v20

    invoke-virtual {v15, v2, v1, v0}, Lcom/android/launcher3/CellLayout;->getDistanceFromWorkspaceCellVisualCenter(FF[I)F

    move-result v6

    .line 1819
    .local v6, "distance":F
    iget-boolean v0, v7, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    if-eqz v0, :cond_4

    iget-object v1, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v3, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v2, v15

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Workspace;->willCreateUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;[IFZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1821
    return v20

    .line 1824
    :cond_4
    iget-boolean v0, v7, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    if-eqz v0, :cond_5

    iget-object v0, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v1, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v7, v0, v15, v1, v6}, Lcom/android/launcher3/Workspace;->willAddToExistingUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;[IF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1826
    return v20

    .line 1829
    :cond_5
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1830
    .local v0, "resultSpan":[I
    iget-object v1, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v1, v21

    float-to-int v10, v2

    aget v1, v1, v20

    float-to-int v11, v1

    const/16 v16, 0x0

    iget-object v1, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v19, 0x4

    move-object v9, v15

    move/from16 v12, v24

    move/from16 v13, v25

    move/from16 v14, v23

    move-object v2, v15

    .end local v15    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    .local v2, "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    move/from16 v15, v22

    move-object/from16 v17, v1

    move-object/from16 v18, v0

    invoke-virtual/range {v9 .. v19}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v1

    iput-object v1, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 1833
    aget v3, v1, v21

    if-ltz v3, :cond_6

    aget v1, v1, v20

    if-ltz v1, :cond_6

    move/from16 v1, v20

    goto :goto_2

    :cond_6
    move/from16 v1, v21

    .line 1836
    .local v1, "foundCell":Z
    :goto_2
    if-nez v1, :cond_8

    .line 1837
    iget-object v3, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v4, v8, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-virtual {v7, v2, v3, v4}, Lcom/android/launcher3/Workspace;->onNoCellFound(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V

    .line 1838
    return v21

    .line 1784
    .end local v0    # "resultSpan":[I
    .end local v1    # "foundCell":Z
    .end local v2    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    .end local v6    # "distance":F
    .end local v22    # "spanY":I
    .end local v23    # "spanX":I
    .end local v24    # "minSpanX":I
    .end local v25    # "minSpanY":I
    .restart local v15    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    :cond_7
    move-object v2, v15

    .line 1842
    .end local v15    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    .restart local v2    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    :cond_8
    invoke-virtual {v7, v2}, Lcom/android/launcher3/Workspace;->getCellLayoutId(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    .line 1843
    .local v0, "screenId":I
    sget-object v1, Lcom/android/launcher3/Workspace;->EXTRA_EMPTY_SCREEN_IDS:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1844
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->commitExtraEmptyScreens()Lcom/android/launcher3/util/IntSet;

    .line 1847
    :cond_9
    return v20
.end method

.method public addExtraEmptyScreens()V
    .locals 1

    .line 752
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    new-instance v0, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->forEachExtraEmptyPageId(Ljava/util/function/Consumer;)V

    .line 757
    return-void
.end method

.method public addOverlayCallback(Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayCallbacks;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayCallbacks;

    .line 1330
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mOverlayCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1331
    iget v0, p0, Lcom/android/launcher3/Workspace;->mOverlayProgress:F

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayCallbacks;->onOverlayScrollChanged(F)V

    .line 1332
    return-void
.end method

.method addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/DropTarget$DragObject;Z)Z
    .locals 6
    .param p1, "newView"    # Landroid/view/View;
    .param p2, "target"    # Lcom/android/launcher3/CellLayout;
    .param p3, "targetCell"    # [I
    .param p4, "distance"    # F
    .param p5, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p6, "external"    # Z

    .line 1970
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p2, p3}, Lcom/android/launcher3/CellLayout;->getFolderCreationRadius([I)F

    move-result v0

    cmpl-float v0, p4, v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    return v1

    .line 1972
    :cond_0
    aget v0, p3, v1

    const/4 v2, 0x1

    aget v3, p3, v2

    invoke-virtual {p2, v0, v3}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 1973
    .local v0, "dropOverView":Landroid/view/View;
    iget-boolean v3, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    if-nez v3, :cond_1

    return v1

    .line 1974
    :cond_1
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 1976
    instance-of v3, v0, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v3, :cond_3

    .line 1977
    move-object v3, v0

    check-cast v3, Lcom/android/launcher3/folder/FolderIcon;

    .line 1978
    .local v3, "fi":Lcom/android/launcher3/folder/FolderIcon;
    iget-object v4, p5, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/FolderIcon;->acceptDrop(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1979
    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {v4}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v4

    iget-object v5, v3, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-interface {v4, v5}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v4

    iget-object v5, p5, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-interface {v4, v5}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROP_COMPLETED_ON_FOLDER_ICON:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 1980
    invoke-interface {v4, v5}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 1981
    invoke-virtual {v3, p5, v1}, Lcom/android/launcher3/folder/FolderIcon;->onDrop(Lcom/android/launcher3/DropTarget$DragObject;Z)V

    .line 1983
    if-nez p6, :cond_2

    .line 1984
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/celllayout/CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/celllayout/CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/celllayout/CellInfo;

    iget-object v4, v4, Lcom/android/launcher3/celllayout/CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 1986
    :cond_2
    return v2

    .line 1989
    .end local v3    # "fi":Lcom/android/launcher3/folder/FolderIcon;
    :cond_3
    return v1
.end method

.method public animateWidgetDrop(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V
    .locals 25
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "cellLayout"    # Lcom/android/launcher3/CellLayout;
    .param p3, "dragView"    # Lcom/android/launcher3/dragndrop/DragView;
    .param p4, "onCompleteRunnable"    # Ljava/lang/Runnable;
    .param p5, "animationType"    # I
    .param p6, "finalView"    # Landroid/view/View;
    .param p7, "external"    # Z

    .line 2992
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    move-object/from16 v14, p0

    move-object/from16 v13, p1

    move/from16 v12, p5

    move-object/from16 v11, p6

    const/4 v9, 0x2

    new-array v10, v9, [I

    .line 2993
    .local v10, "finalPos":[I
    new-array v15, v9, [F

    .line 2994
    .local v15, "scaleXY":[F
    instance-of v0, v13, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    const/4 v8, 0x1

    xor-int/lit8 v7, v0, 0x1

    .line 2995
    .local v7, "scalePreview":Z
    iget-object v6, v14, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v15

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/Workspace;->getFinalPositionForDropAnimation([I[FLcom/android/launcher3/dragndrop/DragView;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/model/data/ItemInfo;[IZLandroid/view/View;)V

    .line 2998
    iget-object v0, v14, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2999
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/android/launcher3/R$integer;->config_dropAnimMaxDuration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    add-int/lit16 v1, v1, -0xc8

    .line 3001
    .local v1, "duration":I
    iget v2, v13, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v3, 0x4

    const/4 v8, 0x0

    if-eq v2, v3, :cond_1

    iget v2, v13, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v8

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 3003
    .local v2, "isWidget":Z
    :goto_1
    if-eq v12, v9, :cond_3

    if-eqz p7, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v6, p3

    goto :goto_3

    :cond_3
    :goto_2
    if-eqz v11, :cond_5

    .line 3005
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object v4

    if-eq v4, v11, :cond_4

    .line 3006
    invoke-direct {v14, v13, v11}, Lcom/android/launcher3/Workspace;->createWidgetDrawable(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 3007
    .local v4, "crossFadeDrawable":Landroid/graphics/drawable/Drawable;
    int-to-float v5, v1

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    move-object/from16 v6, p3

    invoke-virtual {v6, v4, v5}, Lcom/android/launcher3/dragndrop/DragView;->crossFadeContent(Landroid/graphics/drawable/Drawable;I)V

    .line 3008
    .end local v4    # "crossFadeDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x1

    goto :goto_4

    .line 3005
    :cond_4
    move-object/from16 v6, p3

    goto :goto_3

    .line 3003
    :cond_5
    move-object/from16 v6, p3

    .line 3008
    :goto_3
    if-eqz v2, :cond_6

    if-eqz p7, :cond_6

    .line 3009
    aget v4, v15, v8

    const/4 v5, 0x1

    aget v9, v15, v5

    invoke-static {v4, v9}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v15, v5

    aput v4, v15, v8

    goto :goto_4

    .line 3008
    :cond_6
    const/4 v5, 0x1

    .line 3012
    :goto_4
    iget-object v4, v14, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v4

    .line 3013
    .local v4, "dragLayer":Lcom/android/launcher3/dragndrop/DragLayer;
    if-ne v12, v3, :cond_7

    .line 3014
    iget-object v3, v14, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v3

    const/16 v18, 0x0

    const v19, 0x3dcccccd    # 0.1f

    const v20, 0x3dcccccd    # 0.1f

    const/16 v21, 0x0

    move-object/from16 v24, v15

    .end local v15    # "scaleXY":[F
    .local v24, "scaleXY":[F
    move-object v15, v3

    move-object/from16 v16, p3

    move-object/from16 v17, v10

    move-object/from16 v22, p4

    move/from16 v23, v1

    invoke-virtual/range {v15 .. v23}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;[IFFFILjava/lang/Runnable;I)V

    move-object/from16 v20, v10

    goto :goto_6

    .line 3018
    .end local v24    # "scaleXY":[F
    .restart local v15    # "scaleXY":[F
    :cond_7
    move-object/from16 v24, v15

    .end local v15    # "scaleXY":[F
    .restart local v24    # "scaleXY":[F
    if-ne v12, v5, :cond_8

    .line 3019
    const/4 v3, 0x2

    .local v3, "endStyle":I
    goto :goto_5

    .line 3021
    .end local v3    # "endStyle":I
    :cond_8
    const/4 v3, 0x0

    .line 3024
    .restart local v3    # "endStyle":I
    :goto_5
    new-instance v15, Lcom/android/launcher3/Workspace$5;

    move-object/from16 v9, p4

    invoke-direct {v15, v14, v11, v9}, Lcom/android/launcher3/Workspace$5;-><init>(Lcom/android/launcher3/Workspace;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 3035
    .local v15, "onComplete":Ljava/lang/Runnable;
    aget v16, v10, v8

    aget v17, v10, v5

    const/high16 v18, 0x3f800000    # 1.0f

    aget v19, v24, v8

    aget v5, v24, v5

    move-object v8, v4

    move-object/from16 v9, p3

    move-object/from16 v20, v10

    .end local v10    # "finalPos":[I
    .local v20, "finalPos":[I
    move/from16 v10, v16

    move/from16 v11, v17

    move/from16 v12, v18

    move/from16 v13, v19

    move v14, v5

    move/from16 v16, v3

    move/from16 v17, v1

    move-object/from16 v18, p0

    invoke-virtual/range {v8 .. v18}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;IIFFFLjava/lang/Runnable;IILandroid/view/View;)V

    .line 3039
    .end local v3    # "endStyle":I
    .end local v15    # "onComplete":Ljava/lang/Runnable;
    :goto_6
    return-void
.end method

.method public announceForAccessibility(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 1391
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1392
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1394
    :cond_0
    return-void
.end method

.method public beginDragShared(Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/graphics/DragPreviewProvider;Lcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;
    .locals 23
    .param p1, "child"    # Landroid/view/View;
    .param p2, "draggableView"    # Lcom/android/launcher3/dragndrop/DraggableView;
    .param p3, "source"    # Lcom/android/launcher3/DragSource;
    .param p4, "dragObject"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p5, "previewProvider"    # Lcom/android/launcher3/graphics/DragPreviewProvider;
    .param p6, "dragOptions"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 1674
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v14, p6

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1675
    .local v3, "iconScale":F
    instance-of v4, v1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v4, :cond_0

    .line 1676
    move-object v4, v1

    check-cast v4, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v4}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v4

    .line 1677
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    instance-of v5, v4, Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v5, :cond_0

    .line 1678
    move-object v5, v4

    check-cast v5, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-virtual {v5}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getAnimatedScale()F

    move-result v3

    move v15, v3

    goto :goto_0

    .line 1683
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    move v15, v3

    .end local v3    # "iconScale":F
    .local v15, "iconScale":F
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->clearFocus()V

    .line 1684
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 1685
    instance-of v4, v1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v4, :cond_1

    .line 1686
    move-object v4, v1

    check-cast v4, Lcom/android/launcher3/BubbleTextView;

    .line 1687
    .local v4, "icon":Lcom/android/launcher3/BubbleTextView;
    invoke-virtual {v4}, Lcom/android/launcher3/BubbleTextView;->clearPressedBackground()V

    .line 1690
    .end local v4    # "icon":Lcom/android/launcher3/BubbleTextView;
    :cond_1
    if-nez p2, :cond_2

    instance-of v4, v1, Lcom/android/launcher3/dragndrop/DraggableView;

    if-eqz v4, :cond_2

    .line 1691
    move-object v4, v1

    check-cast v4, Lcom/android/launcher3/dragndrop/DraggableView;

    move-object v13, v4

    .end local p2    # "draggableView":Lcom/android/launcher3/dragndrop/DraggableView;
    .local v4, "draggableView":Lcom/android/launcher3/dragndrop/DraggableView;
    goto :goto_1

    .line 1694
    .end local v4    # "draggableView":Lcom/android/launcher3/dragndrop/DraggableView;
    .restart local p2    # "draggableView":Lcom/android/launcher3/dragndrop/DraggableView;
    :cond_2
    move-object/from16 v13, p2

    .end local p2    # "draggableView":Lcom/android/launcher3/dragndrop/DraggableView;
    .local v13, "draggableView":Lcom/android/launcher3/dragndrop/DraggableView;
    :goto_1
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/graphics/DragPreviewProvider;->getContentView()Landroid/view/View;

    move-result-object v12

    .line 1698
    .local v12, "contentView":Landroid/view/View;
    if-nez v12, :cond_3

    .line 1699
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/graphics/DragPreviewProvider;->createDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1700
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/graphics/DragPreviewProvider;->getScaleAndPosition(Landroid/graphics/drawable/Drawable;[I)F

    move-result v5

    move-object/from16 v16, v4

    move/from16 v17, v5

    .local v5, "scale":F
    goto :goto_2

    .line 1702
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "scale":F
    :cond_3
    const/4 v4, 0x0

    .line 1703
    .restart local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    invoke-virtual {v2, v12, v5}, Lcom/android/launcher3/graphics/DragPreviewProvider;->getScaleAndPosition(Landroid/view/View;[I)F

    move-result v5

    move-object/from16 v16, v4

    move/from16 v17, v5

    .line 1706
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v16, "drawable":Landroid/graphics/drawable/Drawable;
    .local v17, "scale":F
    :goto_2
    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aget v3, v4, v3

    .line 1707
    .local v3, "dragLayerX":I
    const/4 v5, 0x1

    aget v4, v4, v5

    .line 1709
    .local v4, "dragLayerY":I
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object v11, v5

    .line 1711
    .local v11, "dragRect":Landroid/graphics/Rect;
    if-eqz v13, :cond_4

    .line 1712
    invoke-interface {v13, v11}, Lcom/android/launcher3/dragndrop/DraggableView;->getSourceVisualDragBounds(Landroid/graphics/Rect;)V

    .line 1713
    iget v5, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    .line 1717
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eqz v5, :cond_5

    .line 1718
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iput-object v5, v0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 1721
    :cond_5
    instance-of v5, v1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v5, :cond_7

    .line 1722
    move-object v5, v1

    check-cast v5, Lcom/android/launcher3/BubbleTextView;

    .line 1723
    .local v5, "btv":Lcom/android/launcher3/BubbleTextView;
    iget-boolean v6, v14, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-nez v6, :cond_6

    .line 1724
    invoke-virtual {v5}, Lcom/android/launcher3/BubbleTextView;->startLongPressAction()Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    move-result-object v6

    iput-object v6, v14, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    .line 1726
    :cond_6
    invoke-virtual {v5}, Lcom/android/launcher3/BubbleTextView;->isDisplaySearchResult()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1727
    iget v6, v0, Lcom/android/launcher3/Workspace;->mAllAppsIconSize:I

    int-to-float v6, v6

    invoke-virtual {v5}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, v14, Lcom/android/launcher3/dragndrop/DragOptions;->preDragEndScale:F

    .line 1731
    .end local v5    # "btv":Lcom/android/launcher3/BubbleTextView;
    :cond_7
    iget-object v5, v14, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    if-eqz v5, :cond_9

    .line 1732
    iget-object v5, v14, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    invoke-interface {v5}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->getDragOffset()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    .line 1733
    .local v5, "xDragOffSet":I
    iget-object v6, v14, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    invoke-interface {v6}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->getDragOffset()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    .line 1734
    .local v6, "yDragOffSet":I
    if-nez v5, :cond_8

    if-eqz v6, :cond_9

    .line 1735
    :cond_8
    add-int/2addr v3, v5

    .line 1736
    add-int/2addr v4, v6

    move/from16 v18, v3

    move/from16 v19, v4

    goto :goto_3

    .line 1741
    .end local v5    # "xDragOffSet":I
    .end local v6    # "yDragOffSet":I
    :cond_9
    move/from16 v18, v3

    move/from16 v19, v4

    .end local v3    # "dragLayerX":I
    .end local v4    # "dragLayerY":I
    .local v18, "dragLayerX":I
    .local v19, "dragLayerY":I
    :goto_3
    instance-of v3, v12, Landroid/view/View;

    if-eqz v3, :cond_b

    .line 1742
    instance-of v3, v12, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v3, :cond_a

    .line 1743
    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    new-instance v4, Lcom/android/launcher3/widget/dragndrop/AppWidgetHostViewDragListener;

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v4, v5}, Lcom/android/launcher3/widget/dragndrop/AppWidgetHostViewDragListener;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 1745
    :cond_a
    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    mul-float v20, v17, v15

    move-object v4, v12

    move-object v5, v13

    move/from16 v6, v18

    move/from16 v7, v19

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object v10, v11

    move-object/from16 v21, v11

    .end local v11    # "dragRect":Landroid/graphics/Rect;
    .local v21, "dragRect":Landroid/graphics/Rect;
    move/from16 v11, v20

    move-object/from16 v20, v12

    .end local v12    # "contentView":Landroid/view/View;
    .local v20, "contentView":Landroid/view/View;
    move/from16 v12, v17

    move-object/from16 v22, v13

    .end local v13    # "draggableView":Lcom/android/launcher3/dragndrop/DraggableView;
    .local v22, "draggableView":Lcom/android/launcher3/dragndrop/DraggableView;
    move-object/from16 v13, p6

    invoke-virtual/range {v3 .. v13}, Lcom/android/launcher3/dragndrop/DragController;->startDrag(Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    move-result-object v3

    .local v3, "dv":Lcom/android/launcher3/dragndrop/DragView;
    goto :goto_4

    .line 1757
    .end local v3    # "dv":Lcom/android/launcher3/dragndrop/DragView;
    .end local v20    # "contentView":Landroid/view/View;
    .end local v21    # "dragRect":Landroid/graphics/Rect;
    .end local v22    # "draggableView":Lcom/android/launcher3/dragndrop/DraggableView;
    .restart local v11    # "dragRect":Landroid/graphics/Rect;
    .restart local v12    # "contentView":Landroid/view/View;
    .restart local v13    # "draggableView":Lcom/android/launcher3/dragndrop/DraggableView;
    :cond_b
    move-object/from16 v21, v11

    move-object/from16 v20, v12

    move-object/from16 v22, v13

    .end local v11    # "dragRect":Landroid/graphics/Rect;
    .end local v12    # "contentView":Landroid/view/View;
    .end local v13    # "draggableView":Lcom/android/launcher3/dragndrop/DraggableView;
    .restart local v20    # "contentView":Landroid/view/View;
    .restart local v21    # "dragRect":Landroid/graphics/Rect;
    .restart local v22    # "draggableView":Lcom/android/launcher3/dragndrop/DraggableView;
    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    mul-float v11, v17, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v22

    move/from16 v6, v18

    move/from16 v7, v19

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, v21

    move/from16 v12, v17

    move-object/from16 v13, p6

    invoke-virtual/range {v3 .. v13}, Lcom/android/launcher3/dragndrop/DragController;->startDrag(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    move-result-object v3

    .line 1769
    .restart local v3    # "dv":Lcom/android/launcher3/dragndrop/DragView;
    :goto_4
    return-object v3
.end method

.method public beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "source"    # Lcom/android/launcher3/DragSource;
    .param p3, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 1656
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1657
    .local v0, "dragObject":Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_0

    .line 1663
    const/4 v4, 0x0

    move-object v6, v0

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    new-instance v7, Lcom/android/launcher3/graphics/DragPreviewProvider;

    invoke-direct {v7, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider;-><init>(Landroid/view/View;)V

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/graphics/DragPreviewProvider;Lcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    .line 1665
    return-void

    .line 1658
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drag started with a view that has no tag set. This will cause a crash (issue 11627249) down the line. View: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1660
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1661
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public bindAndInitFirstWorkspaceScreen()V
    .locals 1

    .line 599
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mFirstPagePinnedItem:Landroid/view/View;

    .line 600
    return-void
.end method

.method protected canAnnouncePageDescription()Z
    .locals 2

    .line 3490
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget v0, p0, Lcom/android/launcher3/Workspace;->mOverlayProgress:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected cleanupFolderCreation()V
    .locals 1

    .line 2383
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    if-eqz v0, :cond_0

    .line 2384
    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->animateToRest()V

    .line 2386
    :cond_0
    return-void
.end method

.method protected cleanupReorder(Z)V
    .locals 1
    .param p1, "cancelAlarm"    # Z

    .line 2397
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    if-eqz p1, :cond_0

    .line 2398
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 2400
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/Workspace;->mLastReorderX:I

    .line 2401
    iput v0, p0, Lcom/android/launcher3/Workspace;->mLastReorderY:I

    .line 2402
    return-void
.end method

.method clearDropTargets()V
    .locals 1

    .line 3284
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    new-instance v0, Lcom/android/launcher3/Workspace$8;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Workspace$8;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    .line 3294
    return-void
.end method

.method public commitExtraEmptyScreens()Lcom/android/launcher3/util/IntSet;
    .locals 2

    .line 902
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 904
    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    return-object v0

    .line 907
    :cond_0
    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    .line 908
    .local v0, "extraEmptyPageIds":Lcom/android/launcher3/util/IntSet;
    new-instance v1, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda6;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/util/IntSet;)V

    invoke-direct {p0, v1}, Lcom/android/launcher3/Workspace;->forEachExtraEmptyPageId(Ljava/util/function/Consumer;)V

    .line 911
    return-object v0
.end method

.method public computeScroll()V
    .locals 1

    .line 1384
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->computeScroll()V

    .line 1385
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->syncWithScroll()V

    .line 1386
    return-void
.end method

.method public containsScreenId(I)Z
    .locals 1
    .param p1, "screenId"    # I

    .line 743
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v0

    return v0
.end method

.method public createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    .line 1612
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getImportantForAccessibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1617
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 1619
    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method createUserFolderIfNecessary(Landroid/view/View;ILcom/android/launcher3/CellLayout;[IFZLcom/android/launcher3/DropTarget$DragObject;)Z
    .locals 21
    .param p1, "newView"    # Landroid/view/View;
    .param p2, "container"    # I
    .param p3, "target"    # Lcom/android/launcher3/CellLayout;
    .param p4, "targetCell"    # [I
    .param p5, "distance"    # F
    .param p6, "external"    # Z
    .param p7, "d"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 1913
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v7, p3

    move-object/from16 v15, p7

    invoke-virtual/range {p3 .. p4}, Lcom/android/launcher3/CellLayout;->getFolderCreationRadius([I)F

    move-result v1

    cmpl-float v1, p5, v1

    const/4 v8, 0x0

    if-lez v1, :cond_0

    return v8

    .line 1914
    :cond_0
    aget v1, p4, v8

    const/16 v16, 0x1

    aget v2, p4, v16

    invoke-virtual {v7, v1, v2}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v14

    .line 1916
    .local v14, "v":Landroid/view/View;
    const/4 v1, 0x0

    .line 1917
    .local v1, "hasntMoved":Z
    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/celllayout/CellInfo;

    if-eqz v2, :cond_2

    .line 1918
    iget-object v2, v2, Lcom/android/launcher3/celllayout/CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    .line 1919
    .local v2, "cellParent":Lcom/android/launcher3/CellLayout;
    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/celllayout/CellInfo;

    iget v3, v3, Lcom/android/launcher3/celllayout/CellInfo;->cellX:I

    aget v4, p4, v8

    if-ne v3, v4, :cond_1

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/celllayout/CellInfo;

    iget v3, v3, Lcom/android/launcher3/celllayout/CellInfo;->cellY:I

    aget v4, p4, v16

    if-ne v3, v4, :cond_1

    if-ne v2, v7, :cond_1

    move/from16 v3, v16

    goto :goto_0

    :cond_1
    move v3, v8

    :goto_0
    move v1, v3

    move/from16 v17, v1

    goto :goto_1

    .line 1917
    .end local v2    # "cellParent":Lcom/android/launcher3/CellLayout;
    :cond_2
    move/from16 v17, v1

    .line 1923
    .end local v1    # "hasntMoved":Z
    .local v17, "hasntMoved":Z
    :goto_1
    if-eqz v14, :cond_8

    if-nez v17, :cond_8

    iget-boolean v1, v0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    if-nez v1, :cond_3

    move-object v0, v14

    goto/16 :goto_3

    .line 1924
    :cond_3
    iput-boolean v8, v0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    .line 1925
    invoke-virtual {v0, v7}, Lcom/android/launcher3/Workspace;->getCellLayoutId(Lcom/android/launcher3/CellLayout;)I

    move-result v18

    .line 1927
    .local v18, "screenId":I
    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v13, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 1928
    .local v13, "aboveShortcut":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v12, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 1930
    .local v12, "willBecomeShortcut":Z
    if-eqz v13, :cond_7

    if-eqz v12, :cond_7

    .line 1931
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 1932
    .local v11, "sourceInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 1934
    .local v10, "destInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    if-nez p6, :cond_4

    .line 1935
    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/celllayout/CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/celllayout/CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/celllayout/CellInfo;

    iget-object v2, v2, Lcom/android/launcher3/celllayout/CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 1938
    :cond_4
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object v9, v1

    .line 1939
    .local v9, "folderLocation":Landroid/graphics/Rect;
    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    invoke-virtual {v1, v14, v9}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v19

    .line 1940
    .local v19, "scale":F
    invoke-virtual {v7, v14}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 1941
    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    invoke-interface {v1, v10}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    iget-object v2, v15, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROP_FOLDER_CREATED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 1942
    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 1943
    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    aget v5, p4, v8

    aget v6, p4, v16

    move-object/from16 v2, p3

    move/from16 v3, p2

    move/from16 v4, v18

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/Launcher;->addFolder(Lcom/android/launcher3/CellLayout;IIII)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v1

    .line 1945
    .local v1, "fi":Lcom/android/launcher3/folder/FolderIcon;
    const/4 v2, -0x1

    iput v2, v10, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->cellX:I

    .line 1946
    iput v2, v10, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->cellY:I

    .line 1947
    iput v2, v11, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->cellX:I

    .line 1948
    iput v2, v11, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->cellY:I

    .line 1951
    if-eqz v15, :cond_5

    move/from16 v8, v16

    :cond_5
    move v2, v8

    .line 1952
    .local v2, "animate":Z
    if-eqz v2, :cond_6

    .line 1955
    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/folder/FolderIcon;->setFolderBackground(Lcom/android/launcher3/folder/PreviewBackground;)V

    .line 1956
    new-instance v3, Lcom/android/launcher3/folder/PreviewBackground;

    invoke-direct {v3}, Lcom/android/launcher3/folder/PreviewBackground;-><init>()V

    iput-object v3, v0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    .line 1957
    move-object v8, v1

    move-object v3, v9

    .end local v9    # "folderLocation":Landroid/graphics/Rect;
    .local v3, "folderLocation":Landroid/graphics/Rect;
    move-object v9, v10

    move-object v4, v10

    .end local v10    # "destInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .local v4, "destInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    move-object v10, v14

    move-object v5, v11

    .end local v11    # "sourceInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .local v5, "sourceInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    move v6, v12

    .end local v12    # "willBecomeShortcut":Z
    .local v6, "willBecomeShortcut":Z
    move-object/from16 v12, p7

    move/from16 v20, v13

    .end local v13    # "aboveShortcut":Z
    .local v20, "aboveShortcut":Z
    move-object v13, v3

    move-object v0, v14

    .end local v14    # "v":Landroid/view/View;
    .local v0, "v":Landroid/view/View;
    move/from16 v14, v19

    invoke-virtual/range {v8 .. v14}, Lcom/android/launcher3/folder/FolderIcon;->performCreateAnimation(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/view/View;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/DropTarget$DragObject;Landroid/graphics/Rect;F)V

    goto :goto_2

    .line 1959
    .end local v0    # "v":Landroid/view/View;
    .end local v3    # "folderLocation":Landroid/graphics/Rect;
    .end local v4    # "destInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .end local v5    # "sourceInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .end local v6    # "willBecomeShortcut":Z
    .end local v20    # "aboveShortcut":Z
    .restart local v9    # "folderLocation":Landroid/graphics/Rect;
    .restart local v10    # "destInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .restart local v11    # "sourceInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .restart local v12    # "willBecomeShortcut":Z
    .restart local v13    # "aboveShortcut":Z
    .restart local v14    # "v":Landroid/view/View;
    :cond_6
    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move v6, v12

    move/from16 v20, v13

    move-object v0, v14

    .end local v9    # "folderLocation":Landroid/graphics/Rect;
    .end local v10    # "destInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .end local v11    # "sourceInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .end local v12    # "willBecomeShortcut":Z
    .end local v13    # "aboveShortcut":Z
    .end local v14    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    .restart local v3    # "folderLocation":Landroid/graphics/Rect;
    .restart local v4    # "destInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .restart local v5    # "sourceInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .restart local v6    # "willBecomeShortcut":Z
    .restart local v20    # "aboveShortcut":Z
    invoke-virtual {v1, v0}, Lcom/android/launcher3/folder/FolderIcon;->prepareCreateAnimation(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    .line 1960
    invoke-virtual {v1, v4}, Lcom/android/launcher3/folder/FolderIcon;->addItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    .line 1961
    invoke-virtual {v1, v5}, Lcom/android/launcher3/folder/FolderIcon;->addItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    .line 1963
    :goto_2
    return v16

    .line 1930
    .end local v0    # "v":Landroid/view/View;
    .end local v1    # "fi":Lcom/android/launcher3/folder/FolderIcon;
    .end local v2    # "animate":Z
    .end local v3    # "folderLocation":Landroid/graphics/Rect;
    .end local v4    # "destInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .end local v5    # "sourceInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .end local v6    # "willBecomeShortcut":Z
    .end local v19    # "scale":F
    .end local v20    # "aboveShortcut":Z
    .restart local v12    # "willBecomeShortcut":Z
    .restart local v13    # "aboveShortcut":Z
    .restart local v14    # "v":Landroid/view/View;
    :cond_7
    move v6, v12

    move/from16 v20, v13

    move-object v0, v14

    .line 1965
    .end local v12    # "willBecomeShortcut":Z
    .end local v13    # "aboveShortcut":Z
    .end local v14    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    .restart local v6    # "willBecomeShortcut":Z
    .restart local v20    # "aboveShortcut":Z
    return v8

    .line 1923
    .end local v0    # "v":Landroid/view/View;
    .end local v6    # "willBecomeShortcut":Z
    .end local v18    # "screenId":I
    .end local v20    # "aboveShortcut":Z
    .restart local v14    # "v":Landroid/view/View;
    :cond_8
    move-object v0, v14

    .end local v14    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :goto_3
    return v8
.end method

.method public deferRemoveExtraEmptyScreen()V
    .locals 1

    .line 515
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    .line 516
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1180
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsEventOverFirstPagePinnedItem:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1182
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/Workspace;->mXDown:F

    sub-float/2addr v0, v1

    .line 1183
    .local v0, "deltaX":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1184
    .local v1, "absDeltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/launcher3/Workspace;->mYDown:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1186
    .local v2, "absDeltaY":F
    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_1

    return-void

    .line 1188
    :cond_1
    div-float v3, v2, v1

    .line 1189
    .local v3, "slope":F
    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 1191
    .local v4, "theta":F
    iget v5, p0, Lcom/android/launcher3/Workspace;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v5, v1, v5

    if-gtz v5, :cond_2

    iget v5, p0, Lcom/android/launcher3/Workspace;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v5, v2, v5

    if-lez v5, :cond_3

    .line 1192
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->cancelCurrentPageLongPress()V

    .line 1195
    :cond_3
    const v5, 0x3f860a92

    cmpl-float v5, v4, v5

    if-lez v5, :cond_4

    .line 1197
    return-void

    .line 1198
    :cond_4
    const v5, 0x3f060a92

    cmpl-float v6, v4, v5

    if-lez v6, :cond_5

    .line 1203
    sub-float/2addr v4, v5

    .line 1204
    div-float v5, v4, v5

    float-to-double v5, v5

    .line 1205
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    .line 1206
    .local v5, "extraRatio":F
    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v6, v5

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    invoke-super {p0, p1, v6}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    .line 1207
    .end local v5    # "extraRatio":F
    goto :goto_0

    .line 1209
    :cond_5
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    .line 1211
    :goto_0
    return-void

    .line 1180
    .end local v0    # "deltaX":F
    .end local v1    # "absDeltaX":F
    .end local v2    # "absDeltaY":F
    .end local v3    # "slope":F
    .end local v4    # "theta":F
    :cond_6
    :goto_1
    return-void
.end method

.method disableLayoutTransitions()V
    .locals 1

    .line 578
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 579
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 3178
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mSavedStates:Landroid/util/SparseArray;

    .line 3179
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .line 1151
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1155
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    return v0

    .line 1153
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method enableLayoutTransitions()V
    .locals 1

    .line 574
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 575
    return-void
.end method

.method public estimateItemPosition(Lcom/android/launcher3/CellLayout;IIII)Landroid/graphics/Rect;
    .locals 7
    .param p1, "cl"    # Lcom/android/launcher3/CellLayout;
    .param p2, "hCell"    # I
    .param p3, "vCell"    # I
    .param p4, "hSpan"    # I
    .param p5, "vSpan"    # I

    .line 454
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 455
    .local v0, "r":Landroid/graphics/Rect;
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 456
    return-object v0
.end method

.method public estimateItemSize(Lcom/android/launcher3/model/data/ItemInfo;)[I
    .locals 11
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 408
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 409
    .local v0, "size":[I
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_3

    .line 411
    invoke-virtual {p0, v3}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    .line 412
    .local v1, "cl":Lcom/android/launcher3/CellLayout;
    iget v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    move v10, v4

    .line 414
    .local v10, "isWidget":Z
    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v9, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v4, p0

    move-object v5, v1

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/Workspace;->estimateItemPosition(Lcom/android/launcher3/CellLayout;IIII)Landroid/graphics/Rect;

    move-result-object v4

    .line 416
    .local v4, "r":Landroid/graphics/Rect;
    const/high16 v5, 0x3f800000    # 1.0f

    .line 417
    .local v5, "scale":F
    if-eqz v10, :cond_1

    .line 418
    iget-object v6, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v6

    .line 419
    .local v6, "profile":Lcom/android/launcher3/DeviceProfile;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/launcher3/DeviceProfile;->getAppWidgetScale(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/PointF;

    move-result-object v7

    .line 420
    .local v7, "appWidgetScale":Landroid/graphics/PointF;
    iget v8, v7, Landroid/graphics/PointF;->x:F

    iget v9, v7, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v8, v9}, Lcom/android/launcher3/Utilities;->shrinkRect(Landroid/graphics/Rect;FF)F

    move-result v5

    .line 422
    .end local v6    # "profile":Lcom/android/launcher3/DeviceProfile;
    .end local v7    # "appWidgetScale":Landroid/graphics/PointF;
    :cond_1
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    aput v6, v0, v3

    .line 423
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    aput v6, v0, v2

    .line 425
    if-eqz v10, :cond_2

    .line 426
    aget v6, v0, v3

    int-to-float v6, v6

    div-float/2addr v6, v5

    float-to-int v6, v6

    aput v6, v0, v3

    .line 427
    aget v3, v0, v2

    int-to-float v3, v3

    div-float/2addr v3, v5

    float-to-int v3, v3

    aput v3, v0, v2

    .line 429
    :cond_2
    return-object v0

    .line 431
    .end local v1    # "cl":Lcom/android/launcher3/CellLayout;
    .end local v4    # "r":Landroid/graphics/Rect;
    .end local v5    # "scale":F
    .end local v10    # "isWidget":Z
    :cond_3
    const v1, 0x7fffffff

    aput v1, v0, v3

    .line 432
    aput v1, v0, v2

    .line 433
    return-object v0
.end method

.method findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I
    .locals 6
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "layout"    # Lcom/android/launcher3/CellLayout;
    .param p6, "recycle"    # [I

    .line 3073
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    move-object v0, p5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->findNearestAreaIgnoreOccupied(IIII[I)[I

    move-result-object v0

    return-object v0
.end method

.method public getCellLayoutId(Lcom/android/launcher3/CellLayout;)I
    .locals 2
    .param p1, "layout"    # Lcom/android/launcher3/CellLayout;

    .line 950
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/IntSparseArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 951
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 952
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/IntSparseArrayMap;->keyAt(I)I

    move-result v1

    return v1

    .line 954
    :cond_0
    return v1
.end method

.method public getCellLayoutIndex(Lcom/android/launcher3/CellLayout;)I
    .locals 2
    .param p1, "cellLayout"    # Lcom/android/launcher3/CellLayout;

    .line 963
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getCellLayoutId(Lcom/android/launcher3/CellLayout;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;
    .locals 1

    .line 3536
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;

    move-result-object v0

    return-object v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 2

    .line 3495
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget v0, p0, Lcom/android/launcher3/Workspace;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/Workspace;->mNextPage:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    .line 3496
    .local v0, "pageIndex":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getPageDescription(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCurrentPageScreenIds()Lcom/android/launcher3/util/IntSet;
    .locals 1

    .line 972
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/IntSet;->wrap([I)Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    return-object v0
.end method

.method public getDescendantFocusability()I
    .locals 1

    .line 1457
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1458
    const/high16 v0, 0x60000

    return v0

    .line 1460
    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->getDescendantFocusability()I

    move-result v0

    return v0
.end method

.method public getDragInfo()Lcom/android/launcher3/celllayout/CellInfo;
    .locals 1

    .line 3062
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/celllayout/CellInfo;

    return-object v0
.end method

.method public getExpectedHeight()I
    .locals 1

    .line 3476
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsLayoutValid:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 3477
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getMeasuredHeight()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    .line 3476
    :goto_1
    return v0
.end method

.method public getExpectedWidth()I
    .locals 1

    .line 3482
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsLayoutValid:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 3483
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getMeasuredWidth()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    .line 3482
    :goto_1
    return v0
.end method

.method public getFirstMatch(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;
    .locals 2
    .param p1, "operator"    # Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;

    .line 3269
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    .line 3270
    .local v0, "value":[Landroid/view/View;
    new-instance v1, Lcom/android/launcher3/Workspace$7;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher3/Workspace$7;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;[Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    .line 3280
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .line 2750
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 2751
    return-void
.end method

.method public getHomescreenIconByItemId(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .line 3259
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    new-instance v0, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1}, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda15;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getFirstMatch(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHotseat()Lcom/android/launcher3/Hotseat;
    .locals 1

    .line 935
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    return-object v0
.end method

.method public getNumPagesForWallpaperParallax()I
    .locals 1

    .line 450
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->getNumPagesForWallpaperParallax()I

    move-result v0

    return v0
.end method

.method public getPageAreaRelativeToDragLayer()Landroid/graphics/Rect;
    .locals 8

    .line 2256
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2257
    .local v0, "area":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v1

    .line 2258
    .local v1, "nextPage":I
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v2

    .line 2259
    .local v2, "panelCount":I
    move v3, v1

    .local v3, "page":I
    :goto_0
    add-int v4, v1, v2

    if-ge v3, v4, :cond_1

    .line 2260
    invoke-virtual {p0, v3}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout;

    .line 2261
    .local v4, "child":Lcom/android/launcher3/CellLayout;
    if-nez v4, :cond_0

    .line 2262
    goto :goto_1

    .line 2265
    :cond_0
    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    .line 2266
    .local v5, "boundingLayout":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 2267
    .local v6, "tmpRect":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 2268
    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 2259
    .end local v4    # "child":Lcom/android/launcher3/CellLayout;
    .end local v5    # "boundingLayout":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    .end local v6    # "tmpRect":Landroid/graphics/Rect;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2271
    .end local v3    # "page":I
    :cond_1
    :goto_1
    return-object v0
.end method

.method public getPageDescription(I)Ljava/lang/String;
    .locals 9
    .param p1, "page"    # I

    .line 3505
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    .line 3506
    .local v0, "nScreens":I
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    const/16 v2, -0xc9

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/IntArray;->indexOf(I)I

    move-result v1

    .line 3507
    .local v1, "extraScreenId":I
    const/4 v2, 0x1

    if-ltz v1, :cond_1

    if-le v0, v2, :cond_1

    .line 3508
    if-ne p1, v1, :cond_0

    .line 3509
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$string;->workspace_new_page:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 3511
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 3513
    :cond_1
    if-nez v0, :cond_2

    .line 3515
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$string;->home_screen:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 3517
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v3

    .line 3518
    .local v3, "panelCount":I
    div-int v4, p1, v3

    add-int/2addr v4, v2

    .line 3519
    .local v4, "currentPage":I
    div-int v2, v0, v3

    rem-int v5, v0, v3

    add-int/2addr v2, v5

    .line 3520
    .local v2, "totalPages":I
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/android/launcher3/R$string;->workspace_scroll_format:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getPageIndexForScreenId(I)I
    .locals 1
    .param p1, "screenId"    # I

    .line 958
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/IntSparseArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getPanelCount()I
    .locals 1

    .line 968
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 3232
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3233
    .local v3, "layout":Lcom/android/launcher3/CellLayout;
    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_0

    .line 3234
    return-object v3

    .line 3232
    .end local v3    # "layout":Lcom/android/launcher3/CellLayout;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3237
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScreenIdForPageIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .line 976
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v0

    return v0

    .line 979
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getScreenOrder()Lcom/android/launcher3/util/IntArray;
    .locals 1

    .line 983
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    return-object v0
.end method

.method public getScreenPair(I)I
    .locals 2
    .param p1, "screenId"    # I

    .line 991
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/16 v0, -0xc8

    const/16 v1, -0xc9

    if-ne p1, v1, :cond_0

    .line 992
    return v0

    .line 993
    :cond_0
    if-ne p1, v0, :cond_1

    .line 994
    return v1

    .line 995
    :cond_1
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_2

    .line 996
    add-int/lit8 v0, p1, 0x1

    return v0

    .line 998
    :cond_2
    add-int/lit8 v0, p1, -0x1

    return v0
.end method

.method public getScreenPair(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/CellLayout;
    .locals 3
    .param p1, "cellLayout"    # Lcom/android/launcher3/CellLayout;

    .line 1008
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1009
    return-object v1

    .line 1011
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getCellLayoutId(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    .line 1012
    .local v0, "screenId":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 1013
    return-object v1

    .line 1015
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getScreenPair(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    return-object v1
.end method

.method public getScreenWithId(I)Lcom/android/launcher3/CellLayout;
    .locals 1
    .param p1, "screenId"    # I

    .line 945
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/IntSparseArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    return-object v0
.end method

.method public getStateTransitionAnimation()Lcom/android/launcher3/WorkspaceStateTransitionAnimation;
    .locals 1

    .line 1592
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    return-object v0
.end method

.method public getWallpaperOffsetForCenterPage()F
    .locals 1

    .line 438
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageNearestToCenterOfScreen()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->getWallpaperOffsetForPage(I)F

    move-result v0

    return v0
.end method

.method public getWidgetForAppWidgetId(I)Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    .locals 1
    .param p1, "appWidgetId"    # I

    .line 3263
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    new-instance v0, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getFirstMatch(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    return-object v0
.end method

.method public hasExtraEmptyScreens()Z
    .locals 2

    .line 888
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    const/16 v1, -0xc9

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 889
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 890
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    .line 891
    const/16 v1, -0xc8

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 888
    :goto_0
    return v0
.end method

.method public hasOverlay()Z
    .locals 1

    .line 1259
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mOverlayEdgeEffect:Lcom/android/launcher3/util/OverlayEdgeEffect;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected initWorkspace()V
    .locals 1

    .line 546
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    .line 547
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setClipToPadding(Z)V

    .line 549
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->setupLayoutTransition()V

    .line 552
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->setWallpaperDimension()V

    .line 553
    return-void
.end method

.method public insertNewWorkspaceScreen(II)Lcom/android/launcher3/CellLayout;
    .locals 4
    .param p1, "screenId"    # I
    .param p2, "insertIndex"    # I

    .line 666
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 672
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 674
    .local v0, "dp":Lcom/android/launcher3/DeviceProfile;
    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->FOLDABLE_SINGLE_PAGE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v1, :cond_0

    .line 675
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/android/launcher3/R$layout;->workspace_screen_foldable:I

    invoke-virtual {v1, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    .local v1, "newScreen":Lcom/android/launcher3/CellLayout;
    goto :goto_0

    .line 678
    .end local v1    # "newScreen":Lcom/android/launcher3/CellLayout;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/android/launcher3/R$layout;->workspace_screen:I

    invoke-virtual {v1, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    .line 681
    .restart local v1    # "newScreen":Lcom/android/launcher3/CellLayout;
    :goto_0
    invoke-virtual {v1, p0}, Lcom/android/launcher3/CellLayout;->setCellLayoutContainer(Lcom/android/launcher3/CellLayoutContainer;)V

    .line 683
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v2, p1, v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->put(ILjava/lang/Object;)V

    .line 684
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v2, p2, p1}, Lcom/android/launcher3/util/IntArray;->add(II)V

    .line 685
    invoke-virtual {p0, v1, p2}, Lcom/android/launcher3/Workspace;->addView(Landroid/view/View;I)V

    .line 686
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 687
    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/LauncherState;

    .line 686
    invoke-virtual {v2, v3, v1, p2}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->applyChildState(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/CellLayout;I)V

    .line 689
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updatePageScrollValues()V

    .line 690
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateCellLayoutMeasures()V

    .line 691
    return-object v1

    .line 667
    .end local v0    # "dp":Lcom/android/launcher3/DeviceProfile;
    .end local v1    # "newScreen":Lcom/android/launcher3/CellLayout;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screen id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already exists!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insertNewWorkspaceScreen(I)V
    .locals 1
    .param p1, "screenId"    # I

    .line 662
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(II)Lcom/android/launcher3/CellLayout;

    .line 663
    return-void
.end method

.method public insertNewWorkspaceScreenBeforeEmptyScreen(I)V
    .locals 2
    .param p1, "screenId"    # I

    .line 654
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    const/16 v1, -0xc9

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntArray;->indexOf(I)I

    move-result v0

    .line 655
    .local v0, "insertIndex":I
    if-gez v0, :cond_0

    .line 656
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v0

    .line 658
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(II)Lcom/android/launcher3/CellLayout;

    .line 659
    return-void
.end method

.method public isDropEnabled()Z
    .locals 1

    .line 3170
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public isFinishedSwitchingState()Z
    .locals 2

    .line 1145
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

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

.method public isOverlayShown()Z
    .locals 1

    .line 3445
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    return v0
.end method

.method protected isSignificantMove(FI)Z
    .locals 3
    .param p1, "absoluteDelta"    # F
    .param p2, "pageOrientedSize"    # I

    .line 3525
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 3526
    .local v0, "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    iget-boolean v1, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-nez v1, :cond_0

    .line 3527
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->isSignificantMove(FI)Z

    move-result v1

    return v1

    .line 3530
    :cond_0
    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    int-to-float v1, v1

    const v2, 0x3e19999a    # 0.15f

    mul-float/2addr v1, v2

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSwitchingState()Z
    .locals 1

    .line 1137
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    return v0
.end method

.method public lockWallpaperToDefaultPage()V
    .locals 2

    .line 1372
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->setLockToDefaultPage(Z)V

    .line 1373
    return-void
.end method

.method protected manageReorderOnDragOver(Lcom/android/launcher3/DropTarget$DragObject;FZIIII)V
    .locals 33
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "targetCellDistance"    # F
    .param p3, "nearestDropOccupied"    # Z
    .param p4, "minSpanX"    # I
    .param p5, "minSpanY"    # I
    .param p6, "reorderX"    # I
    .param p7, "reorderY"    # I

    .line 2503
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    move-object/from16 v9, p0

    move/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p1

    iget-object v13, v12, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 2504
    .local v13, "item":Lcom/android/launcher3/model/data/ItemInfo;
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/celllayout/CellInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/launcher3/celllayout/CellInfo;->cell:Landroid/view/View;

    :goto_0
    move-object/from16 v21, v0

    .line 2505
    .local v21, "child":Landroid/view/View;
    const/4 v0, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez p3, :cond_1

    .line 2506
    new-array v8, v0, [I

    .line 2507
    .local v8, "span":[I
    iget-object v14, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v0, v7

    float-to-int v15, v1

    aget v0, v0, v6

    float-to-int v0, v0

    iget v1, v13, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v2, v13, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget-object v3, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v24, 0x0

    move/from16 v16, v0

    move/from16 v17, p4

    move/from16 v18, p5

    move/from16 v19, v1

    move/from16 v20, v2

    move-object/from16 v22, v3

    move-object/from16 v23, v8

    invoke-virtual/range {v14 .. v24}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    .line 2510
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v2, v1, v7

    aget v3, v1, v6

    aget v4, v8, v7

    aget v5, v8, v6

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->visualizeDropLocation(IIIILcom/android/launcher3/DropTarget$DragObject;)V

    .line 2512
    iget-object v14, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v0, v7

    float-to-int v15, v1

    aget v0, v0, v6

    float-to-int v0, v0

    iget v1, v13, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v2, v13, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget-object v3, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v19, v21

    move-object/from16 v20, v3

    invoke-virtual/range {v14 .. v20}, Lcom/android/launcher3/CellLayout;->isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z

    move-result v0

    .line 2515
    .end local v8    # "span":[I
    .end local p3    # "nearestDropOccupied":Z
    .local v0, "nearestDropOccupied":Z
    goto/16 :goto_1

    .end local v0    # "nearestDropOccupied":Z
    .restart local p3    # "nearestDropOccupied":Z
    :cond_1
    iget v1, v9, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    :cond_2
    iget v1, v9, Lcom/android/launcher3/Workspace;->mLastReorderX:I

    if-ne v1, v10, :cond_3

    iget v1, v9, Lcom/android/launcher3/Workspace;->mLastReorderY:I

    if-eq v1, v11, :cond_4

    :cond_3
    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v2, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget v3, v13, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v4, v13, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    .line 2517
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/launcher3/CellLayout;->getReorderRadius([III)F

    move-result v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_4

    .line 2519
    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v1}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 2520
    iput v10, v9, Lcom/android/launcher3/Workspace;->mLastReorderX:I

    .line 2521
    iput v11, v9, Lcom/android/launcher3/Workspace;->mLastReorderY:I

    .line 2522
    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v2, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v3, v2, v7

    float-to-int v3, v3

    aget v2, v2, v6

    float-to-int v2, v2

    iget v4, v13, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v5, v13, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget-object v6, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    new-array v0, v0, [I

    const/16 v32, 0x0

    move-object/from16 v22, v1

    move/from16 v23, v3

    move/from16 v24, v2

    move/from16 v25, p4

    move/from16 v26, p5

    move/from16 v27, v4

    move/from16 v28, v5

    move-object/from16 v29, v21

    move-object/from16 v30, v6

    move-object/from16 v31, v0

    invoke-virtual/range {v22 .. v32}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    .line 2527
    new-instance v14, Lcom/android/launcher3/Workspace$ReorderAlarmListener;

    iget-object v2, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    iget v5, v13, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v6, v13, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v7, p1

    move-object/from16 v8, v21

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/Workspace$ReorderAlarmListener;-><init>(Lcom/android/launcher3/Workspace;[FIIIILcom/android/launcher3/DropTarget$DragObject;Landroid/view/View;)V

    .line 2529
    .local v0, "listener":Lcom/android/launcher3/Workspace$ReorderAlarmListener;, "Lcom/android/launcher3/Workspace<TT;>.ReorderAlarmListener;"
    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 2530
    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v2, 0x28a

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 2532
    .end local v0    # "listener":Lcom/android/launcher3/Workspace$ReorderAlarmListener;, "Lcom/android/launcher3/Workspace<TT;>.ReorderAlarmListener;"
    :cond_4
    move/from16 v0, p3

    .end local p3    # "nearestDropOccupied":Z
    .local v0, "nearestDropOccupied":Z
    :goto_1
    return-void
.end method

.method public mapOverCellLayout(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;
    .locals 6
    .param p1, "layout"    # Lcom/android/launcher3/CellLayout;
    .param p2, "operator"    # Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;

    .line 3349
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3350
    return-object v0

    .line 3352
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    .line 3354
    .local v1, "container":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    .line 3355
    .local v2, "itemCount":I
    const/4 v3, 0x0

    .local v3, "itemIdx":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 3356
    invoke-virtual {v1, v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3357
    .local v4, "item":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p2, v5, v4}, Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;->evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3358
    return-object v4

    .line 3355
    .end local v4    # "item":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3361
    .end local v3    # "itemIdx":I
    :cond_2
    return-object v0
.end method

.method public mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V
    .locals 5
    .param p1, "op"    # Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;

    .line 3335
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3336
    .local v3, "layout":Lcom/android/launcher3/CellLayout;
    invoke-virtual {p0, v3, p1}, Lcom/android/launcher3/Workspace;->mapOverCellLayout(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3337
    return-void

    .line 3335
    .end local v3    # "layout":Lcom/android/launcher3/CellLayout;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3340
    :cond_1
    return-void
.end method

.method public moveToDefaultScreen()V
    .locals 2

    .line 3452
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x0

    .line 3453
    .local v0, "page":I
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 3454
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->snapToPage(I)Z

    .line 3456
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3457
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 3458
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 3460
    :cond_1
    return-void
.end method

.method protected notifyPageSwitchListener(I)V
    .locals 4
    .param p1, "prevPage"    # I

    .line 1343
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->notifyPageSwitchListener(I)V

    .line 1344
    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    if-eq p1, v0, :cond_1

    .line 1345
    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    if-ge p1, v0, :cond_0

    .line 1346
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SWIPERIGHT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SWIPELEFT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 1347
    .local v0, "event":Lcom/android/launcher3/logging/StatsLogManager$EventEnum;
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    .line 1348
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withSrcState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    .line 1349
    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withDstState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    .line 1350
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v2

    .line 1352
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v3

    .line 1353
    invoke-virtual {v3, p1}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->setPageIndex(I)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v3

    .line 1351
    invoke-virtual {v2, v3}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v2

    .line 1353
    invoke-virtual {v2}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 1350
    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    .line 1354
    invoke-interface {v1, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 1356
    .end local v0    # "event":Lcom/android/launcher3/logging/StatsLogManager$EventEnum;
    :cond_1
    return-void
.end method

.method public onAddDropTarget(Lcom/android/launcher3/DropTarget;)V
    .locals 1
    .param p1, "target"    # Lcom/android/launcher3/DropTarget;

    .line 940
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/DragController;->addDropTarget(Lcom/android/launcher3/DropTarget;)V

    .line 941
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1431
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onAttachedToWindow()V

    .line 1432
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->setWindowToken(Landroid/os/IBinder;)V

    .line 1433
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->computeScroll()V

    .line 1434
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1437
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onDetachedFromWindow()V

    .line 1438
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->setWindowToken(Landroid/os/IBinder;)V

    .line 1439
    return-void
.end method

.method public onDragEnd()V
    .locals 2

    .line 524
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    .line 525
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    .line 526
    .local v0, "stateManager":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<Lcom/android/launcher3/LauncherState;>;"
    new-instance v1, Lcom/android/launcher3/Workspace$1;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/Workspace$1;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/statemanager/StateManager;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    .line 538
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/celllayout/CellInfo;

    .line 539
    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 540
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 3
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 2280
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    .line 2281
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 2283
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->resetEdgeFallbackState()V

    .line 2284
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {p1, v1}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    .line 2285
    aget v0, v1, v0

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/Workspace;->setDropLayoutForDragObject(Lcom/android/launcher3/DropTarget$DragObject;FF)Z

    .line 2286
    return-void
.end method

.method public onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 3
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 2296
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    .line 2297
    iget v0, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2298
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    goto :goto_0

    .line 2299
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 2300
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 2304
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setCurrentDropLayout(Lcom/android/launcher3/CellLayout;)V

    .line 2305
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/CellLayout;)V

    .line 2307
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->cancel()V

    .line 2308
    return-void
.end method

.method public onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 22
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 2436
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->transitionStateShouldAllowDrop()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2438
    :cond_0
    iget-object v10, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 2439
    .local v10, "item":Lcom/android/launcher3/model/data/ItemInfo;
    if-nez v10, :cond_1

    .line 2443
    return-void

    .line 2447
    :cond_1
    iget v0, v10, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-ltz v0, :cond_9

    iget v0, v10, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-ltz v0, :cond_9

    .line 2448
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v9, v0}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    .line 2450
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/celllayout/CellInfo;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/android/launcher3/celllayout/CellInfo;->cell:Landroid/view/View;

    :goto_0
    move-object/from16 v16, v0

    .line 2451
    .local v16, "child":Landroid/view/View;
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v7, 0x0

    aget v1, v0, v7

    const/4 v15, 0x1

    aget v0, v0, v15

    invoke-direct {v8, v9, v1, v0}, Lcom/android/launcher3/Workspace;->setDropLayoutForDragObject(Lcom/android/launcher3/DropTarget$DragObject;FF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2452
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_4

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 2455
    :cond_3
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->setAlarm(Lcom/android/launcher3/CellLayout;)V

    goto :goto_2

    .line 2453
    :cond_4
    :goto_1
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->cancel()V

    .line 2460
    :cond_5
    :goto_2
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_8

    .line 2462
    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-direct {v8, v0, v1}, Lcom/android/launcher3/Workspace;->mapPointFromDropLayout(Lcom/android/launcher3/CellLayout;[F)V

    .line 2464
    iget v0, v10, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    .line 2465
    .local v0, "minSpanX":I
    iget v1, v10, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    .line 2466
    .local v1, "minSpanY":I
    iget v2, v10, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    if-lez v2, :cond_6

    iget v2, v10, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    if-lez v2, :cond_6

    .line 2467
    iget v0, v10, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    .line 2468
    iget v1, v10, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    move/from16 v18, v0

    move/from16 v19, v1

    goto :goto_3

    .line 2471
    :cond_6
    move/from16 v18, v0

    move/from16 v19, v1

    .end local v0    # "minSpanX":I
    .end local v1    # "minSpanY":I
    .local v18, "minSpanX":I
    .local v19, "minSpanY":I
    :goto_3
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v0, v7

    float-to-int v1, v1

    aget v0, v0, v15

    float-to-int v2, v0

    iget v3, v10, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v4, v10, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget-object v5, v8, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v6, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 2474
    aget v20, v0, v7

    .line 2475
    .local v20, "reorderX":I
    aget v21, v0, v15

    .line 2477
    .local v21, "reorderY":I
    aget v1, v0, v7

    aget v0, v0, v15

    invoke-virtual {v8, v1, v0}, Lcom/android/launcher3/Workspace;->setCurrentDropOverCell(II)V

    .line 2479
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v1, v7

    aget v1, v1, v15

    iget-object v3, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/launcher3/CellLayout;->getDistanceFromWorkspaceCellVisualCenter(FF[I)F

    move-result v6

    .line 2482
    .local v6, "targetCellDistance":F
    invoke-direct {v8, v6, v9}, Lcom/android/launcher3/Workspace;->manageFolderFeedback(FLcom/android/launcher3/DropTarget$DragObject;)V

    .line 2484
    iget-object v11, v8, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v0, v7

    float-to-int v12, v1

    aget v0, v0, v15

    float-to-int v13, v0

    iget v14, v10, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v0, v10, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move v7, v15

    move v15, v0

    move-object/from16 v17, v1

    invoke-virtual/range {v11 .. v17}, Lcom/android/launcher3/CellLayout;->isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z

    move-result v11

    .line 2488
    .local v11, "nearestDropOccupied":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v6

    move v3, v11

    move/from16 v4, v18

    move/from16 v5, v19

    move v12, v6

    .end local v6    # "targetCellDistance":F
    .local v12, "targetCellDistance":F
    move/from16 v6, v20

    move v13, v7

    move/from16 v7, v21

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/Workspace;->manageReorderOnDragOver(Lcom/android/launcher3/DropTarget$DragObject;FZIIII)V

    .line 2491
    iget v0, v8, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-eq v0, v13, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    if-nez v11, :cond_8

    .line 2493
    :cond_7
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_8

    .line 2494
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->revertTempState()V

    .line 2498
    .end local v11    # "nearestDropOccupied":Z
    .end local v12    # "targetCellDistance":F
    .end local v18    # "minSpanX":I
    .end local v19    # "minSpanY":I
    .end local v20    # "reorderX":I
    .end local v21    # "reorderY":I
    :cond_8
    return-void

    .line 2447
    .end local v16    # "child":Landroid/view/View;
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Improper spans found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 5
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 465
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/celllayout/CellInfo;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/launcher3/celllayout/CellInfo;->cell:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/celllayout/CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/celllayout/CellInfo;->cell:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->getContentViewParent()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/celllayout/CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/celllayout/CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 469
    .local v0, "layout":Lcom/android/launcher3/CellLayout;
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/celllayout/CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/celllayout/CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 472
    .end local v0    # "layout":Lcom/android/launcher3/CellLayout;
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    .line 479
    iget-boolean v0, p2, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    if-ne v0, p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 480
    .local v0, "addNewPage":Z
    :goto_2
    if-eqz v0, :cond_5

    .line 481
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    .line 482
    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->addExtraEmptyScreenOnDrag(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 484
    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    if-eq v1, p0, :cond_5

    .line 491
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getDestinationPage()I

    move-result v1

    .line 492
    .local v1, "currentPage":I
    move v2, v1

    .local v2, "pageIndex":I
    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 493
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    .line 494
    .local v3, "page":Lcom/android/launcher3/CellLayout;
    iget-object v4, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/CellLayout;->hasReorderSolution(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 495
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->setCurrentPage(I)V

    .line 496
    goto :goto_4

    .line 492
    .end local v3    # "page":Lcom/android/launcher3/CellLayout;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 502
    .end local v1    # "currentPage":I
    .end local v2    # "pageIndex":I
    :cond_5
    :goto_4
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->EDIT_MODE:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 503
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 505
    :cond_6
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    .line 506
    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DRAG_STARTED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 507
    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 508
    return-void
.end method

.method public onDrop(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 51
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 1997
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v9, v0}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    .line 1998
    iget-object v15, v8, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    .line 2001
    .local v15, "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    if-eqz v15, :cond_0

    .line 2002
    invoke-direct {v8, v15, v0}, Lcom/android/launcher3/Workspace;->mapPointFromDropLayout(Lcom/android/launcher3/CellLayout;[F)V

    .line 2005
    :cond_0
    const/4 v11, 0x0

    .line 2007
    .local v11, "droppedOnOriginalCell":Z
    const/16 v22, 0x0

    .line 2008
    .local v22, "snappedToNewPage":Z
    const/16 v23, 0x0

    .line 2009
    .local v23, "resizeOnDrop":Z
    const/16 v24, 0x0

    .line 2010
    .local v24, "onCompleteRunnable":Ljava/lang/Runnable;
    iget-object v0, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    const/4 v14, 0x0

    const/4 v13, 0x1

    if-ne v0, v8, :cond_2c

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/celllayout/CellInfo;

    if-nez v0, :cond_1

    move v0, v11

    move v11, v14

    move-object/from16 v50, v15

    goto/16 :goto_1b

    .line 2015
    :cond_1
    iget-object v12, v0, Lcom/android/launcher3/celllayout/CellInfo;->cell:Landroid/view/View;

    .line 2016
    .local v12, "cell":Landroid/view/View;
    const/16 v16, 0x0

    .line 2018
    .local v16, "droppedOnOriginalCellDuringTransition":Z
    const/4 v7, 0x2

    const/16 v25, -0x1

    if-eqz v15, :cond_1d

    iget-boolean v0, v9, Lcom/android/launcher3/DropTarget$DragObject;->cancelled:Z

    if-nez v0, :cond_1d

    .line 2020
    invoke-virtual {v8, v12}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    if-eq v0, v15, :cond_2

    move v0, v13

    goto :goto_0

    :cond_2
    move v0, v14

    :goto_0
    move/from16 v26, v0

    .line 2021
    .local v26, "hasMovedLayouts":Z
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v15}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v27

    .line 2022
    .local v27, "hasMovedIntoHotseat":Z
    if-eqz v27, :cond_3

    .line 2023
    const/16 v0, -0x65

    goto :goto_1

    .line 2024
    :cond_3
    const/16 v0, -0x64

    :goto_1
    move v3, v0

    .line 2025
    .local v3, "container":I
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v0, v0, v14

    if-gez v0, :cond_4

    .line 2026
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/celllayout/CellInfo;

    iget v0, v0, Lcom/android/launcher3/celllayout/CellInfo;->screenId:I

    goto :goto_2

    :cond_4
    invoke-virtual {v8, v15}, Lcom/android/launcher3/Workspace;->getCellLayoutId(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    :goto_2
    move v2, v0

    .line 2027
    .local v2, "screenId":I
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/celllayout/CellInfo;

    if-eqz v0, :cond_5

    iget v0, v0, Lcom/android/launcher3/celllayout/CellInfo;->spanX:I

    goto :goto_3

    :cond_5
    move v0, v13

    :goto_3
    move v1, v0

    .line 2028
    .local v1, "spanX":I
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/celllayout/CellInfo;

    if-eqz v0, :cond_6

    iget v0, v0, Lcom/android/launcher3/celllayout/CellInfo;->spanY:I

    goto :goto_4

    :cond_6
    move v0, v13

    .line 2032
    .local v0, "spanY":I
    :goto_4
    iget-object v4, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v5, v4, v14

    float-to-int v5, v5

    aget v4, v4, v13

    float-to-int v4, v4

    iget-object v6, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move/from16 v36, v0

    .end local v0    # "spanY":I
    .local v36, "spanY":I
    move-object/from16 v0, p0

    move/from16 v37, v1

    .end local v1    # "spanX":I
    .local v37, "spanX":I
    move v1, v5

    move v5, v2

    .end local v2    # "screenId":I
    .local v5, "screenId":I
    move v2, v4

    move v4, v3

    .end local v3    # "container":I
    .local v4, "container":I
    move/from16 v3, v37

    move/from16 v38, v4

    .end local v4    # "container":I
    .local v38, "container":I
    move/from16 v4, v36

    move/from16 v39, v5

    .end local v5    # "screenId":I
    .local v39, "screenId":I
    move-object v5, v15

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 2034
    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v1, v14

    aget v1, v1, v13

    invoke-virtual {v15, v2, v1, v0}, Lcom/android/launcher3/CellLayout;->getDistanceFromWorkspaceCellVisualCenter(FF[I)F

    move-result v40

    .line 2039
    .local v40, "distance":F
    iget-object v4, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, v38

    move-object v3, v15

    move/from16 v5, v40

    move-object/from16 v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/Workspace;->createUserFolderIfNecessary(Landroid/view/View;ILcom/android/launcher3/CellLayout;[IFZLcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v3, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v6, 0x0

    .line 2041
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v15

    move/from16 v4, v40

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/DropTarget$DragObject;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v11

    move-object v7, v15

    move/from16 v17, v36

    move/from16 v46, v37

    move/from16 v2, v38

    move/from16 v48, v39

    goto/16 :goto_10

    .line 2051
    :cond_7
    iget-object v7, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 2052
    .local v7, "item":Lcom/android/launcher3/model/data/ItemInfo;
    iget v0, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    .line 2053
    .local v0, "minSpanX":I
    iget v1, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    .line 2054
    .local v1, "minSpanY":I
    iget v2, v7, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    if-lez v2, :cond_8

    iget v2, v7, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    if-lez v2, :cond_8

    .line 2055
    iget v0, v7, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    .line 2056
    iget v1, v7, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    move/from16 v42, v0

    move/from16 v43, v1

    goto :goto_5

    .line 2059
    :cond_8
    move/from16 v42, v0

    move/from16 v43, v1

    .end local v0    # "minSpanX":I
    .end local v1    # "minSpanY":I
    .local v42, "minSpanX":I
    .local v43, "minSpanY":I
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/launcher3/celllayout/CellPosMapper;->mapModelToPresenter(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    move-result-object v6

    .line 2060
    .local v6, "originalPresenterPos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    iget v0, v6, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    move/from16 v5, v39

    .end local v39    # "screenId":I
    .restart local v5    # "screenId":I
    if-ne v0, v5, :cond_9

    iget v0, v7, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    move/from16 v4, v38

    .end local v38    # "container":I
    .restart local v4    # "container":I
    if-ne v0, v4, :cond_a

    iget v0, v6, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellX:I

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v1, v1, v14

    if-ne v0, v1, :cond_a

    iget v0, v6, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellY:I

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v1, v1, v13

    if-ne v0, v1, :cond_a

    move v0, v13

    goto :goto_6

    .end local v4    # "container":I
    .restart local v38    # "container":I
    :cond_9
    move/from16 v4, v38

    .end local v38    # "container":I
    .restart local v4    # "container":I
    :cond_a
    move v0, v14

    :goto_6
    move/from16 v38, v0

    .line 2064
    .end local v11    # "droppedOnOriginalCell":Z
    .local v38, "droppedOnOriginalCell":Z
    if-eqz v38, :cond_b

    iget-boolean v0, v8, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-eqz v0, :cond_b

    move v0, v13

    goto :goto_7

    :cond_b
    move v0, v14

    :goto_7
    move/from16 v39, v0

    .line 2068
    .end local v16    # "droppedOnOriginalCellDuringTransition":Z
    .local v39, "droppedOnOriginalCellDuringTransition":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-nez v0, :cond_c

    if-nez v39, :cond_c

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v1, v0, v14

    aget v0, v0, v13

    .line 2070
    move/from16 v2, v36

    move/from16 v3, v37

    .end local v36    # "spanY":I
    .end local v37    # "spanX":I
    .local v2, "spanY":I
    .local v3, "spanX":I
    invoke-virtual {v15, v1, v0, v3, v2}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v13

    goto :goto_8

    .line 2068
    .end local v2    # "spanY":I
    .end local v3    # "spanX":I
    .restart local v36    # "spanY":I
    .restart local v37    # "spanX":I
    :cond_c
    move/from16 v2, v36

    move/from16 v3, v37

    .line 2070
    .end local v36    # "spanY":I
    .end local v37    # "spanX":I
    .restart local v2    # "spanY":I
    .restart local v3    # "spanX":I
    :cond_d
    move v0, v14

    :goto_8
    move/from16 v36, v0

    .line 2071
    .local v36, "returnToOriginalCellToPreventShuffling":Z
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 2072
    .local v0, "resultSpan":[I
    if-eqz v36, :cond_e

    .line 2073
    iget-object v11, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aput v25, v11, v13

    aput v25, v11, v14

    move-object/from16 v28, v6

    move-object/from16 v37, v12

    move v1, v14

    move-object/from16 v44, v15

    goto :goto_9

    .line 2075
    :cond_e
    iget-object v11, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v11, v14

    float-to-int v1, v1

    aget v11, v11, v13

    float-to-int v11, v11

    move-object/from16 v28, v6

    .end local v6    # "originalPresenterPos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    .local v28, "originalPresenterPos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    iget-object v6, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v21, 0x2

    move/from16 v16, v11

    move-object v11, v15

    move-object/from16 v37, v12

    .end local v12    # "cell":Landroid/view/View;
    .local v37, "cell":Landroid/view/View;
    move v12, v1

    move v1, v13

    move/from16 v13, v16

    move v1, v14

    move/from16 v14, v42

    move-object/from16 v44, v15

    .end local v15    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    .local v44, "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    move/from16 v15, v43

    move/from16 v16, v3

    move/from16 v17, v2

    move-object/from16 v18, v37

    move-object/from16 v19, v6

    move-object/from16 v20, v0

    invoke-virtual/range {v11 .. v21}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v6

    iput-object v6, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 2080
    :goto_9
    iget-object v6, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v11, v6, v1

    if-ltz v11, :cond_f

    const/4 v11, 0x1

    aget v6, v6, v11

    if-ltz v6, :cond_f

    const/4 v14, 0x1

    goto :goto_a

    :cond_f
    move v14, v1

    :goto_a
    move v11, v14

    .line 2083
    .local v11, "foundCell":Z
    if-eqz v11, :cond_11

    move-object/from16 v12, v37

    .end local v37    # "cell":Landroid/view/View;
    .restart local v12    # "cell":Landroid/view/View;
    instance-of v6, v12, Landroid/appwidget/AppWidgetHostView;

    if-eqz v6, :cond_12

    aget v6, v0, v1

    iget v13, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-ne v6, v13, :cond_10

    const/4 v6, 0x1

    aget v13, v0, v6

    iget v6, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-eq v13, v6, :cond_12

    .line 2085
    :cond_10
    const/16 v23, 0x1

    .line 2086
    aget v6, v0, v1

    iput v6, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    .line 2087
    const/4 v6, 0x1

    aget v13, v0, v6

    iput v13, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    .line 2088
    move-object v13, v12

    check-cast v13, Landroid/appwidget/AppWidgetHostView;

    .line 2089
    .local v13, "awhv":Landroid/appwidget/AppWidgetHostView;
    iget-object v14, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    aget v15, v0, v1

    aget v1, v0, v6

    invoke-static {v13, v14, v15, v1}, Lcom/android/launcher3/widget/util/WidgetSizes;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Landroid/content/Context;II)V

    goto :goto_b

    .line 2083
    .end local v12    # "cell":Landroid/view/View;
    .end local v13    # "awhv":Landroid/appwidget/AppWidgetHostView;
    .restart local v37    # "cell":Landroid/view/View;
    :cond_11
    move-object/from16 v12, v37

    .line 2093
    .end local v37    # "cell":Landroid/view/View;
    .restart local v12    # "cell":Landroid/view/View;
    :cond_12
    :goto_b
    if-eqz v11, :cond_18

    .line 2094
    invoke-virtual {v8, v5}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v13

    .line 2095
    .local v13, "targetScreenIndex":I
    invoke-virtual {v8, v13}, Lcom/android/launcher3/Workspace;->getLeftmostVisiblePageForIndex(I)I

    move-result v14

    .line 2098
    .local v14, "snapScreen":I
    iget v1, v8, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    if-eq v14, v1, :cond_13

    if-nez v27, :cond_13

    .line 2099
    invoke-virtual {v8, v14}, Lcom/android/launcher3/Workspace;->snapToPage(I)Z

    .line 2100
    const/4 v1, 0x1

    move/from16 v22, v1

    .line 2102
    :cond_13
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/launcher3/model/data/ItemInfo;

    .line 2103
    .local v15, "info":Lcom/android/launcher3/model/data/ItemInfo;
    if-eqz v26, :cond_16

    .line 2105
    invoke-virtual {v8, v12}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v6

    .line 2106
    .local v6, "parentCell":Lcom/android/launcher3/CellLayout;
    if-eqz v6, :cond_14

    .line 2107
    invoke-virtual {v6, v12}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    move/from16 v17, v2

    const/4 v2, 0x0

    goto :goto_c

    .line 2108
    :cond_14
    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/celllayout/CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/celllayout/CellInfo;->cell:Landroid/view/View;

    instance-of v1, v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v1, :cond_15

    .line 2109
    iget-object v1, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    move/from16 v17, v2

    const/4 v2, 0x0

    .end local v2    # "spanY":I
    .local v17, "spanY":I
    invoke-virtual {v1, v2}, Lcom/android/launcher3/dragndrop/DragView;->detachContentView(Z)V

    goto :goto_c

    .line 2108
    .end local v17    # "spanY":I
    .restart local v2    # "spanY":I
    :cond_15
    move/from16 v17, v2

    const/4 v2, 0x0

    .line 2113
    .end local v2    # "spanY":I
    .restart local v17    # "spanY":I
    :goto_c
    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v16, v1, v2

    const/16 v18, 0x1

    aget v19, v1, v18

    iget v1, v15, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    move-object/from16 v20, v7

    .end local v7    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .local v20, "item":Lcom/android/launcher3/model/data/ItemInfo;
    iget v7, v15, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object/from16 v21, v0

    .end local v0    # "resultSpan":[I
    .local v21, "resultSpan":[I
    move-object/from16 v0, p0

    move/from16 v41, v11

    move/from16 v11, v18

    const/16 v37, 0x2

    move/from16 v18, v1

    .end local v11    # "foundCell":Z
    .local v41, "foundCell":Z
    move-object v1, v12

    move v11, v2

    move v2, v4

    move/from16 v46, v3

    .end local v3    # "spanX":I
    .local v46, "spanX":I
    move v3, v5

    move/from16 v47, v4

    .end local v4    # "container":I
    .local v47, "container":I
    move/from16 v4, v16

    move/from16 v48, v5

    .end local v5    # "screenId":I
    .local v48, "screenId":I
    move/from16 v5, v19

    move-object/from16 v19, v6

    move-object/from16 v16, v28

    .end local v6    # "parentCell":Lcom/android/launcher3/CellLayout;
    .end local v28    # "originalPresenterPos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    .local v16, "originalPresenterPos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    .local v19, "parentCell":Lcom/android/launcher3/CellLayout;
    move/from16 v6, v18

    move-object/from16 v49, v20

    .end local v20    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .local v49, "item":Lcom/android/launcher3/model/data/ItemInfo;
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;IIIIII)V

    goto :goto_d

    .line 2103
    .end local v16    # "originalPresenterPos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    .end local v17    # "spanY":I
    .end local v19    # "parentCell":Lcom/android/launcher3/CellLayout;
    .end local v21    # "resultSpan":[I
    .end local v41    # "foundCell":Z
    .end local v46    # "spanX":I
    .end local v47    # "container":I
    .end local v48    # "screenId":I
    .end local v49    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .restart local v0    # "resultSpan":[I
    .restart local v2    # "spanY":I
    .restart local v3    # "spanX":I
    .restart local v4    # "container":I
    .restart local v5    # "screenId":I
    .restart local v7    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .restart local v11    # "foundCell":Z
    .restart local v28    # "originalPresenterPos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    :cond_16
    move-object/from16 v21, v0

    move/from16 v17, v2

    move/from16 v46, v3

    move/from16 v47, v4

    move/from16 v48, v5

    move-object/from16 v49, v7

    move/from16 v41, v11

    move-object/from16 v16, v28

    const/4 v11, 0x0

    const/16 v37, 0x2

    .line 2118
    .end local v0    # "resultSpan":[I
    .end local v2    # "spanY":I
    .end local v3    # "spanX":I
    .end local v4    # "container":I
    .end local v5    # "screenId":I
    .end local v7    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v11    # "foundCell":Z
    .end local v28    # "originalPresenterPos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    .restart local v16    # "originalPresenterPos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    .restart local v17    # "spanY":I
    .restart local v21    # "resultSpan":[I
    .restart local v41    # "foundCell":Z
    .restart local v46    # "spanX":I
    .restart local v47    # "container":I
    .restart local v48    # "screenId":I
    .restart local v49    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    :goto_d
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    .line 2119
    .local v0, "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v1, v1, v11

    invoke-virtual {v0, v1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setTmpCellX(I)V

    .line 2120
    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v1, v1, v11

    invoke-virtual {v0, v1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellX(I)V

    .line 2121
    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setTmpCellY(I)V

    .line 2122
    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellY(I)V

    .line 2123
    move-object/from16 v1, v49

    .end local v49    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .local v1, "item":Lcom/android/launcher3/model/data/ItemInfo;
    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v3, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    .line 2124
    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v3, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    .line 2125
    iput-boolean v2, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->isLockedToGrid:Z

    .line 2127
    move/from16 v2, v47

    const/16 v3, -0x65

    .end local v47    # "container":I
    .local v2, "container":I
    if-eq v2, v3, :cond_17

    instance-of v3, v12, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v3, :cond_17

    .line 2132
    move-object v3, v12

    check-cast v3, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    move-object/from16 v7, v44

    .end local v44    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    .local v7, "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    invoke-direct {v8, v10, v3, v7}, Lcom/android/launcher3/Workspace;->getWidgetResizeFrameRunnable(Lcom/android/launcher3/dragndrop/DragOptions;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)Ljava/lang/Runnable;

    move-result-object v3

    move-object/from16 v24, v3

    .end local v24    # "onCompleteRunnable":Ljava/lang/Runnable;
    .local v3, "onCompleteRunnable":Ljava/lang/Runnable;
    goto :goto_e

    .line 2127
    .end local v3    # "onCompleteRunnable":Ljava/lang/Runnable;
    .end local v7    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    .restart local v24    # "onCompleteRunnable":Ljava/lang/Runnable;
    .restart local v44    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    :cond_17
    move-object/from16 v7, v44

    .line 2135
    .end local v44    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    .restart local v7    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    :goto_e
    iget-object v3, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v28

    .line 2136
    invoke-virtual {v0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v32

    invoke-virtual {v0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v33

    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    .line 2135
    move-object/from16 v29, v15

    move/from16 v30, v2

    move/from16 v31, v48

    move/from16 v34, v3

    move/from16 v35, v4

    invoke-virtual/range {v28 .. v35}, Lcom/android/launcher3/model/ModelWriter;->modifyItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIIIII)V

    .line 2137
    .end local v0    # "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    .end local v13    # "targetScreenIndex":I
    .end local v14    # "snapScreen":I
    .end local v15    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    goto :goto_f

    .line 2138
    .end local v1    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v16    # "originalPresenterPos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    .end local v17    # "spanY":I
    .end local v21    # "resultSpan":[I
    .end local v41    # "foundCell":Z
    .end local v46    # "spanX":I
    .end local v48    # "screenId":I
    .local v0, "resultSpan":[I
    .local v2, "spanY":I
    .local v3, "spanX":I
    .restart local v4    # "container":I
    .restart local v5    # "screenId":I
    .local v7, "item":Lcom/android/launcher3/model/data/ItemInfo;
    .restart local v11    # "foundCell":Z
    .restart local v28    # "originalPresenterPos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    .restart local v44    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    :cond_18
    move-object/from16 v21, v0

    move/from16 v17, v2

    move/from16 v46, v3

    move v2, v4

    move/from16 v48, v5

    move-object v1, v7

    move/from16 v41, v11

    move-object/from16 v16, v28

    move-object/from16 v7, v44

    const/4 v11, 0x0

    const/16 v37, 0x2

    .end local v0    # "resultSpan":[I
    .end local v3    # "spanX":I
    .end local v4    # "container":I
    .end local v5    # "screenId":I
    .end local v11    # "foundCell":Z
    .end local v28    # "originalPresenterPos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    .end local v44    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    .restart local v1    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .local v2, "container":I
    .local v7, "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    .restart local v16    # "originalPresenterPos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    .restart local v17    # "spanY":I
    .restart local v21    # "resultSpan":[I
    .restart local v41    # "foundCell":Z
    .restart local v46    # "spanX":I
    .restart local v48    # "screenId":I
    if-nez v36, :cond_19

    .line 2139
    iget-object v0, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v3, v9, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-virtual {v8, v7, v0, v3}, Lcom/android/launcher3/Workspace;->onNoCellFound(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V

    .line 2141
    :cond_19
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/celllayout/CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/celllayout/CellInfo;->cell:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v0, :cond_1a

    .line 2142
    iget-object v0, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/launcher3/dragndrop/DragView;->detachContentView(Z)V

    .line 2146
    :cond_1a
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    .line 2147
    .local v0, "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    iget-object v3, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v4

    aput v4, v3, v11

    .line 2148
    iget-object v3, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v4

    const/4 v5, 0x1

    aput v4, v3, v5

    .line 2149
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    .line 2150
    .local v3, "layout":Lcom/android/launcher3/CellLayout;
    invoke-virtual {v3, v12}, Lcom/android/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 2152
    .end local v0    # "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    .end local v1    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v2    # "container":I
    .end local v3    # "layout":Lcom/android/launcher3/CellLayout;
    .end local v16    # "originalPresenterPos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    .end local v17    # "spanY":I
    .end local v21    # "resultSpan":[I
    .end local v26    # "hasMovedLayouts":Z
    .end local v27    # "hasMovedIntoHotseat":Z
    .end local v36    # "returnToOriginalCellToPreventShuffling":Z
    .end local v40    # "distance":F
    .end local v41    # "foundCell":Z
    .end local v42    # "minSpanX":I
    .end local v43    # "minSpanY":I
    .end local v46    # "spanX":I
    .end local v48    # "screenId":I
    :goto_f
    move/from16 v16, v39

    const-wide/16 v13, 0x1f4

    goto :goto_11

    .line 2039
    .end local v7    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    .local v11, "droppedOnOriginalCell":Z
    .local v15, "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    .local v16, "droppedOnOriginalCellDuringTransition":Z
    .restart local v26    # "hasMovedLayouts":Z
    .restart local v27    # "hasMovedIntoHotseat":Z
    .local v36, "spanY":I
    .local v37, "spanX":I
    .local v38, "container":I
    .local v39, "screenId":I
    .restart local v40    # "distance":F
    :cond_1b
    move v0, v11

    move-object v7, v15

    move/from16 v17, v36

    move/from16 v46, v37

    move/from16 v2, v38

    move/from16 v48, v39

    .line 2043
    .end local v11    # "droppedOnOriginalCell":Z
    .end local v15    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    .end local v36    # "spanY":I
    .end local v37    # "spanX":I
    .end local v38    # "container":I
    .end local v39    # "screenId":I
    .local v0, "droppedOnOriginalCell":Z
    .restart local v2    # "container":I
    .restart local v7    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    .restart local v17    # "spanY":I
    .restart local v46    # "spanX":I
    .restart local v48    # "screenId":I
    :goto_10
    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v3, Lcom/android/launcher3/LauncherState;->EDIT_MODE:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 2044
    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const-wide/16 v13, 0x1f4

    invoke-virtual {v1, v3, v13, v14}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;J)V

    .line 2046
    :cond_1c
    return-void

    .line 2018
    .end local v0    # "droppedOnOriginalCell":Z
    .end local v2    # "container":I
    .end local v7    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    .end local v17    # "spanY":I
    .end local v26    # "hasMovedLayouts":Z
    .end local v27    # "hasMovedIntoHotseat":Z
    .end local v40    # "distance":F
    .end local v46    # "spanX":I
    .end local v48    # "screenId":I
    .restart local v11    # "droppedOnOriginalCell":Z
    .restart local v15    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    :cond_1d
    move/from16 v37, v7

    move v0, v11

    move v11, v14

    move-object v7, v15

    const-wide/16 v13, 0x1f4

    .line 2154
    .end local v11    # "droppedOnOriginalCell":Z
    .end local v15    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    .restart local v0    # "droppedOnOriginalCell":Z
    .restart local v7    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    instance-of v1, v12, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v1, :cond_1e

    .line 2155
    iget-object v1, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/dragndrop/DragView;->detachContentView(Z)V

    .line 2157
    invoke-virtual {v8, v12}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    .line 2158
    .local v1, "cellLayout":Lcom/android/launcher3/CellLayout;
    invoke-virtual {v8, v1}, Lcom/android/launcher3/Workspace;->isVisible(Landroid/view/View;)Z

    move-result v2

    .line 2160
    .local v2, "pageIsVisible":Z
    if-eqz v2, :cond_1e

    .line 2161
    move-object v3, v12

    check-cast v3, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-direct {v8, v10, v3, v1}, Lcom/android/launcher3/Workspace;->getWidgetResizeFrameRunnable(Lcom/android/launcher3/dragndrop/DragOptions;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)Ljava/lang/Runnable;

    move-result-object v3

    move/from16 v38, v0

    move-object/from16 v24, v3

    .end local v24    # "onCompleteRunnable":Ljava/lang/Runnable;
    .local v3, "onCompleteRunnable":Ljava/lang/Runnable;
    goto :goto_11

    .line 2167
    .end local v1    # "cellLayout":Lcom/android/launcher3/CellLayout;
    .end local v2    # "pageIsVisible":Z
    .end local v3    # "onCompleteRunnable":Ljava/lang/Runnable;
    .restart local v24    # "onCompleteRunnable":Ljava/lang/Runnable;
    :cond_1e
    move/from16 v38, v0

    .end local v0    # "droppedOnOriginalCell":Z
    .local v38, "droppedOnOriginalCell":Z
    :goto_11
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/launcher3/CellLayout;

    .line 2168
    .local v15, "parent":Lcom/android/launcher3/CellLayout;
    iget-object v0, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->hasDrawn()Z

    move-result v0

    const/16 v17, 0x0

    if-eqz v0, :cond_28

    .line 2169
    if-eqz v16, :cond_22

    .line 2172
    new-instance v0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    .line 2173
    .local v0, "callbackList":Lcom/android/launcher3/util/RunnableList;
    move-object/from16 v1, v24

    .line 2174
    .local v1, "onCompleteCallback":Ljava/lang/Runnable;
    iget-object v2, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/LauncherState;

    .line 2175
    .local v2, "currentState":Lcom/android/launcher3/LauncherState;
    iget-object v3, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v3

    .line 2176
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/launcher3/BaseDraggingActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lcom/android/launcher3/BaseDraggingActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/util/RunnableList;)V

    iget-object v5, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 2177
    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Lcom/android/launcher3/LauncherState;->getTransitionDuration(Landroid/content/Context;Z)I

    move-result v5

    .line 2175
    invoke-virtual {v3, v4, v12, v5}, Lcom/android/launcher3/dragndrop/DragController;->animateDragViewToOriginalPosition(Ljava/lang/Runnable;Landroid/view/View;I)V

    .line 2178
    iget-object v3, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v4, Lcom/android/launcher3/LauncherState;->EDIT_MODE:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 2179
    iget-object v3, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .line 2180
    if-nez v1, :cond_1f

    .line 2181
    move-object/from16 v5, v17

    goto :goto_12

    .line 2182
    :cond_1f
    new-instance v5, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda10;

    invoke-direct {v5, v0, v1}, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda10;-><init>(Lcom/android/launcher3/util/RunnableList;Ljava/lang/Runnable;)V

    invoke-static {v5}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v17

    move-object/from16 v5, v17

    .line 2179
    :goto_12
    const-wide/16 v13, 0x0

    invoke-virtual {v3, v4, v13, v14, v5}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;JLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_13

    .line 2184
    :cond_20
    if-eqz v1, :cond_21

    .line 2185
    new-instance v3, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda11;

    invoke-direct {v3, v0, v1}, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda11;-><init>(Lcom/android/launcher3/util/RunnableList;Ljava/lang/Runnable;)V

    invoke-static {v3}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    .line 2187
    :cond_21
    :goto_13
    iget-object v3, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDropTargetBar()Lcom/android/launcher3/DropTargetBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/DropTargetBar;->onDragEnd()V

    .line 2188
    invoke-virtual {v15, v12}, Lcom/android/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 2189
    return-void

    .line 2191
    .end local v0    # "callbackList":Lcom/android/launcher3/util/RunnableList;
    .end local v1    # "onCompleteCallback":Ljava/lang/Runnable;
    .end local v2    # "currentState":Lcom/android/launcher3/LauncherState;
    :cond_22
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    .line 2192
    .local v6, "info":Lcom/android/launcher3/model/data/ItemInfo;
    iget v0, v6, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_24

    iget v0, v6, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_23

    goto :goto_14

    :cond_23
    move/from16 v45, v11

    goto :goto_15

    :cond_24
    :goto_14
    const/16 v45, 0x1

    :goto_15
    move/from16 v18, v45

    .line 2194
    .local v18, "isWidget":Z
    if-eqz v18, :cond_26

    if-eqz v7, :cond_26

    .line 2196
    if-eqz v23, :cond_25

    move/from16 v5, v37

    goto :goto_16

    .line 2197
    :cond_25
    move v5, v11

    :goto_16
    nop

    .line 2198
    .local v5, "animationType":I
    iget-object v3, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/4 v4, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v15

    move-object/from16 v19, v6

    .end local v6    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .local v19, "info":Lcom/android/launcher3/model/data/ItemInfo;
    move-object v6, v12

    move-object/from16 v50, v7

    .end local v7    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    .local v50, "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    move v7, v11

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/Workspace;->animateWidgetDrop(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    .line 2199
    .end local v5    # "animationType":I
    goto :goto_17

    .line 2194
    .end local v19    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v50    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    .restart local v6    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .restart local v7    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    :cond_26
    move-object/from16 v19, v6

    move-object/from16 v50, v7

    .line 2200
    .end local v6    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v7    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    .restart local v19    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .restart local v50    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    if-eqz v22, :cond_27

    const/16 v25, 0x12c

    :cond_27
    move/from16 v0, v25

    .line 2201
    .local v0, "duration":I
    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    iget-object v2, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v1, v2, v12, v0, v8}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;Landroid/view/View;ILandroid/view/View;)V

    .line 2204
    .end local v0    # "duration":I
    .end local v18    # "isWidget":Z
    .end local v19    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    :goto_17
    goto :goto_18

    .line 2205
    .end local v50    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    .restart local v7    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    :cond_28
    move-object/from16 v50, v7

    .end local v7    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    .restart local v50    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    iput-boolean v11, v9, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 2206
    invoke-virtual {v12, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2208
    :goto_18
    invoke-virtual {v15, v12}, Lcom/android/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 2210
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->EDIT_MODE:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 2211
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .line 2212
    if-nez v24, :cond_29

    goto :goto_19

    :cond_29
    invoke-static/range {v24 .. v24}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v17

    :goto_19
    move-object/from16 v2, v17

    .line 2211
    invoke-virtual {v0, v1, v13, v14, v2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;JLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_1a

    .line 2213
    :cond_2a
    if-eqz v24, :cond_2b

    .line 2214
    invoke-static/range {v24 .. v24}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    .line 2216
    :cond_2b
    :goto_1a
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, v9, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROP_COMPLETED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 2217
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    move/from16 v11, v38

    move-object/from16 v2, v50

    goto :goto_1c

    .line 2010
    .end local v12    # "cell":Landroid/view/View;
    .end local v16    # "droppedOnOriginalCellDuringTransition":Z
    .end local v38    # "droppedOnOriginalCell":Z
    .end local v50    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    .restart local v11    # "droppedOnOriginalCell":Z
    .local v15, "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    :cond_2c
    move v0, v11

    move v11, v14

    move-object/from16 v50, v15

    .line 2011
    .end local v11    # "droppedOnOriginalCell":Z
    .end local v15    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    .local v0, "droppedOnOriginalCell":Z
    .restart local v50    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    :goto_1b
    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v1, v11

    float-to-int v2, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    float-to-int v1, v1

    filled-new-array {v2, v1}, [I

    move-result-object v1

    .line 2013
    .local v1, "touchXY":[I
    move-object/from16 v2, v50

    .end local v50    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    .local v2, "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    invoke-direct {v8, v1, v2, v9}, Lcom/android/launcher3/Workspace;->onDropExternal([ILcom/android/launcher3/CellLayout;Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 2014
    .end local v1    # "touchXY":[I
    move v11, v0

    .line 2220
    .end local v0    # "droppedOnOriginalCell":Z
    .restart local v11    # "droppedOnOriginalCell":Z
    :goto_1c
    iget-object v0, v9, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v0, :cond_2d

    if-nez v11, :cond_2d

    .line 2221
    iget-object v0, v9, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    sget v1, Lcom/android/launcher3/R$string;->item_moved:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->completeAction(I)V

    .line 2223
    :cond_2d
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 3
    .param p1, "target"    # Landroid/view/View;
    .param p2, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p3, "success"    # Z

    .line 3091
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    if-eqz p3, :cond_0

    .line 3092
    if-eq p1, p0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/celllayout/CellInfo;

    if-eqz v0, :cond_2

    .line 3093
    iget-object v0, v0, Lcom/android/launcher3/celllayout/CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    goto :goto_0

    .line 3095
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/celllayout/CellInfo;

    if-eqz v0, :cond_2

    .line 3097
    iget-object v0, v0, Lcom/android/launcher3/celllayout/CellInfo;->cell:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    if-eqz v0, :cond_1

    .line 3098
    iget-object v0, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragView;->detachContentView(Z)V

    .line 3100
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/celllayout/CellInfo;

    iget v1, v1, Lcom/android/launcher3/celllayout/CellInfo;->container:I

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/celllayout/CellInfo;

    iget v2, v2, Lcom/android/launcher3/celllayout/CellInfo;->screenId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Launcher;->getCellLayout(II)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 3102
    .local v0, "cellLayout":Lcom/android/launcher3/CellLayout;
    if-eqz v0, :cond_2

    .line 3103
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/celllayout/CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/celllayout/CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 3109
    .end local v0    # "cellLayout":Lcom/android/launcher3/CellLayout;
    :cond_2
    :goto_0
    iget-object v0, p2, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(I)Landroid/view/View;

    move-result-object v0

    .line 3110
    .local v0, "cell":Landroid/view/View;
    iget-boolean v1, p2, Lcom/android/launcher3/DropTarget$DragObject;->cancelled:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 3111
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3113
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/celllayout/CellInfo;

    .line 3114
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1102
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-static {p1}, Lcom/android/launcher3/MotionEventsUtils;->isTrackpadMultiFingerSwipe(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1103
    const/4 v0, 0x0

    return v0

    .line 1105
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1443
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mUnlockWallpaperFromDefaultPageOnLayout:Z

    if-eqz v0, :cond_0

    .line 1444
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->setLockToDefaultPage(Z)V

    .line 1445
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mUnlockWallpaperFromDefaultPageOnLayout:Z

    .line 1447
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mFirstLayout:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1448
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->syncWithScroll()V

    .line 1449
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->jumpToFinal()V

    .line 1451
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/PagedView;->onLayout(ZIIII)V

    .line 1452
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updatePageAlphaValues()V

    .line 1453
    return-void
.end method

.method public onNoCellFound(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V
    .locals 4
    .param p1, "dropTargetLayout"    # Landroid/view/View;
    .param p2, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "logInstanceId"    # Lcom/android/launcher3/logging/InstanceId;

    .line 2241
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2242
    sget v0, Lcom/android/launcher3/R$string;->hotseat_out_of_space:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/launcher3/R$string;->out_of_space:I

    .line 2243
    .local v0, "strId":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2244
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    .line 2245
    .local v1, "logger":Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    if-eqz p3, :cond_1

    .line 2246
    invoke-interface {v1, p3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    .line 2248
    :cond_1
    sget-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROP_FAILED_INSUFFICIENT_SPACE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 2249
    return-void
.end method

.method public onOverlayScrollChanged(F)V
    .locals 4
    .param p1, "scroll"    # F

    .line 1308
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v2

    iput v2, p0, Lcom/android/launcher3/Workspace;->mOverlayProgress:F

    .line 1309
    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    .line 1310
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    if-nez v0, :cond_1

    .line 1311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    .line 1312
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->onOverlayVisibilityChanged(Z)V

    goto :goto_0

    .line 1314
    :cond_0
    iget v1, p0, Lcom/android/launcher3/Workspace;->mOverlayProgress:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    .line 1315
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    if-eqz v0, :cond_1

    .line 1316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    .line 1317
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->onOverlayVisibilityChanged(Z)V

    .line 1320
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mOverlayCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1321
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1322
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mOverlayCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayCallbacks;

    iget v3, p0, Lcom/android/launcher3/Workspace;->mOverlayProgress:F

    invoke-interface {v2, v3}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayCallbacks;->onOverlayScrollChanged(F)V

    .line 1321
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1324
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method protected onPageBeginTransition()V
    .locals 0

    .line 1214
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onPageBeginTransition()V

    .line 1215
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    .line 1216
    return-void
.end method

.method protected onPageEndTransition()V
    .locals 1

    .line 1219
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onPageEndTransition()V

    .line 1220
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    .line 1222
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1223
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1226
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->forceTouchMove()V

    .line 1230
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    if-eqz v0, :cond_1

    .line 1231
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->stripEmptyScreens()V

    .line 1232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    .line 1237
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->onPageEndTransition()V

    .line 1238
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 4
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .line 1273
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/PagedView;->onScrollChanged(IIII)V

    .line 1277
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 1278
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v3, Lcom/android/launcher3/LauncherState;->HINT_STATE:Lcom/android/launcher3/LauncherState;

    if-eq v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1279
    .local v0, "isSwitchingState":Z
    :goto_0
    if-nez v0, :cond_2

    .line 1280
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_2

    :cond_2
    :goto_1
    nop

    .line 1281
    .local v1, "isTransitioning":Z
    :goto_2
    if-nez v1, :cond_3

    .line 1282
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->showPageIndicatorAtCurrentScroll()V

    .line 1285
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updatePageAlphaValues()V

    .line 1286
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updatePageScrollValues()V

    .line 1287
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->enableHwLayersOnVisiblePages()V

    .line 1288
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 1128
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->shouldConsumeTouch(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1114
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-static {p1}, Lcom/android/launcher3/MotionEventsUtils;->isTrackpadMultiFingerSwipe(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1115
    const/4 v0, 0x0

    return v0

    .line 1117
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 583
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    instance-of v0, p1, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_0

    .line 586
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 587
    .local v0, "cl":Lcom/android/launcher3/CellLayout;
    invoke-virtual {v0, p0}, Lcom/android/launcher3/CellLayout;->setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 588
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setImportantForAccessibility(I)V

    .line 589
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onViewAdded(Landroid/view/View;)V

    .line 590
    return-void

    .line 584
    .end local v0    # "cl":Lcom/android/launcher3/CellLayout;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onWallpaperTap(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1528
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    .line 1529
    .local v0, "position":[I
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getLocationOnScreen([I)V

    .line 1531
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 1532
    .local v1, "pointerIndex":I
    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    aput v3, v0, v2

    .line 1533
    const/4 v3, 0x1

    aget v4, v0, v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v4, v5

    aput v4, v0, v3

    .line 1535
    iget-object v5, p0, Lcom/android/launcher3/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    .line 1536
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 1537
    const-string v4, "android.wallpaper.tap"

    goto :goto_0

    :cond_0
    const-string v4, "android.wallpaper.secondaryTap"

    :goto_0
    move-object v7, v4

    aget v8, v0, v2

    aget v9, v0, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1535
    invoke-virtual/range {v5 .. v11}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 1539
    return-void
.end method

.method public persistRemoveItemsByMatcher(Ljava/util/function/Predicate;Ljava/lang/String;)V
    .locals 1
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3403
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    .local p1, "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/model/ModelWriter;->deleteItemsFromDatabase(Ljava/util/function/Predicate;Ljava/lang/String;)V

    .line 3404
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->removeItemsByMatcher(Ljava/util/function/Predicate;)V

    .line 3405
    return-void
.end method

.method public prepareAccessibilityDrop()V
    .locals 0

    .line 1993
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    return-void
.end method

.method public removeAllWorkspaceScreens()V
    .locals 2

    .line 626
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->disableLayoutTransitions()V

    .line 629
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mFirstPagePinnedItem:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 630
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mFirstPagePinnedItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 634
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->removeFolderListeners()V

    .line 635
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->removeAllViews()V

    .line 636
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->clear()V

    .line 637
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSparseArrayMap;->clear()V

    .line 640
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SMARTSPACE_REMOVAL:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 641
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->bindAndInitFirstWorkspaceScreen()V

    .line 645
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHandler:Landroid/os/Handler;

    const-class v1, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 648
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->enableLayoutTransitions()V

    .line 649
    return-void
.end method

.method public removeExtraEmptyScreen(Z)V
    .locals 2
    .param p1, "stripEmptyScreens"    # Z

    .line 826
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(IZLjava/lang/Runnable;)V

    .line 827
    return-void
.end method

.method public removeExtraEmptyScreenDelayed(IZLjava/lang/Runnable;)V
    .locals 3
    .param p1, "delay"    # I
    .param p2, "stripEmptyScreens"    # Z
    .param p3, "onComplete"    # Ljava/lang/Runnable;

    .line 848
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 850
    return-void

    .line 853
    :cond_0
    if-lez p1, :cond_1

    .line 854
    new-instance v0, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/Workspace;ZLjava/lang/Runnable;)V

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 856
    return-void

    .line 861
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->convertFinalScreenToEmptyScreenIfNecessary()V

    .line 863
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasExtraEmptyScreens()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 864
    new-instance v0, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->forEachExtraEmptyPageId(Ljava/util/function/Consumer;)V

    .line 870
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setCurrentPage(I)V

    .line 873
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->showPageIndicatorAtCurrentScroll()V

    .line 876
    :cond_2
    if-eqz p2, :cond_3

    .line 879
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->stripEmptyScreens()V

    .line 882
    :cond_3
    if-eqz p3, :cond_4

    .line 883
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 885
    :cond_4
    return-void
.end method

.method public removeFolderListeners()V
    .locals 1

    .line 3158
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    new-instance v0, Lcom/android/launcher3/Workspace$6;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Workspace$6;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    .line 3167
    return-void
.end method

.method public removeItemsByMatcher(Ljava/util/function/Predicate;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 3302
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    .local p1, "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 3303
    .local v4, "layout":Lcom/android/launcher3/CellLayout;
    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    .line 3305
    .local v5, "container":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    invoke-virtual {v5}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_2

    .line 3306
    invoke-virtual {v5, v6}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3307
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    .line 3309
    .local v8, "info":Lcom/android/launcher3/model/data/ItemInfo;
    invoke-interface {p1, v8}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 3310
    invoke-virtual {v4, v7}, Lcom/android/launcher3/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 3311
    instance-of v9, v7, Lcom/android/launcher3/DropTarget;

    if-eqz v9, :cond_1

    .line 3312
    iget-object v9, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    move-object v10, v7

    check-cast v10, Lcom/android/launcher3/DropTarget;

    invoke-virtual {v9, v10}, Lcom/android/launcher3/dragndrop/DragController;->removeDropTarget(Lcom/android/launcher3/DropTarget;)V

    goto :goto_2

    .line 3314
    :cond_0
    instance-of v9, v7, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v9, :cond_1

    .line 3315
    move-object v9, v8

    check-cast v9, Lcom/android/launcher3/model/data/FolderInfo;

    .line 3316
    .local v9, "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    iget-object v10, v9, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v10

    .line 3317
    invoke-interface {v10, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v10

    .line 3318
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 3319
    .local v10, "matches":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 3320
    invoke-virtual {v9, v10, v2}, Lcom/android/launcher3/model/data/FolderInfo;->removeAll(Ljava/util/List;Z)V

    .line 3321
    move-object v11, v7

    check-cast v11, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v11}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher3/folder/Folder;->isOpen()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 3322
    move-object v11, v7

    check-cast v11, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v11}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/android/launcher3/folder/Folder;->close(Z)V

    .line 3305
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v9    # "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    .end local v10    # "matches":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 3302
    .end local v4    # "layout":Lcom/android/launcher3/CellLayout;
    .end local v5    # "container":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    .end local v6    # "i":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3330
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->stripEmptyScreens()V

    .line 3331
    return-void
.end method

.method public removeOverlayCallback(Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayCallbacks;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayCallbacks;

    .line 1338
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mOverlayCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1339
    return-void
.end method

.method public removeWidget(I)V
    .locals 1
    .param p1, "appWidgetId"    # I

    .line 3141
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    new-instance v0, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda9;-><init>(Lcom/android/launcher3/Workspace;I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    .line 3152
    return-void
.end method

.method public removeWorkspaceItem(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 3120
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 3121
    .local v0, "parentCell":Lcom/android/launcher3/CellLayout;
    if-eqz v0, :cond_0

    .line 3122
    invoke-virtual {v0, p1}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 3130
    :cond_0
    instance-of v1, p1, Lcom/android/launcher3/DropTarget;

    if-eqz v1, :cond_1

    .line 3131
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/DropTarget;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/dragndrop/DragController;->removeDropTarget(Lcom/android/launcher3/DropTarget;)V

    .line 3133
    :cond_1
    return-void
.end method

.method public resetTransitionTransform()V
    .locals 1

    .line 3050
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3051
    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentScale:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setScaleX(F)V

    .line 3052
    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentScale:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setScaleY(F)V

    .line 3054
    :cond_0
    return-void
.end method

.method public restoreInstanceStateForChild(I)V
    .locals 2
    .param p1, "child"    # I

    .line 3182
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mSavedStates:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 3183
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mRestoredPages:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 3184
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 3185
    .local v0, "cl":Lcom/android/launcher3/CellLayout;
    if-eqz v0, :cond_0

    .line 3186
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mSavedStates:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->restoreInstanceState(Landroid/util/SparseArray;)V

    .line 3189
    .end local v0    # "cl":Lcom/android/launcher3/CellLayout;
    :cond_0
    return-void
.end method

.method public restoreInstanceStateForRemainingPages()V
    .locals 3

    .line 3192
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    .line 3193
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3194
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mRestoredPages:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/IntArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3195
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->restoreInstanceStateForChild(I)V

    .line 3193
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3198
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mRestoredPages:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntArray;->clear()V

    .line 3199
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mSavedStates:Landroid/util/SparseArray;

    .line 3200
    return-void
.end method

.method public scrollLeft()Z
    .locals 2

    .line 3204
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x0

    .line 3205
    .local v0, "result":Z
    iget-boolean v1, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInScrollableState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3206
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->scrollLeft()Z

    move-result v0

    .line 3208
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v1

    .line 3209
    .local v1, "openFolder":Lcom/android/launcher3/folder/Folder;
    if-eqz v1, :cond_1

    .line 3210
    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->completeDragExit()V

    .line 3212
    :cond_1
    return v0
.end method

.method public scrollRight()Z
    .locals 2

    .line 3217
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x0

    .line 3218
    .local v0, "result":Z
    iget-boolean v1, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInScrollableState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3219
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->scrollRight()Z

    move-result v0

    .line 3221
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v1

    .line 3222
    .local v1, "openFolder":Lcom/android/launcher3/folder/Folder;
    if-eqz v1, :cond_1

    .line 3223
    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->completeDragExit()V

    .line 3225
    :cond_1
    return v0
.end method

.method setCurrentDragOverlappingLayout(Lcom/android/launcher3/CellLayout;)V
    .locals 2
    .param p1, "layout"    # Lcom/android/launcher3/CellLayout;

    .line 2343
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_0

    .line 2344
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    .line 2346
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    .line 2347
    if-eqz p1, :cond_1

    .line 2348
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    .line 2350
    :cond_1
    return-void
.end method

.method setCurrentDropLayout(Lcom/android/launcher3/CellLayout;)V
    .locals 1
    .param p1, "layout"    # Lcom/android/launcher3/CellLayout;

    .line 2329
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_0

    .line 2330
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->revertTempState()V

    .line 2331
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->onDragExit()V

    .line 2333
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    .line 2334
    if-eqz p1, :cond_1

    .line 2335
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->onDragEnter()V

    .line 2337
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->cleanupReorder(Z)V

    .line 2338
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->cleanupFolderCreation()V

    .line 2339
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/launcher3/Workspace;->setCurrentDropOverCell(II)V

    .line 2340
    return-void
.end method

.method setCurrentDropOverCell(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 2353
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget v0, p0, Lcom/android/launcher3/Workspace;->mDragOverX:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/Workspace;->mDragOverY:I

    if-eq p2, v0, :cond_1

    .line 2354
    :cond_0
    iput p1, p0, Lcom/android/launcher3/Workspace;->mDragOverX:I

    .line 2355
    iput p2, p0, Lcom/android/launcher3/Workspace;->mDragOverY:I

    .line 2356
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    .line 2358
    :cond_1
    return-void
.end method

.method setDragMode(I)V
    .locals 2
    .param p1, "dragMode"    # I

    .line 2361
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget v0, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-eq p1, v0, :cond_4

    .line 2362
    if-nez p1, :cond_0

    .line 2363
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupAddToFolder()V

    .line 2366
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->cleanupReorder(Z)V

    .line 2367
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->cleanupFolderCreation()V

    goto :goto_0

    .line 2368
    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 2369
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->cleanupReorder(Z)V

    .line 2370
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->cleanupFolderCreation()V

    goto :goto_0

    .line 2371
    :cond_1
    if-ne p1, v1, :cond_2

    .line 2372
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupAddToFolder()V

    .line 2373
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->cleanupReorder(Z)V

    goto :goto_0

    .line 2374
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 2375
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupAddToFolder()V

    .line 2376
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->cleanupFolderCreation()V

    .line 2378
    :cond_3
    :goto_0
    iput p1, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    .line 2380
    :cond_4
    return-void
.end method

.method public setFinalTransitionTransform()V
    .locals 1

    .line 3042
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3043
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mCurrentScale:F

    .line 3044
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->getFinalScale()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setScaleX(F)V

    .line 3045
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->getFinalScale()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setScaleY(F)V

    .line 3047
    :cond_0
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 331
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 333
    .local v0, "grid":Lcom/android/launcher3/DeviceProfile;
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->shouldFadeAdjacentWorkspaceScreens()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    .line 335
    iget-object v1, v0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    .line 336
    .local v1, "padding":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/launcher3/Workspace;->setPadding(IIII)V

    .line 337
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 339
    iget-boolean v2, p0, Lcom/android/launcher3/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    if-eqz v2, :cond_0

    .line 341
    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->setPageSpacing(I)V

    goto :goto_0

    .line 346
    :cond_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 347
    .local v2, "maxInsets":I
    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 348
    .local v3, "maxPadding":I
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher3/Workspace;->setPageSpacing(I)V

    .line 351
    .end local v2    # "maxInsets":I
    .end local v3    # "maxPadding":I
    :goto_0
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateCellLayoutMeasures()V

    .line 352
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateWorkspaceWidgetsSizes()V

    .line 353
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->setPageIndicatorInset()V

    .line 354
    return-void
.end method

.method public setLauncherOverlay(Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayTouchProxy;)V
    .locals 2
    .param p1, "overlay"    # Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayTouchProxy;

    .line 1242
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    if-nez p1, :cond_0

    .line 1243
    new-instance v0, Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    .line 1244
    .local v0, "newEffect":Lcom/android/launcher3/util/EdgeEffectCompat;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mOverlayEdgeEffect:Lcom/android/launcher3/util/OverlayEdgeEffect;

    goto :goto_0

    .line 1246
    .end local v0    # "newEffect":Lcom/android/launcher3/util/EdgeEffectCompat;
    :cond_0
    new-instance v0, Lcom/android/launcher3/util/OverlayEdgeEffect;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/util/OverlayEdgeEffect;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayTouchProxy;)V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mOverlayEdgeEffect:Lcom/android/launcher3/util/OverlayEdgeEffect;

    .line 1247
    .restart local v0    # "newEffect":Lcom/android/launcher3/util/EdgeEffectCompat;
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayTouchProxy;->setOverlayCallbacks(Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayCallbacks;)V

    .line 1250
    :goto_0
    iget-boolean v1, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v1, :cond_1

    .line 1251
    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    goto :goto_1

    .line 1253
    :cond_1
    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    .line 1255
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->onOverlayScrollChanged(F)V

    .line 1256
    return-void
.end method

.method public setPivotToScaleWithSelf(Landroid/view/View;)V
    .locals 2
    .param p1, "sibling"    # Landroid/view/View;

    .line 3468
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPivotY()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 3469
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    sub-float/2addr v0, v1

    .line 3468
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 3470
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPivotX()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 3471
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 3470
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 3472
    return-void
.end method

.method public setState(Lcom/android/launcher3/LauncherState;)V
    .locals 2
    .param p1, "toState"    # Lcom/android/launcher3/LauncherState;

    .line 1562
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->onStartStateTransition()V

    .line 1563
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/LauncherState;->onLeavingState(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherState;)V

    .line 1564
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->setState(Lcom/android/launcher3/LauncherState;)V

    .line 1565
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->onEndStateTransition()V

    .line 1566
    return-void
.end method

.method public bridge synthetic setState(Ljava/lang/Object;)V
    .locals 0

    .line 145
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->setState(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 3
    .param p1, "toState"    # Lcom/android/launcher3/LauncherState;
    .param p2, "config"    # Lcom/android/launcher3/states/StateAnimationConfig;
    .param p3, "animation"    # Lcom/android/launcher3/anim/PendingAnimation;

    .line 1574
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    new-instance v0, Lcom/android/launcher3/Workspace$StateTransitionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/Workspace$StateTransitionListener;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/Workspace$StateTransitionListener-IA;)V

    .line 1575
    .local v0, "listener":Lcom/android/launcher3/Workspace$StateTransitionListener;, "Lcom/android/launcher3/Workspace<TT;>.StateTransitionListener;"
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v2, p1}, Lcom/android/launcher3/LauncherState;->onLeavingState(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherState;)V

    .line 1576
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V

    .line 1580
    sget v1, Lcom/android/launcher3/LauncherState;->FLAG_MULTI_PAGE:I

    invoke-virtual {p1, v1}, Lcom/android/launcher3/LauncherState;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1581
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mForceDrawAdjacentPages:Z

    .line 1583
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->invalidate()V

    .line 1585
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1586
    .local v1, "stepAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1587
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1588
    invoke-virtual {p3, v1}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    .line 1589
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public bridge synthetic setStateWithAnimation(Ljava/lang/Object;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 0

    .line 145
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/Workspace;->setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V

    return-void
.end method

.method protected setWallpaperDimension()V
    .locals 2

    .line 1359
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    sget-object v0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/launcher3/Workspace$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Workspace$2;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1369
    return-void
.end method

.method setup(Lcom/android/launcher3/dragndrop/DragController;)V
    .locals 2
    .param p1, "dragController"    # Lcom/android/launcher3/dragndrop/DragController;

    .line 3078
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    new-instance v0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

    .line 3079
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    .line 3083
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    .line 3084
    return-void
.end method

.method protected shouldFlingForVelocity(I)Z
    .locals 2
    .param p1, "velocityX"    # I

    .line 1299
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget v0, p0, Lcom/android/launcher3/Workspace;->mOverlayProgress:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    .line 1300
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->shouldFlingForVelocity(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1299
    :goto_0
    return v0
.end method

.method public showPageIndicatorAtCurrentScroll()V
    .locals 3

    .line 1291
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mPageIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1292
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mPageIndicator:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->computeMaxScroll()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/pageindicators/PageIndicator;->setScroll(II)V

    .line 1294
    :cond_0
    return-void
.end method

.method protected snapToDestination()V
    .locals 1

    .line 1264
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mOverlayEdgeEffect:Lcom/android/launcher3/util/OverlayEdgeEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverlayEdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1265
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->snapToPageImmediately(I)Z

    goto :goto_0

    .line 1267
    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    .line 1269
    :goto_0
    return-void
.end method

.method public startDrag(Lcom/android/launcher3/celllayout/CellInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 4
    .param p1, "cellInfo"    # Lcom/android/launcher3/celllayout/CellInfo;
    .param p2, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 1630
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p1, Lcom/android/launcher3/celllayout/CellInfo;->cell:Landroid/view/View;

    .line 1632
    .local v0, "child":Landroid/view/View;
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/celllayout/CellInfo;

    .line 1633
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1635
    iget-boolean v1, p2, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-eqz v1, :cond_0

    .line 1636
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    new-instance v2, Lcom/android/launcher3/Workspace$3;

    new-instance v3, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v2, p0, p0, v3}, Lcom/android/launcher3/Workspace$3;-><init>(Lcom/android/launcher3/Workspace;Landroid/view/ViewGroup;Ljava/util/function/Function;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 1652
    :cond_0
    invoke-virtual {p0, v0, p0, p2}, Lcom/android/launcher3/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 1653
    return-void
.end method

.method public stripEmptyScreens()V
    .locals 11

    .line 1019
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    return-void

    .line 1025
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isPageInTransition()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1026
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    .line 1027
    return-void

    .line 1030
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v0

    .line 1031
    .local v0, "currentPage":I
    new-instance v2, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v2}, Lcom/android/launcher3/util/IntArray;-><init>()V

    .line 1032
    .local v2, "removeScreens":Lcom/android/launcher3/util/IntArray;
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v3}, Lcom/android/launcher3/util/IntSparseArrayMap;->size()I

    move-result v3

    .line 1033
    .local v3, "total":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 1034
    iget-object v5, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/util/IntSparseArrayMap;->keyAt(I)I

    move-result v5

    .line 1035
    .local v5, "id":I
    iget-object v6, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v6, v4}, Lcom/android/launcher3/util/IntSparseArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/CellLayout;

    .line 1037
    .local v6, "cl":Lcom/android/launcher3/CellLayout;
    nop

    .line 1040
    invoke-virtual {v6}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v7

    if-nez v7, :cond_2

    .line 1041
    invoke-virtual {v2, v5}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 1033
    .end local v5    # "id":I
    .end local v6    # "cl":Lcom/android/launcher3/CellLayout;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1047
    .end local v4    # "i":I
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1049
    invoke-virtual {v2}, Lcom/android/launcher3/util/IntArray;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1050
    .local v4, "removeScreensIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1051
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1052
    .local v5, "pageToRemove":I
    invoke-virtual {p0, v5}, Lcom/android/launcher3/Workspace;->getScreenPair(I)I

    move-result v6

    .line 1053
    .local v6, "pagePair":I
    invoke-virtual {v2, v6}, Lcom/android/launcher3/util/IntArray;->contains(I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1056
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 1058
    .end local v5    # "pageToRemove":I
    .end local v6    # "pagePair":I
    :cond_4
    goto :goto_1

    .line 1064
    .end local v4    # "removeScreensIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v4

    .line 1066
    .local v4, "minScreens":I
    const/4 v5, 0x0

    .line 1067
    .local v5, "pageShift":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    invoke-virtual {v2}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_9

    .line 1068
    invoke-virtual {v2, v6}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v7

    .line 1069
    .local v7, "id":I
    iget-object v8, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v8, v7}, Lcom/android/launcher3/util/IntSparseArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/CellLayout;

    .line 1070
    .local v8, "cl":Lcom/android/launcher3/CellLayout;
    iget-object v9, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v9, v7}, Lcom/android/launcher3/util/IntSparseArrayMap;->remove(I)V

    .line 1071
    iget-object v9, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v9, v7}, Lcom/android/launcher3/util/IntArray;->removeValue(I)V

    .line 1073
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v9

    if-le v9, v4, :cond_7

    .line 1075
    invoke-virtual {p0, v8}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v9

    if-ge v9, v0, :cond_6

    .line 1076
    add-int/lit8 v5, v5, 0x1

    .line 1078
    :cond_6
    invoke-virtual {p0, v8}, Lcom/android/launcher3/Workspace;->removeView(Landroid/view/View;)V

    goto :goto_4

    .line 1081
    :cond_7
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v9

    if-eqz v9, :cond_8

    rem-int/lit8 v9, v7, 0x2

    if-ne v9, v1, :cond_8

    .line 1083
    const/16 v9, -0xc8

    goto :goto_3

    .line 1086
    :cond_8
    const/16 v9, -0xc9

    :goto_3
    nop

    .line 1087
    .local v9, "extraScreenId":I
    iget-object v10, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v10, v9, v8}, Lcom/android/launcher3/util/IntSparseArrayMap;->put(ILjava/lang/Object;)V

    .line 1088
    iget-object v10, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v10, v9}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 1067
    .end local v7    # "id":I
    .end local v8    # "cl":Lcom/android/launcher3/CellLayout;
    .end local v9    # "extraScreenId":I
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1092
    .end local v6    # "i":I
    :cond_9
    if-ltz v5, :cond_a

    .line 1093
    sub-int v1, v0, v5

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->setCurrentPage(I)V

    .line 1095
    :cond_a
    return-void
.end method

.method public unlockWallpaperFromDefaultPageOnNextLayout()V
    .locals 1

    .line 1376
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->isLockedToDefaultPage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1377
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mUnlockWallpaperFromDefaultPageOnLayout:Z

    .line 1378
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->requestLayout()V

    .line 1380
    :cond_0
    return-void
.end method

.method public updateAccessibilityFlags()V
    .locals 4

    .line 1598
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    sget v1, Lcom/android/launcher3/LauncherState;->FLAG_WORKSPACE_INACCESSIBLE:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherState;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1599
    const/4 v0, 0x4

    goto :goto_0

    .line 1600
    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    .line 1601
    .local v0, "accessibilityFlag":I
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->isInAccessibleDrag()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1602
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageCount()I

    move-result v1

    .line 1603
    .local v1, "total":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1604
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    invoke-direct {p0, v0, v3}, Lcom/android/launcher3/Workspace;->updateAccessibilityFlags(ILcom/android/launcher3/CellLayout;)V

    .line 1603
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1606
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setImportantForAccessibility(I)V

    .line 1608
    .end local v1    # "total":I
    :cond_2
    return-void
.end method

.method protected updateIsBeingDraggedOnTouchDown(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1160
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->updateIsBeingDraggedOnTouchDown(Landroid/view/MotionEvent;)V

    .line 1162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mXDown:F

    .line 1163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mYDown:F

    .line 1164
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mFirstPagePinnedItem:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1165
    const/4 v3, 0x2

    new-array v3, v3, [F

    .line 1166
    .local v3, "tempFXY":[F
    iget v4, p0, Lcom/android/launcher3/Workspace;->mXDown:F

    aput v4, v3, v2

    .line 1167
    const/4 v4, 0x1

    aput v0, v3, v4

    .line 1168
    invoke-static {v1, p0, v3}, Lcom/android/launcher3/Utilities;->mapCoordInSelfToDescendant(Landroid/view/View;Landroid/view/View;[F)V

    .line 1169
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mFirstPagePinnedItem:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    aget v1, v3, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mFirstPagePinnedItem:Landroid/view/View;

    .line 1170
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    aget v1, v3, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mFirstPagePinnedItem:Landroid/view/View;

    .line 1171
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    aget v1, v3, v4

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mFirstPagePinnedItem:Landroid/view/View;

    .line 1172
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    aget v1, v3, v4

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    nop

    :goto_0
    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mIsEventOverFirstPagePinnedItem:Z

    .line 1173
    .end local v3    # "tempFXY":[F
    goto :goto_1

    .line 1174
    :cond_1
    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mIsEventOverFirstPagePinnedItem:Z

    .line 1176
    :goto_1
    return-void
.end method

.method public updateNotificationDots(Ljava/util/function/Predicate;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;)V"
        }
    .end annotation

    .line 3365
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    .local p1, "updatedDots":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/util/PackageUserKey;>;"
    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 3366
    .local v0, "packageUserKey":Lcom/android/launcher3/util/PackageUserKey;
    new-instance v1, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/util/PackageUserKey;Ljava/util/function/Predicate;)V

    .line 3369
    .local v1, "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v2, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/Workspace;Ljava/util/function/Predicate;)V

    .line 3389
    .local v2, "op":Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    .line 3390
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v3

    .line 3391
    .local v3, "folder":Lcom/android/launcher3/folder/Folder;
    if-eqz v3, :cond_0

    .line 3392
    invoke-virtual {v3, v2}, Lcom/android/launcher3/folder/Folder;->iterateOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    .line 3394
    :cond_0
    return-void
.end method

.method public widgetsRestored(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .line 3408
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    .local p1, "changedInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3409
    new-instance v0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 3410
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAppWidgetHolder()Lcom/android/launcher3/widget/LauncherWidgetHolder;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;-><init>(Lcom/android/launcher3/Workspace;Ljava/util/ArrayList;Lcom/android/launcher3/widget/LauncherWidgetHolder;)V

    .line 3412
    .local v0, "widgetRefresh":Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;, "Lcom/android/launcher3/Workspace<TT;>.DeferredWidgetRefresh;"
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 3414
    .local v1, "item":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    new-instance v2, Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    .line 3415
    .local v2, "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3416
    iget-object v3, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v4, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/widget/WidgetManagerHelper;->findProvider(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v3

    .local v3, "widgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    goto :goto_0

    .line 3418
    .end local v3    # "widgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_0
    iget v3, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    .line 3419
    invoke-virtual {v1}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 3418
    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getLauncherAppWidgetInfo(ILandroid/content/ComponentName;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v3

    .line 3422
    .restart local v3    # "widgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    :goto_0
    if-eqz v3, :cond_1

    .line 3424
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->run()V

    goto :goto_1

    .line 3428
    :cond_1
    new-instance v4, Lcom/android/launcher3/Workspace$9;

    invoke-direct {v4, p0, p1}, Lcom/android/launcher3/Workspace$9;-><init>(Lcom/android/launcher3/Workspace;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v4}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    .line 3442
    .end local v0    # "widgetRefresh":Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;, "Lcom/android/launcher3/Workspace<TT;>.DeferredWidgetRefresh;"
    .end local v1    # "item":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .end local v2    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local v3    # "widgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_2
    :goto_1
    return-void
.end method

.method willAddToExistingUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 4
    .param p1, "dragInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "dropOverView"    # Landroid/view/View;

    .line 1894
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1895
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    .line 1896
    .local v1, "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    iget-boolean v2, v1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->useTmpCoords:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getTmpCellX()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 1897
    invoke-virtual {v1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getTmpCellY()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 1898
    :cond_0
    return v0

    .line 1902
    .end local v1    # "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    :cond_1
    instance-of v1, p2, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v1, :cond_2

    .line 1903
    move-object v1, p2

    check-cast v1, Lcom/android/launcher3/folder/FolderIcon;

    .line 1904
    .local v1, "fi":Lcom/android/launcher3/folder/FolderIcon;
    invoke-virtual {v1, p1}, Lcom/android/launcher3/folder/FolderIcon;->acceptDrop(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1905
    const/4 v0, 0x1

    return v0

    .line 1908
    .end local v1    # "fi":Lcom/android/launcher3/folder/FolderIcon;
    :cond_2
    return v0
.end method

.method willAddToExistingUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;[IF)Z
    .locals 2
    .param p1, "dragInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "target"    # Lcom/android/launcher3/CellLayout;
    .param p3, "targetCell"    # [I
    .param p4, "distance"    # F

    .line 1887
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p2, p3}, Lcom/android/launcher3/CellLayout;->getFolderCreationRadius([I)F

    move-result v0

    cmpl-float v0, p4, v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    return v1

    .line 1888
    :cond_0
    aget v0, p3, v1

    const/4 v1, 0x1

    aget v1, p3, v1

    invoke-virtual {p2, v0, v1}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 1889
    .local v0, "dropOverView":Landroid/view/View;
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/Workspace;->willAddToExistingUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result v1

    return v1
.end method

.method willCreateUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Z)Z
    .locals 6
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "dropOverView"    # Landroid/view/View;
    .param p3, "considerTimeout"    # Z

    .line 1858
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1859
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    .line 1860
    .local v1, "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    iget-boolean v2, v1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->useTmpCoords:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getTmpCellX()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 1861
    invoke-virtual {v1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getTmpCellY()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 1862
    :cond_0
    return v0

    .line 1866
    .end local v1    # "lp":Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
    :cond_1
    const/4 v1, 0x0

    .line 1867
    .local v1, "hasntMoved":Z
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/celllayout/CellInfo;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 1868
    iget-object v2, v2, Lcom/android/launcher3/celllayout/CellInfo;->cell:Landroid/view/View;

    if-ne p2, v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    move v1, v2

    .line 1871
    :cond_3
    if-eqz p2, :cond_9

    if-nez v1, :cond_9

    if-eqz p3, :cond_4

    iget-boolean v2, p0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    if-nez v2, :cond_4

    goto :goto_4

    .line 1875
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v2, :cond_5

    .line 1876
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget v2, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->container:I

    const/16 v4, -0x67

    if-eq v2, v4, :cond_5

    move v2, v3

    goto :goto_1

    :cond_5
    move v2, v0

    .line 1878
    .local v2, "aboveShortcut":Z
    :goto_1
    iget v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v4, :cond_7

    iget v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_6

    goto :goto_2

    :cond_6
    move v4, v0

    goto :goto_3

    :cond_7
    :goto_2
    move v4, v3

    .line 1882
    .local v4, "willBecomeShortcut":Z
    :goto_3
    if-eqz v2, :cond_8

    if-eqz v4, :cond_8

    move v0, v3

    :cond_8
    return v0

    .line 1872
    .end local v2    # "aboveShortcut":Z
    .end local v4    # "willBecomeShortcut":Z
    :cond_9
    :goto_4
    return v0
.end method

.method willCreateUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;[IFZ)Z
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "target"    # Lcom/android/launcher3/CellLayout;
    .param p3, "targetCell"    # [I
    .param p4, "distance"    # F
    .param p5, "considerTimeout"    # Z

    .line 1852
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p2, p3}, Lcom/android/launcher3/CellLayout;->getFolderCreationRadius([I)F

    move-result v0

    cmpl-float v0, p4, v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    return v1

    .line 1853
    :cond_0
    aget v0, p3, v1

    const/4 v1, 0x1

    aget v1, p3, v1

    invoke-virtual {p2, v0, v1}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 1854
    .local v0, "dropOverView":Landroid/view/View;
    invoke-virtual {p0, p1, v0, p5}, Lcom/android/launcher3/Workspace;->willCreateUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Z)Z

    move-result v1

    return v1
.end method

.method public workspaceIconsCanBeDragged()Z
    .locals 2

    .line 1476
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    sget v1, Lcom/android/launcher3/LauncherState;->FLAG_WORKSPACE_ICONS_CAN_BE_DRAGGED:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherState;->hasFlag(I)Z

    move-result v0

    return v0
.end method
