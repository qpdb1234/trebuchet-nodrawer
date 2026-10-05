.class public interface abstract Lcom/android/launcher3/views/ActivityContext;
.super Ljava/lang/Object;
.source "ActivityContext.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ActivityContext"


# direct methods
.method public static synthetic $r8$lambda$D4UNa3VK2S5H0YUBowQACWwn6wA(Lcom/android/launcher3/views/ActivityContext;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/views/ActivityContext;->lambda$hideKeyboard$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$DuM-yt0NGDY7UmujD0C2NgBs6xU(Lcom/android/launcher3/views/ActivityContext;Landroid/view/inputmethod/InputMethodManager;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/views/ActivityContext;->lambda$hideKeyboard$3(Landroid/view/inputmethod/InputMethodManager;Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic lambda$getAllAppsItemLongClickListener$1(Landroid/view/View;)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$getItemOnClickListener$0(Landroid/view/View;)V
    .locals 0
    .param p0, "v"    # Landroid/view/View;

    .line 255
    return-void
.end method

.method private synthetic lambda$hideKeyboard$2()V
    .locals 2

    .line 310
    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_KEYBOARD_CLOSED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method

.method private synthetic lambda$hideKeyboard$3(Landroid/view/inputmethod/InputMethodManager;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 307
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/views/ActivityContext$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/views/ActivityContext$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/views/ActivityContext;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 312
    :cond_0
    return-void
.end method

.method public static lookupContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .line 504
    invoke-static {p0}, Lcom/android/launcher3/views/ActivityContext;->lookupContextNoThrow(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 505
    .local v0, "activityContext":Landroid/content/Context;, "TT;"
    if-eqz v0, :cond_0

    .line 508
    return-object v0

    .line 506
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot find ActivityContext in parent tree"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static lookupContextNoThrow(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .line 516
    instance-of v0, p0, Lcom/android/launcher3/views/ActivityContext;

    if-eqz v0, :cond_0

    .line 517
    return-object p0

    .line 518
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 519
    move-object v0, p0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContextNoThrow(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    return-object v0

    .line 521
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;

    .line 198
    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getOnDeviceProfileChangeListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    return-void
.end method

.method public applyOverwritesToLogItem(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;)V
    .locals 0
    .param p1, "itemInfoBuilder"    # Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    .line 245
    return-void
.end method

.method public canUseMultipleShadesForPopup()Z
    .locals 1

    .line 239
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchDeviceProfileChanged()V
    .locals 4

    .line 189
    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 190
    .local v0, "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getOnDeviceProfileChangeListeners()Ljava/util/List;

    move-result-object v1

    .line 191
    .local v1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 192
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;

    invoke-interface {v3, v0}, Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;->onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V

    .line 191
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 194
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public findFolderIcon(I)Lcom/android/launcher3/folder/FolderIcon;
    .locals 1
    .param p1, "folderIconId"    # I

    .line 228
    const/4 v0, 0x0

    return-object v0
.end method

.method public finishAutoCancelActionMode()Z
    .locals 1

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 451
    const/4 v0, 0x0

    .local v0, "left":I
    const/4 v1, 0x0

    .line 452
    .local v1, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .local v2, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 453
    .local v3, "height":I
    instance-of v4, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v4, :cond_0

    .line 455
    move-object v4, p1

    check-cast v4, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v4}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v4

    .line 456
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    .line 457
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 458
    .local v5, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int v6, v2, v6

    div-int/lit8 v0, v6, 0x2

    .line 459
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 460
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 461
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 464
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "bounds":Landroid/graphics/Rect;
    :cond_0
    nop

    .line 465
    invoke-static {p1, v0, v1, v2, v3}, Landroid/app/ActivityOptions;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/Utilities;->allowBGLaunch(Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    move-result-object v4

    .line 466
    .local v4, "options":Landroid/app/ActivityOptions;
    nop

    .line 467
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    goto :goto_0

    .line 468
    :cond_1
    const/4 v5, 0x0

    .line 466
    :goto_0
    invoke-virtual {v4, v5}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 469
    new-instance v5, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v5}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    .line 470
    .local v5, "callback":Lcom/android/launcher3/util/RunnableList;
    new-instance v6, Lcom/android/launcher3/util/ActivityOptionsWrapper;

    invoke-direct {v6, v4, v5}, Lcom/android/launcher3/util/ActivityOptionsWrapper;-><init>(Landroid/app/ActivityOptions;Lcom/android/launcher3/util/RunnableList;)V

    return-object v6
.end method

.method public getAllAppsItemLongClickListener()Landroid/view/View$OnLongClickListener;
    .locals 1

    .line 260
    new-instance v0, Lcom/android/launcher3/views/ActivityContext$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/launcher3/views/ActivityContext$$ExternalSyntheticLambda2;-><init>()V

    return-object v0
.end method

.method public getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "*>;"
        }
    .end annotation

    .line 179
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;
    .locals 4

    .line 485
    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 486
    .local v0, "dp":Lcom/android/launcher3/DeviceProfile;
    new-instance v1, Lcom/android/launcher3/celllayout/CellPosMapper;

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/celllayout/CellPosMapper;-><init>(ZI)V

    return-object v1
.end method

.method public abstract getDeviceProfile()Lcom/android/launcher3/DeviceProfile;
.end method

.method public getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDragController()Lcom/android/launcher3/dragndrop/DragController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/launcher3/dragndrop/DragController;",
            ">()TT;"
        }
    .end annotation

    .line 214
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;
.end method

.method public getDropTargetHandler()Lcom/android/launcher3/DropTargetHandler;
    .locals 1

    .line 221
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFolderBoundingBox()Landroid/graphics/Rect;
    .locals 1

    .line 114
    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->getAbsoluteOpenFolderBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getItemOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 253
    new-instance v0, Lcom/android/launcher3/views/ActivityContext$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/views/ActivityContext$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    .line 135
    instance-of v0, p0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 136
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    .line 137
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    return-object v1

    .line 139
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getOnDeviceProfileChangeListeners()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;",
            ">;"
        }
    .end annotation
.end method

.method public getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;
    .locals 1

    .line 265
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;
    .locals 1

    .line 232
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/logging/StatsLogManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    return-object v0
.end method

.method public getStringCache()Lcom/android/launcher3/model/StringCache;
    .locals 1

    .line 270
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewCache()Lcom/android/launcher3/util/ViewCache;
    .locals 1

    .line 207
    new-instance v0, Lcom/android/launcher3/util/ViewCache;

    invoke-direct {v0}, Lcom/android/launcher3/util/ViewCache;-><init>()V

    return-object v0
.end method

.method public handleIncorrectSplitTargetSelection()Z
    .locals 1

    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public hasBubbles()Z
    .locals 1

    .line 496
    const/4 v0, 0x0

    return v0
.end method

.method public hideKeyboard()V
    .locals 8

    .line 277
    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    .line 278
    .local v0, "root":Landroid/view/View;
    if-nez v0, :cond_0

    .line 279
    return-void

    .line 281
    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    .line 287
    invoke-virtual {v0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v1

    .line 288
    .local v1, "wic":Landroid/view/WindowInsetsController;
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    .line 289
    .local v2, "insets":Landroid/view/WindowInsets;
    if-eqz v2, :cond_1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 290
    .local v3, "isImeShown":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 292
    if-eqz v3, :cond_2

    .line 294
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    invoke-interface {v1, v4}, Landroid/view/WindowInsetsController;->hide(I)V

    .line 295
    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_KEYBOARD_CLOSED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v4, v5}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 300
    :cond_2
    return-void

    .line 303
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    .line 304
    .local v4, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    .line 305
    .local v5, "token":Landroid/os/IBinder;
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    .line 306
    sget-object v6, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v7, Lcom/android/launcher3/views/ActivityContext$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0, v4, v5}, Lcom/android/launcher3/views/ActivityContext$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/views/ActivityContext;Landroid/view/inputmethod/InputMethodManager;Landroid/os/IBinder;)V

    invoke-virtual {v6, v7}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 314
    :cond_4
    return-void
