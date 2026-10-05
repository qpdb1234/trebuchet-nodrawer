.class public final Lcom/android/launcher3/util/ActivityTracker;
.super Ljava/lang/Object;
.source "ActivityTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/launcher3/BaseActivity;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private mCurrentActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    .local p0, "this":Lcom/android/launcher3/util/ActivityTracker;, "Lcom/android/launcher3/util/ActivityTracker<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/util/ActivityTracker;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    .line 35
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/ActivityTracker;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private handleIntent(Lcom/android/launcher3/BaseActivity;Z)Z
    .locals 4
    .param p2, "alreadyOnHome"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .line 89
    .local p0, "this":Lcom/android/launcher3/util/ActivityTracker;, "Lcom/android/launcher3/util/ActivityTracker<TT;>;"
    .local p1, "activity":Lcom/android/launcher3/BaseActivity;, "TT;"
    const/4 v0, 0x0

    .line 90
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/android/launcher3/util/ActivityTracker;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;

    .line 91
    .local v2, "cb":Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;, "Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback<TT;>;"
    invoke-interface {v2, p1, p2}, Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;->init(Lcom/android/launcher3/BaseActivity;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 93
    invoke-virtual {p0, v2}, Lcom/android/launcher3/util/ActivityTracker;->unregisterCallback(Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;)V

    .line 95
    :cond_0
    const/4 v0, 0x1

    .line 96
    .end local v2    # "cb":Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;, "Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback<TT;>;"
    goto :goto_0

    .line 97
    :cond_1
    return v0
.end method


# virtual methods
.method public getCreatedActivity()Lcom/android/launcher3/BaseActivity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:TT;>()TR;"
        }
    .end annotation

    .line 39
    .local p0, "this":Lcom/android/launcher3/util/ActivityTracker;, "Lcom/android/launcher3/util/ActivityTracker<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/util/ActivityTracker;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BaseActivity;

    return-object v0
.end method

.method public handleCreate(Lcom/android/launcher3/BaseActivity;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 78
    .local p0, "this":Lcom/android/launcher3/util/ActivityTracker;, "Lcom/android/launcher3/util/ActivityTracker<TT;>;"
    .local p1, "activity":Lcom/android/launcher3/BaseActivity;, "TT;"
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v0

    .line 79
    const-string v1, "ActivityTracker.handleCreate this=%s, activity=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 78
    const-string v1, "b/321775748"

    invoke-static {v1, v0}, Lcom/android/launcher3/testing/shared/TestProtocol;->testLogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/util/ActivityTracker;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/util/ActivityTracker;->handleIntent(Lcom/android/launcher3/BaseActivity;Z)Z

    move-result v0

    return v0
.end method

.method public handleNewIntent(Lcom/android/launcher3/BaseActivity;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 85
    .local p0, "this":Lcom/android/launcher3/util/ActivityTracker;, "Lcom/android/launcher3/util/ActivityTracker<TT;>;"
    .local p1, "activity":Lcom/android/launcher3/BaseActivity;, "TT;"
    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/util/ActivityTracker;->handleIntent(Lcom/android/launcher3/BaseActivity;Z)Z

    move-result v0

    return v0
.end method

.method public onActivityDestroyed(Lcom/android/launcher3/BaseActivity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 43
    .local p0, "this":Lcom/android/launcher3/util/ActivityTracker;, "Lcom/android/launcher3/util/ActivityTracker<TT;>;"
    .local p1, "activity":Lcom/android/launcher3/BaseActivity;, "TT;"
    iget-object v0, p0, Lcom/android/launcher3/util/ActivityTracker;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 44
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v0

    .line 45
    const-string v1, "ActivityTracker.onActivityDestroyed this=%s, activity=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 44
    const-string v1, "b/321775748"

    invoke-static {v1, v0}, Lcom/android/launcher3/testing/shared/TestProtocol;->testLogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/android/launcher3/util/ActivityTracker;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 49
    :cond_0
    return-void
.end method

.method public registerCallback(Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 61
    .local p0, "this":Lcom/android/launcher3/util/ActivityTracker;, "Lcom/android/launcher3/util/ActivityTracker<TT;>;"
    .local p1, "callback":Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;, "Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/util/ActivityTracker;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BaseActivity;

    .line 62
    .local v0, "activity":Lcom/android/launcher3/BaseActivity;, "TT;"
    iget-object v1, p0, Lcom/android/launcher3/util/ActivityTracker;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;->init(Lcom/android/launcher3/BaseActivity;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/ActivityTracker;->unregisterCallback(Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;)V

    .line 68
    :cond_0
    return-void
.end method

.method public unregisterCallback(Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/android/launcher3/util/ActivityTracker;, "Lcom/android/launcher3/util/ActivityTracker<TT;>;"
    .local p1, "callback":Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;, "Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/util/ActivityTracker;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method
