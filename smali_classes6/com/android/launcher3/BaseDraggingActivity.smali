.class public abstract Lcom/android/launcher3/BaseDraggingActivity;
.super Lcom/android/launcher3/BaseActivity;
.source "BaseDraggingActivity.java"

# interfaces
.implements Lcom/android/launcher3/util/OnColorHintListener;
.implements Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;


# static fields
.field public static final AUTO_CANCEL_ACTION_MODE:Ljava/lang/Object;


# instance fields
.field private mCurrentActionMode:Landroid/view/ActionMode;

.field private mThemeRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/BaseDraggingActivity;->AUTO_CANCEL_ACTION_MODE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/android/launcher3/BaseActivity;-><init>()V

    .line 55
    sget v0, Lcom/android/launcher3/R$style;->AppTheme:I

    iput v0, p0, Lcom/android/launcher3/BaseDraggingActivity;->mThemeRes:I

    return-void
.end method

.method private updateTheme()V
    .locals 2

    .line 84
    iget v0, p0, Lcom/android/launcher3/BaseDraggingActivity;->mThemeRes:I

    invoke-static {p0}, Lcom/android/launcher3/util/Themes;->getActivityThemeRes(Landroid/content/Context;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->recreate()V

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method public finishAutoCancelActionMode()Z
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->isInAutoCancelActionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/launcher3/BaseDraggingActivity;->mCurrentActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 109
    const/4 v0, 0x1

    return v0

    .line 111
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 125
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/BaseActivity;->getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object v0

    .line 126
    .local v0, "wrapper":Lcom/android/launcher3/util/ActivityOptionsWrapper;
    iget-object v1, v0, Lcom/android/launcher3/util/ActivityOptionsWrapper;->onEndCallback:Lcom/android/launcher3/util/RunnableList;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/BaseDraggingActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/launcher3/BaseDraggingActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/util/RunnableList;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/BaseDraggingActivity;->addEventCallback(ILjava/lang/Runnable;)V

    .line 127
    return-object v0
.end method

.method public getItemOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 159
    sget-object v0, Lcom/android/launcher3/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method protected getMultiWindowDisplaySize()Lcom/android/launcher3/util/WindowBounds;
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/WindowBounds;->fromWindowMetrics(Landroid/view/WindowMetrics;)Lcom/android/launcher3/util/WindowBounds;

    move-result-object v0

    return-object v0
.end method

.method public abstract getOverviewPanel()Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">()TT;"
        }
    .end annotation
.end method

.method public abstract getRootView()Landroid/view/View;
.end method

.method public isAppBlockedForSafeMode()Z
    .locals 1

    .line 170
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isSafeModeEnabled()Z

    move-result v0

    return v0
.end method

.method protected isInAutoCancelActionMode()Z
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/android/launcher3/BaseDraggingActivity;->mCurrentActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/launcher3/BaseDraggingActivity;->AUTO_CANCEL_ACTION_MODE:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/view/ActionMode;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public makeDefaultActivityOptions(I)Lcom/android/launcher3/util/ActivityOptionsWrapper;
    .locals 3
    .param p1, "splashScreenStyle"    # I

    .line 132
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->makeDefaultActivityOptions(I)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object v0

    .line 133
    .local v0, "wrapper":Lcom/android/launcher3/util/ActivityOptionsWrapper;
    iget-object v1, v0, Lcom/android/launcher3/util/ActivityOptionsWrapper;->onEndCallback:Lcom/android/launcher3/util/RunnableList;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/BaseDraggingActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/launcher3/BaseDraggingActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/util/RunnableList;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/BaseDraggingActivity;->addEventCallback(ILjava/lang/Runnable;)V

    .line 134
    return-object v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 97
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/BaseDraggingActivity;->mCurrentActionMode:Landroid/view/ActionMode;

    .line 99
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 91
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 92
    iput-object p1, p0, Lcom/android/launcher3/BaseDraggingActivity;->mCurrentActionMode:Landroid/view/ActionMode;

    .line 93
    return-void
.end method

.method public onColorHintsChanged(I)V
    .locals 0
    .param p1, "colorHints"    # I

    .line 74
    invoke-direct {p0}, Lcom/android/launcher3/BaseDraggingActivity;->updateTheme()V

    .line 75
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 79
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 80
    invoke-direct {p0}, Lcom/android/launcher3/BaseDraggingActivity;->updateTheme()V

    .line 81
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 59
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/DisplayController;->addChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    .line 63
    invoke-static {p0}, Lcom/android/launcher3/util/WallpaperColorHints;->get(Landroid/content/Context;)Lcom/android/launcher3/util/WallpaperColorHints;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/WallpaperColorHints;->registerOnColorHintsChangedListener(Lcom/android/launcher3/util/OnColorHintListener;)V

    .line 64
    invoke-static {p0}, Lcom/android/launcher3/util/Themes;->getActivityThemeRes(Landroid/content/Context;)I

    move-result v0

    .line 65
    .local v0, "themeRes":I
    iget v1, p0, Lcom/android/launcher3/BaseDraggingActivity;->mThemeRes:I

    if-eq v0, v1, :cond_0

    .line 66
    iput v0, p0, Lcom/android/launcher3/BaseDraggingActivity;->mThemeRes:I

    .line 67
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseDraggingActivity;->setTheme(I)V

    .line 69
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 139
    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->onDestroy()V

    .line 140
    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/DisplayController;->removeChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    .line 141
    invoke-static {p0}, Lcom/android/launcher3/util/WallpaperColorHints;->get(Landroid/content/Context;)Lcom/android/launcher3/util/WallpaperColorHints;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/WallpaperColorHints;->unregisterOnColorsChangedListener(Lcom/android/launcher3/util/OnColorHintListener;)V

    .line 142
    return-void
.end method

.method protected onDeviceProfileInitiated()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/launcher3/BaseDraggingActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/launcher3/BaseDraggingActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/DeviceProfile;->updateIsSeascape(Landroid/content/Context;)Z

    .line 148
    :cond_0
    return-void
.end method

.method public onDisplayInfoChanged(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/launcher3/util/DisplayController$Info;
    .param p3, "flags"    # I

    .line 152
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/BaseDraggingActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/DeviceProfile;->updateIsSeascape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->reapplyUi()V

    .line 155
    :cond_0
    return-void
.end method

.method protected abstract reapplyUi()V
.end method

.method public returnToHomescreen()V
    .locals 0

    .line 120
    return-void
.end method
