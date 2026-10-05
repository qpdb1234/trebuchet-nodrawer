.class public Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;
.super Ljava/lang/Object;
.source "PreviewSurfaceRenderer.java"


# static fields
.field private static final FADE_IN_ANIMATION_DURATION:I = 0xc8

.field private static final KEY_COLORS:Ljava/lang/String; = "wallpaper_colors"

.field private static final KEY_DISPLAY_ID:Ljava/lang/String; = "display_id"

.field private static final KEY_HOST_TOKEN:Ljava/lang/String; = "host_token"

.field private static final KEY_VIEW_HEIGHT:Ljava/lang/String; = "height"

.field private static final KEY_VIEW_WIDTH:Ljava/lang/String; = "width"

.field private static final TAG:Ljava/lang/String; = "PreviewSurfaceRenderer"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private final mDisplay:Landroid/view/Display;

.field private mGridName:Ljava/lang/String;

.field private final mHeight:I

.field private mHideQsb:Z

.field private final mHostToken:Landroid/os/IBinder;

.field private final mOnDestroyCallbacks:Lcom/android/launcher3/util/RunnableList;

.field private mRenderer:Lcom/android/launcher3/graphics/LauncherPreviewRenderer;

.field private final mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

.field private final mWallpaperColors:Landroid/app/WallpaperColors;

.field private final mWidth:I


