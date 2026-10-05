.class public Lcom/android/launcher3/widget/LauncherWidgetHolder$HolderFactory;
.super Ljava/lang/Object;
.source "LauncherWidgetHolder.java"

# interfaces
.implements Lcom/android/launcher3/util/ResourceBasedOverride;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/LauncherWidgetHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HolderFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newFactory(Landroid/content/Context;)Lcom/android/launcher3/widget/LauncherWidgetHolder$HolderFactory;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 508
    const-class v0, Lcom/android/launcher3/widget/LauncherWidgetHolder$HolderFactory;

    sget v1, Lcom/android/launcher3/R$string;->widget_holder_factory_class:I

    invoke-static {v0, p0, v1}, Lcom/android/launcher3/util/ResourceBasedOverride$Overrides;->getObject(Ljava/lang/Class;Landroid/content/Context;I)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/LauncherWidgetHolder$HolderFactory;

    return-object v0
.end method


# virtual methods
.method public newInstance(Landroid/content/Context;Ljava/util/function/IntConsumer;)Lcom/android/launcher3/widget/LauncherWidgetHolder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetRemovedCallback"    # Ljava/util/function/IntConsumer;

    .line 499
    new-instance v0, Lcom/android/launcher3/widget/LauncherWidgetHolder;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/widget/LauncherWidgetHolder;-><init>(Landroid/content/Context;Ljava/util/function/IntConsumer;)V

    return-object v0
.end method
