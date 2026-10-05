.class public Lcom/android/launcher3/allapps/LauncherAllAppsContainerView;
.super Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
.source "LauncherAllAppsContainerView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
        "Lcom/android/launcher3/Launcher;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/LauncherAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/LauncherAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method


# virtual methods
.method protected computeNavBarScrimHeight(Landroid/view/WindowInsets;)I
    .locals 1
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 45
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getTappableElementInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    return v0
.end method

.method public getFloatingSearchBarRestingMarginBottom()I
    .locals 5

    .line 69
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherAllAppsContainerView;->isSearchBarFloating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-super {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getFloatingSearchBarRestingMarginBottom()I

    move-result v0

    return v0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/LauncherAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 73
    .local v0, "launcher":Lcom/android/launcher3/Launcher;
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    .line 78
    .local v1, "stateManager":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<Lcom/android/launcher3/LauncherState;>;"
    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/LauncherState;

    .line 79
    invoke-virtual {v2, v0}, Lcom/android/launcher3/LauncherState;->getFloatingSearchBarRestingMarginBottom(Lcom/android/launcher3/Launcher;)I

    move-result v2

    .line 80
    .local v2, "currentStateMarginBottom":I
    const/4 v3, -0x1

    .line 81
    .local v3, "targetStateMarginBottom":I
    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->isInTransition()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getTargetState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 82
    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getTargetState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/LauncherState;

    .line 83
    invoke-virtual {v4, v0}, Lcom/android/launcher3/LauncherState;->getFloatingSearchBarRestingMarginBottom(Lcom/android/launcher3/Launcher;)I

    move-result v3

    .line 84
    if-gez v3, :cond_1

    .line 86
    return v3

    .line 89
    :cond_1
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    return v4
.end method

.method public getFloatingSearchBarRestingMarginEnd()I
    .locals 3

    .line 116
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherAllAppsContainerView;->isSearchBarFloating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-super {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getFloatingSearchBarRestingMarginEnd()I

    move-result v0

    return v0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/LauncherAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    .line 123
    .local v0, "stateManager":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<Lcom/android/launcher3/LauncherState;>;"
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/allapps/LauncherAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    .line 124
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isPhone:Z

    if-eqz v1, :cond_1

    .line 125
    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    iget-object v2, p0, Lcom/android/launcher3/allapps/LauncherAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherState;->getFloatingSearchBarRestingMarginEnd(Lcom/android/launcher3/Launcher;)I

    move-result v1

    return v1

    .line 128
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->isInTransition()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getTargetState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 129
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getTargetState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    iget-object v2, p0, Lcom/android/launcher3/allapps/LauncherAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    .line 130
    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherState;->getFloatingSearchBarRestingMarginEnd(Lcom/android/launcher3/Launcher;)I

    move-result v1

    .line 129
    return v1

    .line 132
    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    iget-object v2, p0, Lcom/android/launcher3/allapps/LauncherAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    .line 133
    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherState;->getFloatingSearchBarRestingMarginEnd(Lcom/android/launcher3/Launcher;)I

    move-result v1

    .line 132
    return v1
.end method

.method public getFloatingSearchBarRestingMarginStart()I
    .locals 3

    .line 94
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherAllAppsContainerView;->isSearchBarFloating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-super {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getFloatingSearchBarRestingMarginStart()I

    move-result v0

    return v0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/LauncherAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    .line 101
    .local v0, "stateManager":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<Lcom/android/launcher3/LauncherState;>;"
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/allapps/LauncherAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    .line 102
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isPhone:Z

    if-eqz v1, :cond_1

    .line 103
    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    iget-object v2, p0, Lcom/android/launcher3/allapps/LauncherAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherState;->getFloatingSearchBarRestingMarginStart(Lcom/android/launcher3/Launcher;)I

    move-result v1

    return v1

    .line 106
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->isInTransition()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getTargetState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 107
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getTargetState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    iget-object v2, p0, Lcom/android/launcher3/allapps/LauncherAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    .line 108
    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherState;->getFloatingSearchBarRestingMarginStart(Lcom/android/launcher3/Launcher;)I

    move-result v1

    .line 107
    return v1

    .line 110
    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    iget-object v2, p0, Lcom/android/launcher3/allapps/LauncherAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    .line 111
    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherState;->getFloatingSearchBarRestingMarginStart(Lcom/android/launcher3/Launcher;)I

    move-result v1

    .line 110
    return v1
.end method

.method public isInAllApps()Z
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/android/launcher3/allapps/LauncherAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->isInStableState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    return v0
.end method

.method public shouldFloatingSearchBarBePillWhenUnfocused()Z
    .locals 3

    .line 55
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherAllAppsContainerView;->isSearchBarFloating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x0

    return v0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/LauncherAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 59
    .local v0, "launcher":Lcom/android/launcher3/Launcher;
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    .line 60
    .local v1, "manager":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<Lcom/android/launcher3/LauncherState;>;"
    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->isInTransition()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getTargetState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 61
    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getTargetState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/LauncherState;->shouldFloatingSearchBarUsePillWhenUnfocused(Lcom/android/launcher3/Launcher;)Z

    move-result v2

    return v2

    .line 63
    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/LauncherState;

    .line 64
    invoke-virtual {v2, v0}, Lcom/android/launcher3/LauncherState;->shouldFloatingSearchBarUsePillWhenUnfocused(Lcom/android/launcher3/Launcher;)Z

    move-result v2

    .line 63
    return v2
.end method
