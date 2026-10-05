.class public Lcom/android/launcher3/Launcher;
.super Lcom/android/launcher3/statemanager/StatefulActivity;
.source "Launcher.java"

# interfaces
.implements Lcom/android/launcher3/model/BgDataModel$Callbacks;
.implements Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;
.implements Lcom/android/systemui/plugins/PluginListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/Launcher$NonConfigInstance;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/statemanager/StatefulActivity<",
        "Lcom/android/launcher3/LauncherState;",
        ">;",
        "Lcom/android/launcher3/model/BgDataModel$Callbacks;",
        "Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/LauncherOverlayPlugin;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/ActivityTracker<",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private static final BOUNCE_ANIMATION_TENSION:F = 1.3f

.field static final DEBUG_STRICT_MODE:Z = false

.field private static final HOTSEAT_WIDGET_SCALE:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/Hotseat;",
            ">;"
        }
    .end annotation
.end field

.field public static final INTENT_ACTION_ALL_APPS_TOGGLE:Ljava/lang/String; = "launcher.intent_action_all_apps_toggle"

.field static final LOGD:Z = false

.field public static final NEW_APPS_ANIMATION_DELAY:I = 0x1f4

.field private static final NEW_APPS_ANIMATION_INACTIVE_TIMEOUT_SECONDS:I = 0x5

.field public static final NEW_APPS_PAGE_MOVE_DELAY:I = 0x1f4

.field private static final ON_ACTIVITY_RESULT_ANIMATION_DELAY:I = 0x1f4

.field protected static final REQUEST_LAST:I = 0x64

.field public static final TAG:Ljava/lang/String; = "Launcher"

.field private static final WORKSPACE_WIDGET_SCALE:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/Workspace<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static sIsNewProcess:Z


# instance fields
.field private mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

.field mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

.field protected mAllAppsSessionLogId:Lcom/android/launcher3/logging/InstanceId;

.field private final mAnimationCoordinator:Lcom/android/launcher3/util/CannedAnimationCoordinator;

.field private mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

.field private mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

.field mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private final mBackPressedHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/util/BackPressHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mCellPosMapper:Lcom/android/launcher3/celllayout/CellPosMapper;

.field private mDeferOverlayCallbacks:Z

.field private final mDeferredOverlayCallbacks:Ljava/lang/Runnable;

.field protected mDragController:Lcom/android/launcher3/dragndrop/DragController;

.field mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

.field private mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

.field private mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

.field mHotseat:Lcom/android/launcher3/Hotseat;

.field private mIconCache:Lcom/android/launcher3/icons/IconCache;

.field private mIsColdStartupAfterReboot:Z

.field private mIsNaturalScrollingEnabled:Z

.field private mItemInflater:Lcom/android/launcher3/util/ItemInflater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/ItemInflater<",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyboardShortcutsDelegate:Lcom/android/launcher3/util/KeyboardShortcutsDelegate;

.field protected mLastTouchUpTime:J

.field private mModel:Lcom/android/launcher3/LauncherModel;

.field private final mModelCallbacks:Lcom/android/launcher3/ModelCallbacks;

.field private mModelWriter:Lcom/android/launcher3/model/ModelWriter;

.field private final mNaturalScrollingChangedListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

.field private mOnDeferredActivityLaunchCallback:Ljava/lang/Runnable;

.field private mOnInitialBindListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field protected mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

.field private mOverviewPanel:Landroid/view/View;

.field protected mPendingActivityRequestCode:I

.field private mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

.field private mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

.field private mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

.field private mPrevLauncherState:Lcom/android/launcher3/LauncherState;

.field private mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

.field private final mScreenOnListener:Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;

.field mScrimView:Lcom/android/launcher3/views/ScrimView;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mStartupLatencyLogger:Lcom/android/launcher3/logging/StartupLatencyLogger;

.field private mStateManager:Lcom/android/launcher3/statemanager/StateManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/statemanager/StateManager<",
            "Lcom/android/launcher3/LauncherState;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpAddItemCellCoordinates:[I

.field private mTouchInProgress:Z

