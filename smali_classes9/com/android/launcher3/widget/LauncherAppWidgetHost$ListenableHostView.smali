.class public Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView;
.super Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
.source "LauncherAppWidgetHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/LauncherAppWidgetHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListenableHostView"
.end annotation


# instance fields
.field private mUpdateListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$qlJTcUrQ5ztSESDvXrMdilJWI24(Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView;->lambda$addUpdateListener$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 138
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 135
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView;->mUpdateListeners:Ljava/util/Set;

    .line 139
    return-void
.end method

.method private synthetic lambda$addUpdateListener$0(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 162
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView;->mUpdateListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addUpdateListener(Ljava/lang/Runnable;)Lcom/android/launcher3/util/SafeCloseable;
    .locals 2
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 158
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView;->mUpdateListeners:Ljava/util/Set;

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    if-ne v0, v1, :cond_0

    .line 159
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView;->mUpdateListeners:Ljava/util/Set;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView;->mUpdateListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v0, Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 149
    invoke-super {p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 150
    const-class v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 151
    return-void
.end method

.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;

    .line 143
    invoke-super {p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 144
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView;->mUpdateListeners:Ljava/util/Set;

    new-instance v1, Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost$ListenableHostView$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 145
    return-void
.end method
