.class public abstract Lcom/android/launcher3/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/android/launcher3/views/ActivityContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;,
        Lcom/android/launcher3/BaseActivity$ActivityEvent;,
        Lcom/android/launcher3/BaseActivity$ActivityFlags;,
        Lcom/android/launcher3/BaseActivity$InvisibilityFlags;
    }
.end annotation


# static fields
.field public static final ACTIVITY_STATE_DEFERRED_RESUMED:I = 0x4

.field public static final ACTIVITY_STATE_RESUMED:I = 0x2

.field public static final ACTIVITY_STATE_STARTED:I = 0x1

.field public static final ACTIVITY_STATE_TRANSITION_ACTIVE:I = 0x40

.field public static final ACTIVITY_STATE_USER_ACTIVE:I = 0x10

.field public static final ACTIVITY_STATE_USER_WILL_BE_ACTIVE:I = 0x20

.field public static final ACTIVITY_STATE_WINDOW_FOCUSED:I = 0x8

.field static final DEBUG:Z = false

.field public static final EVENT_DESTROYED:I = 0x3

.field public static final EVENT_RESUMED:I = 0x1

.field public static final EVENT_STARTED:I = 0x0

.field public static final EVENT_STOPPED:I = 0x2

.field public static final INVISIBLE_ALL:I = 0xf

.field public static final INVISIBLE_BY_APP_TRANSITIONS:I = 0x2

.field public static final INVISIBLE_BY_PENDING_FLAGS:I = 0x4

.field public static final INVISIBLE_BY_STATE_HANDLER:I = 0x1

.field private static final INVISIBLE_FLAGS:I = 0x7

.field public static final PENDING_INVISIBLE_BY_WALLPAPER_ANIMATION:I = 0x8

.field public static final STATE_HANDLER_INVISIBILITY_FLAGS:I = 0x9

.field private static final TAG:Ljava/lang/String; = "BaseActivity"


# instance fields
.field private mActivityFlags:I

.field private final mDPChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

