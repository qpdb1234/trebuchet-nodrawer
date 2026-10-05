.class public Lcom/android/launcher3/dragndrop/SpringLoadedDragController;
.super Ljava/lang/Object;
.source "SpringLoadedDragController.java"

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# static fields
.field private static final ENTER_SPRING_LOAD_CANCEL_HOVER_TIME:J = 0x3b6L

.field private static final ENTER_SPRING_LOAD_HOVER_TIME:J = 0x1f4L

.field private static final ENTER_SPRING_LOAD_HOVER_TIME_IN_TEST:J = 0x7d0L


# instance fields
.field mAlarm:Lcom/android/launcher3/Alarm;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mScreen:Lcom/android/launcher3/CellLayout;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 40
    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    .line 41
    invoke-virtual {v0, p0}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 42
    return-void
.end method

.method private getEnterSpringLoadHoverTime()J
    .locals 2

    .line 46
    invoke-static {}, Lcom/android/launcher3/Utilities;->isRunningInTestHarness()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const-wide/16 v0, 0x7d0

    goto :goto_0

    .line 48
    :cond_0
    const-wide/16 v0, 0x1f4

    .line 46
    :goto_0
    return-wide v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 53
    return-void
.end method

.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .locals 2
    .param p1, "alarm"    # Lcom/android/launcher3/Alarm;

    .line 65
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mScreen:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    .line 68
    .local v0, "w":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mScreen:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->isVisible(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mScreen:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->snapToPage(I)Z

    .line 71
    .end local v0    # "w":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    :cond_0
    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->cancelDrag()V

    .line 74
    :goto_0
    return-void
.end method

.method public setAlarm(Lcom/android/launcher3/CellLayout;)V
    .locals 3
    .param p1, "cl"    # Lcom/android/launcher3/CellLayout;

    .line 57
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 58
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    if-nez p1, :cond_0

    const-wide/16 v1, 0x3b6

    goto :goto_0

    .line 59
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->getEnterSpringLoadHoverTime()J

    move-result-wide v1

    .line 58
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 60
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mScreen:Lcom/android/launcher3/CellLayout;

    .line 61
    return-void
.end method
