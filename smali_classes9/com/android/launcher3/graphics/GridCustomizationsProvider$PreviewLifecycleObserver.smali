.class Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;
.super Ljava/lang/Object;
.source "GridCustomizationsProvider.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/graphics/GridCustomizationsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewLifecycleObserver"
.end annotation


# instance fields
.field public destroyed:Z

.field public final renderer:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

.field final synthetic this$0:Lcom/android/launcher3/graphics/GridCustomizationsProvider;


# direct methods
.method constructor <init>(Lcom/android/launcher3/graphics/GridCustomizationsProvider;Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;)V
    .locals 0
    .param p2, "renderer"    # Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    .line 239
    iput-object p1, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;->this$0:Lcom/android/launcher3/graphics/GridCustomizationsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;->destroyed:Z

    .line 240
    iput-object p2, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;->renderer:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    .line 241
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;->this$0:Lcom/android/launcher3/graphics/GridCustomizationsProvider;

    invoke-static {v0, p0}, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->-$$Nest$mdestroyObserver(Lcom/android/launcher3/graphics/GridCustomizationsProvider;Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;)V

    .line 259
    return-void
.end method

.method public getIdentifier()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 267
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;->renderer:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    invoke-virtual {v1}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->getHostToken()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;->renderer:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    invoke-virtual {v2}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->getDisplayId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .line 245
    iget-boolean v0, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;->destroyed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 246
    return v1

    .line 248
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x539

    if-ne v0, v2, :cond_1

    .line 249
    iget-object v0, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;->renderer:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "hide_bottom_row"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->hideBottomRow(Z)V

    goto :goto_0

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;->this$0:Lcom/android/launcher3/graphics/GridCustomizationsProvider;

    invoke-static {v0, p0}, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->-$$Nest$mdestroyObserver(Lcom/android/launcher3/graphics/GridCustomizationsProvider;Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;)V

    .line 253
    :goto_0
    return v1
.end method
