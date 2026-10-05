.class public Lcom/android/launcher3/widget/LauncherWidgetHolder;
.super Ljava/lang/Object;
.source "LauncherWidgetHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;,
        Lcom/android/launcher3/widget/LauncherWidgetHolder$HolderFactory;
    }
.end annotation


# static fields
.field public static final APPWIDGET_HOST_ID:I = 0x400

.field private static final FLAGS_SHOULD_LISTEN:I = 0xe

.field protected static final FLAG_ACTIVITY_RESUMED:I = 0x8

.field protected static final FLAG_ACTIVITY_STARTED:I = 0x4

.field protected static final FLAG_LISTENING:I = 0x1

.field protected static final FLAG_STATE_IS_NORMAL:I = 0x2

.field private static final KEY_SPLASH_SCREEN_STYLE:Ljava/lang/String; = "android.activity.splashScreenStyle"

.field private static final SPLASH_SCREEN_STYLE_EMPTY:I


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mFlags:I

.field protected final mProviderChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/widget/LauncherAppWidgetHostView;",
            ">;"
        }
    .end annotation
.end field

.field private final mWidgetHost:Landroid/appwidget/AppWidgetHost;


# direct methods
.method public static synthetic $r8$lambda$2dk5NomkUfhsjGue3F-gwQ_9CWQ(Lcom/android/launcher3/widget/LauncherWidgetHolder;Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->lambda$removeProviderChangeListener$1(Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JXg03-iP1eNJ5xsT1bbWxjcdmss(Lcom/android/launcher3/widget/LauncherWidgetHolder;Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->lambda$addProviderChangeListener$0(Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/util/function/IntConsumer;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetRemovedCallback"    # Ljava/util/function/IntConsumer;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mViews:Landroid/util/SparseArray;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mProviderChangedListeners:Ljava/util/List;

    .line 80
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mFlags:I

    .line 89
    iput-object p1, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mContext:Landroid/content/Context;

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->createHost(Landroid/content/Context;Ljava/util/function/IntConsumer;)Landroid/appwidget/AppWidgetHost;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 91
    return-void
.end method

.method static synthetic lambda$addOnUpdateListener$3()V
    .locals 0

    .line 312
    return-void
.end method

.method private synthetic lambda$addProviderChangeListener$0(Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;

    .line 191
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mProviderChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$removeProviderChangeListener$1(Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;

    .line 200
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mProviderChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$sendActionCancelled$2(Lcom/android/launcher3/BaseActivity;I)V
    .locals 2
    .param p0, "activity"    # Lcom/android/launcher3/BaseActivity;
    .param p1, "requestCode"    # I

    .line 228
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/launcher3/widget/LauncherWidgetHolder;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 484
    invoke-static {p0}, Lcom/android/launcher3/widget/LauncherWidgetHolder$HolderFactory;->newFactory(Landroid/content/Context;)Lcom/android/launcher3/widget/LauncherWidgetHolder$HolderFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/widget/LauncherWidgetHolder$HolderFactory;->newInstance(Landroid/content/Context;Ljava/util/function/IntConsumer;)Lcom/android/launcher3/widget/LauncherWidgetHolder;

    move-result-object v0

    return-object v0
.end method

.method private sendActionCancelled(Lcom/android/launcher3/BaseActivity;I)V
    .locals 2
    .param p1, "activity"    # Lcom/android/launcher3/BaseActivity;
    .param p2, "requestCode"    # I

    .line 227
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/widget/LauncherWidgetHolder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2}, Lcom/android/launcher3/widget/LauncherWidgetHolder$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/BaseActivity;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 229
    return-void
.end method

.method private setShouldListenFlag(IZ)V
    .locals 2
    .param p1, "flag"    # I
    .param p2, "on"    # Z

    .line 456
    if-eqz p2, :cond_0

    .line 457
    iget v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mFlags:I

    goto :goto_0

    .line 459
    :cond_0
    iget v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mFlags:I

    .line 462
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->isListening()Z

    move-result v0

    .line 463
    .local v0, "listening":Z
    if-nez v0, :cond_1

    iget v1, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mFlags:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->shouldListen(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 465
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->startListening()V

    goto :goto_1

    .line 466
    :cond_1
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mFlags:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_2

    .line 468
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->stopListening()V

    .line 470
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public addOnUpdateListener(ILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Ljava/lang/Runnable;)Lcom/android/launcher3/util/SafeCloseable;
    .locals 2
    .param p1, "appWidgetId"    # I
    .param p2, "appWidget"    # Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    .param p3, "callback"    # Ljava/lang/Runnable;

    .line 309
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->createView(ILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView;

    .line 310
    .local v0, "lhv":Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView;
    invoke-virtual {v0, p3}, Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView;->addUpdateListener(Ljava/lang/Runnable;)Lcom/android/launcher3/util/SafeCloseable;

    move-result-object v1

    return-object v1

    .line 312
    .end local v0    # "lhv":Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView;
    :cond_0
    new-instance v0, Lcom/android/launcher3/widget/LauncherWidgetHolder$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/launcher3/widget/LauncherWidgetHolder$$ExternalSyntheticLambda2;-><init>()V

    return-object v0
.end method

.method public addProviderChangeListener(Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;

    .line 191
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/widget/LauncherWidgetHolder$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/widget/LauncherWidgetHolder$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/widget/LauncherWidgetHolder;Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 192
    return-void
.end method

.method public allocateAppWidgetId()I
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    return v0
.end method

.method public final attachViewToHostAndGetAttachedView(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;)Landroid/appwidget/AppWidgetHostView;
    .locals 2
    .param p1, "view"    # Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 350
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 351
    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->recycleExistingView(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;)Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    move-result-object p1

    .line 352
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 354
    :cond_0
    return-object p1
.end method

.method public clearViews()V
    .locals 2

    .line 439
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mWidgetHost:Landroid/appwidget/AppWidgetHost;

    check-cast v0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    .line 440
    .local v0, "tempHost":Lcom/android/launcher3/widget/LauncherAppWidgetHost;
    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->clearViews()V

    .line 441
    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 442
    return-void
.end method

.method protected createHost(Landroid/content/Context;Ljava/util/function/IntConsumer;)Landroid/appwidget/AppWidgetHost;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetRemovedCallback"    # Ljava/util/function/IntConsumer;

    .line 95
    new-instance v0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mProviderChangedListeners:Ljava/util/List;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;-><init>(Landroid/content/Context;Ljava/util/function/IntConsumer;Ljava/util/List;)V

    return-object v0
.end method

.method public createView(ILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 3
    .param p1, "appWidgetId"    # I
    .param p2, "appWidget"    # Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    .line 327
    invoke-virtual {p2}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->isCustomWidget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    new-instance v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 329
    .local v0, "lahv":Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 330
    sget-object v1, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/custom/CustomWidgetManager;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->onViewCreated(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;)V

    .line 331
    return-object v0

    .line 334
    .end local v0    # "lahv":Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->createViewInternal(ILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    move-result-object v0

    .line 336
    .local v0, "view":Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    invoke-static {}, Lcom/android/launcher3/Flags;->enableWorkspaceInflation()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 337
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 339
    :cond_2
    return-object v0
.end method

.method protected createViewInternal(ILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    .locals 4
    .param p1, "appWidgetId"    # I
    .param p2, "appWidget"    # Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    .line 390
    iget v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 394
    new-instance v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/android/launcher3/widget/LauncherWidgetHolder;ILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V

    return-object v0

    .line 396
    :cond_0
    invoke-static {}, Lcom/android/launcher3/Flags;->enableWorkspaceInflation()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 399
    new-instance v0, Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView;

    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView;-><init>(Landroid/content/Context;)V

    .line 400
    .local v0, "hostView":Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView;
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 401
    return-object v0

    .line 404
    .end local v0    # "hostView":Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView;
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isBinderSizeError(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 414
    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 415
    .local v1, "view":Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    if-nez v1, :cond_2

    .line 416
    new-instance v2, Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView;

    iget-object v3, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView;-><init>(Landroid/content/Context;)V

    move-object v1, v2

    .line 418
    :cond_2
    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 419
    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->switchToErrorView()V

    .line 420
    return-object v1

    .line 408
    .end local v1    # "view":Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public deleteAppWidgetId(I)V
    .locals 1
    .param p1, "appWidgetId"    # I

    .line 163
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 164
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 165
    return-void
.end method

.method public destroy()V
    .locals 0

    .line 172
    return-void
.end method

.method public getAppWidgetIds()[I
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->getAppWidgetIds()[I

    move-result-object v0

    return-object v0
.end method

.method protected getConfigurationActivityOptions(Lcom/android/launcher3/BaseDraggingActivity;I)Landroid/os/Bundle;
    .locals 5
    .param p1, "activity"    # Lcom/android/launcher3/BaseDraggingActivity;
    .param p2, "widgetId"    # I

    .line 238
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 239
    .local v0, "view":Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 240
    invoke-virtual {p1, v1}, Lcom/android/launcher3/BaseDraggingActivity;->makeDefaultActivityOptions(I)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object v1

    .line 241
    invoke-virtual {v1}, Lcom/android/launcher3/util/ActivityOptionsWrapper;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 240
    return-object v1

    .line 243
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 244
    .local v2, "tag":Ljava/lang/Object;
    instance-of v3, v2, Lcom/android/launcher3/model/data/ItemInfo;

    if-nez v3, :cond_1

    .line 245
    invoke-virtual {p1, v1}, Lcom/android/launcher3/BaseDraggingActivity;->makeDefaultActivityOptions(I)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object v1

    .line 246
    invoke-virtual {v1}, Lcom/android/launcher3/util/ActivityOptionsWrapper;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 245
    return-object v1

    .line 248
    :cond_1
    move-object v1, v2

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/BaseDraggingActivity;->getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/ActivityOptionsWrapper;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 249
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v3, "android.activity.splashScreenStyle"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 250
    return-object v1
.end method

.method public isListening()Z
    .locals 2

    .line 448
    iget v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected recycleExistingView(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;)Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    .locals 5
    .param p1, "view"    # Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 368
    iget v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 369
    instance-of v0, p1, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    .local v0, "pv":Lcom/android/launcher3/widget/PendingAppWidgetHostView;
    invoke-virtual {v0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->isDeferredWidget()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    return-object p1

    .line 372
    .end local v0    # "pv":Lcom/android/launcher3/widget/PendingAppWidgetHostView;
    :cond_0
    new-instance v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetId()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mContext:Landroid/content/Context;

    .line 373
    invoke-virtual {p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v3

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/android/launcher3/widget/LauncherWidgetHolder;ILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V

    .line 372
    return-object v0

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mWidgetHost:Landroid/appwidget/AppWidgetHost;

    check-cast v0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    .line 377
    .local v0, "host":Lcom/android/launcher3/widget/LauncherAppWidgetHost;
    instance-of v1, p1, Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView;

    .line 378
    .local v1, "lhv":Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView;
    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->recycleViewForNextCreation(Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView;)V

    .line 381
    .end local v1    # "lhv":Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView;
    :cond_2
    nop

    .line 382
    invoke-virtual {p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetId()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v2

    .line 381
    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->createViewInternal(ILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    move-result-object p1

    .line 383
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->recycleViewForNextCreation(Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView;)V

    .line 384
    return-object p1
.end method

.method public removeProviderChangeListener(Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;

    .line 200
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/widget/LauncherWidgetHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/widget/LauncherWidgetHolder$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/widget/LauncherWidgetHolder;Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 201
    return-void
.end method

.method public setActivityResumed(Z)V
    .locals 1
    .param p1, "isResumed"    # Z

    .line 147
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->setShouldListenFlag(IZ)V

    .line 148
    return-void
.end method

.method public setActivityStarted(Z)V
    .locals 1
    .param p1, "isStarted"    # Z

    .line 140
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->setShouldListenFlag(IZ)V

    .line 141
    return-void
.end method

.method protected setListeningFlag(Z)V
    .locals 1
    .param p1, "isListening"    # Z

    .line 288
    if-eqz p1, :cond_0

    .line 289
    iget v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mFlags:I

    .line 290
    return-void

    .line 292
    :cond_0
    iget v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mFlags:I

    .line 293
    return-void
.end method

.method public setStateIsNormal(Z)V
    .locals 1
    .param p1, "isNormal"    # Z

    .line 155
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->setShouldListenFlag(IZ)V

    .line 156
    return-void
.end method

.method protected shouldListen(I)Z
    .locals 2
    .param p1, "flags"    # I

    .line 477
    and-int/lit8 v0, p1, 0xe

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public startBindFlow(Lcom/android/launcher3/BaseActivity;ILandroid/appwidget/AppWidgetProviderInfo;I)V
    .locals 3
    .param p1, "activity"    # Lcom/android/launcher3/BaseActivity;
    .param p2, "appWidgetId"    # I
    .param p3, "info"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p4, "requestCode"    # I

    .line 267
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 269
    const-string v2, "appWidgetProvider"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 270
    invoke-virtual {p3}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    const-string v2, "appWidgetProviderProfile"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 273
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0, p4}, Lcom/android/launcher3/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 274
    return-void
.end method

.method public startConfigActivity(Lcom/android/launcher3/BaseDraggingActivity;II)V
    .locals 8
    .param p1, "activity"    # Lcom/android/launcher3/BaseDraggingActivity;
    .param p2, "widgetId"    # I
    .param p3, "requestCode"    # I

    .line 217
    :try_start_0
    const-string v0, "Main"

    const-string v1, "start: startConfigActivity"

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v2, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mWidgetHost:Landroid/appwidget/AppWidgetHost;

    const/4 v5, 0x0

    .line 219
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->getConfigurationActivityOptions(Lcom/android/launcher3/BaseDraggingActivity;I)Landroid/os/Bundle;

    move-result-object v7

    .line 218
    move-object v3, p1

    move v4, p2

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/appwidget/AppWidgetHost;->startAppWidgetConfigureActivityForResult(Landroid/app/Activity;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    goto :goto_1

    .line 220
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_0
    sget v1, Lcom/android/launcher3/R$string;->activity_not_found:I

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 222
    invoke-direct {p0, p1, p3}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->sendActionCancelled(Lcom/android/launcher3/BaseActivity;I)V

    .line 224
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1
    return-void
.end method

.method public startListening()V
    .locals 2

    .line 106
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->setListeningFlag(Z)V

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->startListening()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isBinderSizeError(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->updateDeferredView()V

    .line 120
    return-void

    .line 111
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public stopListening()V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->stopListening()V

    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->setListeningFlag(Z)V

    .line 285
    return-void
.end method

.method protected updateDeferredView()V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 129
    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherWidgetHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 130
    .local v1, "view":Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    instance-of v2, v1, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    .line 131
    .local v2, "pv":Lcom/android/launcher3/widget/PendingAppWidgetHostView;
    invoke-virtual {v2}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->reInflate()V

    .line 128
    .end local v1    # "view":Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    .end local v2    # "pv":Lcom/android/launcher3/widget/PendingAppWidgetHostView;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 134
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
