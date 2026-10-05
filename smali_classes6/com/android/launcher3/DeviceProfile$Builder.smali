.class public Lcom/android/launcher3/DeviceProfile$Builder;
.super Ljava/lang/Object;
.source "DeviceProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/DeviceProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDotRendererCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/icons/DotRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private mInfo:Lcom/android/launcher3/util/DisplayController$Info;

.field private mInv:Lcom/android/launcher3/InvariantDeviceProfile;

.field private mIsGestureMode:Ljava/lang/Boolean;

.field private mIsMultiDisplay:Z

.field private mIsMultiWindowMode:Z

.field private mIsTransientTaskbar:Z

.field private mOverrideProvider:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/launcher3/DeviceProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mTransposeLayoutWithOrientation:Ljava/lang/Boolean;

.field private mViewScaleProvider:Lcom/android/launcher3/DeviceProfile$ViewScaleProvider;

.field private mWindowBounds:Lcom/android/launcher3/util/WindowBounds;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/util/DisplayController$Info;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inv"    # Lcom/android/launcher3/InvariantDeviceProfile;
    .param p3, "info"    # Lcom/android/launcher3/util/DisplayController$Info;

    .line 2289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mIsMultiWindowMode:Z

    .line 2281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mViewScaleProvider:Lcom/android/launcher3/DeviceProfile$ViewScaleProvider;

    .line 2290
    iput-object p1, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mContext:Landroid/content/Context;

    .line 2291
    iput-object p2, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mInv:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 2292
    iput-object p3, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    .line 2293
    invoke-virtual {p3}, Lcom/android/launcher3/util/DisplayController$Info;->isTransientTaskbar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mIsTransientTaskbar:Z

    .line 2294
    return-void
.end method


# virtual methods
.method public build()Lcom/android/launcher3/DeviceProfile;
    .locals 14

    .line 2354
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mWindowBounds:Lcom/android/launcher3/util/WindowBounds;

    if-eqz v0, :cond_5

    .line 2357
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mTransposeLayoutWithOrientation:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 2358
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/DisplayController$Info;->isTablet(Lcom/android/launcher3/util/WindowBounds;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mTransposeLayoutWithOrientation:Ljava/lang/Boolean;

    .line 2360
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mIsGestureMode:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 2361
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    iget-object v0, v0, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/NavigationMode;

    iget-boolean v0, v0, Lcom/android/launcher3/util/NavigationMode;->hasGestures:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mIsGestureMode:Ljava/lang/Boolean;

    .line 2363
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mDotRendererCache:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    .line 2364
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mDotRendererCache:Landroid/util/SparseArray;

    .line 2366
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mViewScaleProvider:Lcom/android/launcher3/DeviceProfile$ViewScaleProvider;

    if-nez v0, :cond_3

    .line 2367
    sget-object v0, Lcom/android/launcher3/DeviceProfile;->DEFAULT_PROVIDER:Lcom/android/launcher3/DeviceProfile$ViewScaleProvider;

    iput-object v0, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mViewScaleProvider:Lcom/android/launcher3/DeviceProfile$ViewScaleProvider;

    .line 2369
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mOverrideProvider:Ljava/util/function/Consumer;

    if-nez v0, :cond_4

    .line 2370
    sget-object v0, Lcom/android/launcher3/DeviceProfile;->DEFAULT_DIMENSION_PROVIDER:Ljava/util/function/Consumer;

    iput-object v0, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mOverrideProvider:Ljava/util/function/Consumer;

    .line 2372
    :cond_4
    new-instance v0, Lcom/android/launcher3/DeviceProfile;

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mInv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    iget-object v5, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mWindowBounds:Lcom/android/launcher3/util/WindowBounds;

    iget-object v6, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mDotRendererCache:Landroid/util/SparseArray;

    iget-boolean v7, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mIsMultiWindowMode:Z

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mTransposeLayoutWithOrientation:Ljava/lang/Boolean;

    .line 2373
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iget-boolean v9, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mIsMultiDisplay:Z

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mIsGestureMode:Ljava/lang/Boolean;

    .line 2374
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iget-object v11, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mViewScaleProvider:Lcom/android/launcher3/DeviceProfile$ViewScaleProvider;

    iget-object v12, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mOverrideProvider:Ljava/util/function/Consumer;

    iget-boolean v13, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mIsTransientTaskbar:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/launcher3/DeviceProfile;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/util/DisplayController$Info;Lcom/android/launcher3/util/WindowBounds;Landroid/util/SparseArray;ZZZZLcom/android/launcher3/DeviceProfile$ViewScaleProvider;Ljava/util/function/Consumer;Z)V

    .line 2372
    return-object v0

    .line 2355
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Window bounds not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDotRendererCache(Landroid/util/SparseArray;)Lcom/android/launcher3/DeviceProfile$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/icons/DotRenderer;",
            ">;)",
            "Lcom/android/launcher3/DeviceProfile$Builder;"
        }
    .end annotation

    .line 2307
    .local p1, "dotRendererCache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/launcher3/icons/DotRenderer;>;"
    iput-object p1, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mDotRendererCache:Landroid/util/SparseArray;

    .line 2308
    return-object p0
