.class public Lcom/android/launcher3/testing/shared/ResourceUtils;
.super Ljava/lang/Object;
.source "ResourceUtils.java"


# static fields
.field public static final DEFAULT_NAVBAR_VALUE:I = 0x30

.field private static final EPSILON:F = 1.0E-4f

.field public static final INVALID_RESOURCE_HANDLE:I = -0x1

.field public static final NAVBAR_BOTTOM_GESTURE_LARGER_SIZE:Ljava/lang/String; = "navigation_bar_gesture_larger_height"

.field public static final NAVBAR_BOTTOM_GESTURE_SIZE:Ljava/lang/String; = "navigation_bar_gesture_height"

.field public static final NAVBAR_HEIGHT:Ljava/lang/String; = "navigation_bar_height"

.field public static final NAVBAR_HEIGHT_LANDSCAPE:Ljava/lang/String; = "navigation_bar_height_landscape"

.field public static final NAVBAR_LANDSCAPE_LEFT_RIGHT_SIZE:Ljava/lang/String; = "navigation_bar_width"

.field public static final NAV_BAR_INTERACTION_MODE_RES_NAME:Ljava/lang/String; = "config_navBarInteractionMode"

.field public static final STATUS_BAR_HEIGHT:Ljava/lang/String; = "status_bar_height"

.field public static final STATUS_BAR_HEIGHT_LANDSCAPE:Ljava/lang/String; = "status_bar_height_landscape"

.field public static final STATUS_BAR_HEIGHT_PORTRAIT:Ljava/lang/String; = "status_bar_height_portrait"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolByName(Ljava/lang/String;Landroid/content/res/Resources;Z)Z
    .locals 2
    .param p0, "resName"    # Ljava/lang/String;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "defaultValue"    # Z

    .line 58
    const-string v0, "bool"

    const-string v1, "android"

    invoke-virtual {p1, p0, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 59
    .local v0, "resId":I
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .local v1, "val":Z
    goto :goto_0

    .line 62
    .end local v1    # "val":Z
    :cond_0
    move v1, p2

    .line 64
    .restart local v1    # "val":Z
    :goto_0
    return v1
.end method

.method public static getDimenByName(Ljava/lang/String;Landroid/content/res/Resources;I)I
    .locals 3
    .param p0, "resName"    # Ljava/lang/String;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "defaultValue"    # I

    .line 47
    const-string v0, "dimen"

    const-string v1, "android"

    invoke-virtual {p1, p0, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 48
    .local v0, "frameSizeResID":I
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .local v1, "frameSize":I
    goto :goto_0

    .line 51
    .end local v1    # "frameSize":I
    :cond_0
    int-to-float v1, p2

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/launcher3/testing/shared/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v1

    .line 53
    .restart local v1    # "frameSize":I
    :goto_0
    return v1
.end method

.method public static getIntegerByName(Ljava/lang/String;Landroid/content/res/Resources;I)I
    .locals 2
    .param p0, "resName"    # Ljava/lang/String;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "defaultValue"    # I

    .line 68
    const-string v0, "integer"

    const-string v1, "android"

    invoke-virtual {p1, p0, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 69
    .local v0, "resId":I
    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public static getNavbarSize(Ljava/lang/String;Landroid/content/res/Resources;)I
    .locals 1
    .param p0, "resName"    # Ljava/lang/String;
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 42
    const/16 v0, 0x30

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/testing/shared/ResourceUtils;->getDimenByName(Ljava/lang/String;Landroid/content/res/Resources;I)I

    move-result v0

    return v0
.end method

.method public static pxFromDp(FLandroid/util/DisplayMetrics;)I
    .locals 1
    .param p0, "size"    # F
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .line 73
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/testing/shared/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;F)I

    move-result v0

    return v0
.end method

.method public static pxFromDp(FLandroid/util/DisplayMetrics;F)I
    .locals 2
    .param p0, "size"    # F
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;
    .param p2, "scale"    # F

    .line 77
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    mul-float/2addr v0, p2

    .line 78
    .local v0, "value":F
    const/4 v1, 0x0

    cmpg-float v1, p0, v1

    if-gez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/android/launcher3/testing/shared/ResourceUtils;->roundPxValueFromFloat(F)I

    move-result v1

    :goto_0
    return v1
.end method

.method public static roundPxValueFromFloat(F)I
    .locals 4
    .param p0, "value"    # F

    .line 90
    float-to-double v0, p0

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-float v0, v0

    .line 91
    .local v0, "fraction":F
    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 94
    add-float/2addr p0, v2

    .line 96
    :cond_0
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method
