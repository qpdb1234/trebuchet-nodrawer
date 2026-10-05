.class public Lcom/android/launcher3/util/window/WindowManagerProxy;
.super Ljava/lang/Object;
.source "WindowManagerProxy.java"

# interfaces
.implements Lcom/android/launcher3/util/ResourceBasedOverride;


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/launcher3/util/window/WindowManagerProxy;",
            ">;"
        }
    .end annotation
.end field

.field public static final MIN_TABLET_WIDTH:I = 0x258

.field private static final TAG:Ljava/lang/String; = "WindowManagerProxy"


# instance fields
.field protected final mTaskbarDrawnInProcess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    sget v0, Lcom/android/launcher3/R$string;->window_manager_proxy_class:I

    .line 76
    const-class v1, Lcom/android/launcher3/util/window/WindowManagerProxy;

    invoke-static {v1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->forOverride(Ljava/lang/Class;I)Lcom/android/launcher3/util/MainThreadInitializedObject;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/util/window/WindowManagerProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/window/WindowManagerProxy;-><init>(Z)V

    .line 90
    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 0
    .param p1, "taskbarDrawnInProcess"    # Z

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-boolean p1, p0, Lcom/android/launcher3/util/window/WindowManagerProxy;->mTaskbarDrawnInProcess:Z

    .line 94
    return-void
.end method

.method private static applyDisplayCutoutBottomInsetOverrideOnLargeScreen(Landroid/content/Context;ZILandroid/view/WindowInsets;Landroid/view/WindowInsets$Builder;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isLargeScreen"    # Z
    .param p2, "screenWidthPx"    # I
    .param p3, "windowInsets"    # Landroid/view/WindowInsets;
    .param p4, "insetsBuilder"    # Landroid/view/WindowInsets$Builder;

    .line 204
    if-eqz p1, :cond_3

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {p3}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 209
    .local v0, "displayCutout":Landroid/view/DisplayCutout;
    if-nez v0, :cond_1

    .line 210
    return-void

    .line 213
    :cond_1
    nop

    .line 214
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 213
    invoke-static {v1, p2, v2}, Lcom/android/launcher3/util/window/WindowManagerProxy;->areBottomDisplayCutoutsSmallAndAtCorners(Landroid/graphics/Rect;ILandroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 215
    return-void

    .line 218
    :cond_2
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    .line 219
    .local v1, "oldDisplayCutoutInset":Landroid/graphics/Insets;
    iget v2, v1, Landroid/graphics/Insets;->left:I

    iget v3, v1, Landroid/graphics/Insets;->top:I

    iget v4, v1, Landroid/graphics/Insets;->right:I

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v2

    .line 224
    .local v2, "newDisplayCutoutInset":Landroid/graphics/Insets;
    nop

    .line 225
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v3

    .line 224
    invoke-virtual {p4, v3, v2}, Landroid/view/WindowInsets$Builder;->setInsetsIgnoringVisibility(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    .line 226
    return-void

    .line 205
    .end local v0    # "displayCutout":Landroid/view/DisplayCutout;
    .end local v1    # "oldDisplayCutoutInset":Landroid/graphics/Insets;
    .end local v2    # "newDisplayCutoutInset":Landroid/graphics/Insets;
    :cond_3
    :goto_0
    return-void
.end method

.method static areBottomDisplayCutoutsSmallAndAtCorners(Landroid/graphics/Rect;II)Z
    .locals 3
    .param p0, "cutoutRectBottom"    # Landroid/graphics/Rect;
    .param p1, "screenWidthPx"    # I
    .param p2, "maxWidthAndHeightOfSmallCutoutPx"    # I

    .line 252
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 253
    return v1

    .line 255
    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-le v0, p2, :cond_1

    iget v0, p0, Landroid/graphics/Rect;->left:I

    sub-int v2, p1, p2

    if-lt v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private static areBottomDisplayCutoutsSmallAndAtCorners(Landroid/graphics/Rect;ILandroid/content/res/Resources;)Z
    .locals 1
    .param p0, "cutoutRectBottom"    # Landroid/graphics/Rect;
    .param p1, "screenWidthPx"    # I
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 233
    sget v0, Lcom/android/launcher3/R$dimen;->max_width_and_height_of_small_display_cutout:I

    .line 234
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 233
    invoke-static {p0, p1, v0}, Lcom/android/launcher3/util/window/WindowManagerProxy;->areBottomDisplayCutoutsSmallAndAtCorners(Landroid/graphics/Rect;II)Z

    move-result v0

    return v0
.end method

.method public static getSafeInsets(Landroid/view/DisplayCutout;)Landroid/graphics/Rect;
    .locals 5
    .param p0, "cutout"    # Landroid/view/DisplayCutout;

    .line 474
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    .line 475
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 474
    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/launcher3/util/window/WindowManagerProxy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 84
    const-class v0, Lcom/android/launcher3/util/window/WindowManagerProxy;

    sget v1, Lcom/android/launcher3/R$string;->window_manager_proxy_class:I

    invoke-static {v0, p0, v1}, Lcom/android/launcher3/util/ResourceBasedOverride$Overrides;->getObject(Ljava/lang/Class;Landroid/content/Context;I)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/window/WindowManagerProxy;

    return-object v0
.end method


# virtual methods
.method public estimateInternalDisplayBounds(Landroid/content/Context;)Landroid/util/ArrayMap;
    .locals 3
    .param p1, "displayInfoContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/ArrayMap<",
            "Lcom/android/launcher3/util/window/CachedDisplayInfo;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/util/WindowBounds;",
            ">;>;"
        }
    .end annotation

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDisplayInfo(Landroid/content/Context;)Lcom/android/launcher3/util/window/CachedDisplayInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/window/CachedDisplayInfo;->normalize(Lcom/android/launcher3/util/window/WindowManagerProxy;)Lcom/android/launcher3/util/window/CachedDisplayInfo;

    move-result-object v0

    .line 103
    .local v0, "info":Lcom/android/launcher3/util/window/CachedDisplayInfo;
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/util/window/WindowManagerProxy;->estimateWindowBounds(Landroid/content/Context;Lcom/android/launcher3/util/window/CachedDisplayInfo;)Ljava/util/List;

    move-result-object v1

    .line 104
    .local v1, "bounds":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/util/WindowBounds;>;"
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 105
    .local v2, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/launcher3/util/window/CachedDisplayInfo;Ljava/util/List<Lcom/android/launcher3/util/WindowBounds;>;>;"
    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-object v2
.end method

.method protected estimateWindowBounds(Landroid/content/Context;Lcom/android/launcher3/util/window/CachedDisplayInfo;)Ljava/util/List;
    .locals 30
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayInfo"    # Lcom/android/launcher3/util/window/CachedDisplayInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/util/window/CachedDisplayInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/util/WindowBounds;",
            ">;"
        }
    .end annotation

    .line 273
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v8, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 274
    .local v8, "densityDpi":I
    iget v9, v7, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    .line 276
    .local v9, "rotation":I
    iget-object v0, v7, Lcom/android/launcher3/util/window/CachedDisplayInfo;->size:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, v7, Lcom/android/launcher3/util/window/CachedDisplayInfo;->size:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 277
    .local v10, "minSize":I
    int-to-float v0, v10

    invoke-static {v0, v8}, Lcom/android/launcher3/Utilities;->dpiFromPx(FI)F

    move-result v0

    float-to-int v11, v0

    .line 281
    .local v11, "swDp":I
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 282
    .local v0, "conf":Landroid/content/res/Configuration;
    iput v11, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 283
    move-object/from16 v12, p1

    invoke-virtual {v12, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 286
    .end local v0    # "conf":Landroid/content/res/Configuration;
    .local v13, "systemRes":Landroid/content/res/Resources;
    const/16 v0, 0x258

    const/4 v1, 0x1

    const/4 v14, 0x0

    if-lt v11, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v14

    :goto_0
    move v15, v0

    .line 287
    .local v15, "isTablet":Z
    if-nez v15, :cond_2

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/util/window/WindowManagerProxy;->isGestureNav(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v14

    :cond_2
    :goto_1
    move/from16 v16, v1

    .line 292
    .local v16, "isTabletOrGesture":Z
    const-string v0, "status_bar_height_portrait"

    const-string v1, "status_bar_height"

    invoke-virtual {v6, v13, v0, v1}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDimenByName(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    .line 294
    .local v17, "statusBarHeightPortrait":I
    const-string v0, "status_bar_height_landscape"

    invoke-virtual {v6, v13, v0, v1}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDimenByName(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 299
    .local v18, "statusBarHeightLandscape":I
    if-eqz v15, :cond_4

    .line 300
    iget-boolean v0, v6, Lcom/android/launcher3/util/window/WindowManagerProxy;->mTaskbarDrawnInProcess:Z

    if-eqz v0, :cond_3

    .line 301
    move v0, v14

    goto :goto_2

    :cond_3
    sget v0, Lcom/android/launcher3/R$dimen;->taskbar_size:I

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_2

    .line 302
    :cond_4
    const-string v0, "navigation_bar_height"

    invoke-virtual {v6, v13, v0}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDimenByName(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    :goto_2
    move/from16 v19, v0

    .line 304
    .local v19, "navBarHeightPortrait":I
    if-eqz v15, :cond_6

    .line 305
    iget-boolean v0, v6, Lcom/android/launcher3/util/window/WindowManagerProxy;->mTaskbarDrawnInProcess:Z

    if-eqz v0, :cond_5

    .line 306
    move v0, v14

    goto :goto_3

    :cond_5
    sget v0, Lcom/android/launcher3/R$dimen;->taskbar_size:I

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_3

    .line 307
    :cond_6
    if-eqz v16, :cond_7

    .line 308
    const-string v0, "navigation_bar_height_landscape"

    invoke-virtual {v6, v13, v0}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDimenByName(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    :cond_7
    move v0, v14

    :goto_3
    move/from16 v20, v0

    .line 309
    .local v20, "navBarHeightLandscape":I
    if-eqz v16, :cond_8

    .line 310
    move v0, v14

    goto :goto_4

    .line 311
    :cond_8
    const-string v0, "navigation_bar_width"

    invoke-virtual {v6, v13, v0}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDimenByName(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    :goto_4
    move/from16 v21, v0

    .line 313
    .local v21, "navbarWidthLandscape":I
    new-instance v0, Ljava/util/ArrayList;

    const/4 v5, 0x4

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v0

    .line 314
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/util/WindowBounds;>;"
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    move-object v3, v0

    .line 315
    .local v3, "tempSize":Landroid/graphics/Point;
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_5
    if-ge v2, v5, :cond_d

    .line 316
    invoke-static {v9, v2}, Lcom/android/launcher3/util/RotationUtils;->deltaRotation(II)I

    move-result v1

    .line 317
    .local v1, "rotationChange":I
    iget-object v0, v7, Lcom/android/launcher3/util/window/CachedDisplayInfo;->size:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v5, v7, Lcom/android/launcher3/util/window/CachedDisplayInfo;->size:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v0, v5}, Landroid/graphics/Point;->set(II)V

    .line 318
    invoke-static {v3, v1}, Lcom/android/launcher3/util/RotationUtils;->rotateSize(Landroid/graphics/Point;I)V

    .line 319
    new-instance v0, Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Point;->x:I

    move/from16 v23, v1

    .end local v1    # "rotationChange":I
    .local v23, "rotationChange":I
    iget v1, v3, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v14, v14, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v5, v0

    .line 322
    .local v5, "bounds":Landroid/graphics/Rect;
    iget v0, v3, Landroid/graphics/Point;->y:I

    iget v1, v3, Landroid/graphics/Point;->x:I

    if-le v0, v1, :cond_9

    .line 323
    move/from16 v0, v19

    .line 324
    .local v0, "navBarHeight":I
    const/4 v1, 0x0

    .line 325
    .local v1, "navbarWidth":I
    move/from16 v24, v17

    move/from16 v25, v24

    move/from16 v29, v1

    move v1, v0

    move/from16 v0, v29

    .local v24, "statusBarHeight":I
    goto :goto_6

    .line 327
    .end local v0    # "navBarHeight":I
    .end local v1    # "navbarWidth":I
    .end local v24    # "statusBarHeight":I
    :cond_9
    move/from16 v0, v20

    .line 328
    .restart local v0    # "navBarHeight":I
    move/from16 v1, v21

    .line 329
    .restart local v1    # "navbarWidth":I
    move/from16 v24, v18

    move/from16 v25, v24

    move/from16 v29, v1

    move v1, v0

    move/from16 v0, v29

    .line 332
    .local v0, "navbarWidth":I
    .local v1, "navBarHeight":I
    .local v25, "statusBarHeight":I
    :goto_6
    iget-object v14, v7, Lcom/android/launcher3/util/window/CachedDisplayInfo;->cutout:Landroid/view/DisplayCutout;

    move/from16 v26, v0

    .end local v0    # "navbarWidth":I
    .local v26, "navbarWidth":I
    iget-object v0, v7, Lcom/android/launcher3/util/window/CachedDisplayInfo;->size:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v27, v0

    iget-object v0, v7, Lcom/android/launcher3/util/window/CachedDisplayInfo;->size:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v6, v26

    move/from16 v26, v27

    move/from16 v27, v0

    .end local v26    # "navbarWidth":I
    .local v6, "navbarWidth":I
    move-object/from16 v0, p0

    move v7, v1

    .end local v1    # "navBarHeight":I
    .local v7, "navBarHeight":I
    move-object v1, v14

    move v14, v2

    .end local v2    # "i":I
    .local v14, "i":I
    move/from16 v2, v26

    move-object/from16 v26, v3

    .end local v3    # "tempSize":Landroid/graphics/Point;
    .local v26, "tempSize":Landroid/graphics/Point;
    move/from16 v3, v27

    move/from16 v27, v8

    move-object v8, v4

    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/util/WindowBounds;>;"
    .local v8, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/util/WindowBounds;>;"
    .local v27, "densityDpi":I
    move v4, v9

    move-object/from16 v28, v5

    const/16 v22, 0x4

    .end local v5    # "bounds":Landroid/graphics/Rect;
    .local v28, "bounds":Landroid/graphics/Rect;
    move v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/window/WindowManagerProxy;->rotateCutout(Landroid/view/DisplayCutout;IIII)Landroid/view/DisplayCutout;

    move-result-object v0

    .line 334
    .local v0, "rotatedCutout":Landroid/view/DisplayCutout;
    invoke-static {v0}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getSafeInsets(Landroid/view/DisplayCutout;)Landroid/graphics/Rect;

    move-result-object v1

    .line 335
    .local v1, "insets":Landroid/graphics/Rect;
    nop

    .line 336
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    move-result-object v2

    .line 337
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 338
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 335
    invoke-static {v2, v3, v4}, Lcom/android/launcher3/util/window/WindowManagerProxy;->areBottomDisplayCutoutsSmallAndAtCorners(Landroid/graphics/Rect;ILandroid/content/res/Resources;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 339
    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_7

    .line 335
    :cond_a
    const/4 v2, 0x0

    .line 341
    :goto_7
    iget v3, v1, Landroid/graphics/Rect;->top:I

    move/from16 v4, v25

    .end local v25    # "statusBarHeight":I
    .local v4, "statusBarHeight":I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 342
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 344
    const/4 v3, 0x3

    if-eq v14, v3, :cond_c

    const/4 v3, 0x2

    if-ne v14, v3, :cond_b

    goto :goto_8

    .line 349
    :cond_b
    iget v3, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->right:I

    goto :goto_9

    .line 347
    :cond_c
    :goto_8
    iget v3, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 351
    :goto_9
    new-instance v3, Lcom/android/launcher3/util/WindowBounds;

    move-object/from16 v5, v28

    .end local v28    # "bounds":Landroid/graphics/Rect;
    .restart local v5    # "bounds":Landroid/graphics/Rect;
    invoke-direct {v3, v5, v1, v14}, Lcom/android/launcher3/util/WindowBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    .end local v0    # "rotatedCutout":Landroid/view/DisplayCutout;
    .end local v1    # "insets":Landroid/graphics/Rect;
    .end local v4    # "statusBarHeight":I
    .end local v5    # "bounds":Landroid/graphics/Rect;
    .end local v6    # "navbarWidth":I
    .end local v7    # "navBarHeight":I
    .end local v23    # "rotationChange":I
    add-int/lit8 v0, v14, 0x1

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move v14, v2

    move-object v4, v8

    move/from16 v5, v22

    move-object/from16 v3, v26

    move/from16 v8, v27

    move v2, v0

    .end local v14    # "i":I
    .local v0, "i":I
    goto/16 :goto_5

    .end local v0    # "i":I
    .end local v26    # "tempSize":Landroid/graphics/Point;
    .end local v27    # "densityDpi":I
    .restart local v2    # "i":I
    .restart local v3    # "tempSize":Landroid/graphics/Point;
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/util/WindowBounds;>;"
    .local v8, "densityDpi":I
    :cond_d
    move/from16 v27, v8

    move-object v8, v4

    .line 353
    .end local v2    # "i":I
    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/util/WindowBounds;>;"
    .local v8, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/util/WindowBounds;>;"
    .restart local v27    # "densityDpi":I
    return-object v8
.end method

.method public getCurrentBounds(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 8
    .param p1, "displayInfoContext"    # Landroid/content/Context;

    .line 409
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 410
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 412
    .local v1, "config":Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    .line 413
    .local v2, "screenWidth":F
    iget v3, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    .line 415
    .local v3, "screenHeight":F
    new-instance v4, Landroid/graphics/Rect;

    float-to-int v5, v2

    float-to-int v6, v3

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method protected getDimenByName(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resName"    # Ljava/lang/String;

    .line 360
    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/android/launcher3/testing/shared/ResourceUtils;->getDimenByName(Ljava/lang/String;Landroid/content/res/Resources;I)I

    move-result v0

    return v0
.end method

.method protected getDimenByName(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resName"    # Ljava/lang/String;
    .param p3, "fallback"    # Ljava/lang/String;

    .line 367
    const/4 v0, -0x1

    invoke-static {p2, p1, v0}, Lcom/android/launcher3/testing/shared/ResourceUtils;->getDimenByName(Ljava/lang/String;Landroid/content/res/Resources;I)I

    move-result v1

    .line 368
    .local v1, "dimen":I
    if-le v1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDimenByName(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method protected getDisplay(Landroid/content/Context;)Landroid/view/Display;
    .locals 2
    .param p1, "displayInfoContext"    # Landroid/content/Context;

    .line 432
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 433
    :catch_0
    move-exception v0

    .line 436
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayInfo(Landroid/content/Context;)Lcom/android/launcher3/util/window/CachedDisplayInfo;
    .locals 4
    .param p1, "displayInfoContext"    # Landroid/content/Context;

    .line 381
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getRotation(Landroid/content/Context;)I

    move-result v0

    .line 382
    .local v0, "rotation":I
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v1, :cond_0

    .line 383
    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 384
    invoke-interface {v1}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v1

    .line 385
    .local v1, "windowMetrics":Landroid/view/WindowMetrics;
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDisplayInfo(Landroid/view/WindowMetrics;I)Lcom/android/launcher3/util/window/CachedDisplayInfo;

    move-result-object v2

    return-object v2

    .line 387
    .end local v1    # "windowMetrics":Landroid/view/WindowMetrics;
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 388
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v2

    .line 389
    .local v2, "display":Landroid/view/Display;
    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 390
    new-instance v3, Lcom/android/launcher3/util/window/CachedDisplayInfo;

    invoke-direct {v3, v1, v0}, Lcom/android/launcher3/util/window/CachedDisplayInfo;-><init>(Landroid/graphics/Point;I)V

    return-object v3
.end method

.method protected getDisplayInfo(Landroid/view/WindowMetrics;I)Lcom/android/launcher3/util/window/CachedDisplayInfo;
    .locals 3
    .param p1, "windowMetrics"    # Landroid/view/WindowMetrics;
    .param p2, "rotation"    # I

    .line 399
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 400
    .local v0, "size":Landroid/graphics/Point;
    new-instance v1, Lcom/android/launcher3/util/window/CachedDisplayInfo;

    .line 401
    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    invoke-direct {v1, v0, p2, v2}, Lcom/android/launcher3/util/window/CachedDisplayInfo;-><init>(Landroid/graphics/Point;ILandroid/view/DisplayCutout;)V

    .line 400
    return-object v1
.end method

.method public getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/NavigationMode;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 454
    nop

    .line 455
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 454
    const-string v1, "config_navBarInteractionMode"

    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Lcom/android/launcher3/testing/shared/ResourceUtils;->getIntegerByName(Ljava/lang/String;Landroid/content/res/Resources;I)I

    move-result v0

    .line 457
    .local v0, "modeInt":I
    if-ne v0, v2, :cond_0

    .line 458
    const-string v1, "WindowManagerProxy"

    const-string v2, "Failed to get system resource ID. Incompatible framework version?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 460
    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/NavigationMode;->values()[Lcom/android/launcher3/util/NavigationMode;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 461
    .local v4, "m":Lcom/android/launcher3/util/NavigationMode;
    iget v5, v4, Lcom/android/launcher3/util/NavigationMode;->resValue:I

    if-ne v5, v0, :cond_1

    .line 462
    return-object v4

    .line 460
    .end local v4    # "m":Lcom/android/launcher3/util/NavigationMode;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 466
    :cond_2
    :goto_1
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/launcher3/util/NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/NavigationMode;

    goto :goto_2

    .line 467
    :cond_3
    sget-object v1, Lcom/android/launcher3/util/NavigationMode;->THREE_BUTTONS:Lcom/android/launcher3/util/NavigationMode;

    .line 466
    :goto_2
    return-object v1
.end method

.method public getRealBounds(Landroid/content/Context;Lcom/android/launcher3/util/window/CachedDisplayInfo;)Lcom/android/launcher3/util/WindowBounds;
    .locals 5
    .param p1, "displayInfoContext"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/launcher3/util/window/CachedDisplayInfo;

    .line 113
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 114
    invoke-interface {v0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    .line 115
    .local v0, "windowMetrics":Landroid/view/WindowMetrics;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 116
    .local v1, "insets":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/launcher3/util/window/WindowManagerProxy;->normalizeWindowInsets(Landroid/content/Context;Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    .line 117
    new-instance v2, Lcom/android/launcher3/util/WindowBounds;

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v4, p2, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    invoke-direct {v2, v3, v1, v4}, Lcom/android/launcher3/util/WindowBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-object v2
.end method

.method public getRotation(Landroid/content/Context;)I
    .locals 1
    .param p1, "displayInfoContext"    # Landroid/content/Context;

    .line 423
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method protected getStatusBarHeight(Landroid/content/Context;ZI)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isPortrait"    # Z
    .param p3, "statusBarInset"    # I

    .line 260
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 261
    .local v0, "systemRes":Landroid/content/res/Resources;
    nop

    .line 262
    if-eqz p2, :cond_0

    const-string v1, "status_bar_height_portrait"

    goto :goto_0

    :cond_0
    const-string v1, "status_bar_height_landscape"

    .line 261
    :goto_0
    const-string v2, "status_bar_height"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDimenByName(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 265
    .local v1, "statusBarHeight":I
    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method protected isGestureNav(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 372
    nop

    .line 373
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 372
    const-string v1, "config_navBarInteractionMode"

    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Lcom/android/launcher3/testing/shared/ResourceUtils;->getIntegerByName(Ljava/lang/String;Landroid/content/res/Resources;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public normalizeWindowInsets(Landroid/content/Context;Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "oldInsets"    # Landroid/view/WindowInsets;
    .param p3, "outInsets"    # Landroid/graphics/Rect;

    .line 125
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-boolean v4, v0, Lcom/android/launcher3/util/window/WindowManagerProxy;->mTaskbarDrawnInProcess:Z

    if-nez v4, :cond_0

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v5

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v7

    .line 126
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 128
    return-object v2

    .line 131
    :cond_0
    new-instance v4, Landroid/view/WindowInsets$Builder;

    invoke-direct {v4, v2}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    .line 132
    .local v4, "insetsBuilder":Landroid/view/WindowInsets$Builder;
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v5

    .line 134
    .local v5, "navInsets":Landroid/graphics/Insets;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 135
    .local v6, "systemRes":Landroid/content/res/Resources;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    .line 137
    .local v7, "config":Landroid/content/res/Configuration;
    iget v8, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v9, 0x258

    const/4 v10, 0x1

    if-le v8, v9, :cond_1

    move v8, v10

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .line 138
    .local v8, "isLargeScreen":Z
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/util/window/WindowManagerProxy;->isGestureNav(Landroid/content/Context;)Z

    move-result v9

    .line 139
    .local v9, "isGesture":Z
    iget v12, v7, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v13, v7, Landroid/content/res/Configuration;->screenWidthDp:I

    if-le v12, v13, :cond_2

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    .line 141
    .local v10, "isPortrait":Z
    :goto_1
    if-eqz v8, :cond_3

    .line 142
    const/4 v12, 0x0

    goto :goto_2

    .line 143
    :cond_3
    if-eqz v10, :cond_4

    .line 144
    const-string v12, "navigation_bar_height"

    invoke-virtual {v0, v6, v12}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDimenByName(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v12

    goto :goto_2

    .line 145
    :cond_4
    if-eqz v9, :cond_5

    .line 146
    const-string v12, "navigation_bar_height_landscape"

    invoke-virtual {v0, v6, v12}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDimenByName(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v12

    goto :goto_2

    .line 147
    :cond_5
    const/4 v12, 0x0

    :goto_2
    nop

    .line 148
    .local v12, "bottomNav":I
    iget v13, v5, Landroid/graphics/Insets;->left:I

    .line 149
    .local v13, "leftNav":I
    iget v14, v5, Landroid/graphics/Insets;->right:I

    .line 150
    .local v14, "rightNav":I
    if-nez v8, :cond_6

    if-nez v9, :cond_6

    if-nez v10, :cond_6

    .line 153
    const-string v15, "navigation_bar_width"

    invoke-virtual {v0, v6, v15}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getDimenByName(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v15

    .line 154
    .local v15, "navBarWidth":I
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getRotation(Landroid/content/Context;)I

    move-result v16

    packed-switch v16, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    .line 156
    :pswitch_1
    move v13, v15

    goto :goto_3

    .line 155
    :pswitch_2
    move v14, v15

    .line 159
    .end local v15    # "navBarWidth":I
    :cond_6
    :goto_3
    iget v15, v5, Landroid/graphics/Insets;->top:I

    invoke-static {v13, v15, v14, v12}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v15

    .line 160
    .local v15, "newNavInsets":Landroid/graphics/Insets;
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v11

    invoke-virtual {v4, v11, v15}, Landroid/view/WindowInsets$Builder;->setInsets(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    .line 161
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v11

    invoke-virtual {v4, v11, v15}, Landroid/view/WindowInsets$Builder;->setInsetsIgnoringVisibility(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    .line 163
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v11

    invoke-virtual {v2, v11}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v11

    .line 165
    .local v11, "statusBarInsets":Landroid/graphics/Insets;
    move-object/from16 v17, v5

    .end local v5    # "navInsets":Landroid/graphics/Insets;
    .local v17, "navInsets":Landroid/graphics/Insets;
    iget v5, v11, Landroid/graphics/Insets;->left:I

    move-object/from16 v18, v6

    .end local v6    # "systemRes":Landroid/content/res/Resources;
    .local v18, "systemRes":Landroid/content/res/Resources;
    iget v6, v11, Landroid/graphics/Insets;->top:I

    .line 167
    invoke-virtual {v0, v1, v10, v6}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getStatusBarHeight(Landroid/content/Context;ZI)I

    move-result v6

    iget v0, v11, Landroid/graphics/Insets;->right:I

    move/from16 v19, v10

    .end local v10    # "isPortrait":Z
    .local v19, "isPortrait":Z
    iget v10, v11, Landroid/graphics/Insets;->bottom:I

    .line 165
    invoke-static {v5, v6, v0, v10}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    .line 170
    .local v0, "newStatusBarInsets":Landroid/graphics/Insets;
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v5

    invoke-virtual {v4, v5, v0}, Landroid/view/WindowInsets$Builder;->setInsets(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    .line 171
    nop

    .line 172
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v5

    .line 171
    invoke-virtual {v4, v5, v0}, Landroid/view/WindowInsets$Builder;->setInsetsIgnoringVisibility(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    .line 176
    if-eqz v9, :cond_7

    .line 177
    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v5

    .line 178
    .local v5, "oldTappableInsets":Landroid/graphics/Insets;
    iget v6, v5, Landroid/graphics/Insets;->left:I

    iget v10, v5, Landroid/graphics/Insets;->top:I

    move-object/from16 v20, v0

    .end local v0    # "newStatusBarInsets":Landroid/graphics/Insets;
    .local v20, "newStatusBarInsets":Landroid/graphics/Insets;
    iget v0, v5, Landroid/graphics/Insets;->right:I

    move-object/from16 v21, v5

    const/4 v5, 0x0

    .end local v5    # "oldTappableInsets":Landroid/graphics/Insets;
    .local v21, "oldTappableInsets":Landroid/graphics/Insets;
    invoke-static {v6, v10, v0, v5}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    .line 180
    .local v0, "newTappableInsets":Landroid/graphics/Insets;
    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    move-result v5

    invoke-virtual {v4, v5, v0}, Landroid/view/WindowInsets$Builder;->setInsets(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    goto :goto_4

    .line 176
    .end local v20    # "newStatusBarInsets":Landroid/graphics/Insets;
    .end local v21    # "oldTappableInsets":Landroid/graphics/Insets;
    .local v0, "newStatusBarInsets":Landroid/graphics/Insets;
    :cond_7
    move-object/from16 v20, v0

    .line 183
    .end local v0    # "newStatusBarInsets":Landroid/graphics/Insets;
    .restart local v20    # "newStatusBarInsets":Landroid/graphics/Insets;
    :goto_4
    iget v0, v7, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v0, v0

    .line 184
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->dpToPx(F)I

    move-result v0

    .line 183
    invoke-static {v1, v8, v0, v2, v4}, Lcom/android/launcher3/util/window/WindowManagerProxy;->applyDisplayCutoutBottomInsetOverrideOnLargeScreen(Landroid/content/Context;ZILandroid/view/WindowInsets;Landroid/view/WindowInsets$Builder;)V

    .line 186
    invoke-virtual {v4}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object v0

    .line 187
    .local v0, "result":Landroid/view/WindowInsets;
    nop

    .line 188
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v5

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v6

    or-int/2addr v5, v6

    .line 187
    invoke-virtual {v0, v5}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v5

    .line 189
    .local v5, "systemWindowInsets":Landroid/graphics/Insets;
    iget v6, v5, Landroid/graphics/Insets;->left:I

    iget v10, v5, Landroid/graphics/Insets;->top:I

    iget v1, v5, Landroid/graphics/Insets;->right:I

    iget v2, v5, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v3, v6, v10, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 191
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected rotateCutout(Landroid/view/DisplayCutout;IIII)Landroid/view/DisplayCutout;
    .locals 8
    .param p1, "original"    # Landroid/view/DisplayCutout;
    .param p2, "startWidth"    # I
    .param p3, "startHeight"    # I
    .param p4, "fromRotation"    # I
    .param p5, "toRotation"    # I

    .line 445
    invoke-static {p1}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getSafeInsets(Landroid/view/DisplayCutout;)Landroid/graphics/Rect;

    move-result-object v0

    .line 446
    .local v0, "safeCutout":Landroid/graphics/Rect;
    invoke-static {p4, p5}, Lcom/android/launcher3/util/RotationUtils;->deltaRotation(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/util/RotationUtils;->rotateRect(Landroid/graphics/Rect;I)V

    .line 447
    new-instance v1, Landroid/view/DisplayCutout;

    invoke-static {v0}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object v1
.end method