# direct methods
.method public static synthetic $r8$lambda$441x8aaX5P3b7W8a70mvhP_H0wI(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->loadModelData()V

    return-void
.end method

.method public static synthetic $r8$lambda$8PIlNZUglVn5s9AhHx4H7dPMrrY(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/model/BgDataModel;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->lambda$loadModelData$2(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/model/BgDataModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KQXP4lvCKkLS6Ujf9uIbyBR-Yms(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->lambda$loadModelData$1(Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/InvariantDeviceProfile;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ez0Xa7xfFlIsz_RXoWcP_G9F1cw(Landroid/view/SurfaceControlViewHost;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost;->release()V

    return-void
.end method

.method public static synthetic $r8$lambda$qF-nq7pp_rUpOe9QplycHlJiKYU(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;Landroid/content/Context;)Landroid/view/SurfaceControlViewHost;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->lambda$new$0(Landroid/content/Context;)Landroid/view/SurfaceControlViewHost;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnDestroyCallbacks(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;)Lcom/android/launcher3/util/RunnableList;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mOnDestroyCallbacks:Lcom/android/launcher3/util/RunnableList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrenderView(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;Ljava/util/Map;Landroid/util/SparseArray;Lcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->renderView(Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;Ljava/util/Map;Landroid/util/SparseArray;Lcom/android/launcher3/InvariantDeviceProfile;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mOnDestroyCallbacks:Lcom/android/launcher3/util/RunnableList;

    .line 96
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mDestroyed:Z

    .line 101
    iput-object p1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mContext:Landroid/content/Context;

    .line 102
    const-string v1, "name"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mGridName:Ljava/lang/String;

    .line 103
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mGridName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 105
    invoke-static {p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getCurrentGridName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mGridName:Ljava/lang/String;

    .line 107
    :cond_0
    const-string v1, "wallpaper_colors"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperColors;

    iput-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mWallpaperColors:Landroid/app/WallpaperColors;

    .line 108
    const-string v1, "hide_bottom_row"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mHideQsb:Z

    .line 110
    const-string v1, "host_token"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mHostToken:Landroid/os/IBinder;

    .line 111
    const-string v1, "width"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mWidth:I

    .line 112
    const-string v1, "height"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mHeight:I

    .line 113
    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 114
    const-string v2, "display_id"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mDisplay:Landroid/view/Display;

    .line 116
    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 119
    const-wide/16 v3, 0x5

    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControlViewHost;

    iput-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    .line 120
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda4;-><init>(Landroid/view/SurfaceControlViewHost;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method

.method private getPreviewContext()Landroid/content/Context;
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    .line 209
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mWallpaperColors:Landroid/app/WallpaperColors;

    if-nez v1, :cond_0

    .line 210
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 211
    invoke-static {v0}, Lcom/android/launcher3/util/Themes;->getActivityThemeRes(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 210
    return-object v1

    .line 213
    :cond_0
    const/16 v1, 0x7f6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v0

    .line 214
    invoke-static {v0}, Lcom/android/launcher3/widget/LocalColorExtractor;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/widget/LocalColorExtractor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mWallpaperColors:Landroid/app/WallpaperColors;

    .line 215
    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/widget/LocalColorExtractor;->applyColorsOverride(Landroid/content/Context;Landroid/app/WallpaperColors;)V

    .line 216
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mWallpaperColors:Landroid/app/WallpaperColors;

    .line 217
    invoke-virtual {v2}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/launcher3/util/Themes;->getActivityThemeRes(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 216
    return-object v1
.end method

.method private synthetic lambda$loadModelData$1(Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 6
    .param p1, "inflationContext"    # Landroid/content/Context;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p3, "idp"    # Lcom/android/launcher3/InvariantDeviceProfile;

    .line 273
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->renderView(Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;Ljava/util/Map;Landroid/util/SparseArray;Lcom/android/launcher3/InvariantDeviceProfile;)V

    return-void
.end method

.method private synthetic lambda$loadModelData$2(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/model/BgDataModel;)V
    .locals 2
    .param p1, "inflationContext"    # Landroid/content/Context;
    .param p2, "idp"    # Lcom/android/launcher3/InvariantDeviceProfile;
    .param p3, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;

    .line 272
    if-eqz p3, :cond_0

    .line 273
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 276
    :cond_0
    const-string v0, "PreviewSurfaceRenderer"

    const-string v1, "Model loading failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/content/Context;)Landroid/view/SurfaceControlViewHost;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 117
    new-instance v0, Landroid/view/SurfaceControlViewHost;

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 118
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mHostToken:Landroid/os/IBinder;

    invoke-direct {v0, v1, v2, v3}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/os/IBinder;)V

    .line 117
    return-object v0
.end method

.method private loadModelData()V
    .locals 13

    .line 222
    invoke-direct {p0}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->getPreviewContext()Landroid/content/Context;

    move-result-object v0

    .line 223
    .local v0, "inflationContext":Landroid/content/Context;
    new-instance v1, Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v2, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mGridName:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 224
    .local v1, "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    invoke-static {v0, v1}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->needsToMigrate(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    new-instance v11, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    invoke-direct {v11, v0, v1}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V

    .line 228
    .local v11, "previewContext":Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;
    iget-object v2, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    .line 229
    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lcom/android/launcher3/model/ModelDbController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/model/ModelDbController;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 231
    invoke-static {v11}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    .line 232
    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lcom/android/launcher3/model/ModelDbController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/model/ModelDbController;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mContext:Landroid/content/Context;

    .line 228
    const-string v5, "favorites"

    invoke-static {v2, v5, v3, v5, v4}, Lcom/android/launcher3/provider/LauncherDbUtils;->copyTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/Context;)V

    .line 235
    invoke-static {v11}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    .line 236
    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lcom/android/launcher3/model/ModelDbController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/model/ModelDbController;->clearEmptyDbFlag()V

    .line 238
    new-instance v2, Lcom/android/launcher3/model/BgDataModel;

    invoke-direct {v2}, Lcom/android/launcher3/model/BgDataModel;-><init>()V

    .line 239
    .local v2, "bgModel":Lcom/android/launcher3/model/BgDataModel;
    new-instance v12, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;

    .line 240
    invoke-static {v11}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    const/4 v6, 0x0

    .line 243
    invoke-static {v11}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherModel;->getModelDelegate()Lcom/android/launcher3/model/ModelDelegate;

    move-result-object v8

    new-instance v9, Lcom/android/launcher3/model/LauncherBinder;

    .line 244
    invoke-static {v11}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/android/launcher3/model/BgDataModel$Callbacks;

    const/4 v7, 0x0

    invoke-direct {v9, v3, v2, v7, v4}, Lcom/android/launcher3/model/LauncherBinder;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;[Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    move-object v3, v12

    move-object v4, p0

    move-object v7, v2

    move-object v10, v1

    invoke-direct/range {v3 .. v11}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;-><init>(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelDelegate;Lcom/android/launcher3/model/LauncherBinder;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;)V

    .line 269
    invoke-virtual {v12}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->run()V

    .line 270
    .end local v2    # "bgModel":Lcom/android/launcher3/model/BgDataModel;
    .end local v11    # "previewContext":Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;
    goto :goto_0

    .line 271
    :cond_0
    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/LauncherModel;->loadAsync(Ljava/util/function/Consumer;)V

    .line 280
    :goto_0
    return-void
.end method

.method private renderView(Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;Ljava/util/Map;Landroid/util/SparseArray;Lcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 6
    .param p1, "inflationContext"    # Landroid/content/Context;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p5, "idp"    # Lcom/android/launcher3/InvariantDeviceProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/model/BgDataModel;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/util/Size;",
            ">;",
            "Lcom/android/launcher3/InvariantDeviceProfile;",
            ")V"
        }
    .end annotation

    .line 286
    .local p3, "widgetProviderInfoMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/util/ComponentKey;Landroid/appwidget/AppWidgetProviderInfo;>;"
    .local p4, "launcherWidgetSpanInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Size;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 287
    return-void

    .line 289
    :cond_0
    new-instance v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mWallpaperColors:Landroid/app/WallpaperColors;

    invoke-direct {v0, p1, p5, v1, p4}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Landroid/app/WallpaperColors;Landroid/util/SparseArray;)V

    iput-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mRenderer:Lcom/android/launcher3/graphics/LauncherPreviewRenderer;

    .line 291
    iget-boolean v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mHideQsb:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->hideBottomRow(Z)V

    .line 292
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mRenderer:Lcom/android/launcher3/graphics/LauncherPreviewRenderer;

    invoke-virtual {v0, p2, p3}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->getRenderedView(Lcom/android/launcher3/model/BgDataModel;Ljava/util/Map;)Landroid/view/View;

    move-result-object v0

    .line 294
    .local v0, "view":Landroid/view/View;
    iget v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mWidth:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mHeight:I

    int-to-float v2, v2

    .line 295
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 294
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 296
    .local v1, "scale":F
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 297
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 298
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 299
    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    .line 300
    iget v3, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mWidth:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 301
    iget v3, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mHeight:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    sub-float/2addr v3, v5

    div-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 302
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 303
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 304
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 305
    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 306
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 307
    iget-object v2, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;II)V

    .line 308
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mDestroyed:Z

    .line 141
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mOnDestroyCallbacks:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {v0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    .line 142
    return-void
.end method

.method public getDisplayId()I
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    return v0
.end method

.method public getHostToken()Landroid/os/IBinder;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mHostToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public getLoadedLauncherWidgetInfo(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 154
    const-string v0, "spanY"

    const-string v1, "spanX"

    const-string v2, "appWidgetId"

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 155
    .local v3, "widgetInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Size;>;"
    const-string v4, "itemType = 4"

    .line 158
    .local v4, "query":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mContext:Landroid/content/Context;

    .line 159
    invoke-static {v5}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lcom/android/launcher3/model/ModelDbController;

    move-result-object v5

    .line 160
    .local v5, "mainController":Lcom/android/launcher3/model/ModelDbController;
    :try_start_0
    const-string v7, "favorites"

    const/4 v6, 0x3

    new-array v8, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v8, v6

    const/4 v6, 0x1

    aput-object v1, v8, v6

    const/4 v6, 0x2

    aput-object v0, v8, v6

    const-string v9, "itemType = 4"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher3/model/ModelDbController;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .local v6, "c":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 168
    .local v2, "appWidgetIdIndex":I
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 169
    .local v1, "spanXIndex":I
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 170
    .local v0, "spanYIndex":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 171
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 172
    .local v7, "appWidgetId":I
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 173
    .local v8, "spanX":I
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 175
    .local v9, "spanY":I
    new-instance v10, Landroid/util/Size;

    invoke-direct {v10, v8, v9}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v3, v7, v10}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    .end local v7    # "appWidgetId":I
    .end local v8    # "spanX":I
    .end local v9    # "spanY":I
    goto :goto_0

    .line 177
    .end local v0    # "spanYIndex":I
    .end local v1    # "spanXIndex":I
    .end local v2    # "appWidgetIdIndex":I
    :cond_0
    if-eqz v6, :cond_1

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 180
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    nop

    .line 182
    return-object v3

    .line 160
    .restart local v6    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "widgetInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Size;>;"
    .end local v4    # "query":Ljava/lang/String;
    .end local v5    # "mainController":Lcom/android/launcher3/model/ModelDbController;
    .end local p1    # "context":Landroid/content/Context;
    :cond_2
    :goto_1
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 177
    .end local v6    # "c":Landroid/database/Cursor;
    .restart local v3    # "widgetInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Size;>;"
    .restart local v4    # "query":Ljava/lang/String;
    .restart local v5    # "mainController":Lcom/android/launcher3/model/ModelDbController;
    .restart local p1    # "context":Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PreviewSurfaceRenderer"

    const-string v2, "Error querying for launcher widget info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v0

    return-object v0
.end method

.method public hideBottomRow(Z)V
    .locals 1
    .param p1, "hide"    # Z

    .line 198
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mRenderer:Lcom/android/launcher3/graphics/LauncherPreviewRenderer;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0, p1}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->hideBottomRow(Z)V

    .line 201
    :cond_0
    return-void
.end method

.method public loadAsync()V
    .locals 2

    .line 189
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 190
    return-void
.end method