.field mWorkspace:Lcom/android/launcher3/Workspace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/Workspace<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$77n8DVyFd8KCcLU_cpPMYFGCGZM(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->lambda$startActivitySafelyAuth$12(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7CqGrnZ3ELSJN6PnZhjE415jRG4(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/util/PendingRequestArgs;Landroid/appwidget/AppWidgetHostView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->lambda$completeTwoStageWidgetDrop$6(ILcom/android/launcher3/util/PendingRequestArgs;Landroid/appwidget/AppWidgetHostView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9T2ATJozbvCnotyev3KFgtB1jv4(Lcom/android/launcher3/Launcher;Lcom/android/systemui/plugins/LauncherOverlayPlugin;)Lcom/android/systemui/plugins/shared/LauncherOverlayManager;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->lambda$onPluginConnected$3(Lcom/android/systemui/plugins/LauncherOverlayPlugin;)Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$AvuG6o5vheJHuNBQ6rFPFKoPDi4(Lcom/android/launcher3/Launcher;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->lambda$onRestoreInstanceState$8(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BAuh7n5N07UxKrSxXTNy-QCD56E(Ljava/lang/Boolean;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$BLUthghztd87eiE3HTE0Sss1bZk(Lcom/android/launcher3/Launcher;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->lambda$createAppWidgetHolder$7(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$BvukuxsBXeL6Y6VbThNWb9gbHyI(Lcom/android/launcher3/Launcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->lambda$onCreate$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$CKE1JjhBkUkVw78IsMvWrfVVYjA(Lcom/android/launcher3/Launcher;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/Launcher;->lambda$bindInflatedItems$15(ILjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DNiIZ6sCSIVmFskybfEy0hSj33U(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/util/RunnableList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/Launcher;->lambda$startActivitySafely$10(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/util/RunnableList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gg6sYbCGQNE07ZQKwQbKq1suIOI(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/util/Pair;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->lambda$bindItems$14(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GphQK84-1KokQd21USXoQjXAcHE(Lcom/android/launcher3/Launcher;Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->updateNotificationDots(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KXWse8m5_G7_sCGPfnJaB6NyYok(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/util/IntSet;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/Launcher;->lambda$filterTwoPanelScreenIds$13(Lcom/android/launcher3/util/IntSet;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LWCFOqBFfisAH5xLqXsfgN8Eyio(Lcom/android/launcher3/Launcher;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->lambda$new$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$LoVyMloTAbjpEVg8dRuB9W0-sVQ(Lcom/android/launcher3/Launcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->lambda$handleActivityResult$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$PjucBYD-0w72pJs08UCS14Vj2YE(Lcom/android/launcher3/Launcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->lambda$bindComplete$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$Zf57QPJypVY-GBQtLFFT_795rFY(Landroid/animation/AnimatorSet;)V
    .locals 0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public static synthetic $r8$lambda$eX5hXVYosAAT0I0F48gC4IdY07Q(Lcom/android/launcher3/Launcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->lambda$addAppWidgetImpl$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$nb__SsvSuX-mIITEU3n3b9doQxY(Lcom/android/launcher3/Launcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->checkIfOverlayStillDeferred()V

    return-void
.end method

.method public static synthetic $r8$lambda$qGA-K_T3m6IO8OxGHwHk5xA2vv4(Lcom/android/launcher3/Launcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->lambda$handleActivityResult$4()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmPrevLauncherState(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mPrevLauncherState:Lcom/android/launcher3/LauncherState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStateManager(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/statemanager/StateManager;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 291
    new-instance v0, Lcom/android/launcher3/util/ActivityTracker;

    invoke-direct {v0}, Lcom/android/launcher3/util/ActivityTracker;-><init>()V

    sput-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    .line 308
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/Launcher;->sIsNewProcess:Z

    .line 319
    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->WORKSPACE_SCALE_PROPERTY_FACTORY:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    .line 320
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->get(Ljava/lang/Integer;)Landroid/util/FloatProperty;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/Launcher;->WORKSPACE_WIDGET_SCALE:Landroid/util/FloatProperty;

    .line 321
    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->HOTSEAT_SCALE_PROPERTY_FACTORY:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    .line 322
    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->get(Ljava/lang/Integer;)Landroid/util/FloatProperty;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/Launcher;->HOTSEAT_WIDGET_SCALE:Landroid/util/FloatProperty;

    .line 321
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 286
    invoke-direct {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;-><init>()V

    .line 324
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->createModelCallbacks()Lcom/android/launcher3/ModelCallbacks;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mModelCallbacks:Lcom/android/launcher3/ModelCallbacks;

    .line 326
    new-instance v0, Lcom/android/launcher3/util/KeyboardShortcutsDelegate;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/KeyboardShortcutsDelegate;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mKeyboardShortcutsDelegate:Lcom/android/launcher3/util/KeyboardShortcutsDelegate;

    .line 338
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 381
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    .line 391
    new-instance v0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda15;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDeferredOverlayCallbacks:Ljava/lang/Runnable;

    .line 393
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/Launcher;->mLastTouchUpTime:J

    .line 403
    sget-object v0, Lcom/android/launcher3/celllayout/CellPosMapper;->DEFAULT:Lcom/android/launcher3/celllayout/CellPosMapper;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mCellPosMapper:Lcom/android/launcher3/celllayout/CellPosMapper;

    .line 405
    new-instance v0, Lcom/android/launcher3/util/CannedAnimationCoordinator;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/CannedAnimationCoordinator;-><init>(Lcom/android/launcher3/statemanager/StatefulActivity;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mAnimationCoordinator:Lcom/android/launcher3/util/CannedAnimationCoordinator;

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mBackPressedHandlers:Ljava/util/List;

    .line 413
    new-instance v0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda16;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mNaturalScrollingChangedListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    .line 1558
    new-instance v0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda17;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mScreenOnListener:Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;

    return-void
.end method

.method private addAppWidgetFromDrop(Lcom/android/launcher3/widget/PendingAddWidgetInfo;)V
    .locals 7
    .param p1, "info"    # Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    .line 1891
    iget-object v0, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    .line 1893
    .local v0, "hostView":Landroid/appwidget/AppWidgetHostView;
    invoke-virtual {p1}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->getHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    move-result-object v1

    .line 1894
    .local v1, "addFlowHandler":Lcom/android/launcher3/widget/WidgetAddFlowHandler;
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1899
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->removeView(Landroid/view/View;)V

    .line 1901
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v3

    .line 1902
    .local v3, "appWidgetId":I
    invoke-virtual {p0, v3, p1, v0, v1}, Lcom/android/launcher3/Launcher;->addAppWidgetFromDropImpl(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;)V

    .line 1905
    iput-object v2, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    goto :goto_1

    .line 1909
    .end local v3    # "appWidgetId":I
    :cond_0
    iget v3, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->itemType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 1910
    sget-object v3, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v3, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/widget/custom/CustomWidgetManager;

    iget-object v4, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    .line 1911
    invoke-virtual {v3, v4}, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->allocateCustomAppWidgetId(Landroid/content/ComponentName;)I

    move-result v3

    .restart local v3    # "appWidgetId":I
    goto :goto_0

    .line 1913
    .end local v3    # "appWidgetId":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppWidgetHolder()Lcom/android/launcher3/widget/LauncherWidgetHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->allocateAppWidgetId()I

    move-result v3

    .line 1915
    .restart local v3    # "appWidgetId":I
    :goto_0
    iget-object v4, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->bindOptions:Landroid/os/Bundle;

    .line 1917
    .local v4, "options":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    iget-object v6, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {v5, v3, v6, v4}, Lcom/android/launcher3/widget/WidgetManagerHelper;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v5

    .line 1919
    .local v5, "success":Z
    if-eqz v5, :cond_2

    .line 1920
    invoke-virtual {p0, v3, p1, v2, v1}, Lcom/android/launcher3/Launcher;->addAppWidgetFromDropImpl(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;)V

    goto :goto_1

    .line 1922
    :cond_2
    const/16 v2, 0xb

    invoke-virtual {v1, p0, v3, p1, v2}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->startBindFlow(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/model/data/ItemInfo;I)V

    .line 1925
    .end local v4    # "options":Landroid/os/Bundle;
    .end local v5    # "success":Z
    :goto_1
    return-void
.end method

.method private announceForAccessibility(I)V
    .locals 2
    .param p1, "stringResId"    # I

    .line 2496
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2497
    return-void
.end method

.method private canAnimatePageChange()Z
    .locals 6

    .line 2368
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2369
    return v1

    .line 2371
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/launcher3/Launcher;->mLastTouchUpTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "activityContext"    # Lcom/android/launcher3/views/ActivityContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/launcher3/Launcher;",
            ">(",
            "Lcom/android/launcher3/views/ActivityContext;",
            ")TT;"
        }
    .end annotation

    .line 2807
    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method private checkIfOverlayStillDeferred()V
    .locals 2

    .line 1150
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mDeferOverlayCallbacks:Z

    if-nez v0, :cond_0

    .line 1151
    return-void

    .line 1153
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->hasBeenResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    .line 1154
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherState;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1155
    :cond_1
    return-void

    .line 1157
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mDeferOverlayCallbacks:Z

    .line 1160
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1161
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onActivityStarted()V

    .line 1163
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->hasBeenResumed()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1164
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onActivityResumed()V

    goto :goto_0

    .line 1166
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onActivityPaused()V

    .line 1168
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isStarted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1169
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onActivityStopped()V

    .line 1171
    :cond_5
    return-void
.end method

.method private completeAdd(ILandroid/content/Intent;ILcom/android/launcher3/util/PendingRequestArgs;)I
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "appWidgetId"    # I
    .param p4, "info"    # Lcom/android/launcher3/util/PendingRequestArgs;

    .line 819
    move-object v7, p0

    move-object/from16 v8, p4

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/launcher3/celllayout/CellPosMapper;->mapModelToPresenter(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    move-result-object v9

    .line 820
    .local v9, "cellPos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    iget v0, v9, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    .line 821
    .local v0, "screenId":I
    iget v1, v8, Lcom/android/launcher3/util/PendingRequestArgs;->container:I

    const/16 v2, -0x64

    if-ne v1, v2, :cond_0

    .line 824
    iget v1, v9, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    invoke-direct {p0, v1}, Lcom/android/launcher3/Launcher;->ensurePendingDropLayoutExists(I)I

    move-result v0

    move v10, v0

    goto :goto_0

    .line 821
    :cond_0
    move v10, v0

    .line 827
    .end local v0    # "screenId":I
    .local v10, "screenId":I
    :goto_0
    sparse-switch p1, :sswitch_data_0

    move v11, p3

    goto :goto_1

    .line 837
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_WIDGET_RECONFIGURED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 838
    const/4 v0, 0x0

    move v11, p3

    invoke-direct {p0, p3, v0}, Lcom/android/launcher3/Launcher;->completeRestoreAppWidget(II)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 839
    goto :goto_1

    .line 841
    :sswitch_1
    move v11, p3

    move v0, p3

    .line 842
    .local v0, "widgetId":I
    nop

    .line 843
    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/Launcher;->completeRestoreAppWidget(II)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object v1

    .line 844
    .local v1, "widgetInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    if-eqz v1, :cond_2

    .line 846
    iget-object v2, v7, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    .line 847
    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/util/PendingRequestArgs;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getLauncherAppWidgetInfo(ILandroid/content/ComponentName;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v2

    .line 848
    .local v2, "provider":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    if-eqz v2, :cond_1

    .line 849
    new-instance v3, Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    invoke-direct {v3, v2}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 850
    const/16 v4, 0xd

    invoke-virtual {v3, p0, v1, v4}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->startConfigActivity(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;I)Z

    .line 853
    .end local v2    # "provider":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    :cond_1
    goto :goto_1

    .line 834
    .end local v0    # "widgetId":I
    .end local v1    # "widgetInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    :sswitch_2
    move v11, p3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p3

    move-object/from16 v2, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Launcher;->completeAddAppWidget(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;ZLandroid/graphics/Bitmap;)V

    .line 835
    goto :goto_1

    .line 829
    :sswitch_3
    move v11, p3

    iget v2, v8, Lcom/android/launcher3/util/PendingRequestArgs;->container:I

    iget v4, v9, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellX:I

    iget v5, v9, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellY:I

    move-object v0, p0

    move-object v1, p2

    move v3, v10

    move-object/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Launcher;->completeAddShortcut(Landroid/content/Intent;IIIILcom/android/launcher3/util/PendingRequestArgs;)V

    .line 831
    sget v0, Lcom/android/launcher3/R$string;->item_added_to_workspace:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->announceForAccessibility(I)V

    .line 832
    nop

    .line 857
    :cond_2
    :goto_1
    return v10

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x5 -> :sswitch_2
        0xc -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private completeRestoreAppWidget(II)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .locals 4
    .param p1, "appWidgetId"    # I
    .param p2, "finalRestoreFlag"    # I

    .line 2304
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->getWidgetForAppWidgetId(I)Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    move-result-object v0

    .line 2305
    .local v0, "view":Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    instance-of v1, v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2306
    const-string v1, "Launcher"

    const-string v3, "Widget update called, when the widget no longer exists."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    return-object v2

    .line 2310
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 2311
    .local v1, "info":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    iput p2, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    .line 2312
    iget v3, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    if-nez v3, :cond_1

    .line 2313
    iput-object v2, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/data/PackageItemInfo;

    .line 2316
    :cond_1
    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    .line 2317
    .local v2, "pv":Lcom/android/launcher3/widget/PendingAppWidgetHostView;
    invoke-virtual {v2}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->isReinflateIfNeeded()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2318
    invoke-virtual {v2}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->reInflate()V

    .line 2321
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 2322
    return-object v1
.end method

.method private createNewAppBounceAnimation(Landroid/view/View;I)Landroid/animation/ValueAnimator;
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "i"    # I

    .line 2488
    new-instance v0, Lcom/android/launcher3/anim/PropertyListBuilder;

    invoke-direct {v0}, Lcom/android/launcher3/anim/PropertyListBuilder;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/PropertyListBuilder;->alpha(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/PropertyListBuilder;->scale(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/anim/PropertyListBuilder;->build(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2489
    const-wide/16 v1, 0x1c2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2490
    .local v0, "bounceAnim":Landroid/animation/ValueAnimator;
    mul-int/lit8 v1, p2, 0x55

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2491
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x3fa66666    # 1.3f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2492
    return-object v0
.end method

.method private createStartupLatencyLogger(Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)Lcom/android/launcher3/logging/StartupLatencyLogger;
    .locals 1
    .param p1, "latencyType"    # Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    .line 604
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->COLD_DEVICE_REBOOTING:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    if-ne p1, v0, :cond_0

    .line 605
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->createColdRebootStartupLatencyLogger()Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;

    move-result-object v0

    return-object v0

    .line 607
    :cond_0
    sget-object v0, Lcom/android/launcher3/logging/StartupLatencyLogger;->Companion:Lcom/android/launcher3/logging/StartupLatencyLogger$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StartupLatencyLogger$Companion;->getNO_OP()Lcom/android/launcher3/logging/StartupLatencyLogger;

    move-result-object v0

    return-object v0
.end method

.method private ensurePendingDropLayoutExists(I)I
    .locals 4
    .param p1, "screenId"    # I

    .line 999
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 1000
    .local v0, "dropLayout":Lcom/android/launcher3/CellLayout;
    if-nez v0, :cond_1

    .line 1003
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->addExtraEmptyScreens()V

    .line 1004
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->commitExtraEmptyScreens()Lcom/android/launcher3/util/IntSet;

    move-result-object v1

    .line 1005
    .local v1, "emptyPagesAdded":Lcom/android/launcher3/util/IntSet;
    invoke-virtual {v1}, Lcom/android/launcher3/util/IntSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v2

    :goto_0
    return v2

    .line 1007
    .end local v1    # "emptyPagesAdded":Lcom/android/launcher3/util/IntSet;
    :cond_1
    return p1
.end method

.method private filterTwoPanelScreenIds(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntArray;
    .locals 2
    .param p1, "orderedScreenIds"    # Lcom/android/launcher3/util/IntArray;

    .line 2176
    invoke-static {p1}, Lcom/android/launcher3/util/IntSet;->wrap(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    .line 2177
    .local v0, "screenIds":Lcom/android/launcher3/util/IntSet;
    new-instance v1, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda20;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/util/IntSet;)V

    invoke-virtual {p1, v1}, Lcom/android/launcher3/util/IntArray;->forEach(Ljava/util/function/Consumer;)V

    .line 2186
    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v1

    return-object v1
.end method

.method private static getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 2461
    if-nez p0, :cond_0

    .line 2462
    const/4 v0, 0x0

    return-object v0

    .line 2464
    :cond_0
    nop

    .line 2465
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2466
    .local v0, "returnedBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2467
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2468
    return-object v0
.end method

.method private static varargs getFirstMatch(Ljava/lang/Iterable;[Ljava/util/function/Predicate;)Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Landroid/view/ViewGroup;",
            ">;[",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 2448
    .local p0, "containers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Landroid/view/ViewGroup;>;"
    .local p1, "operators":[Ljava/util/function/Predicate;, "[Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 2449
    .local v2, "operator":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 2450
    .local v4, "container":Landroid/view/ViewGroup;
    invoke-static {v4, v2}, Lcom/android/launcher3/Launcher;->mapOverViewGroup(Landroid/view/ViewGroup;Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v5

    .line 2451
    .local v5, "match":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 2452
    return-object v5

    .line 2454
    .end local v4    # "container":Landroid/view/ViewGroup;
    .end local v5    # "match":Landroid/view/View;
    :cond_0
    goto :goto_1

    .line 2448
    .end local v2    # "operator":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2456
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 417
    invoke-static {p0}, Lcom/android/launcher3/Launcher;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method private handleActivityResult(IILandroid/content/Intent;)V
    .locals 19
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 873
    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 875
    new-instance v0, Lcom/android/launcher3/util/ActivityResultInfo;

    invoke-direct {v0, v7, v8, v9}, Lcom/android/launcher3/util/ActivityResultInfo;-><init>(IILandroid/content/Intent;)V

    iput-object v0, v6, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    .line 876
    return-void

    .line 878
    :cond_0
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    .line 881
    iget-object v10, v6, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    .line 882
    .local v10, "requestArgs":Lcom/android/launcher3/util/PendingRequestArgs;
    invoke-virtual {v6, v0}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    .line 883
    if-nez v10, :cond_1

    .line 884
    return-void

    .line 887
    :cond_1
    invoke-virtual {v10}, Lcom/android/launcher3/util/PendingRequestArgs;->getWidgetId()I

    move-result v11

    .line 889
    .local v11, "pendingAddWidgetId":I
    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->MULTI_SELECT_EDIT_MODE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 890
    :cond_2
    new-instance v0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda18;

    invoke-direct {v0, v6}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda18;-><init>(Lcom/android/launcher3/Launcher;)V

    :goto_0
    move-object v12, v0

    .line 892
    .local v12, "exitSpringLoaded":Ljava/lang/Runnable;
    const/16 v0, 0xb

    const-string v1, "appWidgetId"

    const/16 v13, 0x1f4

    const/4 v14, 0x0

    const/4 v2, -0x1

    if-ne v7, v0, :cond_6

    .line 894
    if-eqz v9, :cond_3

    .line 895
    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    move v15, v0

    .line 896
    .local v15, "appWidgetId":I
    if-nez v8, :cond_4

    .line 897
    invoke-virtual {v6, v14, v15, v10}, Lcom/android/launcher3/Launcher;->completeTwoStageWidgetDrop(IILcom/android/launcher3/util/PendingRequestArgs;)V

    .line 898
    iget-object v0, v6, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v13, v14, v12}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(IZLjava/lang/Runnable;)V

    goto :goto_2

    .line 900
    :cond_4
    if-ne v8, v2, :cond_5

    .line 901
    const/4 v3, 0x0

    .line 903
    invoke-virtual {v10}, Lcom/android/launcher3/util/PendingRequestArgs;->getWidgetHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    move-result-object v4

    const/16 v5, 0x1f4

    .line 901
    move-object/from16 v0, p0

    move v1, v15

    move-object v2, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Launcher;->addAppWidgetImpl(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;I)V

    .line 906
    :cond_5
    :goto_2
    return-void

    .line 909
    .end local v15    # "appWidgetId":I
    :cond_6
    const/16 v0, 0x9

    const/4 v3, 0x1

    if-eq v7, v0, :cond_8

    const/4 v0, 0x5

    if-ne v7, v0, :cond_7

    goto :goto_3

    :cond_7
    move v0, v14

    goto :goto_4

    :cond_8
    :goto_3
    move v0, v3

    :goto_4
    move v15, v0

    .line 913
    .local v15, "isWidgetDrop":Z
    if-eqz v15, :cond_e

    .line 915
    if-eqz v9, :cond_9

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    goto :goto_5

    .line 916
    :cond_9
    nop

    :goto_5
    move/from16 v16, v2

    .line 917
    .local v16, "widgetId":I
    if-gez v16, :cond_a

    .line 918
    move v0, v11

    move v5, v0

    .local v0, "appWidgetId":I
    goto :goto_6

    .line 920
    .end local v0    # "appWidgetId":I
    :cond_a
    move/from16 v0, v16

    move v5, v0

    .line 924
    .local v5, "appWidgetId":I
    :goto_6
    if-ltz v5, :cond_d

    if-nez v8, :cond_b

    move/from16 v18, v15

    move v15, v5

    goto :goto_7

    .line 933
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/launcher3/celllayout/CellPosMapper;->mapModelToPresenter(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    move-result-object v4

    .line 934
    .local v4, "presenterPos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    iget v0, v10, Lcom/android/launcher3/util/PendingRequestArgs;->container:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_c

    .line 937
    iget v0, v4, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    invoke-direct {v6, v0}, Lcom/android/launcher3/Launcher;->ensurePendingDropLayoutExists(I)I

    move-result v0

    .line 938
    .local v0, "newScreenId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;

    move-result-object v2

    iget v13, v4, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellX:I

    iget v14, v4, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellY:I

    invoke-virtual {v2, v13, v14, v0, v1}, Lcom/android/launcher3/celllayout/CellPosMapper;->mapPresenterToModel(IIII)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    iput v1, v10, Lcom/android/launcher3/util/PendingRequestArgs;->screenId:I

    .line 942
    .end local v0    # "newScreenId":I
    :cond_c
    iget-object v0, v6, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget v1, v4, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    .line 943
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v13

    .line 945
    .local v13, "dropLayout":Lcom/android/launcher3/CellLayout;
    invoke-virtual {v13, v3}, Lcom/android/launcher3/CellLayout;->setDropPending(Z)V

    .line 946
    new-instance v14, Lcom/android/launcher3/Launcher$3;

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v2, p2

    move v3, v5

    move-object/from16 v17, v4

    .end local v4    # "presenterPos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    .local v17, "presenterPos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    move-object v4, v10

    move/from16 v18, v15

    move v15, v5

    .end local v5    # "appWidgetId":I
    .local v15, "appWidgetId":I
    .local v18, "isWidgetDrop":Z
    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/Launcher$3;-><init>(Lcom/android/launcher3/Launcher;IILcom/android/launcher3/util/PendingRequestArgs;Lcom/android/launcher3/CellLayout;)V

    .line 953
    .local v0, "onComplete":Ljava/lang/Runnable;
    iget-object v1, v6, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/16 v2, 0x1f4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(IZLjava/lang/Runnable;)V

    goto :goto_8

    .line 924
    .end local v0    # "onComplete":Ljava/lang/Runnable;
    .end local v13    # "dropLayout":Lcom/android/launcher3/CellLayout;
    .end local v17    # "presenterPos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    .end local v18    # "isWidgetDrop":Z
    .restart local v5    # "appWidgetId":I
    .local v15, "isWidgetDrop":Z
    :cond_d
    move/from16 v18, v15

    move v15, v5

    .line 925
    .end local v5    # "appWidgetId":I
    .local v15, "appWidgetId":I
    .restart local v18    # "isWidgetDrop":Z
    :goto_7
    const-string v0, "Launcher"

    const-string v1, "Error: appWidgetId (EXTRA_APPWIDGET_ID) was not returned from the widget configuration activity."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    const/4 v0, 0x0

    .line 928
    .local v0, "result":I
    invoke-virtual {v6, v0, v15, v10}, Lcom/android/launcher3/Launcher;->completeTwoStageWidgetDrop(IILcom/android/launcher3/util/PendingRequestArgs;)V

    .line 929
    iget-object v1, v6, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v2, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda19;

    invoke-direct {v2, v6}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda19;-><init>(Lcom/android/launcher3/Launcher;)V

    const/16 v3, 0x1f4

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(IZLjava/lang/Runnable;)V

    .line 956
    .end local v0    # "result":I
    :goto_8
    return-void

    .line 959
    .end local v16    # "widgetId":I
    .end local v18    # "isWidgetDrop":Z
    .local v15, "isWidgetDrop":Z
    :cond_e
    move/from16 v18, v15

    .end local v15    # "isWidgetDrop":Z
    .restart local v18    # "isWidgetDrop":Z
    const/16 v0, 0xd

    if-eq v7, v0, :cond_12

    const/16 v0, 0xc

    if-ne v7, v0, :cond_f

    goto :goto_a

    .line 969
    :cond_f
    if-ne v7, v3, :cond_11

    .line 971
    if-ne v8, v2, :cond_10

    iget v0, v10, Lcom/android/launcher3/util/PendingRequestArgs;->container:I

    if-eq v0, v2, :cond_10

    .line 972
    invoke-direct {v6, v7, v9, v2, v10}, Lcom/android/launcher3/Launcher;->completeAdd(ILandroid/content/Intent;ILcom/android/launcher3/util/PendingRequestArgs;)I

    .line 973
    iget-object v0, v6, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/16 v1, 0x1f4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v12}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(IZLjava/lang/Runnable;)V

    goto :goto_9

    .line 971
    :cond_10
    const/16 v1, 0x1f4

    const/4 v2, 0x0

    .line 976
    if-nez v8, :cond_11

    .line 977
    iget-object v0, v6, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1, v2, v12}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(IZLjava/lang/Runnable;)V

    .line 982
    :cond_11
    :goto_9
    iget-object v0, v6, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->clearAnimatedView()Lcom/android/launcher3/dragndrop/DragView;

    .line 983
    return-void

    .line 961
    :cond_12
    :goto_a
    if-ne v8, v2, :cond_13

    .line 963
    invoke-direct {v6, v7, v9, v11, v10}, Lcom/android/launcher3/Launcher;->completeAdd(ILandroid/content/Intent;ILcom/android/launcher3/util/PendingRequestArgs;)I

    .line 966
    :cond_13
    return-void
.end method

.method private synthetic lambda$addAppWidgetImpl$9()V
    .locals 4

    .line 1845
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;J)V

    return-void
.end method

.method private synthetic lambda$bindComplete$16()V
    .locals 2

    .line 2340
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStartupLatencyLogger:Lcom/android/launcher3/logging/StartupLatencyLogger;

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_TOTAL_DURATION:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    .line 2341
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StartupLatencyLogger;->logEnd(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;)Lcom/android/launcher3/logging/StartupLatencyLogger;

    move-result-object v0

    .line 2342
    invoke-interface {v0}, Lcom/android/launcher3/logging/StartupLatencyLogger;->log()Lcom/android/launcher3/logging/StartupLatencyLogger;

    move-result-object v0

    .line 2343
    invoke-interface {v0}, Lcom/android/launcher3/logging/StartupLatencyLogger;->reset()V

    .line 2344
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mIsColdStartupAfterReboot:Z

    if-eqz v0, :cond_0

    .line 2345
    const-string v0, "LauncherColdStartup"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 2348
    :cond_0
    return-void
.end method

.method private synthetic lambda$bindInflatedItems$15(ILjava/lang/Runnable;)V
    .locals 3
    .param p1, "newScreenIndex"    # I
    .param p2, "startBounceAnimRunnable"    # Ljava/lang/Runnable;

    .line 2276
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->closeOpenViews(Z)V

    .line 2277
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->snapToPage(I)Z

    .line 2278
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2279
    return-void
.end method

.method private synthetic lambda$bindItems$14(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/util/Pair;
    .locals 2
    .param p1, "i"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 2207
    nop

    .line 2208
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getItemInflater()Lcom/android/launcher3/util/ItemInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/util/ItemInflater;->inflateItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/ModelWriter;)Landroid/view/View;

    move-result-object v0

    .line 2207
    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$completeTwoStageWidgetDrop$6(ILcom/android/launcher3/util/PendingRequestArgs;Landroid/appwidget/AppWidgetHostView;)V
    .locals 7
    .param p1, "appWidgetId"    # I
    .param p2, "requestArgs"    # Lcom/android/launcher3/util/PendingRequestArgs;
    .param p3, "layout"    # Landroid/appwidget/AppWidgetHostView;

    .line 1032
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Launcher;->completeAddAppWidget(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;ZLandroid/graphics/Bitmap;)V

    .line 1033
    sget-object v0, Lcom/android/launcher3/LauncherState;->EDIT_MODE:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;J)V

    .line 1036
    :cond_0
    return-void
.end method

.method private synthetic lambda$createAppWidgetHolder$7(I)V
    .locals 1
    .param p1, "appWidgetId"    # I

    .line 1587
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->removeWidget(I)V

    return-void
.end method

.method private synthetic lambda$filterTwoPanelScreenIds$13(Lcom/android/launcher3/util/IntSet;Ljava/lang/Integer;)V
    .locals 3
    .param p1, "screenIds"    # Lcom/android/launcher3/util/IntSet;
    .param p2, "screenId"    # Ljava/lang/Integer;

    .line 2178
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2179
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/IntSet;->remove(I)V

    .line 2181
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->containsScreenId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2182
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/IntSet;->add(I)V

    .line 2185
    :cond_0
    return-void
.end method

.method static synthetic lambda$getFirstMatchForAppClose$17(ILcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 1
    .param p0, "preferredItemId"    # I
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 2389
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

.method static synthetic lambda$getFirstMatchForAppClose$18(Landroid/os/UserHandle;Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 1
    .param p0, "user"    # Landroid/os/UserHandle;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 2391
    if-eqz p2, :cond_0

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    .line 2393
    invoke-virtual {v0, p0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2394
    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2395
    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2391
    :goto_0
    return v0
.end method

.method static synthetic lambda$getFirstMatchForAppClose$19(Ljava/util/List;Landroid/view/View;)V
    .locals 1
    .param p0, "containers"    # Ljava/util/List;
    .param p1, "page"    # Landroid/view/View;

    .line 2433
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$handleActivityResult$4()V
    .locals 4

    .line 890
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;J)V

    return-void
.end method

.method private synthetic lambda$handleActivityResult$5()V
    .locals 2

    .line 931
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    return-void
.end method

.method private synthetic lambda$new$0(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 414
    iput-boolean p1, p0, Lcom/android/launcher3/Launcher;->mIsNaturalScrollingEnabled:Z

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/app/NotificationManager;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "notificationManager"    # Landroid/app/NotificationManager;
    .param p2, "thread"    # Ljava/lang/Thread;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 476
    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, "stackTrace":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 479
    .local v1, "shareIntent":Landroid/content/Intent;
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 482
    const/high16 v2, 0xc000000

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 485
    .local v2, "sharePendingIntent":Landroid/app/PendingIntent;
    new-instance v4, Landroid/app/Notification$Builder;

    const-string v5, "com.android.launcher3.Debug"

    invoke-direct {v4, p0, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 486
    const v5, 0x1080038

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 487
    const-string v5, "Launcher crash detected!"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 488
    invoke-virtual {v5, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 489
    const v5, 0x1080052

    const-string v6, "Share"

    invoke-virtual {v4, v5, v6, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 490
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 491
    .local v4, "notification":Landroid/app/Notification;
    const-string v5, "Debug"

    invoke-virtual {p1, v5, v3, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 494
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    .line 495
    .local v3, "defaultUncaughtExceptionHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v3, :cond_0

    .line 496
    invoke-interface {v3, p2, p3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 498
    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreate$2()V
    .locals 1

    .line 524
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->refreshAndBindWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)V

    return-void
.end method

.method private synthetic lambda$onPluginConnected$3(Lcom/android/systemui/plugins/LauncherOverlayPlugin;)Lcom/android/systemui/plugins/shared/LauncherOverlayManager;
    .locals 1
    .param p1, "overlayManager"    # Lcom/android/systemui/plugins/LauncherOverlayPlugin;

    .line 688
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/LauncherOverlayPlugin;->createOverlayManager(Landroid/app/Activity;)Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$onRestoreInstanceState$8(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "screenId"    # Ljava/lang/Integer;

    .line 1704
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v0

    .line 1705
    .local v0, "pageIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1706
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->restoreInstanceStateForChild(I)V

    .line 1708
    :cond_0
    return-void
.end method

.method static synthetic lambda$pauseExpensiveViewUpdates$20(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 1
    .param p0, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p1, "view"    # Landroid/view/View;

    .line 2845
    instance-of v0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v0, :cond_0

    .line 2846
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->beginDeferringUpdates()V

    .line 2848
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$resumeExpensiveViewUpdates$21(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 1
    .param p0, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p1, "view"    # Landroid/view/View;

    .line 2857
    instance-of v0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v0, :cond_0

    .line 2858
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->endDeferringUpdates()V

    .line 2860
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$startActivitySafely$10(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/util/RunnableList;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p4, "result"    # Lcom/android/launcher3/util/RunnableList;

    .line 2087
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/RunnableList;

    move-result-object v0

    .line 2088
    .local v0, "actualResult":Lcom/android/launcher3/util/RunnableList;
    if-eqz v0, :cond_0

    .line 2089
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/BaseDraggingActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p4}, Lcom/android/launcher3/BaseDraggingActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/util/RunnableList;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2091
    :cond_0
    invoke-virtual {p4}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    .line 2093
    :goto_0
    return-void
.end method

.method static synthetic lambda$startActivitySafely$11(Lcom/android/launcher3/BubbleTextView;)V
    .locals 1
    .param p0, "btv"    # Lcom/android/launcher3/BubbleTextView;

    .line 2109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setStayPressed(Z)V

    return-void
.end method

.method private synthetic lambda$startActivitySafelyAuth$12(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 2116
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/RunnableList;

    .line 2117
    return-void
.end method

.method private logStopAndResume(Z)V
    .locals 6
    .param p1, "isResume"    # Z

    .line 1119
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelCallbacks:Lcom/android/launcher3/ModelCallbacks;

    invoke-virtual {v0}, Lcom/android/launcher3/ModelCallbacks;->getPendingExecutor()Lcom/android/launcher3/util/ViewOnDrawExecutor;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 1120
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isOverlayShown()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v0

    .line 1121
    .local v0, "pageIndex":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    iget v1, v1, Lcom/android/launcher3/LauncherState;->statsLogOrdinal:I

    .line 1124
    .local v1, "statsLogOrdinal":I
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    .line 1125
    .local v2, "logger":Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    const/4 v3, 0x1

    if-eqz p1, :cond_2

    .line 1126
    invoke-interface {v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withSrcState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    .line 1127
    invoke-virtual {v4}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/LauncherState;

    iget v4, v4, Lcom/android/launcher3/LauncherState;->statsLogOrdinal:I

    invoke-interface {v3, v4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withDstState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    .line 1128
    sget-object v3, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ONRESUME:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .local v3, "event":Lcom/android/launcher3/logging/StatsLogManager$EventEnum;
    goto :goto_1

    .line 1130
    .end local v3    # "event":Lcom/android/launcher3/logging/StatsLogManager$EventEnum;
    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v4}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/LauncherState;

    iget v4, v4, Lcom/android/launcher3/LauncherState;->statsLogOrdinal:I

    invoke-interface {v2, v4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withSrcState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v4

    .line 1131
    invoke-interface {v4, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withDstState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    .line 1132
    sget-object v3, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ONSTOP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 1135
    .restart local v3    # "event":Lcom/android/launcher3/logging/StatsLogManager$EventEnum;
    :goto_1
    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v4, :cond_3

    .line 1136
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v4

    .line 1138
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v5

    .line 1139
    invoke-virtual {v5, v0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->setPageIndex(I)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v5

    .line 1137
    invoke-virtual {v4, v5}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v4

    .line 1139
    invoke-virtual {v4}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 1136
    invoke-interface {v2, v4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    .line 1141
    :cond_3
    invoke-interface {v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 1142
    return-void
.end method

.method private static mapOverViewGroup(Landroid/view/ViewGroup;Ljava/util/function/Predicate;)Landroid/view/View;
    .locals 4
    .param p0, "container"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 2477
    .local p1, "op":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2478
    .local v0, "itemCount":I
    const/4 v1, 0x0

    .local v1, "itemIdx":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2479
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2480
    .local v2, "item":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2481
    return-object v2

    .line 2478
    .end local v2    # "item":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2484
    .end local v1    # "itemIdx":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private processShortcutFromDrop(Lcom/android/launcher3/widget/PendingAddShortcutInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    .line 1879
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 1880
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/android/launcher3/util/PendingRequestArgs;->forIntent(ILandroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PendingRequestArgs;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    .line 1881
    const-string v2, "Main"

    const-string v3, "start: processShortcutFromDrop"

    invoke-static {v2, v3}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1882
    invoke-virtual {p1, p0}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->getActivityInfo(Landroid/content/Context;)Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->startConfigActivity(Landroid/app/Activity;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1883
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->handleActivityResult(IILandroid/content/Intent;)V

    .line 1885
    :cond_0
    return-void
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedState"    # Landroid/os/Bundle;

    .line 1298
    if-nez p1, :cond_0

    .line 1299
    return-void

    .line 1302
    :cond_0
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    iget v0, v0, Lcom/android/launcher3/LauncherState;->ordinal:I

    const-string v1, "launcher.state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1303
    .local v0, "stateOrdinal":I
    invoke-static {}, Lcom/android/launcher3/LauncherState;->values()[Lcom/android/launcher3/LauncherState;

    move-result-object v1

    .line 1304
    .local v1, "stateValues":[Lcom/android/launcher3/LauncherState;
    aget-object v2, v1, v0

    .line 1306
    .local v2, "state":Lcom/android/launcher3/LauncherState;
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/Launcher$NonConfigInstance;

    .line 1307
    .local v3, "lastInstance":Lcom/android/launcher3/Launcher$NonConfigInstance;
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v5, v3, Lcom/android/launcher3/Launcher$NonConfigInstance;->config:Landroid/content/res/Configuration;

    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mOldConfig:Landroid/content/res/Configuration;

    .line 1308
    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v5

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v4

    .line 1309
    .local v5, "forceRestore":Z
    :goto_0
    if-nez v5, :cond_2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherState;->shouldDisableRestore()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1310
    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v6, v2, v4}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    .line 1313
    :cond_3
    const-string v6, "launcher.request_args"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/util/PendingRequestArgs;

    .line 1315
    .local v6, "requestArgs":Lcom/android/launcher3/util/PendingRequestArgs;
    if-eqz v6, :cond_4

    .line 1316
    invoke-virtual {p0, v6}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    .line 1318
    :cond_4
    const-string v7, "launcher.request_code"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    .line 1320
    const-string v7, "launcher.activity_result"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/util/ActivityResultInfo;

    iput-object v7, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    .line 1322
    nop

    .line 1323
    const-string v7, "launcher.widget_panel"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v7

    .line 1324
    .local v7, "widgetsState":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v7, :cond_5

    .line 1325
    invoke-static {p0, v4}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->show(Lcom/android/launcher3/BaseActivity;Z)Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 1327
    :cond_5
    return-void
.end method

.method private scheduleDeferredCheck()V
    .locals 2

    .line 1145
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDeferredOverlayCallbacks:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1146
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDeferredOverlayCallbacks:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 1147
    return-void
.end method

.method private showAllAppsWorkTabFromIntent(Z)V
    .locals 2
    .param p1, "alreadyOnHome"    # Z

    .line 1683
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->showAllAppsFromIntent(Z)V

    .line 1684
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->switchToTab(I)V

    .line 1685
    return-void
.end method

.method private showWidgetResizeFrame(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;)V
    .locals 3
    .param p1, "launcherHostView"    # Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    .param p2, "launcherInfo"    # Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .param p3, "presenterPos"    # Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    .line 1541
    iget v0, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->container:I

    iget v1, p3, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Launcher;->getCellLayout(II)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 1542
    .local v0, "cellLayout":Lcom/android/launcher3/CellLayout;
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v1, v2, :cond_0

    .line 1543
    invoke-static {p1, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->showForWidget(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V

    goto :goto_0

    .line 1545
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    new-instance v2, Lcom/android/launcher3/Launcher$5;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/launcher3/Launcher$5;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    .line 1556
    :goto_0
    return-void
.end method

.method private switchOverlay(Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/plugins/shared/LauncherOverlayManager;",
            ">;)V"
        }
    .end annotation

    .line 697
    .local p1, "overlaySupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/systemui/plugins/shared/LauncherOverlayManager;>;"
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    if-eqz v0, :cond_0

    .line 698
    invoke-interface {v0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onActivityDestroyed()V

    .line 700
    :cond_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    .line 701
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherRootView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 702
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onAttachedToWindow()V

    .line 704
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mDeferOverlayCallbacks:Z

    .line 705
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->checkIfOverlayStillDeferred()V

    .line 706
    return-void
.end method

.method private updateDisallowBack()V
    .locals 4

    .line 2747
    invoke-static {}, Lcom/android/window/flags/Flags;->enableDesktopWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2749
    return-void

    .line 2751
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    .line 2752
    .local v0, "rv":Lcom/android/launcher3/LauncherRootView;
    if-eqz v0, :cond_2

    .line 2753
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isSplitSelectionActive()Z

    move-result v1

    .line 2754
    .local v1, "isSplitSelectionEnabled":Z
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v2, v3, :cond_1

    .line 2755
    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v2

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 2757
    .local v2, "disableBack":Z
    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/launcher3/LauncherRootView;->setDisallowBackGesture(Z)V

    .line 2759
    .end local v1    # "isSplitSelectionEnabled":Z
    .end local v2    # "disableBack":Z
    :cond_2
    return-void
.end method

.method private updateNotificationDots(Ljava/util/function/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;)V"
        }
    .end annotation

    .line 1561
    .local p1, "updatedDots":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/util/PackageUserKey;>;"
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->updateNotificationDots(Ljava/util/function/Predicate;)V

    .line 1562
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsStore;->updateNotificationDots(Ljava/util/function/Predicate;)V

    .line 1563
    return-void
.end method


# virtual methods
.method addAppWidgetFromDropImpl(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;)V
    .locals 6
    .param p1, "appWidgetId"    # I
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "boundWidget"    # Landroid/appwidget/AppWidgetHostView;
    .param p4, "addFlowHandler"    # Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    .line 1814
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Launcher;->addAppWidgetImpl(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;I)V

    .line 1815
    return-void
.end method

.method addAppWidgetImpl(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;I)V
    .locals 10
    .param p1, "appWidgetId"    # I
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "boundWidget"    # Landroid/appwidget/AppWidgetHostView;
    .param p4, "addFlowHandler"    # Lcom/android/launcher3/widget/WidgetAddFlowHandler;
    .param p5, "delay"    # I

    .line 1824
    const/4 v0, 0x5

    invoke-virtual {p4, p0, p1, p2, v0}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->startConfigActivity(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result v0

    .line 1827
    .local v0, "isActivityStarted":Z
    invoke-static {}, Lcom/android/launcher3/Flags;->enableAddAppWidgetViaConfigActivityV2()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 1828
    return-void

    .line 1835
    :cond_0
    const/4 v1, 0x0

    .line 1836
    .local v1, "widgetPreviewBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 1837
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragLayer;->clearAnimatedView()Lcom/android/launcher3/dragndrop/DragView;

    move-result-object v2

    .line 1838
    .local v2, "dropView":Lcom/android/launcher3/dragndrop/DragView;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragView;->containsAppWidgetHostView()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1839
    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/Launcher;->getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1844
    .end local v2    # "dropView":Lcom/android/launcher3/dragndrop/DragView;
    :cond_1
    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->MULTI_SELECT_EDIT_MODE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    .line 1845
    :cond_2
    new-instance v2, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda23;

    invoke-direct {v2, p0}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda23;-><init>(Lcom/android/launcher3/Launcher;)V

    :goto_0
    nop

    .line 1846
    .local v2, "onComplete":Ljava/lang/Runnable;
    nop

    .line 1847
    invoke-virtual {p4, p0}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->getProviderInfo(Landroid/content/Context;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v7

    invoke-virtual {p4}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->needsConfigure()Z

    move-result v8

    .line 1846
    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v9, v1

    invoke-virtual/range {v3 .. v9}, Lcom/android/launcher3/Launcher;->completeAddAppWidget(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;ZLandroid/graphics/Bitmap;)V

    .line 1849
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v4, 0x0

    invoke-virtual {v3, p5, v4, v2}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(IZLjava/lang/Runnable;)V

    .line 1850
    return-void
.end method

.method protected addBackAnimationCallback(Lcom/android/launcher3/util/BackPressHandler;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/launcher3/util/BackPressHandler;

    .line 2739
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBackPressedHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2740
    return-void
.end method

.method public addFolder(Lcom/android/launcher3/CellLayout;IIII)Lcom/android/launcher3/folder/FolderIcon;
    .locals 7
    .param p1, "layout"    # Lcom/android/launcher3/CellLayout;
    .param p2, "container"    # I
    .param p3, "screenId"    # I
    .param p4, "cellX"    # I
    .param p5, "cellY"    # I

    .line 1932
    new-instance v0, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/FolderInfo;-><init>()V

    .line 1935
    .local v0, "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v1

    move-object v2, v0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 1938
    sget v1, Lcom/android/launcher3/R$layout;->folder_icon:I

    invoke-static {v1, p0, p1, v0}, Lcom/android/launcher3/folder/FolderIcon;->inflateFolderAndIcon(ILandroid/content/Context;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v1

    .line 1940
    .local v1, "newFolder":Lcom/android/launcher3/folder/FolderIcon;
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2, v1, v0}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 1942
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    .line 1943
    .local v2, "parent":Lcom/android/launcher3/CellLayout;
    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    .line 1944
    return-object v1
.end method

.method public addPendingItem(Lcom/android/launcher3/PendingAddItemInfo;II[III)V
    .locals 3
    .param p1, "info"    # Lcom/android/launcher3/PendingAddItemInfo;
    .param p2, "container"    # I
    .param p3, "screenId"    # I
    .param p4, "cell"    # [I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I

    .line 1854
    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 1855
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;

    move-result-object v1

    invoke-virtual {v1, v0, v0, p3, p2}, Lcom/android/launcher3/celllayout/CellPosMapper;->mapPresenterToModel(IIII)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    move-result-object v0

    .line 1856
    .local v0, "modelPos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    iget v1, v0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    iput v1, p1, Lcom/android/launcher3/PendingAddItemInfo;->screenId:I

    .line 1857
    .end local v0    # "modelPos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    goto :goto_0

    .line 1858
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;

    move-result-object v1

    aget v0, p4, v0

    const/4 v2, 0x1

    aget v2, p4, v2

    invoke-virtual {v1, v0, v2, p3, p2}, Lcom/android/launcher3/celllayout/CellPosMapper;->mapPresenterToModel(IIII)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    move-result-object v0

    .line 1860
    .restart local v0    # "modelPos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    iget v1, v0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    iput v1, p1, Lcom/android/launcher3/PendingAddItemInfo;->screenId:I

    .line 1861
    iget v1, v0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellX:I

    iput v1, p1, Lcom/android/launcher3/PendingAddItemInfo;->cellX:I

    .line 1862
    iget v1, v0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellY:I

    iput v1, p1, Lcom/android/launcher3/PendingAddItemInfo;->cellY:I

    .line 1864
    .end local v0    # "modelPos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    :goto_0
    iput p2, p1, Lcom/android/launcher3/PendingAddItemInfo;->container:I

    .line 1865
    iput p5, p1, Lcom/android/launcher3/PendingAddItemInfo;->spanX:I

    .line 1866
    iput p6, p1, Lcom/android/launcher3/PendingAddItemInfo;->spanY:I

    .line 1868
    instance-of v0, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v0, :cond_1

    .line 1869
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->addAppWidgetFromDrop(Lcom/android/launcher3/widget/PendingAddWidgetInfo;)V

    goto :goto_1

    .line 1871
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->processShortcutFromDrop(Lcom/android/launcher3/widget/PendingAddShortcutInfo;)V

    .line 1873
    :goto_1
    return-void
.end method

.method public areFreeformTasksVisible()Z
    .locals 1

    .line 2869
    const/4 v0, 0x0

    return v0
.end method

.method public bindAllApplications([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;)V
    .locals 2
    .param p1, "apps"    # [Lcom/android/launcher3/model/data/AppInfo;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/launcher3/model/data/AppInfo;",
            "I",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2527
    .local p3, "packageUserKeytoUidMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/util/PackageUserKey;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelCallbacks:Lcom/android/launcher3/ModelCallbacks;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/ModelCallbacks;->bindAllApplications([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;)V

    .line 2528
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_0

    .line 2529
    const-string v0, "DisplayAllApps"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 2532
    :cond_0
    return-void
.end method

.method public bindAllWidgets(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;)V"
        }
    .end annotation

    .line 2581
    .local p1, "allWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;>;"
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelCallbacks:Lcom/android/launcher3/ModelCallbacks;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ModelCallbacks;->bindAllWidgets(Ljava/util/List;)V

    .line 2582
    return-void
.end method

.method public bindAppWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 2291
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mItemInflater:Lcom/android/launcher3/util/ItemInflater;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/util/ItemInflater;->inflateItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/ModelWriter;)Landroid/view/View;

    move-result-object v0

    .line 2292
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2293
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 2294
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->requestLayout()V

    .line 2296
    :cond_0
    return-void
.end method

.method public bindAppsAdded(Lcom/android/launcher3/util/IntArray;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "newScreens"    # Lcom/android/launcher3/util/IntArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/IntArray;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 2197
    .local p2, "addNotAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .local p3, "addAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelCallbacks:Lcom/android/launcher3/ModelCallbacks;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/ModelCallbacks;->bindAppsAdded(Lcom/android/launcher3/util/IntArray;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2198
    return-void
.end method

.method public bindComplete(IZ)V
    .locals 2
    .param p1, "workspaceItemCount"    # I
    .param p2, "isBindSync"    # Z

    .line 2330
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOnInitialBindListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    .line 2331
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherRootView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mOnInitialBindListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mOnInitialBindListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 2334
    :cond_0
    if-nez p2, :cond_1

    .line 2335
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStartupLatencyLogger:Lcom/android/launcher3/logging/StartupLatencyLogger;

    .line 2336
    invoke-interface {v0, p1}, Lcom/android/launcher3/logging/StartupLatencyLogger;->logCardinality(I)Lcom/android/launcher3/logging/StartupLatencyLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_ASYNC:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    .line 2337
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StartupLatencyLogger;->logEnd(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;)Lcom/android/launcher3/logging/StartupLatencyLogger;

    .line 2339
    :cond_1
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda11;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 2349
    return-void
.end method

.method public bindDeepShortcutMap(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2539
    .local p1, "deepShortcutMapCopy":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/ComponentKey;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelCallbacks:Lcom/android/launcher3/ModelCallbacks;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ModelCallbacks;->bindDeepShortcutMap(Ljava/util/HashMap;)V

    .line 2540
    return-void
.end method

.method public bindIncrementalDownloadProgressUpdated(Lcom/android/launcher3/model/data/AppInfo;)V
    .locals 1
    .param p1, "app"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 2544
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelCallbacks:Lcom/android/launcher3/ModelCallbacks;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ModelCallbacks;->bindIncrementalDownloadProgressUpdated(Lcom/android/launcher3/model/data/AppInfo;)V

    .line 2545
    return-void
.end method

.method public bindInflatedItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .line 2214
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;>;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/Launcher;->bindInflatedItems(Ljava/util/List;Landroid/animation/AnimatorSet;)V

    .line 2215
    return-void
.end method

.method public bindInflatedItems(Ljava/util/List;Landroid/animation/AnimatorSet;)V
    .locals 11
    .param p2, "boundAnim"    # Landroid/animation/AnimatorSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Landroid/view/View;",
            ">;>;",
            "Landroid/animation/AnimatorSet;",
            ")V"
        }
    .end annotation

    .line 2225
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;>;>;"
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 2226
    .local v0, "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    const/4 v1, -0x1

    .line 2227
    .local v1, "newItemsScreenId":I
    const/4 v2, 0x0

    .line 2228
    .local v2, "index":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 2229
    .local v4, "e":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    .line 2232
    .local v5, "item":Lcom/android/launcher3/model/data/ItemInfo;
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/launcher3/celllayout/CellPosMapper;->mapModelToPresenter(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    move-result-object v6

    .line 2233
    .local v6, "presenterPos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    iget v7, v5, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v8, -0x64

    if-ne v7, v8, :cond_0

    .line 2234
    iget-object v7, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget v8, v6, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    invoke-virtual {v7, v8}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v7

    .line 2235
    .local v7, "cl":Lcom/android/launcher3/CellLayout;
    if-eqz v7, :cond_0

    iget v8, v6, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellX:I

    iget v9, v6, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellY:I

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher3/CellLayout;->isOccupied(II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2236
    iget v8, v6, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellX:I

    iget v9, v6, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellY:I

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .line 2237
    .local v8, "tag":Ljava/lang/Object;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Collision while binding workspace item: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ". Collides with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2242
    .local v9, "desc":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v10

    invoke-virtual {v10, v5, v9}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    .line 2243
    goto :goto_0

    .line 2248
    .end local v7    # "cl":Lcom/android/launcher3/CellLayout;
    .end local v8    # "tag":Ljava/lang/Object;
    .end local v9    # "desc":Ljava/lang/String;
    :cond_0
    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Landroid/view/View;

    .line 2249
    .local v7, "view":Landroid/view/View;
    if-nez v7, :cond_1

    .line 2250
    goto :goto_0

    .line 2252
    :cond_1
    invoke-static {}, Lcom/android/launcher3/Flags;->enableWorkspaceInflation()Z

    move-result v8

    if-eqz v8, :cond_2

    instance-of v8, v7, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v8, :cond_2

    move-object v8, v7

    check-cast v8, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 2253
    .local v8, "lv":Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppWidgetHolder()Lcom/android/launcher3/widget/LauncherWidgetHolder;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->attachViewToHostAndGetAttachedView(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v7

    .line 2255
    .end local v8    # "lv":Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    :cond_2
    invoke-virtual {v0, v7, v5}, Lcom/android/launcher3/Workspace;->addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 2256
    if-eqz p2, :cond_3

    .line 2258
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setAlpha(F)V

    .line 2259
    invoke-virtual {v7, v8}, Landroid/view/View;->setScaleX(F)V

    .line 2260
    invoke-virtual {v7, v8}, Landroid/view/View;->setScaleY(F)V

    .line 2261
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "index":I
    .local v8, "index":I
    invoke-direct {p0, v7, v2}, Lcom/android/launcher3/Launcher;->createNewAppBounceAnimation(Landroid/view/View;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2262
    iget v1, v6, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    move v2, v8

    .line 2264
    .end local v4    # "e":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;>;"
    .end local v5    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v6    # "presenterPos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    .end local v7    # "view":Landroid/view/View;
    .end local v8    # "index":I
    .restart local v2    # "index":I
    :cond_3
    goto/16 :goto_0

    .line 2267
    :cond_4
    if-eqz p2, :cond_6

    const/4 v3, -0x1

    if-le v1, v3, :cond_6

    .line 2268
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)I

    move-result v3

    .line 2269
    .local v3, "currentScreenId":I
    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v4, v1}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v4

    .line 2270
    .local v4, "newScreenIndex":I
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda0;

    invoke-direct {v5, p2}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda0;-><init>(Landroid/animation/AnimatorSet;)V

    .line 2272
    .local v5, "startBounceAnimRunnable":Ljava/lang/Runnable;
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->canAnimatePageChange()Z

    move-result v6

    const-wide/16 v7, 0x1f4

    if-eqz v6, :cond_5

    if-eq v1, v3, :cond_5

    .line 2275
    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v9, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda10;

    invoke-direct {v9, p0, v4, v5}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda10;-><init>(Lcom/android/launcher3/Launcher;ILjava/lang/Runnable;)V

    invoke-virtual {v6, v9, v7, v8}, Lcom/android/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 2281
    :cond_5
    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v6, v5, v7, v8}, Lcom/android/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2284
    .end local v3    # "currentScreenId":I
    .end local v4    # "newScreenIndex":I
    .end local v5    # "startBounceAnimRunnable":Ljava/lang/Runnable;
    :cond_6
    :goto_1
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->requestLayout()V

    .line 2285
    return-void
.end method

.method public bindItems(Ljava/util/List;Z)V
    .locals 2
    .param p2, "forceAnimateIcons"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 2207
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda13;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 2208
    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    .line 2209
    if-eqz p2, :cond_0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2207
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Launcher;->bindInflatedItems(Ljava/util/List;Landroid/animation/AnimatorSet;)V

    .line 2210
    return-void
.end method

.method public bindRestoreItemsChange(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 2565
    .local p1, "updates":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelCallbacks:Lcom/android/launcher3/ModelCallbacks;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ModelCallbacks;->bindRestoreItemsChange(Ljava/util/HashSet;)V

    .line 2566
    return-void
.end method

.method public bindScreens(Lcom/android/launcher3/util/IntArray;)V
    .locals 1
    .param p1, "orderedScreenIds"    # Lcom/android/launcher3/util/IntArray;

    .line 2168
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelCallbacks:Lcom/android/launcher3/ModelCallbacks;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ModelCallbacks;->bindScreens(Lcom/android/launcher3/util/IntArray;)V

    .line 2169
    return-void
.end method

.method public bindSmartspaceWidget()V
    .locals 1

    .line 2586
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelCallbacks:Lcom/android/launcher3/ModelCallbacks;

    invoke-virtual {v0}, Lcom/android/launcher3/ModelCallbacks;->bindSmartspaceWidget()V

    .line 2587
    return-void
.end method

.method public bindStringCache(Lcom/android/launcher3/model/StringCache;)V
    .locals 1
    .param p1, "cache"    # Lcom/android/launcher3/model/StringCache;

    .line 2591
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelCallbacks:Lcom/android/launcher3/ModelCallbacks;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ModelCallbacks;->bindStringCache(Lcom/android/launcher3/model/StringCache;)V

    .line 2592
    return-void
.end method

.method public bindWidgetsRestored(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .line 2549
    .local p1, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelCallbacks:Lcom/android/launcher3/ModelCallbacks;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ModelCallbacks;->bindWidgetsRestored(Ljava/util/ArrayList;)V

    .line 2550
    return-void
.end method

.method public bindWorkspaceComponentsRemoved(Ljava/util/function/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 2573
    .local p1, "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelCallbacks:Lcom/android/launcher3/ModelCallbacks;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ModelCallbacks;->bindWorkspaceComponentsRemoved(Ljava/util/function/Predicate;)V

    .line 2574
    return-void
.end method

.method public bindWorkspaceItemsChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 2557
    .local p1, "updated":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelCallbacks:Lcom/android/launcher3/ModelCallbacks;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ModelCallbacks;->bindWorkspaceItemsChanged(Ljava/util/List;)V

    .line 2558
    return-void
.end method

.method public canUseMultipleShadesForPopup()Z
    .locals 3

    .line 2716
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2717
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2716
    :goto_0
    return v0
.end method

.method public closeOpenViews()V
    .locals 1

    .line 2787
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->closeOpenViews(Z)V

    .line 2788
    return-void
.end method

.method protected closeOpenViews(Z)V
    .locals 0
    .param p1, "animate"    # Z

    .line 2791
    invoke-static {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;Z)V

    .line 2792
    return-void
.end method

.method protected collectStateHandlers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/statemanager/StateManager$StateHandler;",
            ">;)V"
        }
    .end annotation

    .line 2722
    .local p1, "out":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/statemanager/StateManager$StateHandler;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAllAppsController()Lcom/android/launcher3/allapps/AllAppsTransitionController;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2723
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2724
    return-void
.end method

.method completeAddAppWidget(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;ZLandroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "appWidgetId"    # I
    .param p2, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "hostView"    # Landroid/appwidget/AppWidgetHostView;
    .param p4, "appWidgetInfo"    # Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    .param p5, "showPendingWidget"    # Z
    .param p6, "widgetPreviewBitmap"    # Landroid/graphics/Bitmap;

    .line 1471
    if-nez p4, :cond_0

    .line 1472
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    .line 1473
    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 1472
    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getLauncherAppWidgetInfo(ILandroid/content/ComponentName;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object p4

    .line 1476
    :cond_0
    if-nez p3, :cond_1

    if-nez p5, :cond_1

    .line 1478
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    invoke-virtual {v0, p1, p4}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->createView(ILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object p3

    .line 1482
    :cond_1
    new-instance v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v1, p4, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v0, p1, v1, p4, p3}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Landroid/appwidget/AppWidgetHostView;)V

    .line 1485
    .local v0, "launcherInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v1, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    .line 1486
    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v1, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    .line 1487
    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v1, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->minSpanX:I

    .line 1488
    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iput v1, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->minSpanY:I

    .line 1489
    invoke-virtual {p4}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    .line 1490
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/launcher3/celllayout/CellPosMapper;->mapModelToPresenter(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    move-result-object v1

    .line 1491
    .local v1, "presenterPos":Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;
    const/4 v8, 0x0

    if-eqz p5, :cond_2

    .line 1492
    const/4 v2, 0x4

    iput v2, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    .line 1493
    new-instance v2, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    invoke-direct {v2, p0, v3, v0, p4}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/android/launcher3/widget/LauncherWidgetHolder;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V

    .line 1495
    .local v2, "pendingAppWidgetHostView":Lcom/android/launcher3/widget/PendingAppWidgetHostView;
    invoke-virtual {v2, p6}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->setPreviewBitmap(Landroid/graphics/Bitmap;)V

    .line 1496
    move-object p3, v2

    .end local v2    # "pendingAppWidgetHostView":Lcom/android/launcher3/widget/PendingAppWidgetHostView;
    goto :goto_0

    .line 1497
    :cond_2
    instance-of v2, p3, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    if-eqz v2, :cond_3

    .line 1498
    move-object v2, p3

    check-cast v2, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->setPreviewBitmap(Landroid/graphics/Bitmap;)V

    .line 1502
    invoke-direct {p0, p1, v8}, Lcom/android/launcher3/Launcher;->completeRestoreAppWidget(II)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 1505
    nop

    .line 1506
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher3/Workspace;->getWidgetForAppWidgetId(I)Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    move-result-object v2

    .line 1507
    .local v2, "reInflatedHostView":Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    nop

    .line 1509
    invoke-virtual {v2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 1507
    invoke-direct {p0, v2, v3, v1}, Lcom/android/launcher3/Launcher;->showWidgetResizeFrame(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;)V

    .line 1511
    return-void

    .line 1497
    .end local v2    # "reInflatedHostView":Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    :cond_3
    :goto_0
    nop

    .line 1513
    instance-of v2, p2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v2, :cond_4

    .line 1514
    move-object v2, p2

    check-cast v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget v2, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->sourceContainer:I

    iput v2, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->sourceContainer:I

    goto :goto_1

    .line 1515
    :cond_4
    instance-of v2, p2, Lcom/android/launcher3/util/PendingRequestArgs;

    if-eqz v2, :cond_5

    .line 1516
    move-object v2, p2

    check-cast v2, Lcom/android/launcher3/util/PendingRequestArgs;

    .line 1517
    invoke-virtual {v2}, Lcom/android/launcher3/util/PendingRequestArgs;->getWidgetSourceContainer()I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->sourceContainer:I

    .line 1519
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    iget v4, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v5, v1, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    iget v6, v1, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellX:I

    iget v7, v1, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellY:I

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 1522
    invoke-virtual {p3, v8}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    .line 1523
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mItemInflater:Lcom/android/launcher3/util/ItemInflater;

    invoke-virtual {v2, p3, v0}, Lcom/android/launcher3/util/ItemInflater;->prepareAppWidget(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    .line 1524
    invoke-static {}, Lcom/android/launcher3/Flags;->enableAddAppWidgetViaConfigActivityV2()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p3}, Landroid/appwidget/AppWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_7

    .line 1525
    :cond_6
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2, p3, v0}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 1527
    :cond_7
    sget v2, Lcom/android/launcher3/R$string;->item_added_to_workspace:I

    invoke-direct {p0, v2}, Lcom/android/launcher3/Launcher;->announceForAccessibility(I)V

    .line 1530
    instance-of v2, p3, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v2, :cond_8

    .line 1531
    move-object v2, p3

    check-cast v2, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 1532
    .local v2, "launcherHostView":Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    invoke-direct {p0, v2, v0, v1}, Lcom/android/launcher3/Launcher;->showWidgetResizeFrame(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;)V

    .line 1534
    .end local v2    # "launcherHostView":Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    :cond_8
    return-void
.end method

.method protected completeAddShortcut(Landroid/content/Intent;IIIILcom/android/launcher3/util/PendingRequestArgs;)V
    .locals 19
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "container"    # I
    .param p3, "screenId"    # I
    .param p4, "cellX"    # I
    .param p5, "cellY"    # I
    .param p6, "args"    # Lcom/android/launcher3/util/PendingRequestArgs;

    .line 1398
    move-object/from16 v0, p0

    move/from16 v9, p2

    invoke-virtual/range {p6 .. p6}, Lcom/android/launcher3/util/PendingRequestArgs;->getRequestCode()I

    move-result v1

    const/4 v10, 0x1

    if-eq v1, v10, :cond_0

    .line 1399
    return-void

    .line 1402
    :cond_0
    iget-object v11, v0, Lcom/android/launcher3/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 1403
    .local v11, "cellXY":[I
    move/from16 v12, p3

    invoke-virtual {v0, v9, v12}, Lcom/android/launcher3/Launcher;->getCellLayout(II)Lcom/android/launcher3/CellLayout;

    move-result-object v13

    .line 1405
    .local v13, "layout":Lcom/android/launcher3/CellLayout;
    nop

    .line 1406
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/pm/PinRequestHelper;->getPinItemRequest(Landroid/content/Intent;)Landroid/content/pm/LauncherApps$PinItemRequest;

    move-result-object v1

    .line 1405
    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher3/pm/PinRequestHelper;->createWorkspaceItemFromPinItemRequest(Landroid/content/Context;Landroid/content/pm/LauncherApps$PinItemRequest;J)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v14

    .line 1407
    .local v14, "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    const-string v1, "Launcher"

    if-nez v14, :cond_1

    .line 1408
    const-string v2, "Unable to parse a valid shortcut result"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    return-void

    .line 1412
    :cond_1
    const/4 v15, 0x0

    if-gez v9, :cond_6

    .line 1414
    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mItemInflater:Lcom/android/launcher3/util/ItemInflater;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    invoke-virtual {v1, v14, v2}, Lcom/android/launcher3/util/ItemInflater;->inflateItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/ModelWriter;)Landroid/view/View;

    move-result-object v8

    .line 1415
    .local v8, "view":Landroid/view/View;
    const/4 v1, 0x0

    .line 1417
    .local v1, "foundCellSpan":Z
    if-ltz p4, :cond_4

    if-ltz p5, :cond_4

    .line 1418
    aput p4, v11, v15

    .line 1419
    aput p5, v11, v10

    .line 1420
    const/16 v16, 0x1

    .line 1422
    .end local v1    # "foundCellSpan":Z
    .local v16, "foundCellSpan":Z
    new-instance v1, Lcom/android/launcher3/DropTarget$DragObject;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/launcher3/DropTarget$DragObject;-><init>(Landroid/content/Context;)V

    move-object v7, v1

    .line 1423
    .local v7, "dragObject":Lcom/android/launcher3/DropTarget$DragObject;
    iput-object v14, v7, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 1425
    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v6, 0x0

    const/16 v17, 0x1

    move-object v2, v8

    move/from16 v3, p2

    move-object v4, v13

    move-object v5, v11

    move-object/from16 v18, v7

    .end local v7    # "dragObject":Lcom/android/launcher3/DropTarget$DragObject;
    .local v18, "dragObject":Lcom/android/launcher3/DropTarget$DragObject;
    move/from16 v7, v17

    move-object/from16 v17, v8

    .end local v8    # "view":Landroid/view/View;
    .local v17, "view":Landroid/view/View;
    move-object/from16 v8, v18

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/Workspace;->createUserFolderIfNecessary(Landroid/view/View;ILcom/android/launcher3/CellLayout;[IFZLcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1427
    return-void

    .line 1429
    :cond_2
    iget-object v2, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v3, v17

    move-object v4, v13

    move-object v5, v11

    move-object/from16 v7, v18

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/DropTarget$DragObject;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1431
    return-void

    .line 1433
    .end local v18    # "dragObject":Lcom/android/launcher3/DropTarget$DragObject;
    :cond_3
    goto :goto_0

    .line 1417
    .end local v16    # "foundCellSpan":Z
    .end local v17    # "view":Landroid/view/View;
    .restart local v1    # "foundCellSpan":Z
    .restart local v8    # "view":Landroid/view/View;
    :cond_4
    move-object/from16 v17, v8

    .line 1434
    .end local v8    # "view":Landroid/view/View;
    .restart local v17    # "view":Landroid/view/View;
    invoke-virtual {v13, v11, v10, v10}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v16

    .line 1437
    .end local v1    # "foundCellSpan":Z
    .restart local v16    # "foundCellSpan":Z
    :goto_0
    if-nez v16, :cond_5

    .line 1438
    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v2, 0x0

    invoke-virtual {v1, v13, v14, v2}, Lcom/android/launcher3/Workspace;->onNoCellFound(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V

    .line 1439
    return-void

    .line 1442
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v1

    aget v5, v11, v15

    aget v6, v11, v10

    move-object v2, v14

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 1443
    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    move-object/from16 v2, v17

    .end local v17    # "view":Landroid/view/View;
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v1, v2, v14}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 1444
    .end local v2    # "view":Landroid/view/View;
    .end local v16    # "foundCellSpan":Z
    move-object/from16 v3, p6

    goto :goto_1

    .line 1446
    :cond_6
    invoke-virtual {v0, v9}, Lcom/android/launcher3/Launcher;->findFolderIcon(I)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v2

    .line 1447
    .local v2, "folderIcon":Lcom/android/launcher3/folder/FolderIcon;
    if-eqz v2, :cond_7

    .line 1448
    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/FolderInfo;

    .line 1449
    .local v1, "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    move-object/from16 v3, p6

    iget v4, v3, Lcom/android/launcher3/util/PendingRequestArgs;->rank:I

    invoke-virtual {v1, v14, v4, v15}, Lcom/android/launcher3/model/data/FolderInfo;->add(Lcom/android/launcher3/model/data/WorkspaceItemInfo;IZ)V

    .line 1450
    .end local v1    # "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    goto :goto_1

    .line 1451
    :cond_7
    move-object/from16 v3, p6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find folder with id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to add shortcut."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    .end local v2    # "folderIcon":Lcom/android/launcher3/folder/FolderIcon;
    :goto_1
    return-void
.end method

.method completeTwoStageWidgetDrop(IILcom/android/launcher3/util/PendingRequestArgs;)V
    .locals 12
    .param p1, "resultCode"    # I
    .param p2, "appWidgetId"    # I
    .param p3, "requestArgs"    # Lcom/android/launcher3/util/PendingRequestArgs;

    .line 1013
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 1014
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/launcher3/celllayout/CellPosMapper;->mapModelToPresenter(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    .line 1013
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 1015
    .local v0, "cellLayout":Lcom/android/launcher3/CellLayout;
    const/4 v1, 0x0

    .line 1016
    .local v1, "onCompleteRunnable":Ljava/lang/Runnable;
    const/4 v2, 0x0

    .line 1018
    .local v2, "animationType":I
    const/4 v3, 0x0

    .line 1019
    .local v3, "boundWidget":Landroid/appwidget/AppWidgetHostView;
    const/4 v4, -0x1

    if-ne p1, v4, :cond_1

    .line 1020
    const/4 v2, 0x3

    .line 1026
    invoke-static {}, Lcom/android/launcher3/Flags;->enableAddAppWidgetViaConfigActivityV2()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1027
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/launcher3/Workspace;->getWidgetForAppWidgetId(I)Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    move-result-object v4

    goto :goto_0

    .line 1028
    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    .line 1029
    invoke-virtual {p3}, Lcom/android/launcher3/util/PendingRequestArgs;->getWidgetHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->getProviderInfo(Landroid/content/Context;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v5

    .line 1028
    invoke-virtual {v4, p2, v5}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->createView(ILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v4

    :goto_0
    nop

    .line 1030
    .local v4, "layout":Landroid/appwidget/AppWidgetHostView;
    move-object v3, v4

    .line 1031
    new-instance v5, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0, p2, p3, v4}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/util/PendingRequestArgs;Landroid/appwidget/AppWidgetHostView;)V

    move-object v1, v5

    .end local v4    # "layout":Landroid/appwidget/AppWidgetHostView;
    goto :goto_1

    .line 1037
    :cond_1
    if-nez p1, :cond_2

    .line 1038
    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    invoke-virtual {v4, p2}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->deleteAppWidgetId(I)V

    .line 1039
    const/4 v2, 0x4

    move v10, v2

    move-object v11, v3

    goto :goto_2

    .line 1037
    :cond_2
    :goto_1
    move v10, v2

    move-object v11, v3

    .line 1041
    .end local v2    # "animationType":I
    .end local v3    # "boundWidget":Landroid/appwidget/AppWidgetHostView;
    .local v10, "animationType":I
    .local v11, "boundWidget":Landroid/appwidget/AppWidgetHostView;
    :goto_2
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1042
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 1043
    invoke-virtual {v3}, Lcom/android/launcher3/dragndrop/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/launcher3/dragndrop/DragView;

    const/4 v9, 0x1

    .line 1042
    move-object v3, p3

    move-object v4, v0

    move-object v6, v1

    move v7, v10

    move-object v8, v11

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/Workspace;->animateWidgetDrop(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    goto :goto_3

    .line 1045
    :cond_3
    if-eqz v1, :cond_4

    .line 1047
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1049
    :cond_4
    :goto_3
    return-void
.end method

.method protected createAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;
    .locals 1

    .line 2795
    new-instance v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    invoke-direct {v0, p0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;-><init>(Lcom/android/launcher3/Launcher;)V

    return-object v0
.end method

.method protected createAppWidgetHolder()Lcom/android/launcher3/widget/LauncherWidgetHolder;
    .locals 2

    .line 1586
    invoke-static {p0}, Lcom/android/launcher3/widget/LauncherWidgetHolder$HolderFactory;->newFactory(Landroid/content/Context;)Lcom/android/launcher3/widget/LauncherWidgetHolder$HolderFactory;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/widget/LauncherWidgetHolder$HolderFactory;->newInstance(Landroid/content/Context;Ljava/util/function/IntConsumer;)Lcom/android/launcher3/widget/LauncherWidgetHolder;

    move-result-object v0

    return-object v0
.end method

.method protected createColdRebootStartupLatencyLogger()Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;
    .locals 1

    .line 616
    new-instance v0, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;

    invoke-direct {v0}, Lcom/android/launcher3/logging/ColdRebootStartupLatencyLogger;-><init>()V

    return-object v0
.end method

.method protected createModelCallbacks()Lcom/android/launcher3/ModelCallbacks;
    .locals 1

    .line 595
    new-instance v0, Lcom/android/launcher3/ModelCallbacks;

    invoke-direct {v0, p0}, Lcom/android/launcher3/ModelCallbacks;-><init>(Lcom/android/launcher3/Launcher;)V

    return-object v0
.end method

.method public createTouchControllers()[Lcom/android/launcher3/util/TouchController;
    .locals 3

    .line 2729
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/launcher3/util/TouchController;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public deferOverlayCallbacksUntilNextResumeOrStop()V
    .locals 1

    .line 1174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mDeferOverlayCallbacks:Z

    .line 1175
    return-void
.end method

.method public dismissSplitSelection(Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V
    .locals 0
    .param p1, "splitDismissEvent"    # Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 2770
    return-void
.end method

.method public dispatchDeviceProfileChanged()V
    .locals 1

    .line 710
    invoke-super {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->dispatchDeviceProfileChanged()V

    .line 711
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onDeviceProvideChanged()V

    .line 712
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2037
    const-string v0, "Main"

    const-string v1, "Key event"

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/testing/TestLogging;->recordKeyEvent(Ljava/lang/String;Ljava/lang/String;Landroid/view/KeyEvent;)V

    .line 2038
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

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

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 2140
    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 2141
    .local v0, "result":Z
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    .line 2142
    .local v1, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2145
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-nez v2, :cond_0

    .line 2146
    sget v2, Lcom/android/launcher3/R$string;->home_screen:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2147
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/LauncherState;->getDescription(Lcom/android/launcher3/Launcher;)Ljava/lang/String;

    move-result-object v2

    .line 2145
    :goto_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2148
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 2043
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2048
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/Launcher;->mLastTouchUpTime:J

    .line 2051
    :pswitch_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mTouchInProgress:Z

    goto :goto_0

    .line 2045
    :pswitch_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mTouchInProgress:Z

    .line 2046
    nop

    .line 2054
    :goto_0
    const-string v0, "Main"

    const-string v1, "Touch event"

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/testing/TestLogging;->recordMotionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/view/MotionEvent;)V

    .line 2055
    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 2607
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/statemanager/StatefulActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2609
    array-length v0, p4

    if-lez v0, :cond_4

    const/4 v0, 0x0

    aget-object v0, p4, v0

    const-string v1, "--all"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Workspace Items"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2611
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getPageCount()I

    move-result v1

    const-string v2, "    "

    if-ge v0, v1, :cond_2

    .line 2612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  Homescreen "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2614
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    .line 2615
    .local v1, "layout":Landroid/view/ViewGroup;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 2616
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 2617
    .local v4, "tag":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 2618
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2615
    .end local v4    # "tag":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2611
    .end local v1    # "layout":Landroid/view/ViewGroup;
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2623
    .end local v0    # "i":I
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  Hotseat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2624
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    .line 2625
    .local v0, "layout":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 2626
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 2627
    .local v3, "tag":Ljava/lang/Object;
    if-eqz v3, :cond_3

    .line 2628
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2625
    .end local v3    # "tag":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2633
    .end local v0    # "layout":Landroid/view/ViewGroup;
    .end local v1    # "j":I
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Misc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/android/launcher3/Launcher;->dumpMisc(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tmWorkspaceLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mModelCallbacks:Lcom/android/launcher3/ModelCallbacks;

    invoke-virtual {v1}, Lcom/android/launcher3/ModelCallbacks;->getWorkspaceLoading()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tmPendingRequestArgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPendingActivityResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tmRotationHelper: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tmAppWidgetHolder.isListening: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    .line 2640
    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->isListening()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2639
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2643
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, p1, p3}, Lcom/android/launcher3/dragndrop/DragLayer;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2644
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v0, p1, p3}, Lcom/android/launcher3/statemanager/StateManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2645
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-virtual {v0, p1, p3}, Lcom/android/launcher3/popup/PopupDataProvider;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2646
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0, p0, p1, p3}, Lcom/android/launcher3/DeviceProfile;->dump(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2647
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/android/launcher3/allapps/AllAppsStore;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2650
    :try_start_0
    invoke-static {p3}, Lcom/android/launcher3/logging/FileLog;->flushAll(Ljava/io/PrintWriter;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2653
    goto :goto_3

    .line 2651
    :catch_0
    move-exception v0

    .line 2655
    :goto_3
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/launcher3/LauncherModel;->dumpState(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2656
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v0, p1, p3}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2657
    return-void
.end method

.method public enableHotseatEdu(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 2800
    return-void
.end method

.method public findFolderIcon(I)Lcom/android/launcher3/folder/FolderIcon;
    .locals 1
    .param p1, "folderIconId"    # I

    .line 1458
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon;

    return-object v0
.end method

.method public finishBindingItems(Lcom/android/launcher3/util/IntSet;)V
    .locals 1
    .param p1, "pagesBoundFirst"    # Lcom/android/launcher3/util/IntSet;

    .line 2364
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelCallbacks:Lcom/android/launcher3/ModelCallbacks;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ModelCallbacks;->finishBindingItems(Lcom/android/launcher3/util/IntSet;)V

    .line 2365
    return-void
.end method

.method public bridge synthetic getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .line 286
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;
    .locals 1

    .line 1775
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    return-object v0
.end method

.method public getAllAppsController()Lcom/android/launcher3/allapps/AllAppsTransitionController;
    .locals 1

    .line 2965
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    return-object v0
.end method

.method protected getAllAppsEntryEvent()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/launcher3/logging/StatsLogManager$EventEnum;",
            ">;"
        }
    .end annotation

    .line 1218
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DEVICE_SEARCH:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1219
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_ENTRY_WITH_DEVICE_SEARCH:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_0

    .line 1220
    :cond_0
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_ENTRY:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 1218
    :goto_0
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method protected getAllAppsExitEvent()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/launcher3/logging/StatsLogManager$EventEnum;",
            ">;"
        }
    .end annotation

    .line 1258
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_EXIT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getAllAppsItemLongClickListener()Landroid/view/View$OnLongClickListener;
    .locals 1

    .line 3081
    sget-object v0, Lcom/android/launcher3/touch/ItemLongClickListener;->INSTANCE_ALL_APPS:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method public getAnimationCoordinator()Lcom/android/launcher3/util/CannedAnimationCoordinator;
    .locals 1

    .line 3076
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAnimationCoordinator:Lcom/android/launcher3/util/CannedAnimationCoordinator;

    return-object v0
.end method

.method public getAppWidgetHolder()Lcom/android/launcher3/widget/LauncherWidgetHolder;
    .locals 1

    .line 3000
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    return-object v0
.end method

.method public getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation

    .line 2975
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    return-object v0
.end method

.method public getCellLayout(II)Lcom/android/launcher3/CellLayout;
    .locals 1
    .param p1, "container"    # I
    .param p2, "screenId"    # I

    .line 3028
    const/16 v0, -0x65

    if-ne p1, v0, :cond_0

    .line 3029
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 3028
    :goto_0
    return-object v0
.end method

.method public getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;
    .locals 1

    .line 2933
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mCellPosMapper:Lcom/android/launcher3/celllayout/CellPosMapper;

    return-object v0
.end method

.method protected getDefaultOverlay()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;
    .locals 1

    .line 683
    new-instance v0, Lcom/android/launcher3/Launcher$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$2;-><init>(Lcom/android/launcher3/Launcher;)V

    return-object v0
.end method

.method public getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 2957
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDragController()Lcom/android/launcher3/dragndrop/DragController;
    .locals 1

    .line 1779
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    return-object v0
.end method

.method public getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;
    .locals 1

    .line 2970
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    return-object v0
.end method

.method public bridge synthetic getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;
    .locals 1

    .line 286
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    return-object v0
.end method

.method public getDropTargetBar()Lcom/android/launcher3/DropTargetBar;
    .locals 1

    .line 2991
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    return-object v0
.end method

.method public getDropTargetHandler()Lcom/android/launcher3/DropTargetHandler;
    .locals 1

    .line 1784
    new-instance v0, Lcom/android/launcher3/DropTargetHandler;

    invoke-direct {v0, p0}, Lcom/android/launcher3/DropTargetHandler;-><init>(Lcom/android/launcher3/Launcher;)V

    return-object v0
.end method

.method public getFirstMatchForAppClose(ILjava/lang/String;Landroid/os/UserHandle;Z)Landroid/view/View;
    .locals 9
    .param p1, "preferredItemId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "supportsAllAppsState"    # Z

    .line 2388
    new-instance v0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda7;-><init>(I)V

    .line 2390
    .local v0, "preferredItem":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v1, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda8;

    invoke-direct {v1, p3, p2}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda8;-><init>(Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2398
    .local v1, "packageAndUserAndApp":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p4, :cond_1

    sget-object v5, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v5}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2399
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v5

    .line 2400
    .local v5, "activeRecyclerView":Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    new-array v2, v2, [Ljava/util/function/Predicate;

    aput-object v0, v2, v3

    aput-object v1, v2, v4

    invoke-static {v6, v2}, Lcom/android/launcher3/Launcher;->getFirstMatch(Ljava/lang/Iterable;[Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 2403
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->computeVerticalScrollOffset()I

    move-result v4

    if-lez v4, :cond_0

    .line 2404
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 2405
    .local v4, "locationBounds":Landroid/graphics/RectF;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p0, v2, v3, v4, v6}, Lcom/android/launcher3/views/FloatingIconView;->getLocationBoundsForView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 2407
    iget v3, v4, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getHeaderBottom()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v3, v3, v6

    if-gez v3, :cond_0

    .line 2409
    const/4 v3, 0x0

    return-object v3

    .line 2413
    .end local v4    # "locationBounds":Landroid/graphics/RectF;
    :cond_0
    return-object v2

    .line 2417
    .end local v2    # "v":Landroid/view/View;
    .end local v5    # "activeRecyclerView":Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    :cond_1
    invoke-static {p0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v5

    .line 2418
    .local v5, "folder":Lcom/android/launcher3/folder/Folder;
    if-eqz v5, :cond_4

    .line 2419
    nop

    .line 2420
    invoke-virtual {v5}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v6

    .line 2419
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    new-array v7, v2, [Ljava/util/function/Predicate;

    aput-object v0, v7, v3

    aput-object v1, v7, v4

    invoke-static {v6, v7}, Lcom/android/launcher3/Launcher;->getFirstMatch(Ljava/lang/Iterable;[Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v6

    .line 2423
    .local v6, "v":Landroid/view/View;
    if-nez v6, :cond_3

    .line 2424
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isStarted()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isForceInvisible()Z

    move-result v7

    if-nez v7, :cond_2

    move v7, v4

    goto :goto_0

    :cond_2
    move v7, v3

    :goto_0
    invoke-virtual {v5, v7}, Lcom/android/launcher3/folder/Folder;->close(Z)V

    goto :goto_1

    .line 2426
    :cond_3
    return-object v6

    .line 2430
    .end local v6    # "v":Landroid/view/View;
    :cond_4
    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v7

    add-int/2addr v7, v4

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 2431
    .local v6, "containers":Ljava/util/List;, "Ljava/util/List<Landroid/view/ViewGroup;>;"
    iget-object v7, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher3/Workspace;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/Hotseat;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2432
    iget-object v7, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v8, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda9;

    invoke-direct {v8, v6}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda9;-><init>(Ljava/util/List;)V

    invoke-virtual {v7, v8}, Lcom/android/launcher3/Workspace;->forEachVisiblePage(Ljava/util/function/Consumer;)V

    .line 2436
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/util/function/Predicate;

    aput-object v0, v7, v3

    invoke-static {v0}, Lcom/android/launcher3/util/ItemInfoMatcher;->forFolderMatch(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v3

    aput-object v3, v7, v4

    aput-object v1, v7, v2

    .line 2437
    invoke-static {v1}, Lcom/android/launcher3/util/ItemInfoMatcher;->forFolderMatch(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v7, v3

    .line 2436
    invoke-static {v6, v7}, Lcom/android/launcher3/Launcher;->getFirstMatch(Ljava/lang/Iterable;[Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public getFocusHandler()Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;
    .locals 1

    .line 2941
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    return-object v0
.end method

.method public getFolderBoundingBox()Landroid/graphics/Rect;
    .locals 1

    .line 1950
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getPageAreaRelativeToDragLayer()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getHotseat()Lcom/android/launcher3/Hotseat;
    .locals 1

    .line 2983
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    return-object v0
.end method

.method public getIsFirstPagePinnedItemEnabled()Z
    .locals 1

    .line 3069
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelCallbacks:Lcom/android/launcher3/ModelCallbacks;

    invoke-virtual {v0}, Lcom/android/launcher3/ModelCallbacks;->getIsFirstPagePinnedItemEnabled()Z

    move-result v0

    return v0
.end method

.method public getItemInflater()Lcom/android/launcher3/util/ItemInflater;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/util/ItemInflater<",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation

    .line 3091
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mItemInflater:Lcom/android/launcher3/util/ItemInflater;

    return-object v0
.end method

.method public getModel()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .line 3004
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method public getModelWriter()Lcom/android/launcher3/model/ModelWriter;
    .locals 1

    .line 3011
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    return-object v0
.end method

.method public getNormalOverviewScaleAndOffset()[F
    .locals 1

    .line 3057
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected getOnBackAnimationCallback()Landroid/window/OnBackAnimationCallback;
    .locals 4

    .line 639
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isInAutoCancelActionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    new-instance v0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda28;-><init>(Lcom/android/launcher3/Launcher;)V

    return-object v0

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 645
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda29;

    invoke-direct {v1, v0}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda29;-><init>(Lcom/android/launcher3/dragndrop/DragController;)V

    return-object v1

    .line 649
    :cond_1
    nop

    .line 650
    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 651
    .local v0, "topView":Lcom/android/launcher3/AbstractFloatingView;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/AbstractFloatingView;->canHandleBack()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 652
    return-object v0

    .line 656
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mBackPressedHandlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/BackPressHandler;

    .line 657
    .local v2, "handler":Lcom/android/launcher3/util/BackPressHandler;
    invoke-interface {v2}, Lcom/android/launcher3/util/BackPressHandler;->canHandleBack()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 658
    return-object v2

    .line 660
    .end local v2    # "handler":Lcom/android/launcher3/util/BackPressHandler;
    :cond_3
    goto :goto_0

    .line 663
    :cond_4
    new-instance v1, Lcom/android/launcher3/Launcher$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Launcher$1;-><init>(Lcom/android/launcher3/Launcher;)V

    return-object v1
.end method

.method public getOptionsPopup()Lcom/android/launcher3/popup/ArrowPopup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/popup/ArrowPopup<",
            "*>;"
        }
    .end annotation

    .line 3100
    sget v0, Lcom/android/launcher3/R$id;->popup_container:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/popup/ArrowPopup;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .line 3019
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOldConfig:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method public getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;
    .locals 1

    .line 2961
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    return-object v0
.end method

.method public getOverviewPanel()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">()TT;"
        }
    .end annotation

    .line 2987
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverviewPanel:Landroid/view/View;

    return-object v0
.end method

.method public getPagesToBindSynchronously(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntSet;
    .locals 1
    .param p1, "orderedScreenIds"    # Lcom/android/launcher3/util/IntArray;

    .line 2153
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelCallbacks:Lcom/android/launcher3/ModelCallbacks;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ModelCallbacks;->getPagesToBindSynchronously(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    return-object v0
.end method

.method public getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;
    .locals 1

    .line 2952
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    return-object v0
.end method

.method protected getPopupTarget(FF)Landroid/graphics/RectF;
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 3041
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->options_menu_thumb_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 3042
    .local v0, "halfSize":F
    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-ltz v2, :cond_0

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    .line 3043
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragLayer;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float p1, v1

    .line 3044
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragLayer;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float p2, v1

    .line 3046
    :cond_1
    new-instance v1, Landroid/graphics/RectF;

    sub-float v2, p1, v0

    sub-float v3, p2, v0

    add-float v4, p1, v0

    add-float v5, p2, v0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method public getRotationHelper()Lcom/android/launcher3/states/RotationHelper;
    .locals 1

    .line 2937
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

    return-object v0
.end method

.method public getScrimView()Lcom/android/launcher3/views/ScrimView;
    .locals 1

    .line 2996
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mScrimView:Lcom/android/launcher3/views/ScrimView;

    return-object v0
.end method

.method public getSharedPrefs()Landroid/content/SharedPreferences;
    .locals 1

    .line 3015
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getStateManager()Lcom/android/launcher3/statemanager/StateManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/statemanager/StateManager<",
            "Lcom/android/launcher3/LauncherState;",
            ">;"
        }
    .end annotation

    .line 2946
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    return-object v0
.end method

.method public getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;
    .locals 2

    .line 3086
    invoke-super {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAllAppsSessionLogId:Lcom/android/launcher3/logging/InstanceId;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager;->withDefaultInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    return-object v0
.end method

.method public getStringCache()Lcom/android/launcher3/model/StringCache;
    .locals 1

    .line 3034
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelCallbacks:Lcom/android/launcher3/ModelCallbacks;

    invoke-virtual {v0}, Lcom/android/launcher3/ModelCallbacks;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedShortcuts()Ljava/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/android/launcher3/popup/SystemShortcut$Factory;",
            ">;"
        }
    .end annotation

    .line 3050
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/launcher3/popup/SystemShortcut$Factory;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/launcher3/popup/SystemShortcut;->APP_INFO:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/launcher3/popup/SystemShortcut;->WIDGETS:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/launcher3/popup/SystemShortcut;->INSTALL:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/launcher3/popup/SystemShortcut;->UNINSTALL_APP:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public getWorkspace()Lcom/android/launcher3/Workspace;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/Workspace<",
            "*>;"
        }
    .end annotation

    .line 2979
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    return-object v0
.end method

.method protected handleGestureContract(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1691
    invoke-static {p1}, Lcom/android/launcher3/GestureNavContract;->fromIntent(Landroid/content/Intent;)Lcom/android/launcher3/GestureNavContract;

    move-result-object v0

    .line 1692
    .local v0, "gnc":Lcom/android/launcher3/GestureNavContract;
    if-eqz v0, :cond_0

    .line 1693
    const/4 v1, 0x0

    const/16 v2, 0x2000

    invoke-static {p0, v1, v2}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    .line 1694
    invoke-static {p0, v0}, Lcom/android/launcher3/views/FloatingSurfaceView;->show(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/GestureNavContract;)V

    .line 1696
    :cond_0
    return-void
.end method

.method protected handleSplitAnimationGoingToHome(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V
    .locals 0
    .param p1, "splitDismissReason"    # Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    .line 1655
    return-void
.end method

.method protected initDeviceProfile(Lcom/android/launcher3/InvariantDeviceProfile;)Z
    .locals 4
    .param p1, "idp"    # Lcom/android/launcher3/InvariantDeviceProfile;

    .line 777
    invoke-virtual {p1, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 778
    .local v0, "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    if-ne v1, v0, :cond_0

    .line 779
    const/4 v1, 0x0

    return v1

    .line 782
    :cond_0
    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 783
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 784
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 785
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getMultiWindowDisplaySize()Lcom/android/launcher3/util/WindowBounds;

    move-result-object v2

    .line 784
    invoke-virtual {v1, p0, v2}, Lcom/android/launcher3/DeviceProfile;->getMultiWindowProfile(Landroid/content/Context;Lcom/android/launcher3/util/WindowBounds;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 788
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onDeviceProfileInitiated()V

    .line 789
    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->FOLDABLE_SINGLE_PAGE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v1, :cond_2

    .line 790
    new-instance v1, Lcom/android/launcher3/celllayout/CellPosMapper$TwoPanelCellPosMapper;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-object v2, v2, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-direct {v1, v2}, Lcom/android/launcher3/celllayout/CellPosMapper$TwoPanelCellPosMapper;-><init>(I)V

    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mCellPosMapper:Lcom/android/launcher3/celllayout/CellPosMapper;

    goto :goto_0

    .line 792
    :cond_2
    new-instance v1, Lcom/android/launcher3/celllayout/CellPosMapper;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v2}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/celllayout/CellPosMapper;-><init>(ZI)V

    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mCellPosMapper:Lcom/android/launcher3/celllayout/CellPosMapper;

    .line 795
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mCellPosMapper:Lcom/android/launcher3/celllayout/CellPosMapper;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2, p0}, Lcom/android/launcher3/LauncherModel;->getWriter(ZLcom/android/launcher3/celllayout/CellPosMapper;Lcom/android/launcher3/model/BgDataModel$Callbacks;)Lcom/android/launcher3/model/ModelWriter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    .line 796
    return v3
.end method

.method protected initDragController()V
    .locals 1

    .line 739
    new-instance v0, Lcom/android/launcher3/dragndrop/LauncherDragController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/dragndrop/LauncherDragController;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    .line 740
    return-void
.end method

.method public invalidateParent(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 801
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ltz v0, :cond_0

    .line 802
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(I)Landroid/view/View;

    move-result-object v0

    .line 803
    .local v0, "folderIcon":Landroid/view/View;
    instance-of v1, v0, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v1, :cond_0

    .line 804
    new-instance v1, Lcom/android/launcher3/folder/FolderGridOrganizer;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/launcher3/folder/FolderGridOrganizer;-><init>(Lcom/android/launcher3/DeviceProfile;)V

    .line 805
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/FolderGridOrganizer;->setFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderGridOrganizer;

    move-result-object v1

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    .line 806
    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/FolderGridOrganizer;->isItemInPreview(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 807
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 811
    .end local v0    # "folderIcon":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public isBindingItems()Z
    .locals 1

    .line 2884
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    return v0
.end method

.method public isDraggingEnabled()Z
    .locals 1

    .line 2897
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isHotseatLayout(Landroid/view/View;)Z
    .locals 1
    .param p1, "layout"    # Landroid/view/View;

    .line 2122
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz v0, :cond_0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNaturalScrollingEnabled()Z
    .locals 1

    .line 2901
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mIsNaturalScrollingEnabled:Z

    return v0
.end method

.method public isSplitSelectionActive()Z
    .locals 1

    .line 2764
    const/4 v0, 0x0

    return v0
.end method

.method public isTouchInProgress()Z
    .locals 1

    .line 2891
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mTouchInProgress:Z

    return v0
.end method

.method public isWorkspaceLoading()Z
    .locals 1

    .line 2879
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelCallbacks:Lcom/android/launcher3/ModelCallbacks;

    invoke-virtual {v0}, Lcom/android/launcher3/ModelCallbacks;->getWorkspaceLoading()Z

    move-result v0

    return v0
.end method

.method public isWorkspaceLocked()Z
    .locals 1

    .line 2875
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

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

.method public launchAppPair(Lcom/android/launcher3/apppairs/AppPairIcon;)V
    .locals 0
    .param p1, "appPairIcon"    # Lcom/android/launcher3/apppairs/AppPairIcon;

    .line 3066
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 988
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    .line 989
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->handleActivityResult(IILandroid/content/Intent;)V

    .line 990
    return-void
.end method

.method public onAllAppsTransition(F)V
    .locals 0
    .param p1, "progress"    # F

    .line 2821
    return-void
.end method

.method public onAssistantVisibilityChanged(F)V
    .locals 2
    .param p1, "visibility"    # F

    .line 769
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getQsb()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 770
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1567
    invoke-super {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->onAttachedToWindow()V

    .line 1568
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onAttachedToWindow()V

    .line 1569
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 2061
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOnBackAnimationCallback()Landroid/window/OnBackAnimationCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/window/OnBackAnimationCallback;->onBackInvoked()V

    .line 2062
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 423
    nop

    .line 424
    sget-boolean v0, Lcom/android/launcher3/Launcher;->sIsNewProcess:Z

    if-eqz v0, :cond_1

    .line 425
    invoke-static {p0}, Lcom/android/launcher3/util/LockedUserState;->get(Landroid/content/Context;)Lcom/android/launcher3/util/LockedUserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/LockedUserState;->isUserUnlockedAtLauncherStartup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->COLD:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    goto :goto_0

    .line 427
    :cond_0
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->COLD_DEVICE_REBOOTING:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    goto :goto_0

    .line 428
    :cond_1
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->WARM:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    .line 423
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->createStartupLatencyLogger(Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)Lcom/android/launcher3/logging/StartupLatencyLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mStartupLatencyLogger:Lcom/android/launcher3/logging/StartupLatencyLogger;

    .line 430
    sget-boolean v0, Lcom/android/launcher3/Launcher;->sIsNewProcess:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 431
    invoke-static {p0}, Lcom/android/launcher3/util/LockedUserState;->get(Landroid/content/Context;)Lcom/android/launcher3/util/LockedUserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/LockedUserState;->isUserUnlockedAtLauncherStartup()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mIsColdStartupAfterReboot:Z

    .line 432
    if-eqz v0, :cond_3

    .line 433
    const-string v0, "LauncherColdStartup"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 437
    :cond_3
    sput-boolean v2, Lcom/android/launcher3/Launcher;->sIsNewProcess:Z

    .line 438
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStartupLatencyLogger:Lcom/android/launcher3/logging/StartupLatencyLogger;

    sget-object v3, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_TOTAL_DURATION:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    .line 439
    invoke-interface {v0, v3}, Lcom/android/launcher3/logging/StartupLatencyLogger;->logStart(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;)Lcom/android/launcher3/logging/StartupLatencyLogger;

    move-result-object v0

    sget-object v3, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_ACTIVITY_ON_CREATE:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    .line 440
    invoke-interface {v0, v3}, Lcom/android/launcher3/logging/StartupLatencyLogger;->logStart(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;)Lcom/android/launcher3/logging/StartupLatencyLogger;

    .line 442
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_4

    .line 443
    const-string v0, "DisplayWorkspaceFirstFrame"

    invoke-static {v0, v2}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 445
    const-string v0, "DisplayAllApps"

    invoke-static {v0, v1}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 448
    :cond_4
    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "Launcher.onCreate"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    .line 501
    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->onCreate(Landroid/os/Bundle;)V

    .line 503
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 504
    .local v0, "app":Lcom/android/launcher3/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 506
    new-instance v1, Lcom/android/launcher3/states/RotationHelper;

    invoke-direct {v1, p0}, Lcom/android/launcher3/states/RotationHelper;-><init>(Lcom/android/launcher3/BaseActivity;)V

    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

    .line 507
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v1

    .line 508
    .local v1, "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->initDeviceProfile(Lcom/android/launcher3/InvariantDeviceProfile;)Z

    .line 509
    invoke-virtual {v1, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->addOnChangeListener(Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;)V

    .line 510
    invoke-static {p0}, Lcom/android/launcher3/LauncherPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 511
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    .line 512
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->createAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    .line 514
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->initDragController()V

    .line 515
    new-instance v3, Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-direct {v3, p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    .line 516
    new-instance v3, Lcom/android/launcher3/statemanager/StateManager;

    sget-object v4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-direct {v3, p0, v4}, Lcom/android/launcher3/statemanager/StateManager;-><init>(Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/launcher3/statemanager/BaseState;)V

    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    .line 518
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->setupViews()V

    .line 519
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->updateDisallowBack()V

    .line 521
    new-instance v3, Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-direct {v3, p0}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    .line 522
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->createAppWidgetHolder()Lcom/android/launcher3/widget/LauncherWidgetHolder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    .line 523
    invoke-virtual {v3}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->startListening()V

    .line 524
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    new-instance v4, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->addProviderChangeListener(Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;)V

    .line 525
    new-instance v3, Lcom/android/launcher3/util/ItemInflater;

    iget-object v7, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getItemOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    new-instance v10, Lcom/android/launcher3/CellLayout;

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 526
    invoke-virtual {v4}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-direct {v10, v4, v5}, Lcom/android/launcher3/CellLayout;-><init>(Landroid/content/Context;Lcom/android/launcher3/CellLayoutContainer;)V

    move-object v5, v3

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/util/ItemInflater;-><init>(Landroid/content/Context;Lcom/android/launcher3/widget/LauncherWidgetHolder;Landroid/view/View$OnClickListener;Landroid/view/View$OnFocusChangeListener;Landroid/view/ViewGroup;)V

    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mItemInflater:Lcom/android/launcher3/util/ItemInflater;

    .line 528
    new-instance v3, Lcom/android/launcher3/popup/PopupDataProvider;

    new-instance v4, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-direct {v3, v4}, Lcom/android/launcher3/popup/PopupDataProvider;-><init>(Ljava/util/function/Consumer;)V

    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    .line 530
    sget-object v3, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v3, p0}, Lcom/android/launcher3/util/ActivityTracker;->handleCreate(Lcom/android/launcher3/BaseActivity;)Z

    move-result v3

    .line 531
    .local v3, "internalStateHandled":Z
    if-eqz v3, :cond_5

    .line 532
    if-eqz p1, :cond_5

    .line 535
    const-string v4, "launcher.state"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 538
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->restoreState(Landroid/os/Bundle;)V

    .line 539
    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v4}, Lcom/android/launcher3/statemanager/StateManager;->reapplyState()V

    .line 541
    if-eqz p1, :cond_6

    .line 542
    const-string v4, "launcher.current_screen_ids"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 543
    .local v4, "pageIds":[I
    if-eqz v4, :cond_6

    .line 544
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mModelCallbacks:Lcom/android/launcher3/ModelCallbacks;

    invoke-static {v4}, Lcom/android/launcher3/util/IntSet;->wrap([I)Lcom/android/launcher3/util/IntSet;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/ModelCallbacks;->setPagesToBindSynchronously(Lcom/android/launcher3/util/IntSet;)V

    .line 548
    .end local v4    # "pageIds":[I
    :cond_6
    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mStartupLatencyLogger:Lcom/android/launcher3/logging/StartupLatencyLogger;

    invoke-interface {v4}, Lcom/android/launcher3/logging/StartupLatencyLogger;->logWorkspaceLoadStartTime()Lcom/android/launcher3/logging/StartupLatencyLogger;

    .line 549
    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v4, p0}, Lcom/android/launcher3/LauncherModel;->addCallbacksAndLoad(Lcom/android/launcher3/model/BgDataModel$Callbacks;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 550
    if-nez v3, :cond_7

    .line 553
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda3;

    invoke-direct {v5, v4}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Boolean;)V

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mOnInitialBindListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 558
    :cond_7
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/android/launcher3/Launcher;->setDefaultKeyMode(I)V

    .line 560
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/launcher3/Launcher;->setContentView(Landroid/view/View;)V

    .line 561
    invoke-static {p0}, Lcom/android/launcher3/views/ComposeInitializer;->initCompose(Lcom/android/launcher3/views/ActivityContext;)V

    .line 563
    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mOnInitialBindListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v4, :cond_8

    .line 564
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherRootView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mOnInitialBindListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 566
    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherRootView;->dispatchInsets()V

    .line 568
    sget-object v4, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v4, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/util/SettingsCache;

    .line 569
    .local v4, "settingsCache":Lcom/android/launcher3/util/SettingsCache;
    sget-object v5, Lcom/android/launcher3/util/SettingsCache;->TOUCHPAD_NATURAL_SCROLLING:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mNaturalScrollingChangedListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    .line 570
    sget-object v5, Lcom/android/launcher3/util/SettingsCache;->TOUCHPAD_NATURAL_SCROLLING:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/launcher3/Launcher;->mIsNaturalScrollingEnabled:Z

    .line 573
    sget-object v5, Lcom/android/launcher3/util/ScreenOnTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v5, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/util/ScreenOnTracker;

    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mScreenOnListener:Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/ScreenOnTracker;->addListener(Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;)V

    .line 574
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v5

    sget v6, Lcom/android/launcher3/R$attr;->isWorkspaceDarkText:I

    .line 575
    invoke-static {p0, v6}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result v6

    .line 574
    invoke-virtual {v5, v2, v6}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(IZ)V

    .line 577
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDefaultOverlay()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    .line 578
    sget-object v5, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v5, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;

    const-class v6, Lcom/android/systemui/plugins/LauncherOverlayPlugin;

    invoke-virtual {v5, p0, v6, v2}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 581
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/states/RotationHelper;->initialize()V

    .line 582
    sget-object v2, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/util/TraceHelper;->endSection()V

    .line 584
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v5, 0x30

    invoke-virtual {v2, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 585
    sget v2, Lcom/android/launcher3/R$string;->home_screen:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->setTitle(I)V

    .line 586
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mStartupLatencyLogger:Lcom/android/launcher3/logging/StartupLatencyLogger;

    sget-object v5, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_ACTIVITY_ON_CREATE:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    invoke-interface {v2, v5}, Lcom/android/launcher3/logging/StartupLatencyLogger;->logEnd(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;)Lcom/android/launcher3/logging/StartupLatencyLogger;

    .line 588
    invoke-static {}, Lcom/android/launcher3/Flags;->enableTwoPaneLauncherSettings()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 589
    invoke-static {p0}, Landroidx/window/embedding/RuleController;->getInstance(Landroid/content/Context;)Landroidx/window/embedding/RuleController;

    move-result-object v2

    sget v5, Lcom/android/launcher3/R$xml;->split_configuration:I

    .line 590
    invoke-static {p0, v5}, Landroidx/window/embedding/RuleController;->parseRules(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object v5

    .line 589
    invoke-virtual {v2, v5}, Landroidx/window/embedding/RuleController;->setRules(Ljava/util/Set;)V

    .line 592
    :cond_9
    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .line 1384
    const-class v0, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1385
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$layout;->page_indicator_dots:I

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1388
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/statemanager/StatefulActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDeferredResumed()V
    .locals 3

    .line 1083
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->logStopAndResume(Z)V

    .line 1086
    sget-object v1, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/ItemInstallQueue;

    .line 1087
    invoke-virtual {v1, v0}, Lcom/android/launcher3/model/ItemInstallQueue;->resumeModelPush(I)V

    .line 1090
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->validateModelDataOnResume()V

    .line 1093
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-static {v1}, Lcom/android/launcher3/notification/NotificationListener;->addNotificationsChangedListener(Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;)V

    .line 1095
    invoke-static {p0}, Lcom/android/launcher3/allapps/DiscoveryBounce;->showForHomeIfNeeded(Lcom/android/launcher3/Launcher;)V

    .line 1096
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->setActivityResumed(Z)V

    .line 1099
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/Launcher$4;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/Launcher$4;-><init>(Lcom/android/launcher3/Launcher;I)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherRootView;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 1116
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1748
    invoke-super {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->onDestroy()V

    .line 1749
    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/ActivityTracker;->onActivityDestroyed(Lcom/android/launcher3/BaseActivity;)V

    .line 1751
    sget-object v0, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/SettingsCache;

    sget-object v1, Lcom/android/launcher3/util/SettingsCache;->TOUCHPAD_NATURAL_SCROLLING:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mNaturalScrollingChangedListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/SettingsCache;->unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    .line 1753
    sget-object v0, Lcom/android/launcher3/util/ScreenOnTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/ScreenOnTracker;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mScreenOnListener:Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/ScreenOnTracker;->removeListener(Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;)V

    .line 1754
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->removeFolderListeners()V

    .line 1755
    sget-object v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 1757
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherModel;->removeCallbacks(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    .line 1758
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/states/RotationHelper;->destroy()V

    .line 1760
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->stopListening()V

    .line 1761
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->destroy()V

    .line 1763
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/method/TextKeyListener;->release()V

    .line 1764
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelCallbacks:Lcom/android/launcher3/ModelCallbacks;

    invoke-virtual {v0}, Lcom/android/launcher3/ModelCallbacks;->clearPendingBinds()V

    .line 1765
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->removeOnChangeListener(Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;)V

    .line 1770
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherRootView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mOnInitialBindListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1771
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onActivityDestroyed()V

    .line 1772
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1573
    invoke-super {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->onDetachedFromWindow()V

    .line 1574
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onDetachedFromWindow()V

    .line 1575
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->closeContextMenu()V

    .line 1576
    return-void
.end method

.method public onDragLayerHierarchyChanged()V
    .locals 0

    .line 2735
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->updateDisallowBack()V

    .line 2736
    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 2

    .line 716
    invoke-super {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->onEnterAnimationComplete()V

    .line 717
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mRotationHelper:Lcom/android/launcher3/states/RotationHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/states/RotationHelper;->setCurrentTransitionRequest(I)V

    .line 722
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-nez v0, :cond_0

    .line 723
    const/16 v0, 0x2000

    invoke-static {p0, v1, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    .line 725
    :cond_0
    return-void
.end method

.method protected onHandleConfigurationChanged()V
    .locals 1

    .line 749
    const-string v0, "Launcher#onHandleconfigurationChanged"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 751
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->initDeviceProfile(Lcom/android/launcher3/InvariantDeviceProfile;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 764
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 752
    return-void

    .line 755
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->dispatchDeviceProfileChanged()V

    .line 756
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->reapplyUi()V

    .line 757
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->recreateControllers()V

    .line 761
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 762
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->rebindCallbacks()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 764
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 765
    nop

    .line 766
    return-void

    .line 764
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 765
    throw v0
.end method

.method public onIdpChanged(Z)V
    .locals 0
    .param p1, "modelPropertiesChanged"    # Z

    .line 744
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onHandleConfigurationChanged()V

    .line 745
    return-void
.end method

.method public onInitialBindComplete(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;Lcom/android/launcher3/util/RunnableList;IZ)V
    .locals 6
    .param p1, "boundPages"    # Lcom/android/launcher3/util/IntSet;
    .param p2, "pendingTasks"    # Lcom/android/launcher3/util/RunnableList;
    .param p3, "onCompleteSignal"    # Lcom/android/launcher3/util/RunnableList;
    .param p4, "workspaceItemCount"    # I
    .param p5, "isBindSync"    # Z

    .line 2354
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelCallbacks:Lcom/android/launcher3/ModelCallbacks;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/ModelCallbacks;->onInitialBindComplete(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;Lcom/android/launcher3/util/RunnableList;IZ)V

    .line 2356
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 2691
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mKeyboardShortcutsDelegate:Lcom/android/launcher3/util/KeyboardShortcutsDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/KeyboardShortcutsDelegate;->onKeyDown(ILandroid/view/KeyEvent;)Ljava/lang/Boolean;

    move-result-object v0

    .line 2692
    .local v0, "result":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/statemanager/StatefulActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 2680
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mKeyboardShortcutsDelegate:Lcom/android/launcher3/util/KeyboardShortcutsDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/KeyboardShortcutsDelegate;->onKeyShortcut(ILandroid/view/KeyEvent;)Ljava/lang/Boolean;

    move-result-object v0

    .line 2681
    .local v0, "result":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/statemanager/StatefulActivity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 2702
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mKeyboardShortcutsDelegate:Lcom/android/launcher3/util/KeyboardShortcutsDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/KeyboardShortcutsDelegate;->onKeyUp(ILandroid/view/KeyEvent;)Ljava/lang/Boolean;

    move-result-object v0

    .line 2703
    .local v0, "result":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/statemanager/StatefulActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1
    .param p1, "isInMultiWindowMode"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 729
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/statemanager/StatefulActivity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 731
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->initDeviceProfile(Lcom/android/launcher3/InvariantDeviceProfile;)Z

    .line 732
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->dispatchDeviceProfileChanged()V

    .line 733
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1592
    invoke-static {}, Lcom/android/launcher3/Utilities;->isRunningInTestHarness()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Launcher.onNewIntent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaplTarget"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    :cond_0
    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "Launcher.onNewIntent"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    .line 1596
    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1598
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->hasWindowFocus()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v3, 0x400000

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1603
    .local v0, "alreadyOnHome":Z
    :goto_0
    if-eqz v0, :cond_2

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v3}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1604
    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    .line 1605
    .local v3, "shouldMoveToDefaultScreen":Z
    :goto_1
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1606
    .local v4, "isActionMain":Z
    sget-object v5, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v5, p0}, Lcom/android/launcher3/util/ActivityTracker;->handleNewIntent(Lcom/android/launcher3/BaseActivity;)Z

    move-result v5

    .line 1608
    .local v5, "internalStateHandled":Z
    if-eqz v4, :cond_8

    .line 1609
    if-nez v5, :cond_5

    .line 1611
    nop

    .line 1612
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isStarted()Z

    move-result v6

    .line 1611
    const/16 v7, 0x100

    invoke-static {p0, v6, v7}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;ZI)V

    .line 1614
    sget-object v6, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v6}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1617
    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    sget-object v7, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    iget-object v8, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v8}, Lcom/android/launcher3/statemanager/StateManager;->shouldAnimateStateChange()Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    .line 1621
    :cond_3
    if-nez v0, :cond_4

    .line 1622
    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isStarted()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->reset(Z)V

    .line 1625
    :cond_4
    if-eqz v3, :cond_5

    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/Workspace;->isHandlingTouch()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1626
    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda27;

    invoke-direct {v7, v6}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda27;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-virtual {v6, v7}, Lcom/android/launcher3/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1630
    :cond_5
    invoke-static {}, Lcom/android/launcher3/config/FeatureFlags;->enableSplitContextually()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1631
    sget-object v6, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SPLIT_SELECTION_EXIT_HOME:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-virtual {p0, v6}, Lcom/android/launcher3/Launcher;->handleSplitAnimationGoingToHome(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 1633
    :cond_6
    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isStarted()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isForceInvisible()Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    :goto_2
    invoke-interface {v6, v1}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->hideOverlay(Z)V

    .line 1634
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->handleGestureContract(Landroid/content/Intent;)V

    goto :goto_3

    .line 1635
    :cond_8
    const-string v1, "android.intent.action.ALL_APPS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_3

    .line 1639
    :cond_9
    const-string v1, "launcher.intent_action_all_apps_toggle"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_3

    .line 1643
    :cond_a
    const-string v1, "android.intent.action.SHOW_WORK_APPS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1649
    :goto_3
    sget-object v1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/TraceHelper;->endSection()V

    .line 1650
    return-void
.end method

.method public onOverlayVisibilityChanged(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .line 2503
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    .line 2504
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withSrcState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    .line 2505
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withDstState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    .line 2506
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v1

    .line 2507
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v2

    .line 2508
    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->setPageIndex(I)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v2

    .line 2507
    invoke-virtual {v1, v2}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v1

    .line 2509
    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 2506
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    .line 2510
    if-eqz p1, :cond_1

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SWIPELEFT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SWIPERIGHT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    :goto_1
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 2511
    return-void
.end method

.method public onPageEndTransition()V
    .locals 0

    .line 2517
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1279
    sget-object v0, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/ItemInstallQueue;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/ItemInstallQueue;->pauseModelPush(I)V

    .line 1281
    invoke-super {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->onPause()V

    .line 1282
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->cancelDrag()V

    .line 1283
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/Launcher;->mLastTouchUpTime:J

    .line 1284
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DropTargetBar;->animateToVisibility(Z)V

    .line 1286
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mDeferOverlayCallbacks:Z

    if-nez v0, :cond_0

    .line 1287
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onActivityPaused()V

    .line 1289
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->setActivityResumed(Z)V

    .line 1290
    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/LauncherOverlayPlugin;Landroid/content/Context;)V
    .locals 1
    .param p1, "overlayManager"    # Lcom/android/systemui/plugins/LauncherOverlayPlugin;
    .param p2, "context"    # Landroid/content/Context;

    .line 688
    new-instance v0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda30;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/systemui/plugins/LauncherOverlayPlugin;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->switchOverlay(Ljava/util/function/Supplier;)V

    .line 689
    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    .line 286
    check-cast p1, Lcom/android/systemui/plugins/LauncherOverlayPlugin;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/Launcher;->onPluginConnected(Lcom/android/systemui/plugins/LauncherOverlayPlugin;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/LauncherOverlayPlugin;)V
    .locals 1
    .param p1, "plugin"    # Lcom/android/systemui/plugins/LauncherOverlayPlugin;

    .line 693
    new-instance v0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda6;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->switchOverlay(Ljava/util/function/Supplier;)V

    .line 694
    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    .line 286
    check-cast p1, Lcom/android/systemui/plugins/LauncherOverlayPlugin;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->onPluginDisconnected(Lcom/android/systemui/plugins/LauncherOverlayPlugin;)V

    return-void
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 1
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "deviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    .line 2669
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutGroup;>;"
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mKeyboardShortcutsDelegate:Lcom/android/launcher3/util/KeyboardShortcutsDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/util/KeyboardShortcutsDelegate;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    .line 2670
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/statemanager/StatefulActivity;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    .line 2671
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;

    .line 1700
    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1701
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelCallbacks:Lcom/android/launcher3/ModelCallbacks;

    invoke-virtual {v0}, Lcom/android/launcher3/ModelCallbacks;->getSynchronouslyBoundPages()Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    .line 1702
    .local v0, "synchronouslyBoundPages":Lcom/android/launcher3/util/IntSet;
    if-eqz v0, :cond_0

    .line 1703
    new-instance v1, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda21;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSet;->forEach(Ljava/util/function/Consumer;)V

    .line 1710
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1263
    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "Launcher.onResume"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    .line 1264
    invoke-super {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->onResume()V

    .line 1266
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mDeferOverlayCallbacks:Z

    if-eqz v0, :cond_0

    .line 1267
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->scheduleDeferredCheck()V

    goto :goto_0

    .line 1269
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onActivityResumed()V

    .line 1272
    :goto_0
    invoke-static {p0}, Lcom/android/launcher3/dragndrop/DragView;->removeAllViews(Lcom/android/launcher3/views/ActivityContext;)V

    .line 1273
    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/TraceHelper;->endSection()V

    .line 1274
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .line 1580
    new-instance v0, Lcom/android/launcher3/Launcher$NonConfigInstance;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/Launcher$NonConfigInstance;-><init>(Lcom/android/launcher3/Launcher$NonConfigInstance-IA;)V

    .line 1581
    .local v0, "instance":Lcom/android/launcher3/Launcher$NonConfigInstance;
    new-instance v1, Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mOldConfig:Landroid/content/res/Configuration;

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, v0, Lcom/android/launcher3/Launcher$NonConfigInstance;->config:Landroid/content/res/Configuration;

    .line 1582
    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 1714
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 1715
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCurrentPageScreenIds()Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->toArray()[I

    move-result-object v0

    .line 1714
    const-string v1, "launcher.current_screen_ids"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1716
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iget v0, v0, Lcom/android/launcher3/LauncherState;->ordinal:I

    const-string v1, "launcher.state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1718
    nop

    .line 1719
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 1720
    .local v0, "widgets":Lcom/android/launcher3/AbstractFloatingView;
    const-string v1, "launcher.widget_panel"

    if-eqz v0, :cond_0

    .line 1721
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 1722
    .local v2, "widgetsState":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {v0, v2}, Lcom/android/launcher3/AbstractFloatingView;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 1723
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1724
    .end local v2    # "widgetsState":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    goto :goto_0

    .line 1725
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1730
    :goto_0
    nop

    .line 1731
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isForceInvisible()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 1730
    :goto_1
    const v2, 0x576274

    invoke-static {p0, v1, v2}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;ZI)V

    .line 1732
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->finishAutoCancelActionMode()Z

    .line 1734
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    if-eqz v1, :cond_2

    .line 1735
    const-string v2, "launcher.request_args"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1737
    :cond_2
    const-string v1, "launcher.request_code"

    iget v2, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1739
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    if-eqz v1, :cond_3

    .line 1740
    const-string v2, "launcher.activity_result"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1743
    :cond_3
    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1744
    return-void
.end method

.method protected onScreenOnChanged(Z)V
    .locals 2
    .param p1, "isOn"    # Z

    .line 2071
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    if-nez v0, :cond_1

    .line 2072
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2073
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onUiChangedWhileSleeping()V

    .line 2075
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 2077
    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 1070
    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "Launcher.onStart"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    .line 1071
    invoke-super {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->onStart()V

    .line 1072
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mDeferOverlayCallbacks:Z

    if-nez v0, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onActivityStarted()V

    .line 1076
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->setActivityStarted(Z)V

    .line 1077
    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/TraceHelper;->endSection()V

    .line 1078
    return-void
.end method

.method protected onStateBack()V
    .locals 1

    .line 2065
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherState;->onBackPressed(Lcom/android/launcher3/Launcher;)V

    .line 2066
    return-void
.end method

.method public onStateSetEnd(Lcom/android/launcher3/LauncherState;)V
    .locals 4
    .param p1, "state"    # Lcom/android/launcher3/LauncherState;

    .line 1225
    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->onStateSetEnd(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 1226
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppWidgetHolder()Lcom/android/launcher3/widget/LauncherWidgetHolder;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->setStateIsNormal(Z)V

    .line 1227
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    sget v1, Lcom/android/launcher3/LauncherState;->FLAG_MULTI_PAGE:I

    invoke-virtual {p1, v1}, Lcom/android/launcher3/LauncherState;->hasFlag(I)Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setClipChildren(Z)V

    .line 1229
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->finishAutoCancelActionMode()Z

    .line 1230
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->removeActivityFlags(I)V

    .line 1233
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1234
    iget v0, p1, Lcom/android/launcher3/LauncherState;->ordinal:I

    invoke-static {p0, v0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendStateEventToTest(Landroid/content/Context;I)V

    .line 1236
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_1

    .line 1238
    sget-object v0, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/ItemInstallQueue;

    .line 1239
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/ItemInstallQueue;->resumeModelPush(I)V

    .line 1242
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getRotationHelper()Lcom/android/launcher3/states/RotationHelper;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/states/RotationHelper;->setCurrentStateRequest(I)V

    .line 1245
    :cond_1
    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPrevLauncherState:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAllAppsSessionLogId:Lcom/android/launcher3/logging/InstanceId;

    if-eqz v0, :cond_2

    .line 1248
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->reset(Z)V

    .line 1249
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAllAppsExitEvent()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda22;

    invoke-direct {v2, v1}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda22;-><init>(Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mAllAppsSessionLogId:Lcom/android/launcher3/logging/InstanceId;

    .line 1252
    :cond_2
    return-void
.end method

.method public bridge synthetic onStateSetEnd(Lcom/android/launcher3/statemanager/BaseState;)V
    .locals 0

    .line 286
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->onStateSetEnd(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public onStateSetStart(Lcom/android/launcher3/LauncherState;)V
    .locals 4
    .param p1, "state"    # Lcom/android/launcher3/LauncherState;

    .line 1179
    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->onStateSetStart(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 1180
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mDeferOverlayCallbacks:Z

    if-eqz v0, :cond_0

    .line 1181
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->scheduleDeferredCheck()V

    .line 1183
    :cond_0
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->addActivityFlags(I)V

    .line 1185
    sget-object v0, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/launcher3/LauncherState;->EDIT_MODE:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_2

    .line 1188
    :cond_1
    sget-object v0, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/ItemInstallQueue;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/ItemInstallQueue;->pauseModelPush(I)V

    .line 1189
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getRotationHelper()Lcom/android/launcher3/states/RotationHelper;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/states/RotationHelper;->setCurrentStateRequest(I)V

    .line 1191
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->showPageIndicatorAtCurrentScroll()V

    .line 1192
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setClipChildren(Z)V

    .line 1195
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pageindicators/PageIndicator;

    sget v1, Lcom/android/launcher3/LauncherState;->FLAG_MULTI_PAGE:I

    invoke-virtual {p1, v1}, Lcom/android/launcher3/LauncherState;->hasFlag(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->setShouldAutoHide(Z)V

    .line 1197
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mPrevLauncherState:Lcom/android/launcher3/LauncherState;

    .line 1198
    if-eq v0, p1, :cond_3

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAllAppsSessionLogId:Lcom/android/launcher3/logging/InstanceId;

    if-nez v0, :cond_3

    .line 1202
    new-instance v0, Lcom/android/launcher3/logging/InstanceIdSequence;

    invoke-direct {v0}, Lcom/android/launcher3/logging/InstanceIdSequence;-><init>()V

    invoke-virtual {v0}, Lcom/android/launcher3/logging/InstanceIdSequence;->newInstanceId()Lcom/android/launcher3/logging/InstanceId;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mAllAppsSessionLogId:Lcom/android/launcher3/logging/InstanceId;

    .line 1203
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAllAppsEntryEvent()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1204
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    .line 1205
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v1

    .line 1206
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v2

    .line 1207
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->setPageIndex(I)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v2

    .line 1206
    invoke-virtual {v1, v2}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v1

    .line 1207
    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 1205
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    .line 1208
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAllAppsEntryEvent()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 1211
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->updateDisallowBack()V

    .line 1212
    return-void
.end method

.method public bridge synthetic onStateSetStart(Lcom/android/launcher3/statemanager/BaseState;)V
    .locals 0

    .line 286
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->onStateSetStart(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public onStateTransitionCompletedAfterSwipeToHome(Lcom/android/launcher3/LauncherState;)V
    .locals 0
    .param p1, "finalState"    # Lcom/android/launcher3/LauncherState;

    .line 2778
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 1053
    invoke-super {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->onStop()V

    .line 1054
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mDeferOverlayCallbacks:Z

    if-eqz v0, :cond_0

    .line 1055
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->checkIfOverlayStillDeferred()V

    goto :goto_0

    .line 1057
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->onActivityStopped()V

    .line 1059
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->hideKeyboard()V

    .line 1060
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->logStopAndResume(Z)V

    .line 1061
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->setActivityStarted(Z)V

    .line 1062
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/notification/NotificationListener;->removeNotificationsChangedListener(Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;)V

    .line 1063
    invoke-static {}, Lcom/android/launcher3/views/FloatingIconView;->resetIconLoadResult()V

    .line 1064
    const-string v0, "TAPL_LAUNCHER_ACTIVITY_STOPPED"

    invoke-static {p0, v0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendTestProtocolEventToTest(Landroid/content/Context;Ljava/lang/String;)V

    .line 1066
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .line 2127
    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->onTrimMemory(I)V

    .line 2128
    const/16 v0, 0x14

    if-lt p1, v0, :cond_0

    .line 2131
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->releaseMemory()I

    .line 2136
    :cond_0
    return-void
.end method

.method public onWidgetsTransition(F)V
    .locals 6
    .param p1, "progress"    # F

    .line 2829
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v4, v0, Lcom/android/launcher3/DeviceProfile;->bottomSheetWorkspaceScale:F

    sget-object v5, Lcom/android/app/animation/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    move v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v0

    .line 2831
    .local v0, "scale":F
    sget-object v1, Lcom/android/launcher3/Launcher;->WORKSPACE_WIDGET_SCALE:Landroid/util/FloatProperty;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 2832
    sget-object v1, Lcom/android/launcher3/Launcher;->HOTSEAT_WIDGET_SCALE:Landroid/util/FloatProperty;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 2833
    return-void
.end method

.method public pauseExpensiveViewUpdates()V
    .locals 2

    .line 2842
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-interface {v0}, Lcom/android/launcher3/pageindicators/PageIndicator;->pauseAnimations()V

    .line 2844
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda14;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    .line 2850
    return-void
.end method

.method public preAddApps()V
    .locals 1

    .line 2191
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelCallbacks:Lcom/android/launcher3/ModelCallbacks;

    invoke-virtual {v0}, Lcom/android/launcher3/ModelCallbacks;->preAddApps()V

    .line 2192
    return-void
.end method

.method public processActivityResult()V
    .locals 3

    .line 864
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    if-eqz v0, :cond_0

    .line 865
    iget v0, v0, Lcom/android/launcher3/util/ActivityResultInfo;->requestCode:I

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    iget v1, v1, Lcom/android/launcher3/util/ActivityResultInfo;->resultCode:I

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    iget-object v2, v2, Lcom/android/launcher3/util/ActivityResultInfo;->data:Landroid/content/Intent;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/Launcher;->handleActivityResult(IILandroid/content/Intent;)V

    .line 867
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    .line 869
    :cond_0
    return-void
.end method

.method public refreshAndBindWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)V
    .locals 1
    .param p1, "packageUser"    # Lcom/android/launcher3/util/PackageUserKey;

    .line 2599
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/LauncherModel;->refreshAndBindWidgetsAndShortcuts(Lcom/android/launcher3/util/PackageUserKey;)V

    .line 2600
    return-void
.end method

.method protected removeBackAnimationCallback(Lcom/android/launcher3/util/BackPressHandler;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/launcher3/util/BackPressHandler;

    .line 2743
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBackPressedHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2744
    return-void
.end method

.method public removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "deleteFromDb"    # Z

    .line 1990
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;ZLjava/lang/String;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "deleteFromDb"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .line 2003
    instance-of v0, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 2005
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(I)Landroid/view/View;

    move-result-object v0

    .line 2006
    .local v0, "folderIcon":Landroid/view/View;
    instance-of v2, v0, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v2, :cond_0

    .line 2007
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/FolderInfo;

    move-object v3, p2

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v2, v3, v1}, Lcom/android/launcher3/model/data/FolderInfo;->remove(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    goto :goto_0

    .line 2009
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    .line 2011
    :goto_0
    if-eqz p3, :cond_1

    .line 2012
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    invoke-virtual {v2, p2, p4}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    .line 2014
    .end local v0    # "folderIcon":Landroid/view/View;
    :cond_1
    goto :goto_1

    :cond_2
    instance-of v0, p2, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v0, :cond_5

    .line 2015
    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/model/data/FolderInfo;

    .line 2016
    .local v0, "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    instance-of v2, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v2, :cond_3

    .line 2017
    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderIcon;->removeListeners()V

    .line 2019
    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    .line 2020
    if-eqz p3, :cond_4

    .line 2021
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/model/ModelWriter;->deleteFolderAndContentsFromDatabase(Lcom/android/launcher3/model/data/FolderInfo;)V

    .line 2023
    .end local v0    # "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    :cond_4
    goto :goto_1

    :cond_5
    instance-of v0, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_7

    .line 2024
    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 2025
    .local v0, "widgetInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    .line 2026
    if-eqz p3, :cond_6

    .line 2027
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppWidgetHolder()Lcom/android/launcher3/widget/LauncherWidgetHolder;

    move-result-object v3

    invoke-virtual {v2, v0, v3, p4}, Lcom/android/launcher3/model/ModelWriter;->deleteWidgetInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/widget/LauncherWidgetHolder;Ljava/lang/String;)V

    .line 2029
    .end local v0    # "widgetInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    :cond_6
    nop

    .line 2032
    :goto_1
    return v1

    .line 2030
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public resumeExpensiveViewUpdates()V
    .locals 2

    .line 2854
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-interface {v0}, Lcom/android/launcher3/pageindicators/PageIndicator;->skipAnimationsToEnd()V

    .line 2856
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda24;

    invoke-direct {v1}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda24;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    .line 2862
    return-void
.end method

.method public returnToHomescreen()V
    .locals 2

    .line 2782
    invoke-super {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->returnToHomescreen()V

    .line 2783
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 2784
    return-void
.end method

.method public setIsFirstPagePinnedItemEnabled(Z)V
    .locals 1
    .param p1, "isFirstPagePinnedItemEnabled"    # Z

    .line 2163
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelCallbacks:Lcom/android/launcher3/ModelCallbacks;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ModelCallbacks;->setIsFirstPagePinnedItemEnabled(Z)V

    .line 2164
    return-void
.end method

.method public setLauncherOverlay(Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayTouchProxy;)V
    .locals 1
    .param p1, "overlay"    # Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayTouchProxy;

    .line 2912
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->setLauncherOverlay(Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayTouchProxy;)V

    .line 2913
    return-void
.end method

.method public setOnDeferredActivityLaunchCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 2920
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mOnDeferredActivityLaunchCallback:Ljava/lang/Runnable;

    .line 2921
    return-void
.end method

.method public setPagesToBindSynchronously(Lcom/android/launcher3/util/IntSet;)V
    .locals 1
    .param p1, "pages"    # Lcom/android/launcher3/util/IntSet;

    .line 2928
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelCallbacks:Lcom/android/launcher3/ModelCallbacks;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ModelCallbacks;->setPagesToBindSynchronously(Lcom/android/launcher3/util/IntSet;)V

    .line 2929
    return-void
.end method

.method public setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V
    .locals 0
    .param p1, "args"    # Lcom/android/launcher3/util/PendingRequestArgs;

    .line 2905
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    .line 2906
    return-void
.end method

.method protected setupViews()V
    .locals 3

    .line 1333
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStartupLatencyLogger:Lcom/android/launcher3/logging/StartupLatencyLogger;

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_VIEW_INFLATION:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StartupLatencyLogger;->logStart(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;)Lcom/android/launcher3/logging/StartupLatencyLogger;

    .line 1334
    sget v0, Lcom/android/launcher3/R$layout;->launcher:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->inflateRootView(I)V

    .line 1335
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStartupLatencyLogger:Lcom/android/launcher3/logging/StartupLatencyLogger;

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;->LAUNCHER_LATENCY_STARTUP_VIEW_INFLATION:Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StartupLatencyLogger;->logEnd(Lcom/android/launcher3/logging/StatsLogManager$LauncherLatencyEvent;)Lcom/android/launcher3/logging/StartupLatencyLogger;

    .line 1337
    sget v0, Lcom/android/launcher3/R$id;->drag_layer:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dragndrop/DragLayer;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 1338
    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getFocusIndicatorHelper()Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    .line 1339
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    sget v1, Lcom/android/launcher3/R$id;->workspace:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 1340
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->initParentViews(Landroid/view/View;)V

    .line 1341
    sget v0, Lcom/android/launcher3/R$id;->overview_panel:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mOverviewPanel:Landroid/view/View;

    .line 1342
    sget v0, Lcom/android/launcher3/R$id;->hotseat:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Hotseat;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    .line 1343
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Hotseat;->setWorkspace(Lcom/android/launcher3/Workspace;)V

    .line 1346
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->setup(Lcom/android/launcher3/dragndrop/DragController;Lcom/android/launcher3/Workspace;)V

    .line 1348
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setup(Lcom/android/launcher3/dragndrop/DragController;)V

    .line 1351
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->lockWallpaperToDefaultPage()V

    .line 1352
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SMARTSPACE_REMOVAL:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1353
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->bindAndInitFirstWorkspaceScreen()V

    .line 1355
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 1358
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    sget v1, Lcom/android/launcher3/R$id;->drop_target_bar:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DropTargetBar;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    .line 1361
    sget v0, Lcom/android/launcher3/R$id;->apps_view:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    .line 1362
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setAllAppsTransitionController(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V

    .line 1365
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setVisibility(I)V

    .line 1366
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setImportantForAccessibility(I)V

    .line 1371
    sget v0, Lcom/android/launcher3/R$id;->scrim_view:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ScrimView;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mScrimView:Lcom/android/launcher3/views/ScrimView;

    .line 1374
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DropTargetBar;->setup(Lcom/android/launcher3/dragndrop/DragController;)V

    .line 1375
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mScrimView:Lcom/android/launcher3/views/ScrimView;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setupViews(Lcom/android/launcher3/views/ScrimView;Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    .line 1377
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pageindicators/PageIndicator;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->setShouldAutoHide(Z)V

    .line 1378
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pageindicators/PageIndicator;

    sget v1, Lcom/android/launcher3/R$attr;->isWorkspaceDarkText:I

    invoke-static {p0, v1}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1379
    const/high16 v1, -0x1000000

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 1378
    :goto_0
    invoke-interface {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->setPaintColor(I)V

    .line 1380
    return-void
.end method

.method protected showAllAppsFromIntent(Z)V
    .locals 2
    .param p1, "alreadyOnHome"    # Z

    .line 1678
    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    .line 1679
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    .line 1680
    return-void
.end method

.method public showDefaultOptions(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 2710
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/Launcher;->getPopupTarget(FF)Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {p0}, Lcom/android/launcher3/views/OptionsPopupView;->getOptions(Lcom/android/launcher3/Launcher;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher3/views/OptionsPopupView;->show(Lcom/android/launcher3/views/ActivityContext;Landroid/graphics/RectF;Ljava/util/List;Z)Lcom/android/launcher3/views/OptionsPopupView;

    .line 2712
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 1789
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 1790
    iput p2, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    .line 1792
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/statemanager/StatefulActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1793
    return-void
.end method

.method public startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/RunnableList;
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 2081
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->hasBeenResumed()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2082
    new-instance v0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    .line 2086
    .local v0, "result":Lcom/android/launcher3/util/RunnableList;
    new-instance v8, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda25;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda25;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/util/RunnableList;)V

    invoke-virtual {p0, v1, v8}, Lcom/android/launcher3/Launcher;->addEventCallback(ILjava/lang/Runnable;)V

    .line 2094
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mOnDeferredActivityLaunchCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 2095
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 2096
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mOnDeferredActivityLaunchCallback:Ljava/lang/Runnable;

    .line 2098
    :cond_0
    return-object v0

    .line 2101
    .end local v0    # "result":Lcom/android/launcher3/util/RunnableList;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/statemanager/StatefulActivity;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/RunnableList;

    move-result-object v0

    .line 2102
    .restart local v0    # "result":Lcom/android/launcher3/util/RunnableList;
    if-eqz v0, :cond_2

    instance-of v2, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v2, :cond_2

    .line 2107
    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/BubbleTextView;

    .line 2108
    .local v2, "btv":Lcom/android/launcher3/BubbleTextView;
    invoke-virtual {v2, v1}, Lcom/android/launcher3/BubbleTextView;->setStayPressed(Z)V

    .line 2109
    new-instance v1, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda26;

    invoke-direct {v1, v2}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda26;-><init>(Lcom/android/launcher3/BubbleTextView;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    .line 2111
    .end local v2    # "btv":Lcom/android/launcher3/BubbleTextView;
    :cond_2
    return-object v0
.end method

.method public startActivitySafelyAuth(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 2115
    sget v0, Lcom/android/launcher3/R$string;->trust_apps_manager_name:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda12;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/lineage/LineageUtils;->showLockScreen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 2118
    return-void
.end method

.method public startBinding()V
    .locals 1

    .line 2158
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelCallbacks:Lcom/android/launcher3/ModelCallbacks;

    invoke-virtual {v0}, Lcom/android/launcher3/ModelCallbacks;->startBinding()V

    .line 2159
    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .param p7, "options"    # Landroid/os/Bundle;

    .line 1798
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 1799
    iput p2, p0, Lcom/android/launcher3/Launcher;->mPendingActivityRequestCode:I

    .line 1802
    :cond_0
    :try_start_0
    invoke-super/range {p0 .. p7}, Lcom/android/launcher3/statemanager/StatefulActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1806
    nop

    .line 1807
    return-void

    .line 1804
    :catch_0
    move-exception v0

    .line 1805
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/content/ActivityNotFoundException;

    invoke-direct {v1}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw v1
.end method

.method public supportsAdaptiveIconAnimation(Landroid/view/View;)Z
    .locals 1
    .param p1, "clickedView"    # Landroid/view/View;

    .line 2811
    const/4 v0, 0x0

    return v0
.end method

.method protected toggleAllAppsFromIntent(Z)V
    .locals 4
    .param p1, "alreadyOnHome"    # Z

    .line 1658
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->isInStableState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1659
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    goto :goto_0

    .line 1661
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isOverlayShown()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1662
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverlayManager:Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->hideOverlay(Z)V

    .line 1664
    :cond_1
    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    .line 1665
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    new-instance v3, Lcom/android/launcher3/Launcher$6;

    invoke-direct {v3, p0}, Lcom/android/launcher3/Launcher$6;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;ZLandroid/animation/Animator$AnimatorListener;)V

    .line 1675
    :goto_0
    return-void
.end method

.method public updateOpenFolderPosition([ILandroid/graphics/Rect;II)V
    .locals 9
    .param p1, "inOutPosition"    # [I
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 1955
    const/4 v0, 0x0

    aget v1, p1, v0

    .line 1956
    .local v1, "left":I
    const/4 v2, 0x1

    aget v3, p1, v2

    .line 1957
    .local v3, "top":I
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    .line 1958
    .local v4, "grid":Lcom/android/launcher3/DeviceProfile;
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/Workspace;->getPaddingLeft()I

    move-result v5

    .line 1959
    .local v5, "distFromEdgeOfScreen":I
    iget-boolean v6, v4, Lcom/android/launcher3/DeviceProfile;->isPhone:Z

    if-eqz v6, :cond_0

    iget v6, v4, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    sub-int/2addr v6, p3

    mul-int/lit8 v7, v5, 0x4

    if-ge v6, v7, :cond_0

    .line 1963
    iget v6, v4, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    sub-int/2addr v6, p3

    div-int/lit8 v1, v6, 0x2

    goto :goto_0

    .line 1964
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-lt p3, v6, :cond_1

    .line 1966
    iget v6, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int/2addr v7, p3

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 1968
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-lt p4, v6, :cond_2

    .line 1970
    iget v6, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int/2addr v7, p4

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    .end local v3    # "top":I
    .local v6, "top":I
    goto :goto_1

    .line 1974
    .end local v6    # "top":I
    .restart local v3    # "top":I
    :cond_2
    invoke-virtual {v4}, Lcom/android/launcher3/DeviceProfile;->getAbsoluteOpenFolderBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 1975
    .local v6, "folderBounds":Landroid/graphics/Rect;
    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget v8, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, p3

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1976
    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, p4

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v6, v3

    .line 1978
    .end local v3    # "top":I
    .local v6, "top":I
    :goto_1
    aput v1, p1, v0

    .line 1979
    aput v6, p1, v2

    .line 1980
    return-void
.end method
