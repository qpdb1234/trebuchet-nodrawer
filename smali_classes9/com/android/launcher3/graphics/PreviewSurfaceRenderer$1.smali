.class Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;
.super Lcom/android/launcher3/model/LoaderTask;
.source "PreviewSurfaceRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->loadModelData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

.field final synthetic val$idp:Lcom/android/launcher3/InvariantDeviceProfile;

.field final synthetic val$previewContext:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;


# direct methods
.method public static synthetic $r8$lambda$cHp5di9yQ399MWg-ATJD-DpEKQE(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;Landroid/util/SparseArray;Lcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->lambda$run$0(Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;Landroid/util/SparseArray;Lcom/android/launcher3/InvariantDeviceProfile;)V

    return-void
.end method

.method constructor <init>(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelDelegate;Lcom/android/launcher3/model/LauncherBinder;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;
    .param p2, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p3, "bgAllAppsList"    # Lcom/android/launcher3/model/AllAppsList;
    .param p4, "bgModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p5, "modelDelegate"    # Lcom/android/launcher3/model/ModelDelegate;
    .param p6, "launcherBinder"    # Lcom/android/launcher3/model/LauncherBinder;

    .line 245
    iput-object p1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->this$0:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    iput-object p7, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->val$idp:Lcom/android/launcher3/InvariantDeviceProfile;

    iput-object p8, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->val$previewContext:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/model/LoaderTask;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelDelegate;Lcom/android/launcher3/model/LauncherBinder;)V

    return-void
.end method

.method private synthetic lambda$run$0(Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;Landroid/util/SparseArray;Lcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 6
    .param p1, "previewContext"    # Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;
    .param p2, "spanInfo"    # Landroid/util/SparseArray;
    .param p3, "idp"    # Lcom/android/launcher3/InvariantDeviceProfile;

    .line 264
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->this$0:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    iget-object v2, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->mWidgetProvidersMap:Ljava/util/Map;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->-$$Nest$mrenderView(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;Ljava/util/Map;Landroid/util/SparseArray;Lcom/android/launcher3/InvariantDeviceProfile;)V

    .line 266
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->this$0:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    invoke-static {v0}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->-$$Nest$fgetmOnDestroyCallbacks(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;)Lcom/android/launcher3/util/RunnableList;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    .line 267
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 249
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->val$idp:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->val$previewContext:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 250
    .local v0, "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    const-string v1, "screen = 0 or container = -101"

    .line 254
    .local v1, "query":Ljava/lang/String;
    iget-boolean v2, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v2, :cond_0

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or screen = 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 258
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3, v3}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->loadWorkspace(Ljava/util/List;Ljava/lang/String;Lcom/android/launcher3/model/LoaderMemoryLogger;Lcom/android/launcher3/backuprestore/LauncherRestoreEventLogger;)V

    .line 260
    iget-object v2, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->this$0:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    iget-object v3, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->val$previewContext:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    .line 261
    invoke-virtual {v3}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->getLoadedLauncherWidgetInfo(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v2

    .line 263
    .local v2, "spanInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Size;>;"
    sget-object v3, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object v4, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->val$previewContext:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    iget-object v5, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->val$idp:Lcom/android/launcher3/InvariantDeviceProfile;

    new-instance v6, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v4, v2, v5}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;Landroid/util/SparseArray;Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-virtual {v3, v6}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 268
    return-void
.end method
