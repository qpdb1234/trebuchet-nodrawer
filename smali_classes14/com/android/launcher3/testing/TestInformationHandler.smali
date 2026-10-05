.class public Lcom/android/launcher3/testing/TestInformationHandler;
.super Ljava/lang/Object;
.source "TestInformationHandler.java"

# interfaces
.implements Lcom/android/launcher3/util/ResourceBasedOverride;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

.field protected mLauncherAppState:Lcom/android/launcher3/LauncherAppState;


# direct methods
.method public static synthetic $r8$lambda$Bhd5czQt4MrhgLntHzUB6rDpBOE(Lcom/android/launcher3/testing/TestInformationHandler;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/Launcher;)Landroid/graphics/Point;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$14(Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/Launcher;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$D6S0dcEO_uKDVVM8mvy9GY8ogPw(Landroid/os/Bundle;Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$I-emUce8XIRkt6hZ8spoFTyo3lo(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XCCkM-xEVmzChrpbsyAxnELl7Ew(Landroid/os/Bundle;Ljava/lang/String;[I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$b6Mpv6uD_i6T941ym6siMKoeC0A(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nwhDbJt04LGamgYjMmUlmPpp31s(Landroid/os/Bundle;Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$oSnMwblK9Xxhyabluvb1WKLAN9E(Lcom/android/launcher3/testing/TestInformationHandler;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$1(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDescendantRectRelativeToDragLayerForCell(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/CellLayout;IIII)Landroid/graphics/Rect;
    .locals 8
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "cellLayout"    # Lcom/android/launcher3/CellLayout;
    .param p2, "cellX"    # I
    .param p3, "cellY"    # I
    .param p4, "spanX"    # I
    .param p5, "spanY"    # I

    .line 310
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    .line 311
    .local v0, "dragLayer":Lcom/android/launcher3/dragndrop/DragLayer;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 313
    .local v1, "target":Landroid/graphics/Rect;
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 314
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    .line 315
    .local v2, "leftTop":[I
    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    filled-new-array {v3, v4}, [I

    move-result-object v3

    .line 316
    .local v3, "rightBottom":[I
    invoke-virtual {v0, p1, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    .line 317
    invoke-virtual {v0, p1, v3}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    .line 319
    const/4 v4, 0x0

    aget v5, v2, v4

    const/4 v6, 0x1

    aget v7, v2, v6

    aget v4, v3, v4

    aget v6, v3, v6

    invoke-virtual {v1, v5, v7, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 320
    return-object v1
.end method

.method protected static getFromExecutorSync(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2
    .param p0, "executor"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 363
    .local p1, "callback":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 364
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "Lcom/android/launcher3/Launcher;",
            "TT;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 337
    .local p0, "bundleSetter":Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;, "Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter<TT;>;"
    .local p1, "provider":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/launcher3/Launcher;TT;>;"
    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda11;

    invoke-direct {v1, v0}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda11;-><init>(Lcom/android/launcher3/util/ActivityTracker;)V

    invoke-static {p0, p1, v1}, Lcom/android/launcher3/testing/TestInformationHandler;->getUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;Ljava/util/function/Supplier;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private static getUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;Ljava/util/function/Supplier;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "TS;TT;>;",
            "Ljava/util/function/Supplier<",
            "TS;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 345
    .local p0, "bundleSetter":Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;, "Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter<TT;>;"
    .local p1, "provider":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;TT;>;"
    .local p2, "targetSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TS;>;"
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p1, p0}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Supplier;Ljava/util/function/Function;Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;)V

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestInformationHandler;->getFromExecutorSync(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic lambda$call$0(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;
    .locals 3
    .param p0, "l"    # Lcom/android/launcher3/Launcher;

    .line 97
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    .line 98
    invoke-virtual {v1, p0}, Lcom/android/launcher3/LauncherState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result v1

    sub-float/2addr v0, v1

    .line 99
    .local v0, "progress":F
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAllAppsController()Lcom/android/launcher3/allapps/AllAppsTransitionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->getShiftRange()F

    move-result v1

    mul-float/2addr v1, v0

    .line 100
    .local v1, "distance":F
    float-to-int v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method private synthetic lambda$call$1(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "t"    # Ljava/lang/Boolean;

    .line 105
    invoke-virtual {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->isLauncherInitialized()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$call$10(Landroid/app/Activity;)Landroid/graphics/Insets;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 164
    nop

    .line 165
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 164
    invoke-static {v0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 166
    .local v0, "insets":Landroidx/core/view/WindowInsetsCompat;
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    .line 167
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemGestures()I

    move-result v2

    or-int/2addr v1, v2

    .line 166
    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    .line 168
    invoke-virtual {v1}, Landroidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    move-result-object v1

    .line 166
    return-object v1
.end method

.method static synthetic lambda$call$11(Ljava/lang/String;)V
    .locals 2
    .param p0, "arg"    # Ljava/lang/String;

    .line 226
    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getRotationHelper()Lcom/android/launcher3/states/RotationHelper;

    move-result-object v0

    .line 227
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/states/RotationHelper;->forceAllowRotationForTesting(Z)V

    .line 226
    return-void
.end method

.method static synthetic lambda$call$12(Lcom/android/launcher3/Launcher;)[I
    .locals 5
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 232
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    .line 233
    .local v0, "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    nop

    .line 234
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v1

    .line 233
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)I

    move-result v1

    .line 235
    .local v1, "screenId":I
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    .line 236
    .local v2, "cellLayout":Lcom/android/launcher3/CellLayout;
    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v4

    filled-new-array {v3, v4}, [I

    move-result-object v3

    return-object v3
.end method

.method static synthetic lambda$call$13(Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;Lcom/android/launcher3/Launcher;)Landroid/graphics/Point;
    .locals 8
    .param p0, "request"    # Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 243
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    .line 245
    .local v0, "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    nop

    .line 246
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v1

    .line 245
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    .line 247
    .local v1, "cellLayout":Lcom/android/launcher3/CellLayout;
    iget v4, p0, Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;->cellX:I

    iget v5, p0, Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;->cellY:I

    iget v6, p0, Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;->spanX:I

    iget v7, p0, Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;->spanY:I

    move-object v2, p1

    move-object v3, v1

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/testing/TestInformationHandler;->getDescendantRectRelativeToDragLayerForCell(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/CellLayout;IIII)Landroid/graphics/Rect;

    move-result-object v2

    .line 249
    .local v2, "cellRect":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    return-object v3
.end method

.method private synthetic lambda$call$14(Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/Launcher;)Landroid/graphics/Point;
    .locals 3
    .param p1, "idp"    # Lcom/android/launcher3/InvariantDeviceProfile;
    .param p2, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 255
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mContext:Landroid/content/Context;

    .line 256
    invoke-virtual {p1, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->getPanelCount()I

    move-result v1

    iget v2, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    mul-int/2addr v1, v2

    iget v2, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 255
    return-object v0
.end method

.method static synthetic lambda$call$15(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;
    .locals 1
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 263
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$call$16(Lcom/android/launcher3/testing/shared/HotseatCellCenterRequest;Lcom/android/launcher3/Launcher;)Landroid/graphics/Point;
    .locals 7
    .param p0, "request"    # Lcom/android/launcher3/testing/shared/HotseatCellCenterRequest;
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 270
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v6

    .line 271
    .local v6, "hotseat":Lcom/android/launcher3/Hotseat;
    iget v2, p0, Lcom/android/launcher3/testing/shared/HotseatCellCenterRequest;->cellInd:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p1

    move-object v1, v6

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/testing/TestInformationHandler;->getDescendantRectRelativeToDragLayerForCell(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/CellLayout;IIII)Landroid/graphics/Rect;

    move-result-object v0

    .line 275
    .local v0, "cellRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method static synthetic lambda$call$17(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;
    .locals 1
    .param p0, "l"    # Lcom/android/launcher3/Launcher;

    .line 287
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$call$18(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;
    .locals 2
    .param p0, "l"    # Lcom/android/launcher3/Launcher;

    .line 292
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getBottom()I

    move-result v0

    .line 293
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 294
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 292
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$call$2()Ljava/lang/Boolean;
    .locals 1

    .line 105
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$call$3(Lcom/android/launcher3/Launcher;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "l"    # Lcom/android/launcher3/Launcher;

    .line 109
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isStarted()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$call$4(Lcom/android/launcher3/Launcher;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "l"    # Lcom/android/launcher3/Launcher;

    .line 119
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsStore;->enableDeferUpdates(I)V

    .line 120
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$call$5(Lcom/android/launcher3/Launcher;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "l"    # Lcom/android/launcher3/Launcher;

    .line 124
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsStore;->disableDeferUpdates(I)V

    .line 125
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$call$6(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;
    .locals 1
    .param p0, "l"    # Lcom/android/launcher3/Launcher;

    .line 130
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$call$7(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;
    .locals 1
    .param p0, "l"    # Lcom/android/launcher3/Launcher;

    .line 135
    invoke-static {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getWidgetsView(Lcom/android/launcher3/BaseActivity;)Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$call$8(Landroid/app/Activity;)Landroid/graphics/Insets;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 140
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 142
    .local v0, "insets":Landroid/view/WindowInsets;
    nop

    .line 143
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v1

    .line 144
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v2

    .line 142
    invoke-static {v1, v2}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$call$9(Landroid/app/Activity;)Landroid/graphics/Insets;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 150
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 152
    .local v0, "insets":Landroid/view/WindowInsets;
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$getUIProperty$19(Ljava/util/function/Supplier;Ljava/util/function/Function;Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;)Landroid/os/Bundle;
    .locals 4
    .param p0, "targetSupplier"    # Ljava/util/function/Supplier;
    .param p1, "provider"    # Ljava/util/function/Function;
    .param p2, "bundleSetter"    # Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 346
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 347
    .local v0, "target":Ljava/lang/Object;, "TS;"
    if-nez v0, :cond_0

    .line 348
    const/4 v1, 0x0

    return-object v1

    .line 350
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 352
    .local v1, "value":Ljava/lang/Object;, "TT;"
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 353
    .local v2, "response":Landroid/os/Bundle;
    const-string v3, "response"

    invoke-interface {p2, v2, v3, v1}, Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;->set(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 354
    return-object v2
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/launcher3/testing/TestInformationHandler;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 67
    const-class v0, Lcom/android/launcher3/testing/TestInformationHandler;

    sget v1, Lcom/android/launcher3/R$string;->test_information_handler_class:I

    invoke-static {v0, p0, v1}, Lcom/android/launcher3/util/ResourceBasedOverride$Overrides;->getObject(Ljava/lang/Class;Landroid/content/Context;I)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/testing/TestInformationHandler;

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extra"    # Landroid/os/Bundle;

    .line 90
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 91
    .local v0, "response":Landroid/os/Bundle;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/Bundle;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-nez v1, :cond_0

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 94
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "start-drag-threshold"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x13

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "icon-height"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "hotseat-cell-center"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x1a

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "enable-grid-only-overview"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x1e

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "is-launcher-activity-started"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "all-apps-bottom-padding"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x1d

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "freeze-app-list"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "target-insets"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "is-transient-taskbar"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x10

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "has-touch-interaction-service"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x1b

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "workspace-cell-center"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x17

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "widgets-scroll-y"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    goto/16 :goto_1

    :sswitch_c
    const-string v1, "get-split-selection-active"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x14

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "home-to-all-apps-swipe-height"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "all-apps-top-padding"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x1c

    goto/16 :goto_1

    :sswitch_f
    const-string v1, "workspace-columns-rows"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x18

    goto/16 :goto_1

    :sswitch_10
    const-string v1, "window-insets"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto/16 :goto_1

    :sswitch_11
    const-string v1, "enable_rotation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x15

    goto/16 :goto_1

    :sswitch_12
    const-string v1, "num-all-apps-columns"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xf

    goto/16 :goto_1

    :sswitch_13
    const-string v1, "mock-sensor-rotation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_14
    const-string v1, "unfreeze-app-list"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto/16 :goto_1

    :sswitch_15
    const-string v1, "is-launcher-initialized"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto/16 :goto_1

    :sswitch_16
    const-string v1, "apps-list-scroll-y"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_17
    const-string v1, "get-had-nontest-events"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x12

    goto :goto_1

    :sswitch_18
    const-string v1, "cell-layout-boarder-height"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_19
    const-string v1, "workspace-cell-layout-size"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x16

    goto :goto_1

    :sswitch_1a
    const-string v1, "enable-taskbar-navbar-unification"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xe

    goto :goto_1

    :sswitch_1b
    const-string v1, "is-two-panel"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x11

    goto :goto_1

    :sswitch_1c
    const-string v1, "gesture-region"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    goto :goto_1

    :sswitch_1d
    const-string v1, "is-tablet"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xd

    goto :goto_1

    :sswitch_1e
    const-string v1, "workspace-current-page-index"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x19

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string v4, "request"

    const-string v5, "response"

    packed-switch v1, :pswitch_data_0

    .line 304
    const/4 v1, 0x0

    return-object v1

    .line 298
    :pswitch_0
    nop

    .line 299
    invoke-static {}, Lcom/android/launcher3/Flags;->enableGridOnlyOverview()Z

    move-result v1

    .line 298
    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 300
    return-object v0

    .line 291
    :pswitch_1
    new-instance v1, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda19;

    invoke-direct {v1}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda19;-><init>()V

    new-instance v2, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda14;

    invoke-direct {v2}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda14;-><init>()V

    invoke-static {v1, v2}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 286
    :pswitch_2
    new-instance v1, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda19;

    invoke-direct {v1}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda19;-><init>()V

    new-instance v2, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda13;

    invoke-direct {v2}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda13;-><init>()V

    invoke-static {v1, v2}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 281
    :pswitch_3
    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 282
    return-object v0

    .line 267
    :pswitch_4
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/testing/shared/HotseatCellCenterRequest;

    .line 269
    .local v1, "request":Lcom/android/launcher3/testing/shared/HotseatCellCenterRequest;
    new-instance v2, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda6;-><init>()V

    new-instance v3, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda12;

    invoke-direct {v3, v1}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda12;-><init>(Lcom/android/launcher3/testing/shared/HotseatCellCenterRequest;)V

    invoke-static {v2, v3}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object v2

    return-object v2

    .line 262
    .end local v1    # "request":Lcom/android/launcher3/testing/shared/HotseatCellCenterRequest;
    :pswitch_5
    new-instance v1, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda19;

    invoke-direct {v1}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda19;-><init>()V

    new-instance v2, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda10;

    invoke-direct {v2}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {v1, v2}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 254
    :pswitch_6
    sget-object v1, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/InvariantDeviceProfile;

    .line 255
    .local v1, "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    new-instance v2, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda6;-><init>()V

    new-instance v3, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, v1}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda9;-><init>(Lcom/android/launcher3/testing/TestInformationHandler;Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-static {v2, v3}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object v2

    return-object v2

    .line 240
    .end local v1    # "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    :pswitch_7
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;

    .line 242
    .local v1, "request":Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;
    new-instance v2, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda6;-><init>()V

    new-instance v3, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda7;

    invoke-direct {v3, v1}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda7;-><init>(Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;)V

    invoke-static {v2, v3}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object v2

    return-object v2

    .line 231
    .end local v1    # "request":Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;
    :pswitch_8
    new-instance v1, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda4;-><init>()V

    new-instance v2, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v1, v2}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 225
    :pswitch_9
    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda3;

    invoke-direct {v2, p2}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 228
    return-object v0

    .line 220
    :pswitch_a
    invoke-static {}, Lcom/android/launcher3/config/FeatureFlags;->enableSplitContextually()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    .line 221
    invoke-virtual {v1}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isSplitSelectionActive()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    .line 220
    :goto_2
    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 222
    return-object v0

    .line 212
    :pswitch_b
    iget-object v1, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 213
    .local v1, "resources":Landroid/content/res/Resources;
    sget v2, Lcom/android/launcher3/R$dimen;->deep_shortcuts_start_drag_threshold:I

    .line 214
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lcom/android/launcher3/R$dimen;->pre_drag_view_scale:I

    .line 215
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 213
    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 216
    return-object v0

    .line 207
    .end local v1    # "resources":Landroid/content/res/Resources;
    :pswitch_c
    sget-boolean v1, Lcom/android/launcher3/testing/TestLogging;->sHadEventsNotFromTest:Z

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 209
    return-object v0

    .line 202
    :pswitch_d
    nop

    .line 203
    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->FOLDABLE_SINGLE_PAGE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v3, v1, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    .line 202
    :goto_3
    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 204
    return-object v0

    .line 197
    :pswitch_e
    iget-object v1, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mContext:Landroid/content/Context;

    .line 198
    invoke-static {v1}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result v1

    .line 197
    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 199
    return-object v0

    .line 192
    :pswitch_f
    iget-object v1, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 194
    return-object v0

    .line 187
    :pswitch_10
    sget-boolean v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_TASKBAR_NAVBAR_UNIFICATION:Z

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 189
    return-object v0

    .line 183
    :pswitch_11
    iget-object v1, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 184
    return-object v0

    .line 179
    :pswitch_12
    sput-boolean v2, Lcom/android/launcher3/testing/shared/TestProtocol;->sDisableSensorRotation:Z

    .line 180
    return-object v0

    .line 173
    :pswitch_13
    iget-object v1, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    return-object v0

    .line 163
    :pswitch_14
    new-instance v1, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda23;

    invoke-direct {v1}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda23;-><init>()V

    new-instance v2, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda2;-><init>()V

    new-instance v3, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda25;

    invoke-direct {v3, p0}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda25;-><init>(Lcom/android/launcher3/testing/TestInformationHandler;)V

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/testing/TestInformationHandler;->getUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;Ljava/util/function/Supplier;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 157
    :pswitch_15
    iget-object v1, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-object v1, v1, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 159
    return-object v0

    .line 149
    :pswitch_16
    new-instance v1, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda23;

    invoke-direct {v1}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda23;-><init>()V

    new-instance v2, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda26;

    invoke-direct {v2}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda26;-><init>()V

    new-instance v3, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda25;

    invoke-direct {v3, p0}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda25;-><init>(Lcom/android/launcher3/testing/TestInformationHandler;)V

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/testing/TestInformationHandler;->getUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;Ljava/util/function/Supplier;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 139
    :pswitch_17
    new-instance v1, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda23;

    invoke-direct {v1}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda23;-><init>()V

    new-instance v2, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda24;

    invoke-direct {v2}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda24;-><init>()V

    new-instance v3, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda25;

    invoke-direct {v3, p0}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda25;-><init>(Lcom/android/launcher3/testing/TestInformationHandler;)V

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/testing/TestInformationHandler;->getUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;Ljava/util/function/Supplier;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 134
    :pswitch_18
    new-instance v1, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda19;

    invoke-direct {v1}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda19;-><init>()V

    new-instance v2, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda22;

    invoke-direct {v2}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda22;-><init>()V

    invoke-static {v1, v2}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 129
    :pswitch_19
    new-instance v1, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda19;

    invoke-direct {v1}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda19;-><init>()V

    new-instance v2, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda21;

    invoke-direct {v2}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda21;-><init>()V

    invoke-static {v1, v2}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 123
    :pswitch_1a
    new-instance v1, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda8;-><init>()V

    new-instance v2, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda20;

    invoke-direct {v2}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda20;-><init>()V

    invoke-static {v1, v2}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 118
    :pswitch_1b
    new-instance v1, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda8;-><init>()V

    new-instance v2, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda18;

    invoke-direct {v2}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda18;-><init>()V

    invoke-static {v1, v2}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 109
    :pswitch_1c
    new-instance v1, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda8;-><init>()V

    new-instance v2, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda17;

    invoke-direct {v2}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda17;-><init>()V

    invoke-static {v1, v2}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object v1

    .line 110
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_4

    return-object v1

    .line 113
    :cond_4
    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 114
    return-object v0

    .line 105
    .end local v1    # "bundle":Landroid/os/Bundle;
    :pswitch_1d
    new-instance v1, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda8;-><init>()V

    new-instance v2, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda15;-><init>(Lcom/android/launcher3/testing/TestInformationHandler;)V

    new-instance v3, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda16;

    invoke-direct {v3}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda16;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/testing/TestInformationHandler;->getUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;Ljava/util/function/Supplier;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 96
    :pswitch_1e
    new-instance v1, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda19;

    invoke-direct {v1}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda19;-><init>()V

    new-instance v2, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v2}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x703886e0 -> :sswitch_1e
        -0x6dd7a797 -> :sswitch_1d
        -0x5d02a008 -> :sswitch_1c
        -0x48da05a0 -> :sswitch_1b
        -0x4860c40f -> :sswitch_1a
        -0x36ccc0ef -> :sswitch_19
        -0x2e5acf07 -> :sswitch_18
        -0x2c10c6e0 -> :sswitch_17
        -0x25d3e253 -> :sswitch_16
        -0x1405cf16 -> :sswitch_15
        -0x7e26c79 -> :sswitch_14
        -0x7f4a12 -> :sswitch_13
        0x23ee395 -> :sswitch_12
        0x6f79eba -> :sswitch_11
        0x6fb0373 -> :sswitch_10
        0xc1f8001 -> :sswitch_f
        0xfeb5f6a -> :sswitch_e
        0x11da58c5 -> :sswitch_d
        0x17eba511 -> :sswitch_c
        0x1ceb16d7 -> :sswitch_b
        0x1e8681e8 -> :sswitch_a
        0x23b480f9 -> :sswitch_9
        0x24658e48 -> :sswitch_8
        0x2c0406b2 -> :sswitch_7
        0x2dcdc740 -> :sswitch_6
        0x3252dcfe -> :sswitch_5
        0x3c8feb6d -> :sswitch_4
        0x6ade98bd -> :sswitch_3
        0x709f15a5 -> :sswitch_2
        0x7a5274fb -> :sswitch_1
        0x7f975bdd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 329
    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    iput-object p1, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mContext:Landroid/content/Context;

    .line 77
    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 78
    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 79
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mLauncherAppState:Lcom/android/launcher3/LauncherAppState;

    .line 80
    return-void
.end method

.method protected isLauncherInitialized()Z
    .locals 1

    .line 324
    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mContext:Landroid/content/Context;

    .line 325
    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->isModelLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 324
    :goto_1
    return v0
.end method
