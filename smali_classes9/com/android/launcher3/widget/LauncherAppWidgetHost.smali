.class Lcom/android/launcher3/widget/LauncherAppWidgetHost;
.super Landroid/appwidget/AppWidgetHost;
.source "LauncherAppWidgetHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView;
    }
.end annotation


# instance fields
.field private final mAppWidgetRemovedCallback:Ljava/util/function/IntConsumer;

.field private final mContext:Landroid/content/Context;

.field private final mProviderChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mViewToRecycle:Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView;


# direct methods
.method public static synthetic $r8$lambda$3wNBU6B2xvajpsmo_NzJ6mmCEAM(Lcom/android/launcher3/widget/LauncherAppWidgetHost;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->lambda$onAppWidgetRemoved$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xUfFRm_NNpVtfCuw0MO0kZGabGs(Lcom/android/launcher3/widget/LauncherAppWidgetHost;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->lambda$onAppWidgetRemoved$0(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/IntConsumer;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetRemovedCallback"    # Ljava/util/function/IntConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/IntConsumer;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;",
            ">;)V"
        }
    .end annotation

    .line 63
    .local p3, "providerChangeListeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;>;"
    const/16 v0, 0x400

    invoke-direct {p0, p1, v0}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 64
    iput-object p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mAppWidgetRemovedCallback:Ljava/util/function/IntConsumer;

    .line 66
    iput-object p3, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/List;

    .line 67
    return-void
.end method

.method private synthetic lambda$onAppWidgetRemoved$0(I)V
    .locals 1
    .param p1, "appWidgetId"    # I

    .line 122
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mAppWidgetRemovedCallback:Ljava/util/function/IntConsumer;

    invoke-interface {v0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method private synthetic lambda$onAppWidgetRemoved$1(I)V
    .locals 2
    .param p1, "appWidgetId"    # I

    .line 121
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/widget/LauncherAppWidgetHost$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetHost;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public clearViews()V
    .locals 0

    .line 130
    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->clearViews()V

    .line 131
    return-void
.end method

.method public onAppWidgetRemoved(I)V
    .locals 2
    .param p1, "appWidgetId"    # I

    .line 116
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mAppWidgetRemovedCallback:Ljava/util/function/IntConsumer;

    if-nez v0, :cond_0

    .line 117
    return-void

    .line 120
    :cond_0
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/widget/LauncherAppWidgetHost$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetHost;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;

    .line 91
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mViewToRecycle:Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView;

    invoke-direct {v0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView;-><init>(Landroid/content/Context;)V

    .line 92
    .local v0, "result":Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView;
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mViewToRecycle:Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView;

    .line 93
    return-object v0
.end method

.method protected onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 3
    .param p1, "appWidgetId"    # I
    .param p2, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;

    .line 101
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v0

    .line 103
    .local v0, "info":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    invoke-super {p0, p1, v0}, Landroid/appwidget/AppWidgetHost;->onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 106
    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->initSpans(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V

    .line 107
    return-void
.end method

.method protected onProvidersChanged()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;

    .line 74
    .local v1, "callback":Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;
    invoke-interface {v1}, Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;->notifyWidgetProvidersChanged()V

    .line 75
    .end local v1    # "callback":Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;
    goto :goto_0

    .line 77
    :cond_0
    return-void
.end method

.method public recycleViewForNextCreation(Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView;)V
    .locals 0
    .param p1, "viewToRecycle"    # Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView;

    .line 83
    iput-object p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mViewToRecycle:Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView;

    .line 84
    return-void
.end method
