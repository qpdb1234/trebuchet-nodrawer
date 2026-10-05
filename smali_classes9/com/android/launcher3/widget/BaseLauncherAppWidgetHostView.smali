.class public abstract Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;
.super Lcom/android/launcher3/widget/NavigableAppWidgetHostView;
.source "BaseLauncherAppWidgetHostView.java"


# static fields
.field private static final VIEW_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;


# instance fields
.field private final mCornerRadiusEnforcementOutline:Landroid/view/ViewOutlineProvider;

.field private final mEnforcedCornerRadius:F

.field private final mEnforcedRectangle:Landroid/graphics/Rect;

.field protected final mInflater:Landroid/view/LayoutInflater;

.field private mIsCornerRadiusEnforced:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmEnforcedCornerRadius(Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mEnforcedCornerRadius:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnforcedRectangle(Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mEnforcedRectangle:Landroid/graphics/Rect;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView$1;

    invoke-direct {v0}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->VIEW_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mEnforcedRectangle:Landroid/graphics/Rect;

    .line 52
    new-instance v0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView$2;-><init>(Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mCornerRadiusEnforcementOutline:Landroid/view/ViewOutlineProvider;

    .line 68
    sget-object v0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->setClipToOutline(Z)V

    .line 71
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    .line 72
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->computeEnforcedRadius(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mEnforcedCornerRadius:F

    .line 73
    return-void
.end method

.method private enforceRoundedCorners()V
    .locals 2

    .line 107
    iget v0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mEnforcedCornerRadius:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_3

    invoke-static {}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->isRoundedCornerEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 111
    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->findBackground(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 112
    .local v0, "background":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 113
    invoke-static {p0, v0}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->hasAppWidgetOptedOut(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mEnforcedRectangle:Landroid/graphics/Rect;

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->computeRoundedRectangle(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 120
    iget-object v1, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mCornerRadiusEnforcementOutline:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 121
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mIsCornerRadiusEnforced:Z

    .line 122
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->invalidateOutline()V

    .line 123
    return-void

    .line 114
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->resetRoundedCorners()V

    .line 115
    return-void

    .line 108
    .end local v0    # "background":Landroid/view/View;
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->resetRoundedCorners()V

    .line 109
    return-void
.end method

.method private resetRoundedCorners()V
    .locals 1

    .line 101
    sget-object v0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->VIEW_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mIsCornerRadiusEnforced:Z

    .line 103
    return-void
.end method


# virtual methods
.method public getEnforcedCornerRadius()F
    .locals 1

    .line 127
    iget v0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mEnforcedCornerRadius:F

    return v0
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/launcher3/R$layout;->appwidget_error:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hasEnforcedCornerRadius()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->mIsCornerRadiusEnforced:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 91
    :try_start_0
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->onLayout(ZIIII)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->post(Ljava/lang/Runnable;)Z

    .line 96
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    invoke-direct {p0}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->enforceRoundedCorners()V

    .line 97
    return-void
.end method

.method public switchToErrorView()V
    .locals 3

    .line 85
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 86
    return-void
.end method
