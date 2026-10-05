.class public Lcom/android/launcher3/testing/DebugTestInformationHandler;
.super Lcom/android/launcher3/testing/TestInformationHandler;
.source "DebugTestInformationHandler.java"


# static fields
.field private static final sActivities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sActivitiesCreatedCount:I

.field private static sActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private static sEvents:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1Ur1ZADycwHRj2pl185X0h9RwCA(Lcom/android/launcher3/testing/DebugTestInformationHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/testing/DebugTestInformationHandler;->lambda$call$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$D6S0dcEO_uKDVVM8mvy9GY8ogPw(Landroid/os/Bundle;Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZpmD_IROTsuaFXyXgLtGnuIxPG4()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public static synthetic $r8$lambda$cECZHapH1w4WGh2MJGf6nTGA0D0(Lcom/android/launcher3/testing/DebugTestInformationHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/testing/DebugTestInformationHandler;->lambda$call$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$lv10LPzAQLK2fLCY3K4FR2RYTBQ(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetsActivities()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/android/launcher3/testing/DebugTestInformationHandler;->sActivities:Ljava/util/Map;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsActivitiesCreatedCount()I
    .locals 1

    sget v0, Lcom/android/launcher3/testing/DebugTestInformationHandler;->sActivitiesCreatedCount:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputsActivitiesCreatedCount(I)V
    .locals 0

    sput p0, Lcom/android/launcher3/testing/DebugTestInformationHandler;->sActivitiesCreatedCount:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 54
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/testing/DebugTestInformationHandler;->sActivities:Ljava/util/Map;

    .line 55
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher3/testing/DebugTestInformationHandler;->sActivitiesCreatedCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    invoke-direct {p0}, Lcom/android/launcher3/testing/TestInformationHandler;-><init>()V

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/launcher3/testing/DebugTestInformationHandler;->init(Landroid/content/Context;)V

    .line 59
    sget-object v0, Lcom/android/launcher3/testing/DebugTestInformationHandler;->sActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/android/launcher3/testing/DebugTestInformationHandler$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/testing/DebugTestInformationHandler$1;-><init>(Lcom/android/launcher3/testing/DebugTestInformationHandler;)V

    sput-object v0, Lcom/android/launcher3/testing/DebugTestInformationHandler;->sActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    sget-object v1, Lcom/android/launcher3/testing/DebugTestInformationHandler;->sActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 92
    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 94
    :cond_0
    return-void
.end method

.method private static createFinalizationObserver(Ljava/util/concurrent/CountDownLatch;)V
    .locals 1
    .param p0, "fence"    # Ljava/util/concurrent/CountDownLatch;

    .line 117
    new-instance v0, Lcom/android/launcher3/testing/DebugTestInformationHandler$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/testing/DebugTestInformationHandler$2;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 127
    return-void
.end method

.method static synthetic lambda$call$0(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;
    .locals 1
    .param p0, "l"    # Lcom/android/launcher3/Launcher;

    .line 135
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsStore;->getDeferUpdatesFlags()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$call$1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "sequence"    # Ljava/lang/String;
    .param p1, "event"    # Ljava/lang/String;

    .line 162
    sget-object v0, Lcom/android/launcher3/testing/DebugTestInformationHandler;->sEvents:Ljava/util/Collection;

    .line 163
    .local v0, "events":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 164
    monitor-enter v0

    .line 165
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 166
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 168
    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$call$2()V
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/android/launcher3/testing/DebugTestInformationHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    .line 197
    .local v0, "model":Lcom/android/launcher3/LauncherModel;
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lcom/android/launcher3/model/ModelDbController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/model/ModelDbController;->createEmptyDB()V

    .line 198
    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/testing/DebugTestInformationHandler$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/launcher3/testing/DebugTestInformationHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/LauncherModel;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 199
    return-void
.end method

.method private synthetic lambda$call$3()V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/android/launcher3/testing/DebugTestInformationHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    .line 211
    .local v0, "model":Lcom/android/launcher3/LauncherModel;
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lcom/android/launcher3/model/ModelDbController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/model/ModelDbController;->createEmptyDB()V

    .line 212
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lcom/android/launcher3/model/ModelDbController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/model/ModelDbController;->clearEmptyDbFlag()V

    .line 213
    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/testing/DebugTestInformationHandler$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/launcher3/testing/DebugTestInformationHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/LauncherModel;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 214
    return-void
.end method

.method static synthetic lambda$call$4(Lcom/android/launcher3/Launcher;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "l"    # Lcom/android/launcher3/Launcher;

    .line 223
    nop

    .line 224
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    .line 225
    .local v0, "hotseatIconsContainer":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v1, "hotseatIconNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 229
    invoke-virtual {v0, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/BubbleTextView;

    .line 230
    .local v3, "icon":Lcom/android/launcher3/BubbleTextView;
    invoke-virtual {v3}, Lcom/android/launcher3/BubbleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    .end local v3    # "icon":Lcom/android/launcher3/BubbleTextView;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method static synthetic lambda$call$5(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2
    .param p0, "a"    # Landroid/app/Activity;

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 246
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "destroyed"

    goto :goto_0

    :cond_0
    const-string v1, "current"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    return-object v0
.end method

.method static synthetic lambda$call$6(I)[Ljava/lang/String;
    .locals 1
    .param p0, "x$0"    # I

    .line 247
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method private static runGcAndFinalizersSync()V
    .locals 4

    .line 97
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 98
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    .line 100
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 101
    .local v0, "fence":Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/launcher3/testing/DebugTestInformationHandler;->createFinalizationObserver(Ljava/util/concurrent/CountDownLatch;)V

    .line 104
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    .line 105
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->runFinalization()V

    .line 106
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 109
    nop

    .line 110
    return-void

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, "ex":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 131
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 132
    .local v0, "response":Landroid/os/Bundle;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "get-hotseat-icon-names"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "get-activities-created-count"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "get-test-events"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "get-activities"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "model-queue-cleared"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    goto :goto_1

    :sswitch_5
    const-string v1, "pid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_6
    const-string v1, "gc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_7
    const-string v1, "enable-debug-tracing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :sswitch_8
    const-string v1, "clear-data"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_9
    const-string v1, "reinitialize-data"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_a
    const-string v1, "app-list-freeze-flags"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_b
    const-string v1, "start-event-logging"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_c
    const-string v1, "stop-event-logging"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_d
    const-string v1, "disable-debug-tracing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 255
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/testing/TestInformationHandler;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 252
    :pswitch_0
    sget-object v1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/launcher3/testing/DebugTestInformationHandler$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/launcher3/testing/DebugTestInformationHandler$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v2}, Lcom/android/launcher3/testing/DebugTestInformationHandler;->getFromExecutorSync(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    return-object v1

    .line 243
    :pswitch_1
    const-string v1, "response"

    sget-object v2, Lcom/android/launcher3/testing/DebugTestInformationHandler;->sActivities:Ljava/util/Map;

    .line 244
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/testing/DebugTestInformationHandler$$ExternalSyntheticLambda9;

    invoke-direct {v3}, Lcom/android/launcher3/testing/DebugTestInformationHandler$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/testing/DebugTestInformationHandler$$ExternalSyntheticLambda10;

    invoke-direct {v3}, Lcom/android/launcher3/testing/DebugTestInformationHandler$$ExternalSyntheticLambda10;-><init>()V

    .line 247
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 243
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 248
    return-object v0

    .line 238
    :pswitch_2
    const-string v1, "response"

    sget v2, Lcom/android/launcher3/testing/DebugTestInformationHandler;->sActivitiesCreatedCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 239
    return-object v0

    .line 222
    :pswitch_3
    new-instance v1, Lcom/android/launcher3/testing/DebugTestInformationHandler$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/launcher3/testing/DebugTestInformationHandler$$ExternalSyntheticLambda7;-><init>()V

    new-instance v2, Lcom/android/launcher3/testing/DebugTestInformationHandler$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lcom/android/launcher3/testing/DebugTestInformationHandler$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {v1, v2}, Lcom/android/launcher3/testing/DebugTestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 207
    :pswitch_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 209
    .local v1, "identity":J
    :try_start_0
    sget-object v3, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v4, Lcom/android/launcher3/testing/DebugTestInformationHandler$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0}, Lcom/android/launcher3/testing/DebugTestInformationHandler$$ExternalSyntheticLambda6;-><init>(Lcom/android/launcher3/testing/DebugTestInformationHandler;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    nop

    .line 217
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 215
    return-object v0

    .line 217
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 218
    throw v3

    .line 193
    .end local v1    # "identity":J
    :pswitch_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 195
    .restart local v1    # "identity":J
    :try_start_1
    sget-object v3, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v4, Lcom/android/launcher3/testing/DebugTestInformationHandler$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lcom/android/launcher3/testing/DebugTestInformationHandler$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/testing/DebugTestInformationHandler;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 200
    nop

    .line 202
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 200
    return-object v0

    .line 202
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 203
    throw v3

    .line 179
    .end local v1    # "identity":J
    :pswitch_6
    sget-object v1, Lcom/android/launcher3/testing/DebugTestInformationHandler;->sEvents:Ljava/util/Collection;

    if-nez v1, :cond_1

    .line 182
    return-object v0

    .line 185
    :cond_1
    monitor-enter v1

    .line 186
    :try_start_2
    const-string v2, "response"

    new-instance v3, Ljava/util/ArrayList;

    sget-object v4, Lcom/android/launcher3/testing/DebugTestInformationHandler;->sEvents:Ljava/util/Collection;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 188
    monitor-exit v1

    .line 189
    return-object v0

    .line 188
    :catchall_2
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v2

    .line 173
    :pswitch_7
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/launcher3/testing/TestLogging;->setEventConsumer(Ljava/util/function/BiConsumer;)V

    .line 174
    sput-object v1, Lcom/android/launcher3/testing/DebugTestInformationHandler;->sEvents:Ljava/util/Collection;

    .line 175
    return-object v0

    .line 159
    :pswitch_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/launcher3/testing/DebugTestInformationHandler;->sEvents:Ljava/util/Collection;

    .line 160
    new-instance v1, Lcom/android/launcher3/testing/DebugTestInformationHandler$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/launcher3/testing/DebugTestInformationHandler$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v1}, Lcom/android/launcher3/testing/TestLogging;->setEventConsumer(Ljava/util/function/BiConsumer;)V

    .line 169
    return-object v0

    .line 154
    :pswitch_9
    invoke-static {}, Lcom/android/launcher3/testing/DebugTestInformationHandler;->runGcAndFinalizersSync()V

    .line 155
    return-object v0

    .line 149
    :pswitch_a
    const-string v1, "response"

    invoke-static {}, Landroid/system/Os;->getpid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 150
    return-object v0

    .line 144
    :pswitch_b
    sput-boolean v2, Lcom/android/launcher3/testing/shared/TestProtocol;->sDebugTracing:Z

    .line 145
    sput-boolean v2, Lcom/android/launcher3/icons/ClockDrawableWrapper;->sRunningInTest:Z

    .line 146
    return-object v0

    .line 139
    :pswitch_c
    sput-boolean v3, Lcom/android/launcher3/testing/shared/TestProtocol;->sDebugTracing:Z

    .line 140
    sput-boolean v3, Lcom/android/launcher3/icons/ClockDrawableWrapper;->sRunningInTest:Z

    .line 141
    return-object v0

    .line 134
    :pswitch_d
    new-instance v1, Lcom/android/launcher3/testing/DebugTestInformationHandler$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/launcher3/testing/DebugTestInformationHandler$$ExternalSyntheticLambda2;-><init>()V

    new-instance v2, Lcom/android/launcher3/testing/DebugTestInformationHandler$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/launcher3/testing/DebugTestInformationHandler$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v1, v2}, Lcom/android/launcher3/testing/DebugTestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e105add -> :sswitch_d
        -0x71e9cb5f -> :sswitch_c
        -0x3a4636ff -> :sswitch_b
        -0x3a20180c -> :sswitch_a
        -0x2eb09acc -> :sswitch_9
        -0x2e75bcd6 -> :sswitch_8
        -0xcab8382 -> :sswitch_7
        0xcdc -> :sswitch_6
        0x1b18b -> :sswitch_5
        0xeb8ef4c -> :sswitch_4
        0x1cbb46c4 -> :sswitch_3
        0x36426ebd -> :sswitch_2
        0x5791a6a1 -> :sswitch_1
        0x63082da6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