.end method

.method public setGestureMode(Z)Lcom/android/launcher3/DeviceProfile$Builder;
    .locals 1
    .param p1, "isGestureMode"    # Z

    .line 2322
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mIsGestureMode:Ljava/lang/Boolean;

    .line 2323
    return-object p0
.end method

.method public setIsMultiDisplay(Z)Lcom/android/launcher3/DeviceProfile$Builder;
    .locals 0
    .param p1, "isMultiDisplay"    # Z

    .line 2302
    iput-boolean p1, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mIsMultiDisplay:Z

    .line 2303
    return-object p0
.end method

.method public setIsTransientTaskbar(Z)Lcom/android/launcher3/DeviceProfile$Builder;
    .locals 0
    .param p1, "isTransientTaskbar"    # Z

    .line 2349
    iput-boolean p1, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mIsTransientTaskbar:Z

    .line 2350
    return-object p0
.end method

.method public setMultiWindowMode(Z)Lcom/android/launcher3/DeviceProfile$Builder;
    .locals 0
    .param p1, "isMultiWindowMode"    # Z

    .line 2297
    iput-boolean p1, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mIsMultiWindowMode:Z

    .line 2298
    return-object p0
.end method

.method public setTransposeLayoutWithOrientation(Z)Lcom/android/launcher3/DeviceProfile$Builder;
    .locals 1
    .param p1, "transposeLayoutWithOrientation"    # Z

    .line 2317
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mTransposeLayoutWithOrientation:Ljava/lang/Boolean;

    .line 2318
    return-object p0
.end method

.method public setViewScaleProvider(Lcom/android/launcher3/DeviceProfile$ViewScaleProvider;)Lcom/android/launcher3/DeviceProfile$Builder;
    .locals 0
    .param p1, "viewScaleProvider"    # Lcom/android/launcher3/DeviceProfile$ViewScaleProvider;

    .line 2340
    iput-object p1, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mViewScaleProvider:Lcom/android/launcher3/DeviceProfile$ViewScaleProvider;

    .line 2341
    return-object p0
.end method

.method public setWindowBounds(Lcom/android/launcher3/util/WindowBounds;)Lcom/android/launcher3/DeviceProfile$Builder;
    .locals 0
    .param p1, "bounds"    # Lcom/android/launcher3/util/WindowBounds;

    .line 2312
    iput-object p1, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mWindowBounds:Lcom/android/launcher3/util/WindowBounds;

    .line 2313
    return-object p0
.end method

.method public withDimensionsOverride(Ljava/util/function/Consumer;)Lcom/android/launcher3/DeviceProfile$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/launcher3/DeviceProfile;",
            ">;)",
            "Lcom/android/launcher3/DeviceProfile$Builder;"
        }
    .end annotation

    .line 2327
    .local p1, "overrideProvider":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/launcher3/DeviceProfile;>;"
    iput-object p1, p0, Lcom/android/launcher3/DeviceProfile$Builder;->mOverrideProvider:Ljava/util/function/Consumer;

    .line 2328
    return-object p0
.end method
