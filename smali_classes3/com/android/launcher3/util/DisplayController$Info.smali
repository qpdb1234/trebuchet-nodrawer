.class public Lcom/android/launcher3/util/DisplayController$Info;
.super Ljava/lang/Object;
.source "DisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/DisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field public final currentSize:Landroid/graphics/Point;

.field public final cutout:Landroid/graphics/Rect;

.field private final densityDpi:I

.field public final fontScale:F

.field private final mIsTaskbarPinned:Z

.field private final mPerDisplayBounds:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/launcher3/util/window/CachedDisplayInfo;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/util/WindowBounds;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mScreenSizeDp:Lcom/android/launcher3/util/DisplayController$PortraitSize;

.field public final navigationMode:Lcom/android/launcher3/util/NavigationMode;

.field public final normalizedDisplayInfo:Lcom/android/launcher3/util/window/CachedDisplayInfo;

.field public final realBounds:Lcom/android/launcher3/util/WindowBounds;

.field public final rotation:I

.field public final supportedBounds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/launcher3/util/WindowBounds;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetdensityDpi(Lcom/android/launcher3/util/DisplayController$Info;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->densityDpi:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsTaskbarPinned(Lcom/android/launcher3/util/DisplayController$Info;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->mIsTaskbarPinned:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPerDisplayBounds(Lcom/android/launcher3/util/DisplayController$Info;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->mPerDisplayBounds:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenSizeDp(Lcom/android/launcher3/util/DisplayController$Info;)Lcom/android/launcher3/util/DisplayController$PortraitSize;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->mScreenSizeDp:Lcom/android/launcher3/util/DisplayController$PortraitSize;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "displayInfoContext"    # Landroid/content/Context;

    .line 357
    new-instance v0, Lcom/android/launcher3/util/window/WindowManagerProxy;

    invoke-direct {v0}, Lcom/android/launcher3/util/window/WindowManagerProxy;-><init>()V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/util/DisplayController$Info;-><init>(Landroid/content/Context;Lcom/android/launcher3/util/window/WindowManagerProxy;Ljava/util/Map;)V

    .line 358
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/util/window/WindowManagerProxy;Ljava/util/Map;)V
    .locals 10
    .param p1, "displayInfoContext"    # Landroid/content/Context;
    .param p2, "wmProxy"    # Lcom/android/launcher3/util/window/WindowManagerProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/util/window/WindowManagerProxy;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/window/CachedDisplayInfo;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/util/WindowBounds;",
            ">;>;)V"
        }
    .end annotation

    .line 363
    .local p3, "perDisplayBoundsCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/util/window/CachedDisplayInfo;Ljava/util/List<Lcom/android/launcher3/util/WindowBounds;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    .line 350
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/util/DisplayController$Info;->mPerDisplayBounds:Landroid/util/ArrayMap;

    .line 364
    invoke-virtual {p2, p1}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDisplayInfo(Landroid/content/Context;)Lcom/android/launcher3/util/window/CachedDisplayInfo;

    move-result-object v2

    .line 365
    .local v2, "displayInfo":Lcom/android/launcher3/util/window/CachedDisplayInfo;
    invoke-virtual {v2, p2}, Lcom/android/launcher3/util/window/CachedDisplayInfo;->normalize(Lcom/android/launcher3/util/window/WindowManagerProxy;)Lcom/android/launcher3/util/window/CachedDisplayInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/util/DisplayController$Info;->normalizedDisplayInfo:Lcom/android/launcher3/util/window/CachedDisplayInfo;

    .line 366
    iget v4, v2, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    iput v4, p0, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    .line 367
    iget-object v4, v2, Lcom/android/launcher3/util/window/CachedDisplayInfo;->size:Landroid/graphics/Point;

    iput-object v4, p0, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    .line 368
    iget-object v4, v2, Lcom/android/launcher3/util/window/CachedDisplayInfo;->cutout:Landroid/view/DisplayCutout;

    invoke-static {v4}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getSafeInsets(Landroid/view/DisplayCutout;)Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/util/DisplayController$Info;->cutout:Landroid/graphics/Rect;

    .line 370
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 371
    .local v4, "config":Landroid/content/res/Configuration;
    iget v5, v4, Landroid/content/res/Configuration;->fontScale:F

    iput v5, p0, Lcom/android/launcher3/util/DisplayController$Info;->fontScale:F

    .line 372
    iget v5, v4, Landroid/content/res/Configuration;->densityDpi:I

    iput v5, p0, Lcom/android/launcher3/util/DisplayController$Info;->densityDpi:I

    .line 373
    new-instance v5, Lcom/android/launcher3/util/DisplayController$PortraitSize;

    iget v6, v4, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v7, v4, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-direct {v5, v6, v7}, Lcom/android/launcher3/util/DisplayController$PortraitSize;-><init>(II)V

    iput-object v5, p0, Lcom/android/launcher3/util/DisplayController$Info;->mScreenSizeDp:Lcom/android/launcher3/util/DisplayController$PortraitSize;

    .line 374
    invoke-virtual {p2, p1}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/NavigationMode;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/NavigationMode;

    .line 376
    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 377
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 379
    .local v5, "cachedValue":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/util/WindowBounds;>;"
    invoke-virtual {p2, p1, v2}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getRealBounds(Landroid/content/Context;Lcom/android/launcher3/util/window/CachedDisplayInfo;)Lcom/android/launcher3/util/WindowBounds;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/util/DisplayController$Info;->realBounds:Lcom/android/launcher3/util/WindowBounds;

    .line 380
    if-nez v5, :cond_0

    .line 382
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected normalizedDisplayInfo found, invalidating cache: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DisplayController"

    invoke-static {v8, v7}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(Invalid Cache) perDisplayBounds : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 386
    invoke-virtual {p2, p1}, Lcom/android/launcher3/util/window/WindowManagerProxy;->estimateInternalDisplayBounds(Landroid/content/Context;)Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 387
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    check-cast v5, Ljava/util/List;

    .line 388
    if-nez v5, :cond_0

    .line 389
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "normalizedDisplayInfo not found in estimation: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 395
    :cond_0
    if-eqz v5, :cond_1

    .line 397
    iget v7, v2, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/util/WindowBounds;

    .line 398
    .local v7, "expectedBounds":Lcom/android/launcher3/util/WindowBounds;
    invoke-virtual {v6, v7}, Lcom/android/launcher3/util/WindowBounds;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 399
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 400
    .local v8, "clone":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/util/WindowBounds;>;"
    iget v9, v2, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    invoke-interface {v8, v9, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 401
    invoke-virtual {v1, v3, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    .end local v7    # "expectedBounds":Lcom/android/launcher3/util/WindowBounds;
    .end local v8    # "clone":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/util/WindowBounds;>;"
    :cond_1
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/launcher3/util/DisplayController$Info$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/android/launcher3/util/DisplayController$Info$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 412
    invoke-static {p1}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherPrefs;->TASKBAR_PINNING:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/util/DisplayController$Info;->mIsTaskbarPinned:Z

    .line 413
    return-void
.end method


# virtual methods
.method public getAllDisplays()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/launcher3/util/window/CachedDisplayInfo;",
            ">;"
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lcom/android/launcher3/util/DisplayController$Info;->mPerDisplayBounds:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDensityDpi()I
    .locals 1

    .line 467
    iget v0, p0, Lcom/android/launcher3/util/DisplayController$Info;->densityDpi:I

    return v0
.end method

.method public getNavigationMode()Lcom/android/launcher3/util/NavigationMode;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/NavigationMode;

    return-object v0
.end method

.method public isPinnedTaskbar()Z
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/NavigationMode;

    sget-object v1, Lcom/android/launcher3/util/NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/NavigationMode;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/util/DisplayController$Info;->isTransientTaskbar()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTablet(Lcom/android/launcher3/util/WindowBounds;)Z
    .locals 2
    .param p1, "bounds"    # Lcom/android/launcher3/util/WindowBounds;

    .line 444
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/DisplayController$Info;->smallestSizeDp(Lcom/android/launcher3/util/WindowBounds;)F

    move-result v0

    const/high16 v1, 0x44160000    # 600.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTransientTaskbar()Z
    .locals 2

    .line 419
    iget-object v0, p0, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/NavigationMode;

    sget-object v1, Lcom/android/launcher3/util/NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/NavigationMode;

    if-eq v0, v1, :cond_0

    .line 420
    const/4 v0, 0x0

    return v0

    .line 422
    :cond_0
    invoke-static {}, Lcom/android/launcher3/Utilities;->isRunningInTestHarness()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->-$$Nest$sfgetsTransientTaskbarStatusForTests()Z

    move-result v0

    return v0

    .line 428
    :cond_1
    invoke-static {}, Lcom/android/launcher3/config/FeatureFlags;->enableTaskbarPinning()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 429
    iget-boolean v0, p0, Lcom/android/launcher3/util/DisplayController$Info;->mIsTaskbarPinned:Z

    xor-int/2addr v0, v1

    return v0

    .line 431
    :cond_2
    return v1
.end method

.method public smallestSizeDp(Lcom/android/launcher3/util/WindowBounds;)F
    .locals 2
    .param p1, "bounds"    # Lcom/android/launcher3/util/WindowBounds;

    .line 456
    iget-object v0, p1, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p1, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/util/DisplayController$Info;->densityDpi:I

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->dpiFromPx(FI)F

    move-result v0

    return v0
.end method