.field private final mEventCallbacks:[Lcom/android/launcher3/util/RunnableList;

.field private mForceInvisible:I

.field private final mMultiWindowModeChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

.field protected mSystemUiController:Lcom/android/launcher3/util/SystemUiController;

.field private final mViewCache:Lcom/android/launcher3/util/ViewCache;


# direct methods
.method public static synthetic $r8$lambda$XrE42zGf7jYhkv33atmhR7fdWvs(Lcom/android/launcher3/BaseActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/BaseActivity;->lambda$registerBackDispatcher$0()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDPChangeListeners:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/BaseActivity;->mMultiWindowModeChangedListeners:Ljava/util/ArrayList;

    .line 154
    new-instance v0, Lcom/android/launcher3/util/ViewCache;

    invoke-direct {v0}, Lcom/android/launcher3/util/ViewCache;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/BaseActivity;->mViewCache:Lcom/android/launcher3/util/ViewCache;

    .line 165
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/launcher3/util/RunnableList;

    new-instance v1, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v1}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v1}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v1}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v1}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/launcher3/BaseActivity;->mEventCallbacks:[Lcom/android/launcher3/util/RunnableList;

    return-void
.end method

.method public static fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/launcher3/BaseActivity;",
            ">(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .line 413
    instance-of v0, p0, Lcom/android/launcher3/BaseActivity;

    if-eqz v0, :cond_0

    .line 414
    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/BaseActivity;

    return-object v0

    .line 415
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 416
    move-object v0, p0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    return-object v0

    .line 418
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot find BaseActivity in parent tree"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getActivityStateString(I)Ljava/lang/String;
    .locals 3
    .param p0, "flags"    # I

    .line 136
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "|"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 137
    .local v0, "result":Ljava/util/StringJoiner;
    const/4 v1, 0x1

    const-string v2, "state_started"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/util/FlagDebugUtils;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    .line 138
    const/4 v1, 0x2

    const-string v2, "state_resumed"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/util/FlagDebugUtils;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    .line 139
    const/4 v1, 0x4

    const-string v2, "state_deferred_resumed"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/util/FlagDebugUtils;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    .line 140
    const/16 v1, 0x8

    const-string v2, "state_window_focused"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/util/FlagDebugUtils;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    .line 141
    const/16 v1, 0x10

    const-string v2, "state_user_active"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/util/FlagDebugUtils;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    .line 142
    const/16 v1, 0x40

    const-string v2, "state_transition_active"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/util/FlagDebugUtils;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    .line 143
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private synthetic lambda$registerBackDispatcher$0()V
    .locals 2

    .line 290
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->onBackPressed()V

    .line 291
    const-string v0, "Main"

    const-string v1, "onBackInvoked"

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return-void
.end method


# virtual methods
.method protected addActivityFlags(I)V
    .locals 2
    .param p1, "toAdd"    # I

    .line 331
    iget v0, p0, Lcom/android/launcher3/BaseActivity;->mActivityFlags:I

    .line 332
    .local v0, "oldFlags":I
    iget v1, p0, Lcom/android/launcher3/BaseActivity;->mActivityFlags:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/android/launcher3/BaseActivity;->mActivityFlags:I

    .line 337
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BaseActivity;->onActivityFlagsChanged(I)V

    .line 338
    return-void
.end method

.method public addEventCallback(ILjava/lang/Runnable;)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "callback"    # Ljava/lang/Runnable;

    .line 391
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mEventCallbacks:[Lcom/android/launcher3/util/RunnableList;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    .line 392
    return-void
.end method

.method public addForceInvisibleFlag(I)V
    .locals 1
    .param p1, "flag"    # I

    .line 369
    iget v0, p0, Lcom/android/launcher3/BaseActivity;->mForceInvisible:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/BaseActivity;->mForceInvisible:I

    .line 370
    return-void
.end method

.method public addMultiWindowModeChangedListener(Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;

    .line 355
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mMultiWindowModeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    return-void
.end method

.method public clearForceInvisibleFlag(I)V
    .locals 2
    .param p1, "flag"    # I

    .line 373
    iget v0, p0, Lcom/android/launcher3/BaseActivity;->mForceInvisible:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/BaseActivity;->mForceInvisible:I

    .line 374
    return-void
.end method

.method protected dumpMisc(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "deviceProfile isTransposed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 405
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 404
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mSystemUiController: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/BaseActivity;->mSystemUiController:Lcom/android/launcher3/util/SystemUiController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mActivityFlags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/BaseActivity;->mActivityFlags:I

    invoke-static {v1}, Lcom/android/launcher3/BaseActivity;->getActivityStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mForceInvisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/BaseActivity;->mForceInvisible:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public getActivityFlags()I
    .locals 1

    .line 327
    iget v0, p0, Lcom/android/launcher3/BaseActivity;->mActivityFlags:I

    return v0
.end method

.method public getDeviceProfile()Lcom/android/launcher3/DeviceProfile;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    return-object v0
.end method

.method public getOnDeviceProfileChangeListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDPChangeListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getScrimView()Lcom/android/launcher3/views/ScrimView;
    .locals 1

    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    if-nez v0, :cond_0

    .line 189
    invoke-static {p0}, Lcom/android/launcher3/logging/StatsLogManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BaseActivity;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    return-object v0
.end method

.method public getSystemUiController()Lcom/android/launcher3/util/SystemUiController;
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mSystemUiController:Lcom/android/launcher3/util/SystemUiController;

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Lcom/android/launcher3/util/SystemUiController;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/SystemUiController;-><init>(Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/launcher3/BaseActivity;->mSystemUiController:Lcom/android/launcher3/util/SystemUiController;

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mSystemUiController:Lcom/android/launcher3/util/SystemUiController;

    return-object v0
.end method

.method public getViewCache()Lcom/android/launcher3/util/ViewCache;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mViewCache:Lcom/android/launcher3/util/ViewCache;

    return-object v0
.end method

.method public hasBeenResumed()Z
    .locals 1

    .line 304
    iget v0, p0, Lcom/android/launcher3/BaseActivity;->mActivityFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSomeInvisibleFlag(I)Z
    .locals 1
    .param p1, "mask"    # I

    .line 384
    iget v0, p0, Lcom/android/launcher3/BaseActivity;->mForceInvisible:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isForceInvisible()Z
    .locals 1

    .line 380
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseActivity;->hasSomeInvisibleFlag(I)Z

    move-result v0

    return v0
.end method

.method public isStarted()Z
    .locals 2

    .line 297
    iget v0, p0, Lcom/android/launcher3/BaseActivity;->mActivityFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isUserActive()Z
    .locals 1

    .line 323
    iget v0, p0, Lcom/android/launcher3/BaseActivity;->mActivityFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onActivityFlagsChanged(I)V
    .locals 0
    .param p1, "changeBits"    # I

    .line 352
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 207
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 208
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 212
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->registerBackDispatcher()V

    .line 214
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 259
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 260
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mEventCallbacks:[Lcom/android/launcher3/util/RunnableList;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndClear()V

    .line 261
    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 2
    .param p1, "isInMultiWindowMode"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 238
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 239
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mMultiWindowModeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 240
    iget-object v1, p0, Lcom/android/launcher3/BaseActivity;->mMultiWindowModeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;

    invoke-interface {v1, p1}, Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;->onMultiWindowModeChanged(Z)V

    .line 239
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 242
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 265
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->setPaused()V

    .line 266
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 272
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    .line 273
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 225
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->setResumed()V

    .line 226
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 227
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mEventCallbacks:[Lcom/android/launcher3/util/RunnableList;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndClear()V

    .line 228
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 218
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseActivity;->addActivityFlags(I)V

    .line 219
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 220
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mEventCallbacks:[Lcom/android/launcher3/util/RunnableList;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndClear()V

    .line 221
    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 246
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseActivity;->removeActivityFlags(I)V

    .line 247
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/BaseActivity;->mForceInvisible:I

    .line 248
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 249
    iget-object v1, p0, Lcom/android/launcher3/BaseActivity;->mEventCallbacks:[Lcom/android/launcher3/util/RunnableList;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/launcher3/util/RunnableList;->executeAllAndClear()V

    .line 254
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    .line 255
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .line 232
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseActivity;->removeActivityFlags(I)V

    .line 233
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 234
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .line 277
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 278
    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 279
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseActivity;->addActivityFlags(I)V

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseActivity;->removeActivityFlags(I)V

    .line 283
    :goto_0
    return-void
.end method

.method protected registerBackDispatcher()V
    .locals 3

    .line 286
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_T:Z

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/BaseActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/BaseActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/BaseActivity;)V

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 294
    :cond_0
    return-void
.end method

.method protected removeActivityFlags(I)V
    .locals 3
    .param p1, "toRemove"    # I

    .line 341
    iget v0, p0, Lcom/android/launcher3/BaseActivity;->mActivityFlags:I

    .line 342
    .local v0, "oldFlags":I
    iget v1, p0, Lcom/android/launcher3/BaseActivity;->mActivityFlags:I

    not-int v2, p1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/BaseActivity;->mActivityFlags:I

    .line 348
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BaseActivity;->onActivityFlagsChanged(I)V

    .line 349
    return-void
.end method

.method public removeEventCallback(ILjava/lang/Runnable;)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "callback"    # Ljava/lang/Runnable;

    .line 396
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mEventCallbacks:[Lcom/android/launcher3/util/RunnableList;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/launcher3/util/RunnableList;->remove(Ljava/lang/Runnable;)V

    .line 397
    return-void
.end method

.method public removeMultiWindowModeChangedListener(Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;

    .line 359
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mMultiWindowModeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 360
    return-void
.end method

.method public setPaused()V
    .locals 1

    .line 311
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseActivity;->removeActivityFlags(I)V

    .line 312
    return-void
.end method

.method public setResumed()V
    .locals 1

    .line 318
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseActivity;->addActivityFlags(I)V

    .line 319
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseActivity;->removeActivityFlags(I)V

    .line 320
    return-void
.end method
