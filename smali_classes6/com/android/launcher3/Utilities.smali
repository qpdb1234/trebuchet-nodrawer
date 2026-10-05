.class public final Lcom/android/launcher3/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/Utilities$AdjustmentDirection;
    }
.end annotation


# static fields
.field public static final ATLEAST_S:Z

.field public static final ATLEAST_T:Z

.field public static final ATLEAST_U:Z

.field public static final EDGE_NAV_BAR:I = 0x100

.field public static final EMPTY_PERSON_ARRAY:[Landroid/app/Person;

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final IS_DEBUG_DEVICE:Z = false
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Launcher.Utilities"

.field public static final TRANSLATE_DOWN:I = 0x1

.field public static final TRANSLATE_LEFT:I = 0x2

.field public static final TRANSLATE_RIGHT:I = 0x3

.field public static final TRANSLATE_UP:I

.field private static final sInverseMatrix:Landroid/graphics/Matrix;

.field private static sIsRunningInTestHarness:Z

.field private static final sMatrix:Landroid/graphics/Matrix;

.field private static final sTrimPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 116
    nop

    .line 117
    const-string v0, "^[\\s|\\p{javaSpaceChar}]*(.*)[\\s|\\p{javaSpaceChar}]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/Utilities;->sTrimPattern:Ljava/util/regex/Pattern;

    .line 119
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/android/launcher3/Utilities;->sMatrix:Landroid/graphics/Matrix;

    .line 120
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/android/launcher3/Utilities;->sInverseMatrix:Landroid/graphics/Matrix;

    .line 122
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/android/launcher3/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 123
    new-array v1, v0, [Landroid/app/Person;

    sput-object v1, Lcom/android/launcher3/Utilities;->EMPTY_PERSON_ARRAY:[Landroid/app/Person;

    .line 126
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    const/4 v3, 0x1

    if-lt v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    sput-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    .line 129
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    sput-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_T:Z

    .line 132
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_2

    move v0, v3

    :cond_2
    sput-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_U:Z

    .line 164
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/Utilities;->sIsRunningInTestHarness:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowBGLaunch(Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;
    .locals 1
    .param p0, "options"    # Landroid/app/ActivityOptions;

    .line 564
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_U:Z

    if-eqz v0, :cond_0

    .line 565
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 568
    :cond_0
    return-object p0
.end method

.method public static boundToRange(FFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "lowerBound"    # F
    .param p2, "upperBound"    # F

    .line 501
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static boundToRange(III)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "lowerBound"    # I
    .param p2, "upperBound"    # I

    .line 494
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static boundToRange(JJJ)J
    .locals 2
    .param p0, "value"    # J
    .param p2, "lowerBound"    # J
    .param p4, "upperBound"    # J

    .line 508
    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static calculateTextHeight(F)I
    .locals 4
    .param p0, "textSizePx"    # F

    .line 426
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 427
    .local v0, "p":Landroid/graphics/Paint;
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 428
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 429
    .local v1, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v3, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    return v2
.end method

.method public static createDbSelectionQuery(Ljava/lang/String;Lcom/android/launcher3/util/IntArray;)Ljava/lang/String;
    .locals 3
    .param p0, "columnName"    # Ljava/lang/String;
    .param p1, "values"    # Lcom/android/launcher3/util/IntArray;

    .line 467
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1}, Lcom/android/launcher3/util/IntArray;->toConcatString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s IN (%s)"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dpToPx(F)I
    .locals 1
    .param p0, "dp"    # F

    .line 448
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method public static dpToPx(FI)I
    .locals 2
    .param p0, "dp"    # F
    .param p1, "densityDpi"    # I

    .line 453
    int-to-float v0, p1

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    .line 454
    .local v0, "densityRatio":F
    mul-float v1, p0, v0

    float-to-int v1, v1

    return v1
.end method

.method public static dpiFromPx(FI)F
    .locals 2
    .param p0, "size"    # F
    .param p1, "densityDpi"    # I

    .line 442
    int-to-float v0, p1

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    .line 443
    .local v0, "densityRatio":F
    div-float v1, p0, v0

    return v1
.end method

.method public static enableRunningInTestHarnessForTests()V
    .locals 1

    .line 171
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/Utilities;->sIsRunningInTestHarness:Z

    .line 172
    return-void
.end method

.method public static enableSupportForArchiving()Z
    .locals 2

    .line 837
    invoke-static {}, Lcom/android/launcher3/Flags;->enableSupportForArchiving()Z

    move-result v0

    if-nez v0, :cond_1

    .line 838
    const-string v0, "pm.archiving.enabled"

    const-string v1, "false"

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 837
    :goto_1
    return v0
.end method

.method public static getBoundsForViewInDragLayer(Lcom/android/launcher3/views/BaseDragLayer;Landroid/view/View;Landroid/graphics/Rect;Z[FLandroid/graphics/RectF;)V
    .locals 8
    .param p0, "dragLayer"    # Lcom/android/launcher3/views/BaseDragLayer;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewBounds"    # Landroid/graphics/Rect;
    .param p3, "ignoreTransform"    # Z
    .param p4, "recycle"    # [F
    .param p5, "outRect"    # Landroid/graphics/RectF;

    .line 245
    if-nez p4, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [F

    goto :goto_0

    :cond_0
    move-object v0, p4

    .line 246
    .local v0, "points":[F
    :goto_0
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 247
    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 248
    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const/4 v4, 0x2

    aput v1, v0, v4

    .line 249
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    const/4 v5, 0x3

    aput v1, v0, v5

    .line 251
    invoke-static {p1, p0, v0, v2, p3}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    .line 253
    aget v1, v0, v2

    aget v6, v0, v4

    .line 254
    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aget v6, v0, v3

    aget v7, v0, v5

    .line 255
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    aget v2, v0, v2

    aget v4, v0, v4

    .line 256
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aget v3, v0, v3

    aget v4, v0, v5

    .line 257
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 253
    invoke-virtual {p5, v1, v6, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 258
    return-void
.end method

.method public static getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZ)F
    .locals 1
    .param p0, "descendant"    # Landroid/view/View;
    .param p1, "ancestor"    # Landroid/view/View;
    .param p2, "coord"    # [F
    .param p3, "includeRootScroll"    # Z

    .line 193
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    move-result v0

    return v0
.end method

.method public static getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F
    .locals 4
    .param p0, "descendant"    # Landroid/view/View;
    .param p1, "ancestor"    # Landroid/view/View;
    .param p2, "coord"    # [F
    .param p3, "includeRootScroll"    # Z
    .param p4, "ignoreTransform"    # Z

    .line 213
    const/high16 v0, 0x3f800000    # 1.0f

    .line 214
    .local v0, "scale":F
    move-object v1, p0

    .line 215
    .local v1, "v":Landroid/view/View;
    :goto_0
    if-eq v1, p1, :cond_4

    if-eqz v1, :cond_4

    .line 218
    if-ne v1, p0, :cond_0

    if-eqz p3, :cond_1

    .line 219
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-static {p2, v2, v3}, Lcom/android/launcher3/Utilities;->offsetPoints([FFF)V

    .line 222
    :cond_1
    if-nez p4, :cond_2

    .line 223
    invoke-virtual {v1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 225
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-static {p2, v2, v3}, Lcom/android/launcher3/Utilities;->offsetPoints([FFF)V

    .line 226
    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v2

    mul-float/2addr v0, v2

    .line 228
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    move-object v1, v2

    goto :goto_0

    .line 230
    :cond_4
    return v0
.end method

.method public static getFullDrawable(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;IIZ)Landroid/util/Pair;
    .locals 16
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "useTheme"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(TT;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "IIZ)",
            "Landroid/util/Pair<",
            "Landroid/graphics/drawable/AdaptiveIconDrawable;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 582
    .local p0, "context":Landroid/content/Context;, "TT;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/util/Themes;->isThemedIconEnabled(Landroid/content/Context;)Z

    move-result v0

    and-int v3, p4, v0

    .line 583
    .end local p4    # "useTheme":Z
    .local v3, "useTheme":Z
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    .line 584
    .local v4, "appState":Lcom/android/launcher3/LauncherAppState;
    const/4 v0, 0x0

    .line 586
    .local v0, "mainIcon":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    .line 587
    .local v5, "badge":Landroid/graphics/drawable/Drawable;
    instance-of v6, v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v6, :cond_0

    move-object v6, v2

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .local v6, "iiwi":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    invoke-virtual {v6}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->usingLowResIcon()Z

    move-result v7

    if-nez v7, :cond_0

    .line 588
    iget-object v7, v6, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {v7, v1, v3}, Lcom/android/launcher3/icons/BitmapInfo;->getBadgeDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 591
    .end local v6    # "iiwi":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    :cond_0
    instance-of v6, v2, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v6, :cond_1

    .line 592
    move-object v6, v2

    check-cast v6, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    .line 593
    invoke-virtual {v6, v1}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->getActivityInfo(Landroid/content/Context;)Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    move-result-object v6

    .line 594
    .local v6, "activityInfo":Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;
    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->getFullResIcon(Lcom/android/launcher3/icons/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 595
    .end local v6    # "activityInfo":Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;
    move/from16 v12, p2

    move/from16 v13, p3

    move-object v6, v5

    move-object v5, v0

    goto/16 :goto_1

    :cond_1
    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v6, :cond_3

    .line 596
    const-class v6, Landroid/content/pm/LauncherApps;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/LauncherApps;

    .line 597
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v10

    iget-object v11, v2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v6, v10, v11}, Landroid/content/pm/LauncherApps;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v6

    .line 598
    .local v6, "activityInfo":Landroid/content/pm/LauncherActivityInfo;
    if-nez v6, :cond_2

    .line 599
    return-object v9

    .line 601
    :cond_2
    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getIconProvider()Lcom/android/launcher3/icons/IconProvider;

    move-result-object v10

    .line 602
    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v11

    iget v11, v11, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    .line 601
    invoke-virtual {v10, v6, v11}, Lcom/android/launcher3/icons/IconProvider;->getIcon(Landroid/content/pm/LauncherActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 603
    .end local v6    # "activityInfo":Landroid/content/pm/LauncherActivityInfo;
    move/from16 v12, p2

    move/from16 v13, p3

    move-object v6, v5

    move-object v5, v0

    goto/16 :goto_1

    :cond_3
    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v10, 0x6

    if-ne v6, v10, :cond_6

    .line 604
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v6

    .line 605
    invoke-virtual {v6, v1}, Lcom/android/launcher3/shortcuts/ShortcutKey;->buildRequest(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/ShortcutRequest;

    move-result-object v6

    .line 606
    const/16 v10, 0xb

    invoke-virtual {v6, v10}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    move-result-object v6

    .line 607
    .local v6, "siList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 608
    return-object v9

    .line 610
    :cond_4
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ShortcutInfo;

    .line 611
    .local v10, "si":Landroid/content/pm/ShortcutInfo;
    nop

    .line 612
    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v11

    iget v11, v11, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    .line 611
    invoke-static {v1, v10, v11}, Lcom/android/launcher3/icons/ShortcutCachingLogic;->getIcon(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 614
    iget v11, v2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_5

    if-nez v5, :cond_5

    .line 615
    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/android/launcher3/icons/IconCache;->getShortcutInfoBadge(Landroid/content/pm/ShortcutInfo;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v11

    .line 616
    invoke-virtual {v11, v1, v7}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v5

    .line 619
    .end local v6    # "siList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local v10    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_5
    move/from16 v12, p2

    move/from16 v13, p3

    goto :goto_0

    :cond_6
    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v10, 0x2

    if-ne v6, v10, :cond_8

    .line 620
    move-object v6, v1

    check-cast v6, Lcom/android/launcher3/views/ActivityContext;

    iget v10, v2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    new-instance v11, Landroid/graphics/Point;

    move/from16 v12, p2

    move/from16 v13, p3

    invoke-direct {v11, v12, v13}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v6, v10, v11}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->createFolderAdaptiveIcon(Lcom/android/launcher3/views/ActivityContext;ILandroid/graphics/Point;)Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;

    move-result-object v6

    .line 622
    .local v6, "icon":Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;
    if-nez v6, :cond_7

    .line 623
    return-object v9

    .line 625
    :cond_7
    move-object v0, v6

    .line 626
    invoke-virtual {v6}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v6, v5

    move-object v5, v0

    goto :goto_1

    .line 619
    .end local v6    # "icon":Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;
    :cond_8
    move/from16 v12, p2

    move/from16 v13, p3

    :goto_0
    move-object v6, v5

    move-object v5, v0

    .line 629
    .end local v0    # "mainIcon":Landroid/graphics/drawable/Drawable;
    .local v5, "mainIcon":Landroid/graphics/drawable/Drawable;
    .local v6, "badge":Landroid/graphics/drawable/Drawable;
    :goto_1
    if-nez v5, :cond_9

    .line 630
    return-object v9

    .line 633
    :cond_9
    instance-of v0, v5, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_a

    move-object v0, v5

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 634
    .local v0, "aid":Landroid/graphics/drawable/AdaptiveIconDrawable;
    move-object v10, v0

    .local v10, "result":Landroid/graphics/drawable/AdaptiveIconDrawable;
    goto :goto_2

    .line 637
    .end local v0    # "aid":Landroid/graphics/drawable/AdaptiveIconDrawable;
    .end local v10    # "result":Landroid/graphics/drawable/AdaptiveIconDrawable;
    :cond_a
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object v10

    .line 638
    .local v10, "li":Lcom/android/launcher3/icons/LauncherIcons;
    :try_start_0
    invoke-virtual {v10, v5}, Lcom/android/launcher3/icons/LauncherIcons;->wrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AdaptiveIconDrawable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    .local v0, "result":Landroid/graphics/drawable/AdaptiveIconDrawable;
    if-eqz v10, :cond_b

    invoke-virtual {v10}, Lcom/android/launcher3/icons/LauncherIcons;->close()V

    .line 641
    .end local v10    # "li":Lcom/android/launcher3/icons/LauncherIcons;
    :cond_b
    move-object v10, v0

    .end local v0    # "result":Landroid/graphics/drawable/AdaptiveIconDrawable;
    .local v10, "result":Landroid/graphics/drawable/AdaptiveIconDrawable;
    :goto_2
    if-nez v10, :cond_c

    .line 642
    return-object v9

    .line 646
    :cond_c
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_T:Z

    if-eqz v0, :cond_f

    if-eqz v3, :cond_f

    .line 647
    invoke-virtual {v10}, Landroid/graphics/drawable/AdaptiveIconDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 648
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/icons/ThemedIconDrawable;->getColors(Landroid/content/Context;)[I

    move-result-object v0

    .line 649
    .local v0, "colors":[I
    invoke-virtual {v10}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 651
    .local v9, "mono":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_d

    .line 652
    aget v7, v0, v7

    invoke-virtual {v9, v7}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_3

    .line 653
    :cond_d
    instance-of v11, v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v11, :cond_e

    move-object v11, v2

    check-cast v11, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 655
    .local v11, "iiwi":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    iget-object v14, v11, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {v14}, Lcom/android/launcher3/icons/BitmapInfo;->getMono()Landroid/graphics/Bitmap;

    move-result-object v14

    .line 656
    .local v14, "monoBitmap":Landroid/graphics/Bitmap;
    if-eqz v14, :cond_e

    .line 659
    new-instance v15, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v15, v14}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v9, v15

    .line 660
    new-instance v15, Landroid/graphics/BlendModeColorFilter;

    aget v7, v0, v7

    sget-object v8, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-direct {v15, v7, v8}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    invoke-virtual {v9, v15}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 662
    new-instance v7, Landroid/graphics/drawable/InsetDrawable;

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v8

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v8, v15

    invoke-direct {v7, v9, v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;F)V

    move-object v9, v7

    .line 665
    .end local v11    # "iiwi":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .end local v14    # "monoBitmap":Landroid/graphics/Bitmap;
    :cond_e
    :goto_3
    if-eqz v9, :cond_f

    .line 666
    new-instance v7, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    const/4 v11, 0x0

    aget v14, v0, v11

    invoke-direct {v8, v14}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v7, v8, v9}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object v10, v7

    .line 670
    .end local v0    # "colors":[I
    .end local v9    # "mono":Landroid/graphics/drawable/Drawable;
    :cond_f
    if-nez v6, :cond_10

    .line 671
    sget-object v0, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_INFO:Lcom/android/launcher3/icons/BitmapInfo;

    sget-object v7, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 672
    invoke-virtual {v7, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/pm/UserCache;

    iget-object v8, v2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    .line 673
    invoke-virtual {v7, v8}, Lcom/android/launcher3/pm/UserCache;->getUserInfo(Landroid/os/UserHandle;)Lcom/android/launcher3/util/UserIconInfo;

    move-result-object v7

    sget-object v8, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    .line 674
    invoke-virtual {v7, v8}, Lcom/android/launcher3/util/UserIconInfo;->applyBitmapInfoFlags(Lcom/android/launcher3/util/FlagOp;)Lcom/android/launcher3/util/FlagOp;

    move-result-object v7

    .line 671
    invoke-virtual {v0, v7}, Lcom/android/launcher3/icons/BitmapInfo;->withFlags(Lcom/android/launcher3/util/FlagOp;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    .line 675
    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/icons/BitmapInfo;->getBadgeDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 676
    if-nez v6, :cond_10

    .line 677
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v7, 0x0

    invoke-direct {v0, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object v6, v0

    .line 680
    :cond_10
    invoke-static {v10, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 637
    .local v10, "li":Lcom/android/launcher3/icons/LauncherIcons;
    :catchall_0
    move-exception v0

    move-object v7, v0

    if-eqz v10, :cond_11

    :try_start_1
    invoke-virtual {v10}, Lcom/android/launcher3/icons/LauncherIcons;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_11
    :goto_4
    throw v7
.end method

.method public static getPivotsForScalingRectToRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/PointF;)V
    .locals 4
    .param p0, "src"    # Landroid/graphics/Rect;
    .param p1, "dst"    # Landroid/graphics/Rect;
    .param p2, "outPivot"    # Landroid/graphics/PointF;

    .line 366
    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 367
    .local v0, "pivotXPct":F
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/PointF;->x:F

    .line 369
    iget v1, p0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    .line 370
    .local v1, "pivotYPct":F
    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p2, Landroid/graphics/PointF;->y:F

    .line 371
    return-void
.end method

.method public static getProgress(FFF)F
    .locals 2
    .param p0, "current"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 400
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v1, p2, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public static getSplitPositionOptions(Lcom/android/launcher3/DeviceProfile;)Ljava/util/List;
    .locals 5
    .param p0, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/DeviceProfile;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;",
            ">;"
        }
    .end annotation

    .line 752
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isLeftRightSplit:Z

    if-eqz v0, :cond_0

    .line 753
    sget v0, Lcom/android/launcher3/R$drawable;->ic_split_horizontal:I

    goto :goto_0

    .line 754
    :cond_0
    sget v0, Lcom/android/launcher3/R$drawable;->ic_split_vertical:I

    :goto_0
    nop

    .line 755
    .local v0, "splitIconRes":I
    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isLeftRightSplit:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 756
    const/4 v1, 0x1

    goto :goto_1

    .line 757
    :cond_1
    move v1, v2

    :goto_1
    nop

    .line 758
    .local v1, "stagePosition":I
    new-instance v3, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    sget v4, Lcom/android/launcher3/R$string;->recent_task_option_split_screen:I

    invoke-direct {v3, v0, v4, v1, v2}, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;-><init>(IIII)V

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public static getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .line 476
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 477
    .local v0, "clazz":Ljava/lang/Class;
    const-string v1, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 478
    .local v1, "getter":Ljava/lang/reflect/Method;
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 479
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    .line 480
    return-object v2

    .line 484
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "getter":Ljava/lang/reflect/Method;
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Launcher.Utilities"

    const-string v2, "Unable to read system properties"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-object p1
.end method

.method public static getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p0, "v"    # Landroid/view/View;

    .line 741
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 742
    .local v0, "pos":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 743
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    aget v2, v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v2, v6

    aget v4, v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v4, v6

    invoke-direct {v1, v3, v5, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public static isBinderSizeError(Ljava/lang/Exception;)Z
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;

    .line 547
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroid/os/TransactionTooLargeException;

    if-nez v0, :cond_1

    .line 548
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 547
    :goto_1
    return v0
.end method

.method public static isBootCompleted()Z
    .locals 2

    .line 471
    const-string v0, "sys.boot_completed"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDarkTheme(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 160
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    .line 161
    .local v1, "nightMode":I
    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static isPropertyEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p0, "propertyName"    # Ljava/lang/String;

    .line 175
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isRtl(Landroid/content/res/Resources;)Z
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;

    .line 433
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isRunningInTestHarness()Z
    .locals 1

    .line 167
    sget-boolean v0, Lcom/android/launcher3/Utilities;->sIsRunningInTestHarness:Z

    return v0
.end method

.method public static isWallpaperAllowed(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 543
    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->isSetWallpaperAllowed()Z

    move-result v0

    return v0
.end method

.method public static isWallpaperSupported(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 539
    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->isWallpaperSupported()Z

    move-result v0

    return v0
.end method

.method public static isWorkspaceEditAllowed(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 842
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 843
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "pref_workspace_lock"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public static logMatrix(Ljava/lang/String;Landroid/graphics/Matrix;)V
    .locals 8
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 768
    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 769
    .local v0, "matrixValues":[F
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 770
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 771
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v1, 0x4

    aget v1, v0, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v1, 0x2

    aget v1, v0, v1

    .line 772
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v1, 0x5

    aget v1, v0, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object v1

    .line 770
    const-string v2, "%s: %s\nscale (x,y) = (%f, %f)\ntranslate (x,y) = (%f, %f)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    return-void
.end method

.method public static makeColorTintingColorFilter(IF)Landroid/graphics/ColorFilter;
    .locals 3
    .param p0, "color"    # I
    .param p1, "tintAmount"    # F

    .line 731
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 732
    const/4 v0, 0x0

    return-object v0

    .line 734
    :cond_0
    new-instance v0, Landroid/graphics/LightingColorFilter;

    .line 736
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    .line 737
    invoke-static {v2, p0, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 734
    return-object v0
.end method

.method public static mapBoundToRange(FFFFFLandroid/view/animation/Interpolator;)F
    .locals 6
    .param p0, "t"    # F
    .param p1, "lowerBound"    # F
    .param p2, "upperBound"    # F
    .param p3, "toMin"    # F
    .param p4, "toMax"    # F
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 395
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v0

    return v0
.end method

.method public static mapCoordInSelfToDescendant(Landroid/view/View;Landroid/view/View;[F)V
    .locals 4
    .param p0, "descendant"    # Landroid/view/View;
    .param p1, "root"    # Landroid/view/View;
    .param p2, "coord"    # [F

    .line 274
    sget-object v0, Lcom/android/launcher3/Utilities;->sMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 275
    move-object v0, p0

    .line 276
    .local v0, "v":Landroid/view/View;
    :goto_0
    if-eq v0, p1, :cond_0

    .line 277
    sget-object v1, Lcom/android/launcher3/Utilities;->sMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 278
    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 279
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 280
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 282
    :cond_0
    sget-object v1, Lcom/android/launcher3/Utilities;->sMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 283
    sget-object v2, Lcom/android/launcher3/Utilities;->sInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 284
    invoke-virtual {v2, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 285
    return-void
.end method

.method public static mapRange(FFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 404
    sub-float v0, p2, p1

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0
.end method

.method public static mapRectInSelfToDescendant(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6
    .param p0, "descendant"    # Landroid/view/View;
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 265
    const/4 v0, 0x4

    new-array v0, v0, [F

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const/4 v3, 0x1

    aput v1, v0, v3

    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const/4 v4, 0x2

    aput v1, v0, v4

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    const/4 v5, 0x3

    aput v1, v0, v5

    .line 266
    .local v0, "coords":[F
    invoke-static {p0, p1, v0}, Lcom/android/launcher3/Utilities;->mapCoordInSelfToDescendant(Landroid/view/View;Landroid/view/View;[F)V

    .line 267
    aget v1, v0, v2

    float-to-int v1, v1

    aget v2, v0, v3

    float-to-int v2, v2

    aget v3, v0, v4

    float-to-int v3, v3

    aget v4, v0, v5

    float-to-int v4, v4

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 268
    return-void
.end method

.method public static mapToRange(FFFFFLandroid/view/animation/Interpolator;)F
    .locals 2
    .param p0, "t"    # F
    .param p1, "fromMin"    # F
    .param p2, "fromMax"    # F
    .param p3, "toMin"    # F
    .param p4, "toMax"    # F
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 384
    cmpl-float v0, p1, p2

    if-eqz v0, :cond_1

    cmpl-float v0, p3, p4

    if-nez v0, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/Utilities;->getProgress(FFF)F

    move-result v0

    .line 389
    .local v0, "progress":F
    invoke-interface {p5, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    invoke-static {v1, p3, p4}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    return v1

    .line 385
    .end local v0    # "progress":F
    :cond_1
    :goto_0
    const-string v0, "Launcher.Utilities"

    const-string v1, "mapToRange: range has 0 length"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return p3
.end method

.method public static offsetPoints([FFF)V
    .locals 3
    .param p0, "points"    # [F
    .param p1, "offsetX"    # F
    .param p2, "offsetY"    # F

    .line 297
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 298
    aget v1, p0, v0

    add-float/2addr v1, p1

    aput v1, p0, v0

    .line 299
    add-int/lit8 v1, v0, 0x1

    aget v2, p0, v1

    add-float/2addr v2, p2

    aput v2, p0, v1

    .line 297
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 301
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static pointInView(Landroid/view/View;FFF)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "localX"    # F
    .param p2, "localY"    # F
    .param p3, "slop"    # F

    .line 310
    neg-float v0, p3

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    neg-float v0, p3

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 311
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 310
    :goto_0
    return v0
.end method

.method public static postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 555
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 556
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 557
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 558
    return-void
.end method

.method public static prefixTextWithIcon(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iconRes"    # I
    .param p2, "msg"    # Ljava/lang/CharSequence;

    .line 532
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 533
    .local v0, "spanned":Landroid/text/SpannableString;
    new-instance v1, Lcom/android/launcher3/graphics/TintedDrawableSpan;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/graphics/TintedDrawableSpan;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x1

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 535
    return-object v0
.end method

.method public static pxFromSp(FLandroid/util/DisplayMetrics;)I
    .locals 1
    .param p0, "size"    # F
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .line 458
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/Utilities;->pxFromSp(FLandroid/util/DisplayMetrics;F)I

    move-result v0

    return v0
.end method

.method public static pxFromSp(FLandroid/util/DisplayMetrics;F)I
    .locals 2
    .param p0, "size"    # F
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;
    .param p2, "scale"    # F

    .line 462
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    mul-float/2addr v0, p2

    .line 463
    .local v0, "value":F
    invoke-static {v0}, Lcom/android/launcher3/testing/shared/ResourceUtils;->roundPxValueFromFloat(F)I

    move-result v1

    return v1
.end method

.method public static pxToSp(F)F
    .locals 1
    .param p0, "size"    # F

    .line 438
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float v0, p0, v0

    return v0
.end method

.method public static rotateBounds(Landroid/graphics/Rect;III)V
    .locals 3
    .param p0, "inOutBounds"    # Landroid/graphics/Rect;
    .param p1, "parentWidth"    # I
    .param p2, "parentHeight"    # I
    .param p3, "delta"    # I

    .line 699
    rem-int/lit8 v0, p3, 0x4

    add-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x4

    .line 700
    .local v0, "rdelta":I
    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 701
    .local v1, "origLeft":I
    packed-switch v0, :pswitch_data_0

    .line 721
    return-void

    .line 715
    :pswitch_0
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 716
    iget v2, p0, Landroid/graphics/Rect;->right:I

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 717
    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int v2, p2, v2

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 718
    iput v1, p0, Landroid/graphics/Rect;->top:I

    .line 719
    return-void

    .line 711
    :pswitch_1
    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 712
    sub-int v2, p1, v1

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 713
    return-void

    .line 705
    :pswitch_2
    iget v2, p0, Landroid/graphics/Rect;->top:I

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 706
    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 707
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 708
    sub-int v2, p1, v1

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 709
    return-void

    .line 703
    :pswitch_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static roundArray([F[I)V
    .locals 2
    .param p0, "in"    # [F
    .param p1, "out"    # [I

    .line 291
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 292
    aget v1, p0, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    aput v1, p1, v0

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static scaleRectAboutCenter(Landroid/graphics/Rect;F)V
    .locals 3
    .param p0, "r"    # Landroid/graphics/Rect;
    .param p1, "scale"    # F

    .line 334
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    .line 336
    .local v0, "cx":F
    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    .line 337
    .local v1, "cy":F
    iget v2, p0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    mul-float/2addr v2, p1

    add-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 338
    iget v2, p0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    add-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 339
    iget v2, p0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    mul-float/2addr v2, p1

    add-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 340
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    add-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 342
    .end local v0    # "cx":F
    .end local v1    # "cy":F
    :cond_0
    return-void
.end method

.method public static scaleRectFAboutCenter(Landroid/graphics/RectF;F)V
    .locals 0
    .param p0, "r"    # Landroid/graphics/RectF;
    .param p1, "scale"    # F

    .line 315
    invoke-static {p0, p1, p1}, Lcom/android/launcher3/Utilities;->scaleRectFAboutCenter(Landroid/graphics/RectF;FF)V

    .line 316
    return-void
.end method

.method public static scaleRectFAboutCenter(Landroid/graphics/RectF;FF)V
    .locals 4
    .param p0, "r"    # Landroid/graphics/RectF;
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .line 323
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 324
    .local v0, "px":F
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 325
    .local v1, "py":F
    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 326
    iget v2, p0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v2, p1

    iput v2, p0, Landroid/graphics/RectF;->left:F

    .line 327
    iget v2, p0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v2, p2

    iput v2, p0, Landroid/graphics/RectF;->top:F

    .line 328
    iget v2, p0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v2, p1

    iput v2, p0, Landroid/graphics/RectF;->right:F

    .line 329
    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v2, p2

    iput v2, p0, Landroid/graphics/RectF;->bottom:F

    .line 330
    invoke-virtual {p0, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 331
    return-void
.end method

.method public static shrinkRect(Landroid/graphics/Rect;FF)F
    .locals 5
    .param p0, "r"    # Landroid/graphics/Rect;
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .line 345
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 346
    .local v0, "scale":F
    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 347
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float v2, p1, v0

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 348
    .local v1, "deltaX":I
    iget v3, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iput v3, p0, Landroid/graphics/Rect;->left:I

    .line 349
    iget v3, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    iput v3, p0, Landroid/graphics/Rect;->right:I

    .line 351
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    sub-float v4, p2, v0

    mul-float/2addr v3, v4

    mul-float/2addr v3, v2

    float-to-int v2, v3

    .line 352
    .local v2, "deltaY":I
    iget v3, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v2

    iput v3, p0, Landroid/graphics/Rect;->top:I

    .line 353
    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v2

    iput v3, p0, Landroid/graphics/Rect;->bottom:I

    .line 355
    .end local v1    # "deltaX":I
    .end local v2    # "deltaY":I
    :cond_0
    return v0
.end method

.method public static squaredHypot(FF)F
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F

    .line 684
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public static squaredTouchSlop(Landroid/content/Context;)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 688
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    .line 689
    .local v0, "slop":F
    mul-float v1, v0, v0

    return v1
.end method

.method public static translateOverlappingView(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 3
    .param p0, "targetView"    # Landroid/view/View;
    .param p1, "targetViewBounds"    # Landroid/graphics/Rect;
    .param p2, "inclusionBounds"    # Landroid/graphics/Rect;
    .param p3, "exclusionBounds"    # Landroid/graphics/Rect;
    .param p4, "adjustmentDirection"    # I

    .line 801
    const/4 v0, 0x0

    packed-switch p4, :pswitch_data_0

    goto :goto_0

    .line 803
    :pswitch_0
    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 805
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 803
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 808
    goto :goto_0

    .line 810
    :pswitch_1
    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 812
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 810
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 815
    goto :goto_0

    .line 817
    :pswitch_2
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 819
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    .line 817
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 822
    goto :goto_0

    .line 824
    :pswitch_3
    iget v1, p3, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    .line 826
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 824
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 829
    nop

    .line 833
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static trim(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;

    .line 413
    if-nez p0, :cond_0

    .line 414
    const-string v0, ""

    return-object v0

    .line 418
    :cond_0
    sget-object v0, Lcom/android/launcher3/Utilities;->sTrimPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 419
    .local v0, "m":Ljava/util/regex/Matcher;
    const-string v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static wrapForTts(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "ttsMsg"    # Ljava/lang/String;

    .line 518
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 519
    .local v0, "spanned":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/TtsSpan$TextBuilder;

    invoke-direct {v1, p1}, Landroid/text/style/TtsSpan$TextBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/text/style/TtsSpan$TextBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    .line 520
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    .line 519
    const/4 v3, 0x0

    const/16 v4, 0x12

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 521
    return-object v0
.end method
