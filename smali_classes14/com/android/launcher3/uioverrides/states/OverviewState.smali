.class public Lcom/android/launcher3/uioverrides/states/OverviewState;
.super Lcom/android/launcher3/LauncherState;
.source "OverviewState.java"


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "id"    # I

    .line 33
    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/LauncherState;-><init>(III)V

    .line 34
    return-void
.end method

.method public static newBackgroundState(I)Lcom/android/launcher3/uioverrides/states/OverviewState;
    .locals 1
    .param p0, "id"    # I

    .line 42
    new-instance v0, Lcom/android/launcher3/uioverrides/states/OverviewState;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/states/OverviewState;-><init>(I)V

    return-object v0
.end method

.method public static newModalTaskState(I)Lcom/android/launcher3/uioverrides/states/OverviewState;
    .locals 1
    .param p0, "id"    # I

    .line 53
    new-instance v0, Lcom/android/launcher3/uioverrides/states/OverviewState;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/states/OverviewState;-><init>(I)V

    return-object v0
.end method

.method public static newSplitSelectState(I)Lcom/android/launcher3/uioverrides/states/OverviewState;
    .locals 1
    .param p0, "id"    # I

    .line 60
    new-instance v0, Lcom/android/launcher3/uioverrides/states/OverviewState;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/states/OverviewState;-><init>(I)V

    return-object v0
.end method

.method public static newSwitchState(I)Lcom/android/launcher3/uioverrides/states/OverviewState;
    .locals 1
    .param p0, "id"    # I

    .line 46
    new-instance v0, Lcom/android/launcher3/uioverrides/states/OverviewState;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/states/OverviewState;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getTransitionDuration(Landroid/content/Context;Z)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isToState"    # Z

    .line 38
    const/16 v0, 0xfa

    return v0
.end method

.method public getWorkspaceScrimColor(Lcom/android/launcher3/Launcher;)I
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 65
    sget v0, Lcom/android/launcher3/R$attr;->overviewScrimColor:I

    invoke-static {p1, v0}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method