.end method

.method public invalidateParent(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 107
    return-void
.end method

.method public isAppBlockedForSafeMode()Z
    .locals 1

    .line 432
    const/4 v0, 0x0

    return v0
.end method

.method public isBindingItems()Z
    .locals 1

    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public isBubbleBarEnabled()Z
    .locals 1

    .line 491
    const/4 v0, 0x0

    return v0
.end method

.method public isHardwareKeyboard()Z
    .locals 2

    .line 320
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    .line 321
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 320
    :goto_0
    return v0
.end method

.method public isSoftwareKeyboardHidden()Z
    .locals 5

    .line 329
    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->isHardwareKeyboard()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 330
    return v1

    .line 332
    :cond_0
    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    .line 333
    .local v0, "dragLayer":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    .line 334
    .local v2, "insets":Landroid/view/WindowInsets;
    if-nez v2, :cond_1

    .line 335
    const/4 v1, 0x0

    return v1

    .line 337
    :cond_1
    nop

    .line 338
    invoke-static {v2, v0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v3

    .line 339
    .local v3, "insetsCompat":Landroidx/core/view/WindowInsetsCompat;
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    move-result v4

    xor-int/2addr v1, v4

    return v1
.end method

.method public isSplitSelectionActive()Z
    .locals 1

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public logAppLaunch(Lcom/android/launcher3/logging/StatsLogManager;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V
    .locals 2
    .param p1, "statsLogManager"    # Lcom/android/launcher3/logging/StatsLogManager;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "instanceId"    # Lcom/android/launcher3/logging/InstanceId;

    .line 440
    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_APP_LAUNCH_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 441
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 442
    return-void
.end method

.method public makeDefaultActivityOptions(I)Lcom/android/launcher3/util/ActivityOptionsWrapper;
    .locals 3
    .param p1, "splashScreenStyle"    # I

    .line 477
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->allowBGLaunch(Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 478
    .local v0, "options":Landroid/app/ActivityOptions;
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_T:Z

    if-eqz v1, :cond_0

    .line 479
    invoke-virtual {v0, p1}, Landroid/app/ActivityOptions;->setSplashScreenStyle(I)Landroid/app/ActivityOptions;

    .line 481
    :cond_0
    new-instance v1, Lcom/android/launcher3/util/ActivityOptionsWrapper;

    new-instance v2, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v2}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/android/launcher3/util/ActivityOptionsWrapper;-><init>(Landroid/app/ActivityOptions;Lcom/android/launcher3/util/RunnableList;)V

    return-object v1
.end method

.method public removeOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;

    .line 203
    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getOnDeviceProfileChangeListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 204
    return-void
.end method

.method public sendPendingIntentWithAnimation(Landroid/view/View;Landroid/app/PendingIntent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/RunnableList;
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 354
    invoke-interface {p0, p1, p3}, Lcom/android/launcher3/views/ActivityContext;->getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object v0

    .line 356
    .local v0, "options":Lcom/android/launcher3/util/ActivityOptionsWrapper;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityOptionsWrapper;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    move-object v1, p2

    invoke-virtual/range {v1 .. v8}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 357
    if-eqz p3, :cond_0

    .line 358
    new-instance v1, Lcom/android/launcher3/logging/InstanceIdSequence;

    invoke-direct {v1}, Lcom/android/launcher3/logging/InstanceIdSequence;-><init>()V

    invoke-virtual {v1}, Lcom/android/launcher3/logging/InstanceIdSequence;->newInstanceId()Lcom/android/launcher3/logging/InstanceId;

    move-result-object v1

    .line 359
    .local v1, "instanceId":Lcom/android/launcher3/logging/InstanceId;
    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    invoke-interface {v2, p3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_APP_LAUNCH_PENDING_INTENT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 360
    invoke-interface {v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 362
    .end local v1    # "instanceId":Lcom/android/launcher3/logging/InstanceId;
    :cond_0
    iget-object v1, v0, Lcom/android/launcher3/util/ActivityOptionsWrapper;->onEndCallback:Lcom/android/launcher3/util/RunnableList;
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 363
    :catch_0
    move-exception v1

    .line 364
    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 365
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/launcher3/R$string;->shortcut_not_available:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 364
    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 366
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 368
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/RunnableList;
    .locals 18
    .param p1, "v"    # Landroid/view/View;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 382
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    .line 383
    move-object v5, v1

    check-cast v5, Landroid/content/Context;

    .line 384
    .local v5, "context":Landroid/content/Context;
    invoke-interface/range {p0 .. p0}, Lcom/android/launcher3/views/ActivityContext;->isAppBlockedForSafeMode()Z

    move-result v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    invoke-static {v5, v3}, Lcom/android/launcher3/util/PackageManagerHelper;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    sget v0, Lcom/android/launcher3/R$string;->safemode_shortcut_error:I

    invoke-static {v5, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 386
    return-object v6

    .line 389
    :cond_0
    instance-of v0, v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_1

    iget v0, v4, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v8, 0x6

    if-ne v0, v8, :cond_1

    move-object v0, v4

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 391
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isPromise()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v7

    :goto_0
    move v8, v0

    .line 392
    .local v8, "isShortcut":Z
    nop

    .line 395
    if-eqz v2, :cond_2

    invoke-interface {v1, v2, v4}, Lcom/android/launcher3/views/ActivityContext;->getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object v0

    goto :goto_2

    .line 396
    :cond_2
    if-eqz v4, :cond_3

    iget v0, v4, Lcom/android/launcher3/model/data/ItemInfo;->animationType:I

    const/4 v9, 0x2

    if-ne v0, v9, :cond_3

    .line 397
    move v0, v7

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    .line 396
    :goto_1
    invoke-interface {v1, v0}, Lcom/android/launcher3/views/ActivityContext;->makeDefaultActivityOptions(I)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object v0

    :goto_2
    move-object v9, v0

    .line 398
    .local v9, "options":Lcom/android/launcher3/util/ActivityOptionsWrapper;
    if-nez v4, :cond_4

    move-object v0, v6

    goto :goto_3

    :cond_4
    iget-object v0, v4, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    :goto_3
    move-object v15, v0

    .line 399
    .local v15, "user":Landroid/os/UserHandle;
    invoke-virtual {v9}, Lcom/android/launcher3/util/ActivityOptionsWrapper;->toBundle()Landroid/os/Bundle;

    move-result-object v14

    .line 401
    .local v14, "optsBundle":Landroid/os/Bundle;
    const/high16 v0, 0x10000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 402
    if-eqz v2, :cond_5

    .line 403
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/Utilities;->getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 406
    :cond_5
    if-eqz v8, :cond_6

    .line 407
    :try_start_0
    move-object v0, v4

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v12

    .line 408
    .local v12, "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v11

    .line 409
    .local v11, "packageName":Ljava/lang/String;
    move-object v0, v1

    check-cast v0, Landroid/content/Context;

    const-class v10, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/content/pm/LauncherApps;

    .line 410
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    .line 409
    move-object/from16 v16, v14

    .end local v14    # "optsBundle":Landroid/os/Bundle;
    .local v16, "optsBundle":Landroid/os/Bundle;
    move-object/from16 v17, v15

    .end local v15    # "user":Landroid/os/UserHandle;
    .local v17, "user":Landroid/os/UserHandle;
    :try_start_1
    invoke-virtual/range {v10 .. v15}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 411
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v12    # "id":Ljava/lang/String;
    move-object/from16 v13, v16

    move-object/from16 v10, v17

    goto :goto_8

    .line 423
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    :goto_4
    move-object/from16 v13, v16

    move-object/from16 v10, v17

    goto/16 :goto_9

    .end local v16    # "optsBundle":Landroid/os/Bundle;
    .end local v17    # "user":Landroid/os/UserHandle;
    .restart local v14    # "optsBundle":Landroid/os/Bundle;
    .restart local v15    # "user":Landroid/os/UserHandle;
    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_5
    move-object/from16 v16, v14

    move-object/from16 v17, v15

    move-object/from16 v13, v16

    move-object/from16 v10, v17

    .end local v14    # "optsBundle":Landroid/os/Bundle;
    .end local v15    # "user":Landroid/os/UserHandle;
    .restart local v16    # "optsBundle":Landroid/os/Bundle;
    .restart local v17    # "user":Landroid/os/UserHandle;
    goto :goto_9

    .line 411
    .end local v16    # "optsBundle":Landroid/os/Bundle;
    .end local v17    # "user":Landroid/os/UserHandle;
    .restart local v14    # "optsBundle":Landroid/os/Bundle;
    .restart local v15    # "user":Landroid/os/UserHandle;
    :cond_6
    move-object/from16 v16, v14

    move-object/from16 v17, v15

    .end local v14    # "optsBundle":Landroid/os/Bundle;
    .end local v15    # "user":Landroid/os/UserHandle;
    .restart local v16    # "optsBundle":Landroid/os/Bundle;
    .restart local v17    # "user":Landroid/os/UserHandle;
    move-object/from16 v10, v17

    .end local v17    # "user":Landroid/os/UserHandle;
    .local v10, "user":Landroid/os/UserHandle;
    if-eqz v10, :cond_8

    :try_start_2
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object/from16 v13, v16

    goto :goto_7

    .line 415
    :cond_7
    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    .line 416
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v12
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_6

    .line 415
    move-object/from16 v13, v16

    .end local v16    # "optsBundle":Landroid/os/Bundle;
    .local v13, "optsBundle":Landroid/os/Bundle;
    :try_start_3
    invoke-virtual {v0, v11, v10, v12, v13}, Landroid/content/pm/LauncherApps;->startMainActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    goto :goto_8

    .line 423
    .end local v13    # "optsBundle":Landroid/os/Bundle;
    .restart local v16    # "optsBundle":Landroid/os/Bundle;
    :catch_6
    move-exception v0

    goto :goto_6

    :catch_7
    move-exception v0

    goto :goto_6

    :catch_8
    move-exception v0

    :goto_6
    move-object/from16 v13, v16

    .end local v16    # "optsBundle":Landroid/os/Bundle;
    .restart local v13    # "optsBundle":Landroid/os/Bundle;
    goto :goto_9

    .line 411
    .end local v13    # "optsBundle":Landroid/os/Bundle;
    .restart local v16    # "optsBundle":Landroid/os/Bundle;
    :cond_8
    move-object/from16 v13, v16

    .line 413
    .end local v16    # "optsBundle":Landroid/os/Bundle;
    .restart local v13    # "optsBundle":Landroid/os/Bundle;
    :goto_7
    invoke-virtual {v5, v3, v13}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 418
    :goto_8
    if-eqz v4, :cond_9

    .line 419
    new-instance v0, Lcom/android/launcher3/logging/InstanceIdSequence;

    invoke-direct {v0}, Lcom/android/launcher3/logging/InstanceIdSequence;-><init>()V

    invoke-virtual {v0}, Lcom/android/launcher3/logging/InstanceIdSequence;->newInstanceId()Lcom/android/launcher3/logging/InstanceId;

    move-result-object v0

    .line 420
    .local v0, "instanceId":Lcom/android/launcher3/logging/InstanceId;
    invoke-interface/range {p0 .. p0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v11

    invoke-interface {v1, v11, v4, v0}, Lcom/android/launcher3/views/ActivityContext;->logAppLaunch(Lcom/android/launcher3/logging/StatsLogManager;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V

    .line 422
    .end local v0    # "instanceId":Lcom/android/launcher3/logging/InstanceId;
    :cond_9
    iget-object v0, v9, Lcom/android/launcher3/util/ActivityOptionsWrapper;->onEndCallback:Lcom/android/launcher3/util/RunnableList;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_9

    return-object v0

    .line 423
    :catch_9
    move-exception v0

    goto :goto_9

    :catch_a
    move-exception v0

    goto :goto_9

    :catch_b
    move-exception v0

    .line 424
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_9
    sget v11, Lcom/android/launcher3/R$string;->activity_not_found:I

    invoke-static {v5, v11, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 425
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to launch. tag="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " intent="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v11, "ActivityContext"

    invoke-static {v11, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    .end local v0    # "e":Ljava/lang/RuntimeException;
    return-object v6
.end method

.method public startSplitSelection(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;)V
    .locals 0
    .param p1, "splitSelectSource"    # Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;

    .line 146
    return-void
.end method

.method public updateOpenFolderPosition([ILandroid/graphics/Rect;II)V
    .locals 0
    .param p1, "inOutPosition"    # [I
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 128
    return-void
.end method
